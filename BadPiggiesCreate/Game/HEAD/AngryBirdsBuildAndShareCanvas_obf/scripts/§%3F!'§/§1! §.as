package §?!'§
{
   import §&!<§.§>!V§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §1! § extends Popup
   {
       
      
      private var §0Y§:Sprite;
      
      private var §&"'§:String;
      
      public function §1! §(param1:XML, param2:§>!V§, param3:Sprite, param4:String)
      {
         super(param1,param2);
         this.§&"'§ = param4;
         this.setVisibility(false);
         this.§0Y§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§0Y§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§0Y§.height >> 1;
         var _loc5_:Rectangle = this.§0Y§.getBounds(this.§0Y§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§0Y§);
         this.§0Y§.x = _loc3_;
         this.§0Y§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§0Y§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
