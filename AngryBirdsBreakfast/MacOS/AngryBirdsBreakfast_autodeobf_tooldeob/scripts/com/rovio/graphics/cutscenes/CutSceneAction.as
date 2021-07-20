package com.rovio.graphics.cutscenes
{
   import com.rovio.graphics.TextureManager;
   import starling.display.Sprite;
   
   public class CutSceneAction
   {
      
      public static const SET_REFERENCE_SIZE:String = "setreferencesize";
      
      public static const CREATE_SPRITE:String = "createsprite";
      
      public static const SCROLL:String = "scroll";
      
      public static const ZOOM:String = "zoom";
      
      public static const PLAY_SOUND:String = "playsound";
      
      public static const FIT_WIDTH:String = "fitwidth";
      
      public static const FIT_HEIGHT:String = "fitheight";
      
      public static const SET_BG_COLOR:String = "set_bg_colour";
      
      public static const END:String = "end";
       
      
      private var mTime:Number;
      
      private var mDuration:Number;
      
      public function CutSceneAction(param1:Number, param2:Number)
      {
         super();
         this.mTime = param1;
         this.mDuration = param2;
         if(isNaN(this.mDuration))
         {
            this.mDuration = 0;
         }
      }
      
      public function get time() : Number
      {
         return this.mTime;
      }
      
      public function get duration() : Number
      {
         return this.mDuration;
      }
      
      public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         if(param1 >= this.time + this.duration)
         {
            return false;
         }
         return true;
      }
      
      public function clone() : CutSceneAction
      {
         return new CutSceneAction(this.time,this.duration);
      }
   }
}
