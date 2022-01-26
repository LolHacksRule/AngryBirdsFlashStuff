package §_-Q2§
{
   import §_-xL§.§_-1-§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §_-P3§ extends Popup
   {
       
      
      private var §_-eg§:Sprite;
      
      public function §_-P3§(param1:XML, param2:§_-1-§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§_-eg§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§_-eg§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §_-WX§.§_-I0§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §_-WX§.§_-ZV§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§_-eg§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
