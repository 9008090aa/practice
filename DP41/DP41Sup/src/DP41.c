/*
* DP41Support device support
*/

#include <epicsStdio.h>
#include <devCommonGpib.h>

/******************************************************************************
*
* The following define statements are used to declare the names to be used
* for the dset tables.
*
* A DSET_AI entry must be declared here and referenced in an application
* database description file even if the device provides no AI records.
*
******************************************************************************/
#define DSET_AI devAiDP41Support
#define DSET_SI devSiDP41Support

#include <devGpib.h> /* must be included after DSET defines */

#define TIMEOUT 1.0 /* I/O must complete within this time */
#define TIMEWINDOW 2.0 /* Wait this long after device timeout */
#define EOSNL "\n" // <------------- 追加（1）

/******************************************************************************
* Array of structures that define all GPIB messages
* supported for this type of instrument.
******************************************************************************/

// ------------- ここから
static struct gpibCmd gpibCmds[] = {
/* Param 0 -- Read SCPI identification string */
{&DSET_SI,GPIBREAD,IB_Q_HIGH,"*V01"EOSNL,0,0,100,0,0,0,0,0,EOSNL}
/* "*V01" is the text string to read strain gauge value */
};
// ------------- ここまで追加（2）

/* The following is the number of elements in the command array above. */
#define NUMPARAMS sizeof(gpibCmds)/sizeof(struct gpibCmd)

/******************************************************************************
* Initialize device support parameters
*
*****************************************************************************/
static long init_ai(int parm)
{
if(parm==0) {
devSupParms.name = "devDP41Support";
devSupParms.gpibCmds = gpibCmds;
devSupParms.numparams = NUMPARAMS;
devSupParms.timeout = TIMEOUT;
devSupParms.timeWindow = TIMEWINDOW;
devSupParms.respond2Writes = -1;
}
return(0);
}