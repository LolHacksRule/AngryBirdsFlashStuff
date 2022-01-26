package §_-De§
{
   import §_-1p§.§_-K9§;
   import flash.display.Sprite;
   
   public class §_-ep§ extends Popup
   {
       
      
      private var §_-sX§:Sprite;
      
      public function §_-ep§(param1:XML, param2:§_-K9§, param3:Sprite)
      {
         super(param1,param2);
         param2.container.addComponent(this);
         this.setVisibility(false);
         this.§_-sX§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.Container_Tutorial.addChildAt(this.§_-sX§,1);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         this.§_-sX§.x = 530 / 2;
         this.§_-sX§.y = 310 / 2;
         mClip.getChildByName("Container_Tutorial").x = §_-2U§.§_-EK§ / 2 - 530 / 2 - 100;
         mClip.getChildByName("Container_Tutorial").y = §_-2U§.§_-UU§ / 2 - 310 / 2 - 20;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         mClip.Container_Tutorial.removeChild(this.§_-sX§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
         §_-gk§.clean();
         §_-gk§ = null;
      }
   }
}
