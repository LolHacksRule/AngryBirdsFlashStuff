package §2?§
{
   import §0w§.§0#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class §9!+§ extends Popup
   {
       
      
      private var §09§:Sprite;
      
      private var §?!§:String;
      
      public function §9!+§(param1:XML, param2:§0#§, param3:Sprite, param4:String)
      {
         super(param1,param2);
         this.§?!§ = param4;
         this.setVisibility(false);
         this.§09§ = param3;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:* = _loc2_.width - this.§09§.width >> 1;
         var _loc4_:* = _loc2_.height - this.§09§.height >> 1;
         var _loc5_:Rectangle = this.§09§.getBounds(this.§09§);
         _loc3_ -= _loc5_.left;
         _loc4_ -= _loc5_.top;
         _loc2_.addChild(this.§09§);
         if(this.§?!§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.sUserProgress as Object).isEggUnlocked("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§,$§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         this.§09§.x = _loc3_;
         this.§09§.y = _loc4_ - 10;
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §,$§(param1:MouseEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as Object).setEggUnlocked("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc2_.removeChild(this.§09§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
