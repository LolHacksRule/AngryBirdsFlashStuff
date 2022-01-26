package §_-hE§
{
   import §_-Ux§.§_-2E§;
   import flash.display.Sprite;
   
   public class §_-A2§ extends Popup
   {
       
      
      private var §_-hU§:Sprite;
      
      public function §_-A2§(param1:XML, param2:§_-2E§, param3:Sprite)
      {
         super(param1,param2);
         param2.container.addComponent(this);
         this.setVisibility(false);
         this.§_-hU§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.Container_Tutorial.addChildAt(this.§_-hU§,1);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         this.§_-hU§.x = 530 / 2;
         this.§_-hU§.y = 310 / 2;
         mClip.getChildByName("Container_Tutorial").x = §_-5e§.§_-ZL§ / 2 - 530 / 2 - 100;
         mClip.getChildByName("Container_Tutorial").y = §_-5e§.§_-Uw§ / 2 - 310 / 2 - 20;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         mClip.Container_Tutorial.removeChild(this.§_-hU§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
         §_-9P§.clean();
         §_-9P§ = null;
      }
   }
}
