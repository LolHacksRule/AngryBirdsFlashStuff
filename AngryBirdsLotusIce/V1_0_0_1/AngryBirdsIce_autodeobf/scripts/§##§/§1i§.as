package §##§
{
   import §87§.§]T§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §1i§ extends Popup
   {
       
      
      private var §@N§:Sprite;
      
      public function §1i§(param1:XML, param2:§]T§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§@N§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§@N§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§@N§.height >> 1;
         var _loc5_:Rectangle = this.§@N§.getBounds(this.§@N§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§@N§);
         this.§@N§.x = _loc3_;
         this.§@N§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§@N§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
