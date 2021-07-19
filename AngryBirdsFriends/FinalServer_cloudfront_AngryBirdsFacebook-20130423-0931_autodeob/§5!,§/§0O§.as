package §5!,§
{
   import §5!Y§.Popup;
   import §@!%§.§#!$§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §0O§ extends Popup
   {
       
      
      private var §=F§:Sprite;
      
      private var §%D§:String;
      
      public function §0O§(param1:XML, param2:§`_§, param3:String)
      {
         super(param1,param2);
         this.§%D§ = param3;
         var _loc4_:Class;
         var _loc5_:Sprite = new (_loc4_ = §?q§.§ q§(param3))();
         this.setVisibility(false);
         this.§=F§ = _loc5_;
         this.§=F§.mouseChildren = false;
         this.§=F§.mouseEnabled = false;
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         _loc3_.addChild(this.§=F§);
         if(this.§%D§ == "POWERUP_TUTORIAL_SLINGSCOPE")
         {
            if((AngryBirdsFP11.sUserProgress as §#!$§).§,"F§("1000-5"))
            {
               mClip.ButtonEasterEgg5.visible = false;
            }
            else
            {
               mClip.ButtonEasterEgg5.visible = true;
               mClip.ButtonEasterEgg5.buttonMode = true;
               mClip.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§3]§);
            }
         }
         else if(mClip.ButtonEasterEgg5)
         {
            mClip.ButtonEasterEgg5.visible = false;
         }
         super.open(param1);
         mClip.getChildByName("Container_Tutorial").visible = true;
      }
      
      private function §3]§(param1:MouseEvent) : void
      {
         (AngryBirdsFP11.sUserProgress as §#!$§).§9!'§("1000-5");
         mClip.ButtonEasterEgg5.visible = false;
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         var _loc2_:DisplayObjectContainer = mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         var _loc3_:DisplayObjectContainer = _loc2_.getChildByName("TutorialHolder") as DisplayObjectContainer;
         _loc3_.removeChild(this.§=F§);
         mClip.getChildByName("Container_Tutorial").visible = false;
      }
      
      override public function close() : void
      {
         super.close();
      }
   }
}
