package §63§
{
   import §#M§.§^0§;
   import §&!"§.Popup;
   import §<";§.§'y§;
   import com.rovio.assets.§>"5§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §;!^§ extends Popup
   {
       
      
      private var §%!R§:Sprite;
      
      private var §!E§:String;
      
      public function §;!^§(param1:XML, param2:§^0§, param3:String)
      {
         super(param1,param2);
         this.§!E§ = param3;
         var _loc4_:Class;
         var _loc5_:Sprite = new (_loc4_ = §>"5§.§6s§(param3))();
         this.setVisibility(false);
         this.§%!R§ = _loc5_;
         this.§%!R§.mouseChildren = false;
         this.§%!R§.mouseEnabled = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         _loc3_.addChild(this.§%!R§);
         if(this.§!E§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.sUserProgress as §'y§).§#!e§("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§0!-§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §0!-§(param1:MouseEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §'y§).§?"%§("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         _loc3_.removeChild(this.§%!R§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
