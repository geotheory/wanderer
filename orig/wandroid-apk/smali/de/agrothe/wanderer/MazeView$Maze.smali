.class final Lde/agrothe/wanderer/MazeView$Maze;
.super Ljava/lang/Object;
.source "MazeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/agrothe/wanderer/MazeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Maze"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    }
.end annotation


# instance fields
.field private final _backgroundColor:I

.field private _canvasBitmap:Landroid/graphics/Bitmap;

.field private _canvasBitmapWidth:I

.field protected final _config:Landroid/graphics/Bitmap$Config;

.field private final _dirtyRect:Landroid/graphics/Rect;

.field _fillBkgndPixels:[I

.field _moveLeft:Z

.field private _pathsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;",
            ">;"
        }
    .end annotation
.end field

.field private _tileHeight:F

.field private _tileWidth:F

.field final _tiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "[I>;"
        }
    .end annotation
.end field

.field _unlimitedMovesValue:Ljava/lang/String;

.field final synthetic this$0:Lde/agrothe/wanderer/MazeView;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 575
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-boolean v0, p0, Lde/agrothe/wanderer/MazeView$Maze;->_moveLeft:Z

    .line 581
    iput v0, p0, Lde/agrothe/wanderer/MazeView$Maze;->_backgroundColor:I

    .line 584
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lde/agrothe/wanderer/MazeView$Maze;->_config:Landroid/graphics/Bitmap$Config;

    .line 587
    iput v1, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tileWidth:F

    iput v1, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tileHeight:F

    .line 596
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lde/agrothe/wanderer/MazeView$Maze;->_dirtyRect:Landroid/graphics/Rect;

    .line 601
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lde/agrothe/wanderer/Game;->_charObjs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tiles:Ljava/util/HashMap;

    .line 605
    return-void
.end method

.method static synthetic access$100(Lde/agrothe/wanderer/MazeView$Maze;II)V
    .locals 0
    .param p0, "x0"    # Lde/agrothe/wanderer/MazeView$Maze;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Lde/agrothe/wanderer/MazeView$Maze;->changeOrientationBkgnd(II)V

    return-void
.end method

.method static synthetic access$500(Lde/agrothe/wanderer/MazeView$Maze;)F
    .locals 1
    .param p0, "x0"    # Lde/agrothe/wanderer/MazeView$Maze;

    .prologue
    .line 575
    iget v0, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tileWidth:F

    return v0
.end method

.method static synthetic access$600(Lde/agrothe/wanderer/MazeView$Maze;)F
    .locals 1
    .param p0, "x0"    # Lde/agrothe/wanderer/MazeView$Maze;

    .prologue
    .line 575
    iget v0, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tileHeight:F

    return v0
.end method

