package §2V§
{
   import §'Y§.§;J§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §catch§ extends Popup
   {
       
      
      private var §1!T§:Sprite;
      
      public function §catch§(param1:XML, param2:§;J§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§1!T§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§1!T§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §3§.§'R§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §3§.§'Z§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§1!T§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
