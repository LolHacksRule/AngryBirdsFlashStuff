package com.rovio.graphics.cutscenes
{
   import com.rovio.graphics.TextureManager;
   import starling.display.Quad;
   import starling.display.Sprite;
   import starling.core.Starling;
   import com.angrybirds.AngryBirdsEngine;
   
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
      
      public function CutScene(param1:Object, param2:String)
      {
         var _loc3_:CutSceneAction = null;
         var _loc4_:Object = null;
         this.mActions = new Vector.<CutSceneAction>();
         super();
         this.mTime = 0;
         if(param1)
         {
            if(param2.search("intro") != -1)
            {
               this.mCutSceneType = TYPE_INTRO;
            }
            else if(param2.search("complete") != -1)
            {
               this.mCutSceneType = TYPE_OUTRO;
            }
            for each(_loc4_ in param1)
            {
               _loc3_ = this.parseAction(_loc4_);
               if(_loc3_)
               {
                  this.mActions.push(_loc3_);
               }
            }
            for each(_loc3_ in this.mActions)
            {
               if(_loc3_ is CutSceneScrollAction)
               {
                  (_loc3_ as CutSceneScrollAction).setSize(this.mWidth,this.mHeight);
                  (_loc3_ as CutSceneScrollAction).horizontal = this.mFitHeight;
               }
               else if(_loc3_ is CutSceneImageAction)
               {
                  (_loc3_ as CutSceneImageAction).setSize(this.mWidth,this.mHeight);
                  (_loc3_ as CutSceneImageAction).fitHeight = this.mFitHeight;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.mSprite;
      }
      
      private function parseAction(param1:Object) : CutSceneAction
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         switch(param1.action)
         {
            case CutSceneAction.CREATE_SPRITE:
               return new CutSceneImageAction(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
            case CutSceneAction.SCROLL:
               _loc2_ = param1.scroll_target;
               if(_loc2_.type == "sprite")
               {
                  return new CutSceneScrollAction(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
               }
               break;
            case CutSceneAction.ZOOM:
               _loc3_ = param1.zoom_target;
               if(_loc3_.type == "sprite")
               {
                  return new CutSceneZoomAction(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
               }
               break;
            case CutSceneAction.PLAY_SOUND:
               return new CutSceneSoundAction(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
            case CutSceneAction.END:
               this.mDuration = param1.time * 1000;
               break;
            case CutSceneAction.SET_REFERENCE_SIZE:
               this.mWidth = param1.width;
               this.mHeight = param1.height;
               break;
            case CutSceneAction.FIT_WIDTH:
               this.mFitHeight = false;
               break;
            case CutSceneAction.FIT_HEIGHT:
               this.mFitHeight = true;
               break;
            case CutSceneAction.SET_BG_COLOR:
               this.mBackgroundColor = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
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
      
      public function update(param1:Number) : Boolean
      {
         if(!this.mSprite)
         {
            this.mSprite = new Sprite();
         }
         this.mTime += param1;
         var _loc2_:int = this.mActions.length - 1;
         while(_loc2_ >= 0)
         {
            if(!this.mActions[_loc2_].update(this.mTime,this.mSprite,this.mTextureManager))
            {
               this.mActions.splice(_loc2_,1);
            }
            _loc2_--;
         }
         this.addBackground();
         this.addForeground();
         this.updateAlignment();
         return this.mTime < this.mDuration;
      }
      
      private function updateAlignment() : void
      {
         var _loc1_:int = Starling.viewPort.height;
         var _loc2_:Number = AngryBirdsEngine.sWidthScale;
         var _loc3_:Number = AngryBirdsEngine.sHeightScale;
         var _loc4_:int = (_loc1_ - this.mHeight * _loc2_) / _loc2_;
         this.mSprite.y = _loc4_ >> 1;
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
         var _loc1_:Sprite = this.mSprite.getChildByName(CutSceneImageAction.MAIN_SPRITE_NAME) as Sprite;
         if(!_loc1_)
         {
         }
         this.mForegroundAdded = true;
      }
      
      public function clone(param1:TextureManager) : CutScene
      {
         var _loc3_:CutSceneAction = null;
         var _loc2_:CutScene = new CutScene(null,null);
         for each(_loc3_ in this.mActions)
         {
            _loc2_.mActions.push(_loc3_.clone());
         }
         _loc2_.mTime = this.mTime;
         _loc2_.mDuration = this.mDuration;
         _loc2_.mWidth = this.mWidth;
         _loc2_.mHeight = this.mHeight;
         _loc2_.mFitHeight = this.mFitHeight;
         _loc2_.mBackgroundColor = this.mBackgroundColor;
         _loc2_.mCutSceneType = this.mCutSceneType;
         _loc2_.mTextureManager = param1;
         return _loc2_;
      }
      
      public function get cutSceneType() : String
      {
         return this.mCutSceneType;
      }
      
      public function set cutSceneType(param1:String) : void
      {
         this.mCutSceneType = param1;
      }
   }
}
