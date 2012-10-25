#include <iostream>
#include <vector>

std::vector<int> solution()
{
  for ( int a = 1; a < 1000; ++a )
  {
    for ( int b = a; b < 1000; ++b )
    {
      for ( int c = b; c < 1000; ++c )
      {
        if ( a + b + c == 1000 && a*a + b*b == c*c )
        {
          return { a, b, c };
        }
      }
    }
  }
  return {-1,-1,-1};
}

int main()
{
  auto r = solution();
  std::cout << "a: " << r[0] << " b: " << r[1] << " c: " << r[2] << std::endl;
  std::cout << "product: " << r[0] * r[1] * r[2] << std::endl;
}
