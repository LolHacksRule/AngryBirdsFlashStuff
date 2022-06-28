package §##§
{
   import §4!9§.§6"§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class TutorialPowerUpPopup extends Popup
   {
       
      
      private var §,^§:Sprite;
      
      private var §8Y§:String;
      
      public function TutorialPowerUpPopup(data:XML, currentUIView:§6"§, tutorialSprite:Sprite, tutorialName:String)
      {
         super(data,currentUIView);
         this.§8Y§ = tutorialName;
         this.setVisibility(false);
         this.§,^§ = tutorialSprite;
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var x:int = container.width - this.§,^§.width >> 1;
         var y:int = container.height - this.§,^§.height >> 1;
         var rect:Rectangle = this.§,^§.getBounds(this.§,^§);
         x -= rect.left;
         y -= rect.top;
         container.addChild(this.§,^§);
         if(this.§8Y§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§?e§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         this.§,^§.x = x;
         this.§,^§.y = y - 10;
         super.open(useFadeEffect);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §?e§(e:MouseEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(useFadeEffect:Boolean = true) : void
      {
         super.preClose(useFadeEffect);
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         container.removeChild(this.§,^§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
