package §9!#§
{
   import §>!7§.§"Q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §22§ extends Popup
   {
       
      
      private var §1!>§:Sprite;
      
      private var §'F§:String;
      
      public function §22§(param1:XML, param2:§"Q§, param3:Sprite, param4:String)
      {
         super(param1,param2);
         this.§'F§ = param4;
         this.setVisibility(false);
         this.§1!>§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§1!>§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§1!>§.height >> 1;
         var _loc5_:Rectangle = this.§1!>§.getBounds(this.§1!>§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§1!>§);
         if(this.§'F§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.§5@§ as Object).isEggUnlocked("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§07§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         this.§1!>§.x = _loc3_;
         this.§1!>§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §07§(param1:MouseEvent) : void
      {
         (AngryBirdsFP11.§5@§ as Object).setEggUnlocked("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§1!>§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
