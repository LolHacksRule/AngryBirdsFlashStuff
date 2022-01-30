package §,"$§
{
   import §4!t§.§=p§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §-!'§ extends Popup
   {
       
      
      private var §0!b§:Sprite;
      
      public function §-!'§(param1:XML, param2:§=p§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§0!b§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:* = 0;
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§0!b§.width >> 1;
         _loc4_ = _loc2_.height - this.§0!b§.height >> 1;
         var _loc5_:Rectangle = this.§0!b§.getBounds(this.§0!b§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§0!b§);
         this.§0!b§.x = _loc3_;
         this.§0!b§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§0!b§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
