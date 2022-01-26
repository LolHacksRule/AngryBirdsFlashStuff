package §_-IZ§
{
   import §_-8J§.§_-8s§;
   import flash.display.Sprite;
   
   public class §_-tc§ extends Popup
   {
       
      
      private var §_-Sr§:Sprite;
      
      public function §_-tc§(param1:XML, param2:§_-8s§, param3:Sprite)
      {
         super(param1,param2);
         param2.container.addComponent(this);
         this.setVisibility(false);
         this.§_-Sr§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         mClip.Container_Tutorial.addChildAt(this.§_-Sr§,1);
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
         this.§_-Sr§.x = 530 / 2;
         this.§_-Sr§.y = 310 / 2;
         mClip.getChildByName("Container_Tutorial").x = §_-0Y§.§_-dN§ / 2 - 530 / 2 - 100;
         mClip.getChildByName("Container_Tutorial").y = §_-0Y§.§_-mI§ / 2 - 310 / 2 - 20;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         mClip.Container_Tutorial.removeChild(this.§_-Sr§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
         §_-PY§.clean();
         §_-PY§ = null;
      }
   }
}
