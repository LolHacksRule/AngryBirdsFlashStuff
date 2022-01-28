package § do§
{
   import §_-Qn§.§_-bo§;
   import flash.display.Sprite;
   
   public class §_-Oj§ extends Popup
   {
       
      
      private var §_-YG§:Sprite;
      
      public function §_-Oj§(param1:XML, param2:§_-bo§, param3:Sprite)
      {
         super(param1,param2);
         param2.container.addComponent(this);
         this.setVisibility(false);
         this.§_-YG§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.Container_Tutorial.addChildAt(this.§_-YG§,1);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         this.§_-YG§.x = 530 / 2;
         this.§_-YG§.y = 310 / 2;
         mClip.getChildByName("Container_Tutorial").x = §_-q0§.§ null§ / 2 - 530 / 2 - 100;
         mClip.getChildByName("Container_Tutorial").y = §_-q0§.§_-aD§ / 2 - 310 / 2 - 20;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         mClip.Container_Tutorial.removeChild(this.§_-YG§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
         §_-C8§.clean();
         §_-C8§ = null;
      }
   }
}
