#include <iostream>
#include <vector>
#include <cassert>

class TraceLog
{
  public:
    TraceLog( std::string const& function, int line )
      : m_function( function )
    {
      std::cout << "TraceLog: " << m_function << " enter, in line " << line << std::endl;
    }
    ~TraceLog()
    {
      std::cout << "TraceLog: " << m_function << " leave." << std::endl;
    }
    std::string m_function;
};

//#define TRACELOG TraceLog _a9sdf76a9s8d_( __FUNCTION__, __LINE__ )
#define TRACELOG

class MemoFibo
{
  public:
    static MemoFibo& instance()
    {
      static MemoFibo m;
      return m;
    }

    int getNth( int n )
    {
      TRACELOG;
      if ( ! isMemoized(n) )
      {
        compute(n);
      }
      return getMemoized(n);
    }

  protected:
    bool isMemoized(int n) const
    {
      return int(m_memo.size()) > n;
    }

    int getMemoized(int n) const
    {
      return m_memo[n];
    }

    void compute(int n)
    {
      TRACELOG;
      int highestComputed = m_memo.size() - 1;
      for ( int i = highestComputed + 1; i <= n; ++i )
      {
        m_memo.push_back( m_memo[i-2] + m_memo[i-1] );
      }
    }
  private:
    MemoFibo() : m_memo(2)
    {
      m_memo[0] = 0;
      m_memo[1] = 1;
    }
    typedef std::vector<int> MemoMap;
    MemoMap m_memo;
};

int main()
{
  MemoFibo & m = MemoFibo::instance();
  // some test
  assert( m.getNth(5) == 5 );
  assert( m.getNth(7) == 13 );
  
  const int fibMax = 4 * 1000 * 1000;
  int fibCurrent = 0;
  int n = 0;
  int sum = 0;
  while ( (fibCurrent = m.getNth( n ) ) < fibMax )
  {
    if ( fibCurrent % 2 == 0 )
    {
      sum += fibCurrent;
    }
    ++n;
  }
  std::cout << sum << std::endl;
  return 0;
}
