package §2v§
{
   import §>P§.§5!§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §^!§ extends Popup
   {
       
      
      private var §5!c§:Sprite;
      
      public function §^!§(param1:XML, param2:§5!§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§5!c§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§5!c§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §5!9§.§?!L§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §5!9§.§"r§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§5!c§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
