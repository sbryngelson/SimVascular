/* Copyright (c) Stanford University, The Regents of the University of
 *               California, and others.
 *
 * All Rights Reserved.
 *
 * See Copyright-SimVascular.txt for additional details.
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files (the
 * "Software"), to deal in the Software without restriction, including
 * without limitation the rights to use, copy, modify, merge, publish,
 * distribute, sublicense, and/or sell copies of the Software, and to
 * permit persons to whom the Software is furnished to do so, subject
 * to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 * IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER
 * OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/** @file sv_polydatasolid_init_py.cxx
 *  @brief Initiates PolyDataSolid as a valid solid type upon startup
 *  @details The Polydatasolid_Init is called upon startup of Simvascular
 *  and registers the Polydatasolid with the cvFactoryRegistrar so that
 *  Polydatasolid can be used as a solid type
 *
 *  @author Adam Updegrove
 *  @author updega2@gmail.com
 *  @author UC Berkeley
 *  @author shaddenlab.berkeley.edu
 */

#ifndef __CV_POLYDATASOLID_INIT_PY_H
#define __CV_POLYDATASOLID_INIT_PY_H

#include "SimVascular.h"
#include "svPolyDataSolidExports.h" // For exports
#include "Python.h"
extern "C" SV_EXPORT_POLYDATASOLID PyObject* Polydatasolid_pyInit();

#if PYTHON_MAJOR_VERSION == 2
PyMODINIT_FUNC  initpySolidPolydata();
#endif
#if PYTHON_MAJOR_VERSION == 3
PyMODINIT_FUNC  PyInit_pySolidPolydata();
#endif

#endif // __CVPOLYDATASOLID_INIT_H
