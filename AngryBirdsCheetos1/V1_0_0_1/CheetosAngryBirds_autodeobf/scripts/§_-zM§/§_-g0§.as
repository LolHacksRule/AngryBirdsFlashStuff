package §_-zM§
{
   import §_-q6§.§_-ZW§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class §_-g0§ extends Popup
   {
       
      
      private var §_-xe§:Sprite;
      
      public function §_-g0§(param1:XML, param2:§_-ZW§, param3:Sprite)
      {
         super(param1,param2);
         this.setVisibility(false);
         this.§_-xe§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         (mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer).addChild(this.§_-xe§);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         mClip.getChildByName("Container_Tutorial").x = §_-Vc§.§_-jC§ / 2;
         mClip.getChildByName("Container_Tutorial").y = §_-Vc§.§_-0-3§ / 2;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§_-xe§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
