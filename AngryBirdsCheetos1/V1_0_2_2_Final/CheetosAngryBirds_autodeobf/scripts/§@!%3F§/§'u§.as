package §@!?§
{
   import §0F§.§'j§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §'u§ extends Popup
   {
       
      
      private var §;<§:Sprite;
      
      public function §'u§(param1:XML, param2:§'j§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§;<§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§;<§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §#x§.§;#§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §#x§.§0h§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§;<§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
