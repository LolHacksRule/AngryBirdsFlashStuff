package §1e§
{
   import §>!D§.§;,§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class § in§ extends Popup
   {
       
      
      private var §`!X§:Sprite;
      
      public function § in§(param1:XML, param2:§;,§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§`!X§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§`!X§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §7d§.§=!#§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §7d§.§,n§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§`!X§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
