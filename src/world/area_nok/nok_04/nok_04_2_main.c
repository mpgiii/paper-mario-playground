#include "nok_04.h"

EvtScript N(EVS_ExitWalk_nok_03_1) = EVT_EXIT_WALK_NOK(60, nok_04_ENTRY_0, "nok_03", nok_03_ENTRY_1);

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_nok_03_1)), TRIGGER_FLOOR_ABOVE, COLLIDER_deilisw, 1, 0)
    EVT_RETURN
    EVT_END
};

MAP_RODATA_PAD(1, exits);

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_KOOPA_VILLAGE)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_SETUP_CAMERA_NO_LEAD()
    EVT_SET(AF_NOK04_PlayingGame, FALSE)
    EVT_SET(AF_NOK04_BattleStarted, FALSE)
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_o147, COLLIDER_FLAGS_UPPER_MASK)
    EVT_CALL(MakeNpcs, FALSE, EVT_PTR(N(DefaultNPCs)))
    EVT_EXEC_WAIT(N(EVS_MakeEntities))
    EVT_SET(LVar0, TREE_0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_HitTree)), TRIGGER_WALL_HAMMER, COLLIDER_o59, 1, 0)
    EVT_SET(LVar0, TREE_1)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_HitTree)), TRIGGER_WALL_HAMMER, COLLIDER_o58, 1, 0)
    EVT_SET(LVar0, TREE_2)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_HitTree)), TRIGGER_WALL_HAMMER, COLLIDER_o57, 1, 0)
    EVT_SET(LVar0, TREE_3)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_HitTree)), TRIGGER_WALL_HAMMER, COLLIDER_o56, 1, 0)
    EVT_EXEC(N(EVS_SetupMusic))
    EVT_CALL(ModifyColliderFlags, MODIFY_COLLIDER_FLAGS_SET_BITS, COLLIDER_deilitsw, COLLIDER_FLAGS_UPPER_MASK)
    EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
    EVT_EXEC(EnterWalk)
    EVT_WAIT(1)
    EVT_RETURN
    EVT_END
};