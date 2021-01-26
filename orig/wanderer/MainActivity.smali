.class public final Lde/agrothe/wanderer/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field static final _LOG_TAG:Ljava/lang/String;

.field static final _UNLOCK_ALL_SCREENS_CHAR_COUNT:I = 0x3

.field static _viewIdTextViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field _gestureDetector:Landroid/view/GestureDetector;

.field _mazeView:Lde/agrothe/wanderer/MazeView;

.field _unlockAllScreensCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "Wanderer"

    invoke-static {v0}, Lde/agrothe/util/Logging;->buidLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/agrothe/wanderer/MainActivity;->_LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "pSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v11, 0x7f030002

    invoke-virtual {p0, v11}, Lde/agrothe/wanderer/MainActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lde/agrothe/wanderer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 46
    .local v6, "resources":Landroid/content/res/Resources;
    const/high16 v11, 0x7f050000

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "labelTag":Ljava/lang/String;
    const v11, 0x7f050002

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "textTag":Ljava/lang/String;
    const/high16 v11, 0x7f040000

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 50
    .local v10, "viewIds":Landroid/content/res/TypedArray;
    const v11, 0x7f040001

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 51
    .local v3, "labelIds":Landroid/content/res/TypedArray;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    .line 52
    .local v5, "numIds":I
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v9, Lde/agrothe/wanderer/MainActivity;->_viewIdTextViewMap:Ljava/util/HashMap;

    .line 54
    .local v9, "viewIdTextViewMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/widget/TextView;>;"
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 56
    const/4 v11, 0x0

    invoke-virtual {v10, v2, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 57
    .local v1, "id":I
    invoke-virtual {p0, v1}, Lde/agrothe/wanderer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "containerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 62
    .local v8, "textView":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 64
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    .end local v8    # "textView":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 66
    .restart local v8    # "textView":Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 68
    const-string v11, "0"

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "containerView":Landroid/view/View;
    .end local v1    # "id":I
    :cond_1
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "pMenu"    # Landroid/view/Menu;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 84
    invoke-virtual {p0}, Lde/agrothe/wanderer/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "pKeyCode"    # I
    .param p2, "pMsg"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 117
    const/4 v0, 0x0

    .local v0, "diffX":I
    const/4 v1, 0x0

    .line 118
    .local v1, "diffY":I
    sparse-switch p1, :sswitch_data_0

    .line 149
    const/16 v2, 0x52

    if-eq p1, v2, :cond_0

    .line 151
    iput v4, p0, Lde/agrothe/wanderer/MainActivity;->_unlockAllScreensCnt:I

    .line 153
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 156
    :goto_0
    return v2

    .line 125
    :sswitch_0
    const/4 v1, -0x1

    .line 155
    :goto_1
    :sswitch_1
    iget-object v2, p0, Lde/agrothe/wanderer/MainActivity;->_mazeView:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v2, v0, v1}, Lde/agrothe/wanderer/MazeView;->move(II)V

    move v2, v3

    .line 156
    goto :goto_0

    .line 129
    :sswitch_2
    const/4 v1, 0x1

    .line 130
    goto :goto_1

    .line 133
    :sswitch_3
    const/4 v0, -0x1

    .line 134
    goto :goto_1

    .line 137
    :sswitch_4
    const/4 v0, 0x1

    .line 138
    goto :goto_1

    .line 140
    :sswitch_5
    invoke-virtual {p0, v4}, Lde/agrothe/wanderer/MainActivity;->verifyUnlockAllScreens(I)V

    move v2, v3

    .line 141
    goto :goto_0

    .line 143
    :sswitch_6
    invoke-virtual {p0, v3}, Lde/agrothe/wanderer/MainActivity;->verifyUnlockAllScreens(I)V

    move v2, v3

    .line 144
    goto :goto_0

    .line 146
    :sswitch_7
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lde/agrothe/wanderer/MainActivity;->verifyUnlockAllScreens(I)V

    move v2, v3

    .line 147
    goto :goto_0

    .line 118
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xd -> :sswitch_7
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_1
        0x23 -> :sswitch_3
        0x26 -> :sswitch_4
        0x2a -> :sswitch_2
        0x31 -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "pItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 96
    :pswitch_0
    iget-object v0, p0, Lde/agrothe/wanderer/MainActivity;->_mazeView:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v0}, Lde/agrothe/wanderer/MazeView;->showSelectLevelDialog()V

    move v0, v1

    .line 97
    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v0, p0, Lde/agrothe/wanderer/MainActivity;->_mazeView:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v0}, Lde/agrothe/wanderer/MazeView;->showCreditsDialog()V

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v0, p0, Lde/agrothe/wanderer/MainActivity;->_mazeView:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v0}, Lde/agrothe/wanderer/MazeView;->showHelpDialog()V

    move v0, v1

    .line 103
    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v0, p0, Lde/agrothe/wanderer/MainActivity;->_mazeView:Lde/agrothe/wanderer/MazeView;

    invoke-virtual {v0}, Lde/agrothe/wanderer/MazeView;->showSettingsDialog()V

    move v0, v1

    .line 106
    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x7f0b001b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "pEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 164
    iget-object v0, p0, Lde/agrothe/wanderer/MainActivity;->_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method protected verifyUnlockAllScreens(I)V
    .locals 2
    .param p1, "pLegalSequenceNumber"    # I

    .prologue
    .line 173
    iget v0, p0, Lde/agrothe/wanderer/MainActivity;->_unlockAllScreensCnt:I

    .line 174
    .local v0, "unlockAllScreensCnt":I
    if-ne v0, p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    iput v1, p0, Lde/agrothe/wanderer/MainActivity;->_unlockAllScreensCnt:I

    .line 177
    return-void

    .line 174
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
