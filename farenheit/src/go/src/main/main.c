#include <R.h>
#include <Rinternals.h>
#include "_cgo_export.h"

SEXP _farenheit(SEXP x){
  return Rf_ScalarReal( Farenheit( REAL(x)[0] ) ) ;
}
