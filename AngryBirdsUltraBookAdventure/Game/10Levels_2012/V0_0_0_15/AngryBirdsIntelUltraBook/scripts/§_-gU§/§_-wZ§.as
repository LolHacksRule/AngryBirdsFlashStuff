package §_-gU§
{
   import §_-Yl§.§_-5q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §_-wZ§ extends Popup
   {
       
      
      private var §_-mA§:Sprite;
      
      public function §_-wZ§(param1:XML, param2:§_-5q§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§_-mA§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§_-mA§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§_-mA§.height >> 1;
         var _loc5_:Rectangle = this.§_-mA§.getBounds(this.§_-mA§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§_-mA§);
         this.§_-mA§.x = _loc3_;
         this.§_-mA§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§_-mA§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
