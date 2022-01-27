package §9!#§
{
   import §>!7§.§"Q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §`!=§ extends Popup
   {
       
      
      private var §1!>§:Sprite;
      
      public function §`!=§(param1:XML, param2:§"Q§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§1!>§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§1!>§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§1!>§.height >> 1;
         var _loc5_:Rectangle = this.§1!>§.getBounds(this.§1!>§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§1!>§);
         this.§1!>§.x = _loc3_;
         this.§1!>§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§1!>§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
