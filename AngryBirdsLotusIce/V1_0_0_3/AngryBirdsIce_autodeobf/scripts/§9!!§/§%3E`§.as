package §9!!§
{
   import §2]§.§#H§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §>`§ extends Popup
   {
       
      
      private var §^L§:Sprite;
      
      public function §>`§(param1:XML, param2:§#H§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§^L§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§^L§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§^L§.height >> 1;
         var _loc5_:Rectangle = this.§^L§.getBounds(this.§^L§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§^L§);
         this.§^L§.x = _loc3_;
         this.§^L§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§^L§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
