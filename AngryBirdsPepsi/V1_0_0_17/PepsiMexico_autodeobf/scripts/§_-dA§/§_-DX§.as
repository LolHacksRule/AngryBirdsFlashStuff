package §_-dA§
{
   import §_-Ur§.§_-ru§;
   import flash.display.Sprite;
   
   public class §_-DX§ extends Popup
   {
       
      
      private var §_-72§:Sprite;
      
      public function §_-DX§(param1:XML, param2:§_-ru§, param3:Sprite)
      {
         super(param1,param2);
         param2.container.addComponent(this);
         this.setVisibility(false);
         this.§_-72§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.Container_Tutorial.addChildAt(this.§_-72§,1);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         this.§_-72§.x = 530 / 2;
         this.§_-72§.y = 310 / 2;
         mClip.getChildByName("Container_Tutorial").x = §_-Qu§.§_-1q§ / 2 - 530 / 2 - 100;
         mClip.getChildByName("Container_Tutorial").y = §_-Qu§.§_-SP§ / 2 - 310 / 2 - 20;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         mClip.Container_Tutorial.removeChild(this.§_-72§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
         §_-4W§.clean();
         §_-4W§ = null;
      }
   }
}
