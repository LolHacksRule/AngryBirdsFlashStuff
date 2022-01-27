package §2!!§
{
   import §]!O§.§+[§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §@"§ extends Popup
   {
       
      
      private var §9h§:Sprite;
      
      public function §@"§(param1:XML, param2:§+[§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§9h§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§9h§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§9h§.height >> 1;
         var _loc5_:Rectangle = this.§9h§.getBounds(this.§9h§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§9h§);
         this.§9h§.x = _loc3_;
         this.§9h§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§9h§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
