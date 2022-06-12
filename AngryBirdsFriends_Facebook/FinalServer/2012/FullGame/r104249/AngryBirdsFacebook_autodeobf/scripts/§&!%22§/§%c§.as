package §&!"§
{
   import §#M§.§^0§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §%c§ extends Popup
   {
       
      
      private var §%!R§:Sprite;
      
      private var §!E§:String;
      
      public function §%c§(param1:XML, param2:§^0§, param3:Sprite, param4:String)
      {
         super(param1,param2);
         this.§!E§ = param4;
         this.setVisibility(false);
         this.§%!R§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:* = 0;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§%!R§.width >> 1;
         _loc4_ = _loc2_.height - this.§%!R§.height >> 1;
         var _loc5_:Rectangle = this.§%!R§.getBounds(this.§%!R§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§%!R§);
         this.§%!R§.x = _loc3_;
         this.§%!R§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§%!R§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
