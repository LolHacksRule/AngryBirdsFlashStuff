package §5!Y§
{
   import §`"%§.§`_§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §6A§ extends Popup
   {
       
      
      private var §=F§:Sprite;
      
      private var §%D§:String;
      
      public function §6A§(param1:XML, param2:§`_§, param3:Sprite, param4:String)
      {
         super(param1,param2);
         this.§%D§ = param4;
         this.setVisibility(false);
         this.§=F§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§=F§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§=F§.height >> 1;
         var _loc5_:Rectangle = this.§=F§.getBounds(this.§=F§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§=F§);
         this.§=F§.x = _loc3_;
         this.§=F§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§=F§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
