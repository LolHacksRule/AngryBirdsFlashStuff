package com.rovio.graphics.cutscenes
{
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.graphics.TextureManager;
   import starling.core.Starling;
   import starling.display.Quad;
   import starling.display.Sprite;
   
   public class CutScene
   {
      
      public static const TYPE_INTRO:String = "CutScene_Type_Intro";
      
      public static const TYPE_OUTRO:String = "CutScene_Type_Outro";
      
      public static const TYPE_FINAL_OUTRO:String = "CutScene_Type_Final_Outro";
       
      
      private var mTextureManager:TextureManager;
      
      private var mCutSceneType:String;
      
      private var mActions:Vector.<CutSceneAction>;
      
      private var mTime:Number;
      
      private var mDuration:Number;
      
      private var mWidth:Number;
      
      private var mHeight:Number;
      
      private var mSprite:Sprite;
      
      private var mFitHeight:Boolean = true;
      
      private var mBackgroundColor:uint;
      
      private var mForegroundAdded:Boolean;
      
      private var mLeftBorder:Quad;
      
      private var mRightBorder:Quad;
      
      public function CutScene(data:Object, cutSceneName:String)
      {
         var action:CutSceneAction = null;
         var actionData:Object = null;
         this.mActions = new Vector.<CutSceneAction>();
         super();
         this.mTime = 0;
         if(data)
         {
            if(cutSceneName.search("intro") != -1)
            {
               this.mCutSceneType = TYPE_INTRO;
            }
            else if(cutSceneName.search("complete") != -1)
            {
               this.mCutSceneType = TYPE_OUTRO;
            }
            for each(actionData in data)
            {
               action = this.parseAction(actionData);
               if(action)
               {
                  this.mActions.push(action);
               }
            }
            for each(action in this.mActions)
            {
               if(action is CutSceneScrollAction)
               {
                  (action as CutSceneScrollAction).setSize(this.mWidth,this.mHeight);
                  (action as CutSceneScrollAction).horizontal = this.mFitHeight;
               }
               else if(action is CutSceneImageAction)
               {
                  (action as CutSceneImageAction).setSize(this.mWidth,this.mHeight);
                  (action as CutSceneImageAction).fitHeight = this.mFitHeight;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.mSprite;
      }
      
      private function parseAction(action:Object) : CutSceneAction
      {
         var scrollTarget:Object = null;
         var zoomTarget:Object = null;
         switch(action.action)
         {
            case CutSceneAction.CREATE_SPRITE:
               return new CutSceneImageAction(action.time * 1000,0,action.name,action.image,action.x,action.y,action.zoom);
            case CutSceneAction.SCROLL:
               scrollTarget = action.scroll_target;
               if(scrollTarget.type == "sprite")
               {
                  return new CutSceneScrollAction(action.time * 1000,action.duration * 1000,scrollTarget.sprite,scrollTarget.x,scrollTarget.y,action.type);
               }
               break;
            case CutSceneAction.ZOOM:
               zoomTarget = action.zoom_target;
               if(zoomTarget.type == "sprite")
               {
                  return new CutSceneZoomAction(action.time * 1000,action.duration * 1000,zoomTarget.sprite,zoomTarget.initialZoom,zoomTarget.targetZoom);
               }
               break;
            case CutSceneAction.PLAY_SOUND:
               return new CutSceneSoundAction(action.time * 1000,0,action.sound,action.loop,action.volume,action.track);
            case CutSceneAction.END:
               this.mDuration = action.time * 1000;
               break;
            case CutSceneAction.SET_REFERENCE_SIZE:
               this.mWidth = action.width;
               this.mHeight = action.height;
               break;
            case CutSceneAction.FIT_WIDTH:
               this.mFitHeight = false;
               break;
            case CutSceneAction.FIT_HEIGHT:
               this.mFitHeight = true;
               break;
            case CutSceneAction.SET_BG_COLOR:
               this.mBackgroundColor = (action.r << 16) + (action.g << 8) + action.b + (255 << 24);
         }
         return null;
      }
      
      public function dispose() : void
      {
         if(this.mSprite)
         {
            this.mSprite.dispose();
            this.mSprite = null;
         }
         this.mActions = null;
      }
      
      public function update(timeDelta:Number) : Boolean
      {
         if(!this.mSprite)
         {
            this.mSprite = new Sprite();
         }
         this.mTime += timeDelta;
         for(var i:int = this.mActions.length - 1; i >= 0; i--)
         {
            if(!this.mActions[i].update(this.mTime,this.mSprite,this.mTextureManager))
            {
               this.mActions.splice(i,1);
            }
         }
         this.addBackground();
         this.addForeground();
         this.updateAlignment();
         return this.mTime < this.mDuration;
      }
      
      private function updateAlignment() : void
      {
         var viewHt:int = Starling.viewPort.height;
         var viewWt:int = Starling.viewPort.width;
         var wScale:Number = AngryBirdsEngine.sWidthScale;
         var hScale:Number = AngryBirdsEngine.sHeightScale;
         var ht:int = (viewHt - this.mHeight * wScale) / wScale;
         this.mSprite.scaleX = this.mSprite.scaleY = Math.max(0.5,Math.min(1,wScale / hScale));
         this.mSprite.y = ht >> 1;
      }
      
      private function addBackground() : void
      {
         Starling.current.color = this.mBackgroundColor;
      }
      
      private function addForeground() : void
      {
         if(this.mForegroundAdded)
         {
            return;
         }
         var sprite:Sprite = this.mSprite.getChildByName(CutSceneImageAction.MAIN_SPRITE_NAME) as Sprite;
         if(!sprite)
         {
         }
         this.mForegroundAdded = true;
      }
      
      public function clone(textureManager:TextureManager) : CutScene
      {
         var action:CutSceneAction = null;
         var clone:CutScene = new CutScene(null,null);
         for each(action in this.mActions)
         {
            clone.mActions.push(action.clone());
         }
         clone.mTime = this.mTime;
         clone.mDuration = this.mDuration;
         clone.mWidth = this.mWidth;
         clone.mHeight = this.mHeight;
         clone.mFitHeight = this.mFitHeight;
         clone.mBackgroundColor = this.mBackgroundColor;
         clone.mCutSceneType = this.mCutSceneType;
         clone.mTextureManager = textureManager;
         return clone;
      }
      
      public function get cutSceneType() : String
      {
         return this.mCutSceneType;
      }
      
      public function set cutSceneType(value:String) : void
      {
         this.mCutSceneType = value;
      }
   }
}
