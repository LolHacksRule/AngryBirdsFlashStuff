package §=!4§
{
   import §1;§.§!!1§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §8;§ extends Popup
   {
       
      
      private var §]?§:Sprite;
      
      public function §8;§(param1:XML, param2:§!!1§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§]?§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§]?§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§]?§.height >> 1;
         var _loc5_:Rectangle = this.§]?§.getBounds(this.§]?§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§]?§);
         this.§]?§.x = _loc3_;
         this.§]?§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§]?§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
