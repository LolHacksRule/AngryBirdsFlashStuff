package com.rovio.graphics.cutscenes
{
   import com.rovio.graphics.CompositeSpriteParser;
   import com.rovio.graphics.TextureManager;
   import com.rovio.graphics.PivotTexture;
   import starling.display.Image;
   import starling.display.DisplayObject;
   import starling.display.DisplayObjectContainer;
   import starling.display.Sprite;
   
   public class CutSceneImageAction extends CutSceneAction
   {
      
      public static const MAIN_SPRITE_NAME:String = "background";
       
      
      private var mName:String;
      
      private var mImageName:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var mWidth:Number;
      
      private var mHeight:Number;
      
      private var mZoom:Number = 1.0;
      
      private var mFitHeight:Boolean = true;
      
      public function CutSceneImageAction(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         super(param1,param2);
         this.mName = param3;
         this.mImageName = param4;
         this.mX = param5;
         this.mY = param6;
         if(!isNaN(param7) && param7 > 0)
         {
            this.mZoom = param7;
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get imageName() : String
      {
         return this.mImageName;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set fitHeight(param1:Boolean) : void
      {
         this.mFitHeight = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:PivotTexture = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!super.update(param1,param2,param3))
         {
            if(!(_loc4_ = CompositeSpriteParser.getCompositeSprite(this.imageName,param3)))
            {
               if(_loc5_ = param3.getTexture(this.imageName))
               {
                  (_loc4_ = new Image(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  _loc4_.pivotY = -_loc5_.pivotY;
               }
            }
            if(_loc4_)
            {
               if(_loc6_ = param2.getChildByName(MAIN_SPRITE_NAME) as Sprite)
               {
                  param2 = _loc6_;
               }
               _loc4_.x += this.x;
               _loc4_.y += this.y;
               _loc4_.name = this.name;
               if(_loc7_ = param2.getChildByName(this.name))
               {
                  (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                  _loc8_.addChild(_loc4_);
               }
               else
               {
                  param2.addChild(_loc4_);
               }
               if(this.name == MAIN_SPRITE_NAME)
               {
                  if(!this.mFitHeight)
                  {
                  }
               }
               _loc4_.scaleX = this.mZoom;
               _loc4_.scaleY = this.mZoom;
            }
            return false;
         }
         return true;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.mWidth = param1;
         this.mHeight = param2;
      }
      
      override public function clone() : CutSceneAction
      {
         var _loc1_:CutSceneImageAction = new CutSceneImageAction(time,duration,this.mName,this.mImageName,this.mX,this.mY,this.mZoom);
         _loc1_.mFitHeight = this.mFitHeight;
         _loc1_.mWidth = this.mWidth;
         _loc1_.mHeight = this.mHeight;
         return _loc1_;
      }
   }
}
