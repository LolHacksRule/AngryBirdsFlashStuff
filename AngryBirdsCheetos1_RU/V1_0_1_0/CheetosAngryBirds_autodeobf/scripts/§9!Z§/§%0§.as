package §9!Z§
{
   import §]!Y§.§5W§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §%0§ extends Popup
   {
       
      
      private var §9b§:Sprite;
      
      public function §%0§(param1:XML, param2:§5W§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§9b§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§9b§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §2!-§.§]!`§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §2!-§.§-$§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§9b§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
