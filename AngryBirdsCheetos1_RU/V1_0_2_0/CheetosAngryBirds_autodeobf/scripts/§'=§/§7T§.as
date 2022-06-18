package §'=§
{
   import §&8§.§<O§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §7T§ extends Popup
   {
       
      
      private var §7!;§:Sprite;
      
      public function §7T§(param1:XML, param2:§<O§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§7!;§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§7!;§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §@!!§.§34§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §@!!§.§!=§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§7!;§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