.method private changeOrientationBkgnd(II)V
    .locals 23
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I

    .prologue
    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    move-object v6, v0

    move-object v0, v6

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    .line 1026
    .local v20, "resources":Landroid/content/res/Resources;
    const v6, 0x7f060002

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 1027
    .local v12, "_BRICK_COLOR":I
    const v6, 0x7f060003

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 1028
    .local v13, "_ROCK_COLOR":I
    const v6, 0x7f06000a

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 1030
    .local v14, "_UNDEFINED_COLOR":I
    move/from16 v0, p1

    int-to-float v0, v0

    move v6, v0

    const/high16 v7, 0x42200000    # 40.0f

    div-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lde/agrothe/wanderer/MazeView$Maze;->_tileWidth:F

    .line 1031
    move/from16 v0, p2

    int-to-float v0, v0

    move v6, v0

    const/high16 v7, 0x41800000    # 16.0f

    div-float/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lde/agrothe/wanderer/MazeView$Maze;->_tileHeight:F

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lde/agrothe/wanderer/MazeView$Maze;->calculateScrollThreshold()V

    .line 1034
    move-object/from16 v0, p0

    iget v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tileWidth:F

    move v6, v0

    float-to-int v7, v6

    .local v7, "tileWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tileHeight:F

    move v6, v0

    float-to-int v11, v6

    .line 1035
    .local v11, "tileHeight":I
    mul-int v22, v7, v11

    .line 1036
    .local v22, "widhtMulHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_config:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v0

    .line 1037
    .local v16, "config":Landroid/graphics/Bitmap$Config;
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/agrothe/wanderer/MazeView$Maze;->_canvasBitmap:Landroid/graphics/Bitmap;

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_canvasBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lde/agrothe/wanderer/MazeView$Maze;->_canvasBitmapWidth:I

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tiles:Ljava/util/HashMap;

    move-object/from16 v21, v0

    .line 1042
    .local v21, "tiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;[I>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 1043
    invoke-direct/range {p0 .. p0}, Lde/agrothe/wanderer/MazeView$Maze;->getPathsMap()Ljava/util/HashMap;

    move-result-object v19

    .line 1044
    .local v19, "pathMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;>;"
    sget-object v6, Lde/agrothe/wanderer/Game;->_charObjs:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local p1    # "pWidth":I
    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    :sswitch_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Character;->charValue()C

    move-result v18

    .line 1046
    .local v18, "obj":C
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object v5, v0

    .line 1048
    .local v5, "pixels":[I
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1050
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, p1

    move v1, v7

    move v2, v11

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->getPixels(II[I)[I

    move-result-object v8

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1056
    :cond_0
    sparse-switch v18, :sswitch_data_0

    .line 1070
    move v15, v14

    .line 1073
    .local v15, "bkgndColor":I
    :goto_1
    move v0, v7

    move v1, v11

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1075
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v15}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1076
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1078
    const/16 v6, 0x2d

    move/from16 v0, v18

    move v1, v6

    if-ne v0, v1, :cond_1

    .line 1080
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/agrothe/wanderer/MazeView$Maze;->_fillBkgndPixels:[I

    goto :goto_0

    .line 1061
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "bkgndColor":I
    :sswitch_1
    const/4 v15, 0x0

    .line 1062
    .restart local v15    # "bkgndColor":I
    goto :goto_1

    .line 1064
    .end local v15    # "bkgndColor":I
    :sswitch_2
    move v15, v12

    .line 1065
    .restart local v15    # "bkgndColor":I
    goto :goto_1

    .line 1067
    .end local v15    # "bkgndColor":I
    :sswitch_3
    move v15, v13

    .line 1068
    .restart local v15    # "bkgndColor":I
    goto :goto_1

    .line 1084
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1087
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "pixels":[I
    .end local v15    # "bkgndColor":I
    .end local v18    # "obj":C
    :cond_2
    return-void

    .line 1056
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_3
        0x2d -> :sswitch_1
        0x3d -> :sswitch_2
        0x41 -> :sswitch_0
    .end sparse-switch
.end method

.method private drawScreenBkgnd(ZLandroid/graphics/Paint;)V
    .locals 19
    .param p1, "pUseDirtyRect"    # Z
    .param p2, "pXferModePaint"    # Landroid/graphics/Paint;

    .prologue
    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_canvasBitmap:Landroid/graphics/Bitmap;

    move-object v3, v0

    .line 1103
    .local v3, "canvasBitmap":Landroid/graphics/Bitmap;
    if-nez p1, :cond_3

    .line 1105
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tiles:Ljava/util/HashMap;

    move-object v15, v0

    .line 1107
    .local v15, "tiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;[I>;"
    move-object/from16 v0, p0

    iget v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tileWidth:F

    move/from16 v16, v0

    .local v16, "widthF":F
    move-object/from16 v0, p0

    iget v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tileHeight:F

    move v12, v0

    .line 1108
    .local v12, "heightF":F
    move-object/from16 v0, p0

    iget v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tileWidth:F

    move v4, v0

    float-to-int v6, v4

    .local v6, "width":I
    move-object/from16 v0, p0

    iget v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_tileHeight:F

    move v4, v0

    float-to-int v10, v4

    .line 1109
    .local v10, "height":I
    const/16 v18, 0x0

    .local v18, "y":I
    :goto_0
    const/16 v4, 0x10

    move/from16 v0, v18

    move v1, v4

    if-ge v0, v1, :cond_2

    .line 1111
    const/16 v17, 0x0

    .local v17, "x":I
    :goto_1
    const/16 v4, 0x28

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_1

    .line 1113
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lde/agrothe/wanderer/Game;->screen(II)C

    move-result v13

    .line 1114
    .local v13, "obj":C
    const/16 v4, 0x2d

    if-eq v13, v4, :cond_0

    .line 1116
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move v7, v0

    mul-float v7, v7, v16

    float-to-int v7, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move v8, v0

    mul-float/2addr v8, v12

    float-to-int v8, v8

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1111
    :cond_0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1109
    .end local v13    # "obj":C
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1123
    .end local v17    # "x":I
    :cond_2
    const/16 v4, 0x8

    invoke-static {}, Lde/agrothe/wanderer/Game;->getLevel()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lde/agrothe/wanderer/MazeView$Maze;->updateStatusBgnd(II)V

    .line 1124
    const/4 v4, 0x6

    invoke-static {}, Lde/agrothe/wanderer/Game;->getScore()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lde/agrothe/wanderer/MazeView$Maze;->updateStatusBgnd(II)V

    .line 1125
    const/4 v4, 0x7

    invoke-static {}, Lde/agrothe/wanderer/Game;->getDiamonds()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lde/agrothe/wanderer/MazeView$Maze;->updateStatusBgnd(II)V

    .line 1126
    const/4 v4, 0x5

    invoke-static {}, Lde/agrothe/wanderer/Game;->getMoves()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lde/agrothe/wanderer/MazeView$Maze;->updateStatusBgnd(II)V

    .line 1129
    .end local v6    # "width":I
    .end local v10    # "height":I
    .end local v12    # "heightF":F
    .end local v15    # "tiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;[I>;"
    .end local v16    # "widthF":F
    .end local v18    # "y":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    move-object v4, v0

    iget-object v14, v4, Lde/agrothe/wanderer/MazeView;->_surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1130
    .local v14, "surfaceHolder":Landroid/view/SurfaceHolder;
    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_dirtyRect:Landroid/graphics/Rect;

    move-object v4, v0

    :goto_2
    invoke-interface {v14, v4}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v11

    .line 1132
    .local v11, "canvas":Landroid/graphics/Canvas;
    if-eqz v11, :cond_4

    .line 1134
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_7

    sget-object v6, Lde/agrothe/wanderer/MazeView;->_xferModePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object v1, v6

    if-eq v0, v1, :cond_7

    invoke-virtual {v11}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_canvasBitmapWidth:I

    move v7, v0

    if-ne v6, v7, :cond_7

    sget-object v6, Lde/agrothe/wanderer/MazeView;->_xferModePaint:Landroid/graphics/Paint;

    :goto_3
    invoke-virtual {v11, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1138
    invoke-interface {v14, v11}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1140
    :cond_4
    if-eqz p1, :cond_5

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_dirtyRect:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1144
    :cond_5
    return-void

    .line 1130
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .restart local v11    # "canvas":Landroid/graphics/Canvas;
    :cond_7
    move-object/from16 v6, p2

    .line 1134
    goto :goto_3
.end method

.method private getPathsMap()Ljava/util/HashMap;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    .line 1002
    :goto_0
    return-object v24

    .line 748
    :cond_0
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView;->_resources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    .line 752
    .local v23, "resources":Landroid/content/res/Resources;
    const v24, 0x7f060001

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 753
    .local v11, "_WARN_COLOR":I
    const v24, 0x7f060004

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 754
    .local v10, "_WANDERER_COLOR":I
    const v24, 0x7f060005

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 755
    .local v9, "_EXIT_COLOR":I
    const v24, 0x7f060006

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 756
    .local v7, "_DIAMOND_COLOR":I
    const v24, 0x7f060007

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 757
    .local v8, "_EARTH_COLOR":I
    const v24, 0x7f060008

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 758
    .local v6, "_BOULDER_COLOR":I
    const v24, 0x7f060009

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 759
    .local v5, "_BALLOON_COLOR":I
    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    .line 760
    .local v18, "paint":Landroid/graphics/Paint;
    const/16 v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 762
    new-instance v21, Landroid/graphics/Paint;

    sget-object v24, Lde/agrothe/wanderer/MazeView;->_xferModePaint:Landroid/graphics/Paint;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 763
    .local v21, "punchThroughPaint":Landroid/graphics/Paint;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 764
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 765
    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 767
    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    .line 768
    .local v22, "rectF":Landroid/graphics/RectF;
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    .line 769
    .local v20, "path":Landroid/graphics/Path;
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 771
    .local v16, "identyMatrix":Landroid/graphics/Matrix;
    sget-object v24, Lde/agrothe/wanderer/Game;->_charObjs:Ljava/util/HashSet;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Character;

    invoke-virtual {v12}, Ljava/lang/Character;->charValue()C

    move-result v17

    .line 774
    .local v17, "obj":C
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 775
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 776
    sparse-switch v17, :sswitch_data_0

    goto :goto_1

    .line 847
    :sswitch_0
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 848
    .local v19, "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 849
    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 850
    const/high16 v24, 0x42700000    # 60.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x43340000    # 180.0f

    const/high16 v27, 0x43160000    # 150.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 851
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 852
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 853
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 855
    new-instance v13, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 856
    .local v13, "bomb":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x43700000    # 240.0f

    const/high16 v27, 0x43200000    # 160.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 857
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 858
    const/16 v24, 0x1

    move-object v0, v13

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 859
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 861
    const/high16 v24, 0x42700000    # 60.0f

    const/high16 v25, 0x432a0000    # 170.0f

    const/high16 v26, 0x43340000    # 180.0f

    const/high16 v27, 0x43700000    # 240.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 862
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 863
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 864
    const/16 v24, 0x1

    move-object v0, v13

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x42

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    .end local v13    # "bomb":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 791
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_1
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 792
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 793
    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 794
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x43700000    # 240.0f

    const/high16 v27, 0x43700000    # 240.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 795
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 796
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    goto :goto_2

    .line 799
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_2
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 800
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 801
    move-object/from16 v0, v18

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 802
    const/high16 v24, 0x42480000    # 50.0f

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 803
    const/high16 v24, 0x43960000    # 300.0f

    const/high16 v25, 0x435d0000    # 221.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 804
    const/high16 v24, 0x42a00000    # 80.0f

    const/high16 v25, 0x42f20000    # 121.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 805
    const/high16 v24, 0x43960000    # 300.0f

    const/high16 v25, 0x41a00000    # 20.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 806
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x3e

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    new-instance v26, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Z)V

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 811
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_3
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 812
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 813
    const/16 v24, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 814
    const/high16 v24, 0x41f00000    # 30.0f

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 815
    const/16 v24, 0x0

    const/high16 v25, 0x43700000    # 240.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 816
    const/high16 v24, 0x43340000    # 180.0f

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 817
    const/high16 v24, 0x42700000    # 60.0f

    const/high16 v25, 0x43700000    # 240.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 818
    const/high16 v24, 0x43700000    # 240.0f

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 819
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x7c

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    new-instance v26, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Z)V

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 824
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_4
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 825
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 826
    const/high16 v24, 0x42700000    # 60.0f

    const/high16 v25, 0x42700000    # 60.0f

    const/high16 v26, 0x43340000    # 180.0f

    const/high16 v27, 0x43340000    # 180.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 827
    move-object/from16 v0, v18

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 828
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 829
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    goto/16 :goto_2

    .line 832
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_5
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 833
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 834
    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 835
    const/high16 v24, 0x42f00000    # 120.0f

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 836
    const/high16 v24, 0x43700000    # 240.0f

    const/high16 v25, 0x42f00000    # 120.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 837
    const/high16 v24, 0x42f00000    # 120.0f

    const/high16 v25, 0x43700000    # 240.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 838
    const/16 v24, 0x0

    const/high16 v25, 0x42f00000    # 120.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 839
    const/high16 v24, 0x42f00000    # 120.0f

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 840
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 842
    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x43

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    new-instance v26, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Landroid/graphics/Paint;Z)V

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 868
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_6
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 869
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 870
    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 871
    const/high16 v24, 0x41200000    # 10.0f

    const/high16 v25, 0x41200000    # 10.0f

    const/high16 v26, 0x43660000    # 230.0f

    const/high16 v27, 0x43200000    # 160.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 872
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 873
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 874
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 876
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 877
    const/high16 v24, 0x42200000    # 40.0f

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 878
    const/high16 v24, 0x41200000    # 10.0f

    const/high16 v25, 0x43700000    # 240.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 879
    const/high16 v24, 0x42f00000    # 120.0f

    const/high16 v25, 0x432a0000    # 170.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 880
    const/high16 v24, 0x43660000    # 230.0f

    const/high16 v25, 0x43700000    # 240.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 881
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    goto/16 :goto_2

    .line 884
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_7
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 885
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 886
    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 887
    const/high16 v24, 0x43020000    # 130.0f

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 888
    const/16 v24, 0x0

    const/high16 v25, 0x43020000    # 130.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 889
    const/high16 v24, 0x428c0000    # 70.0f

    const/high16 v25, 0x43020000    # 130.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 890
    const/high16 v24, 0x428c0000    # 70.0f

    const/high16 v25, 0x43660000    # 230.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 891
    const/high16 v24, 0x43340000    # 180.0f

    const/high16 v25, 0x43660000    # 230.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 892
    const/high16 v24, 0x43340000    # 180.0f

    const/high16 v25, 0x43020000    # 130.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 893
    const/high16 v24, 0x437a0000    # 250.0f

    const/high16 v25, 0x43020000    # 130.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 894
    const/high16 v24, 0x43020000    # 130.0f

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 895
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    goto/16 :goto_2

    .line 898
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_8
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 899
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 900
    move-object/from16 v0, v18

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    const/high16 v24, 0x42f00000    # 120.0f

    const/high16 v25, 0x42f00000    # 120.0f

    const/high16 v26, 0x42dc0000    # 110.0f

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 902
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 903
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 905
    const/high16 v24, 0x42f00000    # 120.0f

    const/high16 v25, 0x42f00000    # 120.0f

    const/high16 v26, 0x42700000    # 60.0f

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 906
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    goto/16 :goto_2

    .line 910
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_9
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 911
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 912
    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 913
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x43700000    # 240.0f

    const/high16 v27, 0x43700000    # 240.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 914
    const/high16 v24, 0x42200000    # 40.0f

    const/high16 v25, 0x42200000    # 40.0f

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 915
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 917
    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 918
    new-instance v14, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    const/16 v24, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Landroid/graphics/Paint;Z)V

    .line 920
    .local v14, "deadWanderer":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 922
    const/high16 v24, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 923
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 924
    const/high16 v24, 0x41f00000    # 30.0f

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 925
    const/high16 v24, 0x42700000    # 60.0f

    const/high16 v25, 0x42a00000    # 80.0f

    const/high16 v26, 0x42200000    # 40.0f

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 926
    const/high16 v24, 0x43340000    # 180.0f

    const/high16 v25, 0x42a00000    # 80.0f

    const/high16 v26, 0x42200000    # 40.0f

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 928
    const/high16 v24, 0x42fa0000    # 125.0f

    const/high16 v25, 0x42f00000    # 120.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 929
    const/high16 v24, 0x433e0000    # 190.0f

    const/high16 v25, 0x43480000    # 200.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 930
    const/high16 v24, 0x42480000    # 50.0f

    const/high16 v25, 0x43480000    # 200.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 931
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 932
    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x6c

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    new-instance v26, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Z)V

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x64

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    new-instance v26, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Z)V

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 941
    .end local v14    # "deadWanderer":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_a
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 942
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 943
    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 944
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/high16 v26, 0x43700000    # 240.0f

    const/high16 v27, 0x43700000    # 240.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 945
    const/high16 v24, 0x42200000    # 40.0f

    const/high16 v25, 0x42200000    # 40.0f

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 946
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 947
    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 948
    new-instance v12, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    const/16 v24, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Landroid/graphics/Paint;Z)V

    .line 950
    .local v12, "babyMonster":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 952
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 953
    const/high16 v24, 0x41f00000    # 30.0f

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 954
    const/high16 v24, -0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 955
    const/high16 v24, 0x42700000    # 60.0f

    const/high16 v25, 0x428c0000    # 70.0f

    const/high16 v26, 0x42200000    # 40.0f

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 956
    const/high16 v24, 0x43340000    # 180.0f

    const/high16 v25, 0x428c0000    # 70.0f

    const/high16 v26, 0x42200000    # 40.0f

    sget-object v27, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 957
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 958
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;)V

    .line 959
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 961
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 962
    const/high16 v24, 0x41a00000    # 20.0f

    const/high16 v25, 0x43020000    # 130.0f

    const/high16 v26, 0x435c0000    # 220.0f

    const/high16 v27, 0x435c0000    # 220.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 963
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 964
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 965
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;)V

    .line 966
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 968
    const/16 v24, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 969
    const/high16 v24, 0x42480000    # 50.0f

    const/high16 v25, 0x43200000    # 160.0f

    const/high16 v26, 0x433e0000    # 190.0f

    const/high16 v27, 0x433e0000    # 190.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 970
    sget-object v24, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 971
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 972
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x53

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 976
    .end local v12    # "babyMonster":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :sswitch_b
    new-instance v19, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;-><init>(Lde/agrothe/wanderer/MazeView$Maze;)V

    .line 977
    .restart local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    sget-object v24, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 978
    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 979
    const/high16 v24, 0x41200000    # 10.0f

    const/high16 v25, 0x41200000    # 10.0f

    const/high16 v26, 0x43660000    # 230.0f

    const/high16 v27, 0x43660000    # 230.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 980
    const/high16 v24, 0x42200000    # 40.0f

    const/high16 v25, 0x42200000    # 40.0f

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 981
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 982
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 984
    const/high16 v24, 0x42200000    # 40.0f

    const/high16 v25, 0x42200000    # 40.0f

    const/high16 v26, 0x43480000    # 200.0f

    const/high16 v27, 0x43480000    # 200.0f

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 985
    const/high16 v24, 0x42200000    # 40.0f

    const/high16 v25, 0x42200000    # 40.0f

    sget-object v26, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 986
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    .line 988
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Path;->rewind()V

    .line 990
    sget-object v24, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 991
    const/high16 v24, 0x41f00000    # 30.0f

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 992
    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 993
    const/high16 v24, 0x42f00000    # 120.0f

    const/high16 v25, 0x41200000    # 10.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 994
    const/high16 v24, 0x42f00000    # 120.0f

    const/high16 v25, 0x43660000    # 230.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 995
    const/high16 v24, 0x41200000    # 10.0f

    const/high16 v25, 0x42f00000    # 120.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 996
    const/high16 v24, 0x43660000    # 230.0f

    const/high16 v25, 0x42f00000    # 120.0f

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 997
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V

    goto/16 :goto_2

    .line 1002
    .end local v17    # "obj":C
    .end local v19    # "paintsAndShapes":Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze;->_pathsMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    goto/16 :goto_0

    .line 776
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x2a -> :sswitch_5
        0x2b -> :sswitch_b
        0x2f -> :sswitch_3
        0x3a -> :sswitch_4
        0x3c -> :sswitch_2
        0x40 -> :sswitch_9
        0x4d -> :sswitch_a
        0x4f -> :sswitch_1
        0x54 -> :sswitch_8
        0x58 -> :sswitch_7
        0x5e -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method calculateScrollThreshold()V
    .locals 5

    .prologue
    .line 1007
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v0, v2, Lde/agrothe/wanderer/MazeView;->_DEFAULT_SCROLL_THRESH_HOLD_OFFSET:I

    .line 1009
    .local v0, "defaultScrollThreshHoldOffset":I
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v2, v2, Lde/agrothe/wanderer/MazeView;->_MEDIUM_SCROLL_THRESH_HOLD_FACTOR:F

    iget-object v3, p0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v3, v3, Lde/agrothe/wanderer/MazeView;->_sharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "GestureSensivity"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget-object v4, p0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v4, v4, Lde/agrothe/wanderer/MazeView;->_SCROLL_THRESH_HOLD_RANGE_FACTOR:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 1014
    .local v1, "scrollThreshHoldFactor":F
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v3, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tileWidth:F

    mul-float/2addr v3, v1

    iput v3, v2, Lde/agrothe/wanderer/MazeView;->_xScrollThreshHold:F

    .line 1015
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    iget v3, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tileHeight:F

    mul-float/2addr v3, v1

    iput v3, v2, Lde/agrothe/wanderer/MazeView;->_yScrollThreshHold:F

    .line 1016
    return-void
