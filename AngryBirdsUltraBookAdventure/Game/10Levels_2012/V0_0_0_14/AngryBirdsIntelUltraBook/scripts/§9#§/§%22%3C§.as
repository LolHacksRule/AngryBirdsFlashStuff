package §9#§
{
   import §1n§.§ C§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §"<§ extends Popup
   {
       
      
      private var §2!k§:Sprite;
      
      public function §"<§(param1:XML, param2:§ C§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§2!k§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§2!k§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§2!k§.height >> 1;
         var _loc5_:Rectangle = this.§2!k§.getBounds(this.§2!k§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§2!k§);
         this.§2!k§.x = _loc3_;
         this.§2!k§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§2!k§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
