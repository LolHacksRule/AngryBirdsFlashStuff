package §!!j§
{
   import §>f§.§&!G§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class §4U§ extends Popup
   {
       
      
      private var §1J§:Sprite;
      
      private var §99§:String;
      
      public function §4U§(param1:XML, param2:§&!G§, param3:Sprite, param4:String)
      {
         super(param1,param2);
         this.§99§ = param4;
         this.setVisibility(false);
         this.§1J§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§1J§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§1J§.height >> 1;
         var _loc5_:Rectangle = this.§1J§.getBounds(this.§1J§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§1J§);
         this.§1J§.x = _loc3_;
         this.§1J§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§1J§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
