#include "fir.h"
///wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
/// 20-May-2017
/// Low pass & High pass FIR Symmetrical Filter, First Half of coefficients 
///---------------------------------------------------------------------

const float lpcoeff[16] = {//1kHz
	-0.0003,-0.0019,-0.0025, 0.0065, 0.0373, 0.0938, 0.1605, 0.2065, 
	 0.2065, 0.1605, 0.0938, 0.0373, 0.0065,-0.0025,-0.0019,-0.0003
};
const float hpcoeff[16] = { // 2kHz
	0.0000, 0.0021, 0.0045,-0.0116,-0.0412, 0.0000, 0.1772, 0.3690,
	0.3690, 0.1772, 0.0000,-0.0412,-0.0116, 0.0045, 0.0021, 0.0000
};

