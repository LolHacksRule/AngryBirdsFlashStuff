package §?!1§
{
   import §-M§.§3!6§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §<!Q§ extends Popup
   {
       
      
      private var §#!O§:Sprite;
      
      public function §<!Q§(param1:XML, param2:§3!6§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§#!O§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§#!O§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §,l§.§"L§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §,l§.§#S§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§#!O§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
