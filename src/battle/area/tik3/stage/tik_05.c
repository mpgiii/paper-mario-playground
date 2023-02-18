#include "common.h"
#include "battle/battle.h"
#include "mapfs/tik_bt05_shape.h"

#define NAMESPACE b_area_tik3_tik_05

#include "world/common/atomic/TexturePan.inc.c"

EvtScript N(beforeBattle) = {
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_CALL(SetCamBGColor, 1, 0, 0, 0)
    EVT_CALL(SetTexPanner, MODEL_taki1, TEX_PANNER_1)
    EVT_CALL(EnableTexPanning, MODEL_taki1, TRUE)
    EVT_THREAD
        TEX_PAN_PARAMS_ID(TEX_PANNER_1)
        TEX_PAN_PARAMS_STEP(   0, -2700,   0, -3000)
        TEX_PAN_PARAMS_FREQ(   1,     1,   1,     1)
        TEX_PAN_PARAMS_INIT(   0,     0,   0,     0)
        EVT_EXEC(N(EVS_UpdateTexturePan))
    EVT_END_THREAD
    EVT_CALL(SetTexPanner, MODEL_taki2, TEX_PANNER_2)
    EVT_CALL(EnableTexPanning, MODEL_taki2, TRUE)
    EVT_THREAD
        TEX_PAN_PARAMS_ID(TEX_PANNER_2)
        TEX_PAN_PARAMS_STEP(   50, -200,  110, -500)
        TEX_PAN_PARAMS_FREQ(    1,    1,    1,    1)
        TEX_PAN_PARAMS_INIT(    0,    0,    0,    0)
        EVT_EXEC(N(EVS_UpdateTexturePan))
    EVT_END_THREAD
    EVT_RETURN
    EVT_END
};

EvtScript N(afterBattle) = {
    EVT_RETURN
    EVT_END
};

s32 N(foregroundModelList)[] = {
    MODEL_taki1, 0,
};

Stage NAMESPACE = {
    .texture = "tik_tex",
    .shape = "tik_bt05_shape",
    .hit = "tik_bt05_hit",
    .preBattle = &N(beforeBattle),
    .postBattle = &N(afterBattle),
    .foregroundModelList = N(foregroundModelList),
};
