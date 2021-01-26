.class final Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
.super Ljava/lang/Object;
.source "MazeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/agrothe/wanderer/MazeView$Maze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PaintsAndShapes"
.end annotation


# static fields
.field private static final _shapeHeight:I = 0xf0

.field private static final _shapeWidth:I = 0xf0


# instance fields
.field private _flip:Z

.field private final _paintList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private final _pathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lde/agrothe/wanderer/MazeView$Maze;


# direct methods
.method constructor <init>(Lde/agrothe/wanderer/MazeView$Maze;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 621
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->this$1:Lde/agrothe/wanderer/MazeView$Maze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_flip:Z

    .line 622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_pathList:Ljava/util/ArrayList;

    .line 624
    return-void
.end method

.method constructor <init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Landroid/graphics/Paint;Z)V
    .locals 4
    .param p2, "pSrc"    # Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    .param p3, "pPaint"    # Landroid/graphics/Paint;
    .param p4, "pAddShader"    # Z

    .prologue
    const/4 v3, 0x1

    .line 652
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->this$1:Lde/agrothe/wanderer/MazeView$Maze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v2, 0x0

    iput-boolean v2, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_flip:Z

    .line 653
    iget-object v1, p2, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_pathList:Ljava/util/ArrayList;

    iput-object v1, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_pathList:Ljava/util/ArrayList;

    .line 654
    .local v1, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Path;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    .line 656
    .local v0, "paintList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Paint;>;"
    iget-object v2, p2, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 658
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    invoke-direct {p0, p3, v2, p4}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->newPaint(Landroid/graphics/Paint;Landroid/graphics/Path;Z)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    return-void
.end method

.method constructor <init>(Lde/agrothe/wanderer/MazeView$Maze;Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;Z)V
    .locals 7
    .param p2, "pSrc"    # Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;
    .param p3, "pFlip"    # Z

    .prologue
    const/4 v6, 0x1

    .line 630
    iput-object p1, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->this$1:Lde/agrothe/wanderer/MazeView$Maze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v5, 0x0

    iput-boolean v5, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_flip:Z

    .line 631
    iput-boolean p3, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_flip:Z

    .line 632
    iget-object v4, p2, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_pathList:Ljava/util/ArrayList;

    iput-object v4, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_pathList:Ljava/util/ArrayList;

    .line 633
    .local v4, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Path;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    .line 635
    .local v3, "paintList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Paint;>;"
    const/4 v1, 0x0

    .line 636
    .local v1, "idx":I
    iget-object v5, p2, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    .line 638
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 640
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    invoke-direct {p0, v2, v5, v6}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->newPaint(Landroid/graphics/Paint;Landroid/graphics/Path;Z)Landroid/graphics/Paint;

    move-result-object v2

    .line 642
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 645
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_1
    return-void
.end method

.method private newPaint(Landroid/graphics/Paint;Landroid/graphics/Path;Z)Landroid/graphics/Paint;
    .locals 11
    .param p1, "pPaint"    # Landroid/graphics/Paint;
    .param p2, "pPath"    # Landroid/graphics/Path;
    .param p3, "pAddShader"    # Z

    .prologue
    const/4 v5, 0x0

    .line 694
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 695
    .local v9, "paint":Landroid/graphics/Paint;
    if-eqz p3, :cond_0

    .line 697
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 698
    .local v10, "rectF":Landroid/graphics/RectF;
    invoke-virtual {p2, v10, v5}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 699
    iget-boolean v8, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_flip:Z

    .line 700
    .local v8, "flip":Z
    new-instance v0, Landroid/graphics/LinearGradient;

    if-eqz v8, :cond_1

    iget v1, v10, Landroid/graphics/RectF;->right:F

    :goto_0
    iget v2, v10, Landroid/graphics/RectF;->top:F

    if-eqz v8, :cond_2

    iget v3, v10, Landroid/graphics/RectF;->left:F

    :goto_1
    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 708
    .end local v8    # "flip":Z
    .end local v10    # "rectF":Landroid/graphics/RectF;
    :cond_0
    return-object v9

    .line 700
    .restart local v8    # "flip":Z
    .restart local v10    # "rectF":Landroid/graphics/RectF;
    :cond_1
    iget v1, v10, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_2
    iget v3, v10, Landroid/graphics/RectF;->right:F

    goto :goto_1
.end method


# virtual methods
.method addPaintAndPath(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "pPaint"    # Landroid/graphics/Paint;

    .prologue
    .line 684
    iget-object v0, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->newPaint(Landroid/graphics/Paint;Landroid/graphics/Path;Z)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    return-void
.end method

.method addPaintAndPath(Landroid/graphics/Paint;Landroid/graphics/Path;Z)V
    .locals 4
    .param p1, "pPaint"    # Landroid/graphics/Paint;
    .param p2, "pPath"    # Landroid/graphics/Path;
    .param p3, "pAddShader"    # Z

    .prologue
    .line 668
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, p2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 669
    .local v1, "path":Landroid/graphics/Path;
    if-eqz p3, :cond_0

    .line 671
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 672
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 673
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_pathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    .end local v0    # "paint":Landroid/graphics/Paint;
    :cond_0
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3}, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->newPaint(Landroid/graphics/Paint;Landroid/graphics/Path;Z)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v2, p0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_pathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    return-void
.end method

.method getPixels(II[I)[I
    .locals 17
    .param p1, "pWidth"    # I
    .param p2, "pHeight"    # I
    .param p3, "pPixels"    # [I

    .prologue
    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->this$1:Lde/agrothe/wanderer/MazeView$Maze;

    move-object v4, v0

    iget-object v4, v4, Lde/agrothe/wanderer/MazeView$Maze;->_config:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 719
    .local v3, "shapeBitmap":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 720
    .local v16, "shapeCanvas":Landroid/graphics/Canvas;
    const/4 v12, 0x0

    .line 721
    .local v12, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_pathList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Path;

    .line 723
    .local v14, "path":Landroid/graphics/Path;
    new-instance v15, Landroid/graphics/drawable/shapes/PathShape;

    const/high16 v4, 0x43700000    # 240.0f

    const/high16 v5, 0x43700000    # 240.0f

    invoke-direct {v15, v14, v4, v5}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    .line 725
    .local v15, "shape":Landroid/graphics/drawable/shapes/PathShape;
    move/from16 v0, p1

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    invoke-virtual {v15, v4, v5}, Landroid/graphics/drawable/shapes/PathShape;->resize(FF)V

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_paintList:Ljava/util/ArrayList;

    move-object v4, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "idx":I
    .local v13, "idx":I
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/PathShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    move v12, v13

    .line 727
    .end local v13    # "idx":I
    .restart local v12    # "idx":I
    goto :goto_0

    .line 728
    .end local v14    # "path":Landroid/graphics/Path;
    .end local v15    # "shape":Landroid/graphics/drawable/shapes/PathShape;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lde/agrothe/wanderer/MazeView$Maze$PaintsAndShapes;->_flip:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 730
    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v8, Lde/agrothe/wanderer/MazeView;->_flipMatrix:Landroid/graphics/Matrix;

    const/4 v9, 0x0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 733
    :cond_1
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p3

    move/from16 v6, p1

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 734
    return-object p3
.end method
