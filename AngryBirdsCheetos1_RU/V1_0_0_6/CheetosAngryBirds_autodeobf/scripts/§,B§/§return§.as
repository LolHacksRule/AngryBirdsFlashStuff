package §,B§
{
   import §;!K§.§+!4§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §return§ extends Popup
   {
       
      
      private var §1!N§:Sprite;
      
      public function §return§(param1:XML, param2:§+!4§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§1!N§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§1!N§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §1R§.§`!N§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §1R§.§1!9§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§1!N§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
