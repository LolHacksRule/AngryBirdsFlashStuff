package §_-20§
{
   import §_-QM§.§_-Ns§;
   import flash.display.Sprite;
   
   public class §_-Rx§ extends Popup
   {
       
      
      private var §_-NQ§:Sprite;
      
      public function §_-Rx§(param1:XML, param2:§_-Ns§, param3:Sprite)
      {
         super(param1,param2);
         param2.container.addComponent(this);
         this.setVisibility(false);
         this.§_-NQ§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.Container_Tutorial.addChildAt(this.§_-NQ§,1);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         this.§_-NQ§.x = 530 / 2;
         this.§_-NQ§.y = 310 / 2;
         mClip.getChildByName("Container_Tutorial").x = §_-I8§.§_-iX§ / 2 - 530 / 2 - 100;
         mClip.getChildByName("Container_Tutorial").y = §_-I8§.§_-q§ / 2 - 310 / 2 - 20;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         mClip.Container_Tutorial.removeChild(this.§_-NQ§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
         §_-qc§.clean();
         §_-qc§ = null;
      }
   }
}
