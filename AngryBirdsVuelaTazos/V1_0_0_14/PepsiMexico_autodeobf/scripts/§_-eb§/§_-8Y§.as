package §_-eb§
{
   import §_-Yh§.§_-fA§;
   import flash.display.Sprite;
   
   public class §_-8Y§ extends Popup
   {
       
      
      private var §_-BX§:Sprite;
      
      public function §_-8Y§(param1:XML, param2:§_-fA§, param3:Sprite)
      {
         super(param1,param2);
         param2.container.addComponent(this);
         this.setVisibility(false);
         this.§_-BX§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.Container_Tutorial.addChildAt(this.§_-BX§,1);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         this.§_-BX§.x = 530 / 2;
         this.§_-BX§.y = 310 / 2;
         mClip.getChildByName("Container_Tutorial").x = §_-Tj§.§_-4r§ / 2 - 530 / 2 - 100;
         mClip.getChildByName("Container_Tutorial").y = §_-Tj§.§_-ho§ / 2 - 310 / 2 - 20;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         mClip.Container_Tutorial.removeChild(this.§_-BX§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
         §_-NZ§.clean();
         §_-NZ§ = null;
      }
   }
}
