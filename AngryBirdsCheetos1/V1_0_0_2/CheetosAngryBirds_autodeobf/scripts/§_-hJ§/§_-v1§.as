package §_-hJ§
{
   import §_-w8§.§_-S6§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §_-v1§ extends Popup
   {
       
      
      private var §_-nl§:Sprite;
      
      public function §_-v1§(param1:XML, param2:§_-S6§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§_-nl§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§_-nl§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §_-rs§.§_-dI§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §_-rs§.§_-0R§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§_-nl§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