.end method

.method drawScreenBkgnd(Z)V
    .locals 1
    .param p1, "pUseDirtyRect"    # Z

    .prologue
    .line 1093
    sget-object v0, Lde/agrothe/wanderer/MazeView;->_xferModePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lde/agrothe/wanderer/MazeView$Maze;->drawScreenBkgnd(ZLandroid/graphics/Paint;)V

    .line 1094
    return-void
.end method

.method drawTileBkgnd(IIC)V
    .locals 12
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pObj"    # C

    .prologue
    .line 1152
    iget v11, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tileWidth:F

    .local v11, "widthF":F
    iget v8, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tileHeight:F

    .line 1153
    .local v8, "heightF":F
    int-to-float v1, p1

    mul-float v9, v1, v11

    .local v9, "leftF":F
    int-to-float v1, p2

    mul-float v10, v1, v8

    .line 1154
    .local v10, "topF":F
    float-to-int v4, v9

    .local v4, "left":I
    float-to-int v5, v10

    .line 1155
    .local v5, "top":I
    float-to-int v3, v11

    .local v3, "width":I
    float-to-int v7, v8

    .line 1156
    .local v7, "height":I
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$Maze;->_dirtyRect:Landroid/graphics/Rect;

    add-float v2, v9, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float v6, v10, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v1, v4, v5, v2, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 1158
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$Maze;->_canvasBitmap:Landroid/graphics/Bitmap;

    .line 1159
    .local v0, "canvasBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$Maze;->_fillBkgndPixels:[I

    const/4 v2, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1161
    sparse-switch p3, :sswitch_data_0

    .line 1178
    :cond_0
    :goto_0
    iget-object v1, p0, Lde/agrothe/wanderer/MazeView$Maze;->_tiles:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1180
    :sswitch_0
    return-void

    .line 1166
    :sswitch_1
    iget-boolean v1, p0, Lde/agrothe/wanderer/MazeView$Maze;->_moveLeft:Z

    if-eqz v1, :cond_0

    .line 1168
    const/16 p3, 0x6c

    goto :goto_0

    .line 1172
    :sswitch_2
    iget-boolean v1, p0, Lde/agrothe/wanderer/MazeView$Maze;->_moveLeft:Z

    if-eqz v1, :cond_0

    .line 1174
    const/16 p3, 0x64

    goto :goto_0

    .line 1161
    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0x2d -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method drawWandererBkgnd(I)V
    .locals 4
    .param p1, "pAlpha"    # I

    .prologue
    .line 1186
    invoke-static {}, Lde/agrothe/wanderer/Game;->getWandererX()I

    move-result v1

    invoke-static {}, Lde/agrothe/wanderer/Game;->getWandererY()I

    move-result v2

    const/16 v3, 0x40

    invoke-virtual {p0, v1, v2, v3}, Lde/agrothe/wanderer/MazeView$Maze;->drawTileBkgnd(IIC)V

    .line 1188
    sget-object v0, Lde/agrothe/wanderer/MazeView;->_blinkWandererXferModePaint:Landroid/graphics/Paint;

    .line 1189
    .local v0, "xferModePaint":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1190
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lde/agrothe/wanderer/MazeView$Maze;->drawScreenBkgnd(ZLandroid/graphics/Paint;)V

    .line 1191
    return-void
.end method

.method updateStatusBgnd(II)V
    .locals 3
    .param p1, "pWhichStatus"    # I
    .param p2, "pValue"    # I

    .prologue
    .line 1198
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze;->_unlimitedMovesValue:Ljava/lang/String;

    move-object v1, v2

    .line 1200
    .local v1, "value":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze;->this$0:Lde/agrothe/wanderer/MazeView;

    iget-object v0, v2, Lde/agrothe/wanderer/MazeView;->_mainHandler:Landroid/os/Handler;

    .line 1201
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1202
    return-void

    .line 1198
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method
