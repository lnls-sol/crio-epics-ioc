
#define NDEBUG

#ifdef NDEBUG

#define DEBUG(x)

#else

#define DEBUG(x) {x;} while(0)

#endif
