#include <R.h>
#include <Rinternals.h>
#include "_cgo_export.h"

SEXP _fahrenheit(SEXP x){
  return Rf_ScalarReal( Fahrenheit( REAL(x)[0] ) ) ;
}
