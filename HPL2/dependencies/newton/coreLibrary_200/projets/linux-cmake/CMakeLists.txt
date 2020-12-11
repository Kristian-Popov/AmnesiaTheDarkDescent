#[[
This file is added by Kristian Popov, not part of original distribution of Newton
]]
cmake_minimum_required(VERSION 3.16) # Feel free to reduce this if needed, taken arbitrarily
project(NewtonCore)

set(CORE_DIR ../../source/core)
set(PHYSICS_DIR ../../source/physics)
set(NEWTON_DIR ../../source/newton)

add_library (NewtonCore
    ${CORE_DIR}/dg.cpp
	${CORE_DIR}/dgRef.cpp
	${CORE_DIR}/dgCRC.cpp
	${CORE_DIR}/dgTree.cpp
	${CORE_DIR}/dgNode.cpp
	${CORE_DIR}/dgTypes.cpp
	${CORE_DIR}/dgMatrix.cpp
	${CORE_DIR}/dgGoogol.cpp
	${CORE_DIR}/dgMemory.cpp
	${CORE_DIR}/dgSphere.cpp
	${CORE_DIR}/dgRandom.cpp
	${CORE_DIR}/dgThreads.cpp
	${CORE_DIR}/dgPolyhedra.cpp
	${CORE_DIR}/dgQuaternion.cpp
	${CORE_DIR}/dgConvexHull3d.cpp
	${CORE_DIR}/dgConvexHull4d.cpp
	${CORE_DIR}/dgIntersections.cpp
	${CORE_DIR}/dgAABBPolygonSoup.cpp
	${CORE_DIR}/dgSmallDeterminant.cpp
	${CORE_DIR}/dgPolygonSoupBuilder.cpp
	${CORE_DIR}/dgPolyhedraMassProperties.cpp
	${CORE_DIR}/dgDelaunayTetrahedralization.cpp

    ${PHYSICS_DIR}/dgWorld.cpp
	${PHYSICS_DIR}/dgBody.cpp
	${PHYSICS_DIR}/dgMeshEffect.cpp
	${PHYSICS_DIR}/dgMeshEffect2.cpp
	${PHYSICS_DIR}/dgCollisionConvex.cpp
	${PHYSICS_DIR}/dgBallConstraint.cpp
	${PHYSICS_DIR}/dgBilateralConstraint.cpp
	${PHYSICS_DIR}/dgCorkscrewConstraint.cpp
	${PHYSICS_DIR}/dgHingeConstraint.cpp
	${PHYSICS_DIR}/dgNarrowPhaseCollision.cpp
	${PHYSICS_DIR}/dgBroadPhaseCollision.cpp
	${PHYSICS_DIR}/dgMinkowskiConv.cpp
	${PHYSICS_DIR}/dgCollisionBox.cpp
	${PHYSICS_DIR}/dgCollisionCapsule.cpp
	${PHYSICS_DIR}/dgCollisionBVH.cpp
	${PHYSICS_DIR}/dgCollisionMesh.cpp
	${PHYSICS_DIR}/dgCollisionUserMesh.cpp
	${PHYSICS_DIR}/dgCollisionChamferCylinder.cpp
	${PHYSICS_DIR}/dgPointToCurveConstraint.cpp
	${PHYSICS_DIR}/dgCollisionCone.cpp
	${PHYSICS_DIR}/dgCollisionConvexHull.cpp
	${PHYSICS_DIR}/dgSlidingConstraint.cpp
	${PHYSICS_DIR}/dgCollisionConvexModifier.cpp
	${PHYSICS_DIR}/dgUniversalConstraint.cpp
	${PHYSICS_DIR}/dgCollision.cpp
	${PHYSICS_DIR}/dgUpVectorConstraint.cpp
	${PHYSICS_DIR}/dgCollisionCylinder.cpp
	${PHYSICS_DIR}/dgUserConstraint.cpp
	${PHYSICS_DIR}/dgCollisionEllipse.cpp
	${PHYSICS_DIR}/dgCollisionNull.cpp
	${PHYSICS_DIR}/dgCollisionScene.cpp
	${PHYSICS_DIR}/dgCollisionCompoundBreakable.cpp
	${PHYSICS_DIR}/dgCollisionHeightField.cpp
	${PHYSICS_DIR}/dgWorldDynamicUpdate.cpp
	${PHYSICS_DIR}/dgCollisionSphere.cpp
	${PHYSICS_DIR}/dgCollisionCompound.cpp
	${PHYSICS_DIR}/dgConnectorConstraint.cpp
	${PHYSICS_DIR}/dgConstraint.cpp
	${PHYSICS_DIR}/dgBodyMasterList.cpp
	${PHYSICS_DIR}/dgContact.cpp

    ${NEWTON_DIR}/Newton.cpp
    ${NEWTON_DIR}/NewtonClass.cpp
)

target_include_directories(NewtonCore
    PUBLIC ${NEWTON_DIR}
    PRIVATE ${PHYSICS_DIR} ${CORE_DIR}
)

set(CPU_FLAGS -fpic -msse -msse2 -mfpmath=sse -ffloat-store -ffast-math -freciprocal-math -funsafe-math-optimizations -fsingle-precision-constant)
target_compile_options(NewtonCore PRIVATE -c -Wall -Wno-strict-aliasing -D_LINUX_VER -D_LINUX_VER_64 ${CPU_FLAGS})