package §+h§
{
   import §1"2§.§'s§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §?0§ extends Popup
   {
       
      
      private var §3"$§:Sprite;
      
      public function §?0§(param1:XML, param2:§'s§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§3"$§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:* = 0;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§3"$§.width >> 1;
         _loc4_ = _loc2_.height - this.§3"$§.height >> 1;
         var _loc5_:Rectangle = this.§3"$§.getBounds(this.§3"$§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§3"$§);
         this.§3"$§.x = _loc3_;
         this.§3"$§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§3"$§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
