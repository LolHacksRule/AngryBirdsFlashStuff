package §"$§
{
   import §=!5§.§`X§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class TutorialPowerUpPopup extends Popup
   {
       
      
      private var §2!_§:Sprite;
      
      private var §>K§:String;
      
      public function TutorialPowerUpPopup(data:XML, currentUIView:§`X§, tutorialSprite:Sprite, tutorialName:String)
      {
         super(data,currentUIView);
         this.§>K§ = tutorialName;
         this.setVisibility(false);
         this.§2!_§ = tutorialSprite;
      }
      
      override public function open(useFadeEffect:Boolean = true) : void
      {
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var x:int = container.width - this.§2!_§.width >> 1;
         var y:int = container.height - this.§2!_§.height >> 1;
         var rect:Rectangle = this.§2!_§.getBounds(this.§2!_§);
         x -= rect.left;
         y -= rect.top;
         container.addChild(this.§2!_§);
         if(this.§>K§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§%!E§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         this.§2!_§.x = x;
         this.§2!_§.y = y - 10;
         super.open(useFadeEffect);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §%!E§(e:MouseEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(useFadeEffect:Boolean = true) : void
      {
         super.preClose(useFadeEffect);
         var container:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         container.removeChild(this.§2!_§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
