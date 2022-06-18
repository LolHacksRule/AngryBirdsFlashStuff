package §6=§
{
   import §`B§.§-Z§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §&$§ extends Popup
   {
       
      
      private var §;S§:Sprite;
      
      public function §&$§(param1:XML, param2:§-Z§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§;S§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§;S§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §4+§.§1=§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §4+§.§@!#§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§;S§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
