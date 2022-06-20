package §<H§
{
   import §&#k§.§@X§;
   import §'!U§.§0!?§;
   import §1"0§.§4$#§;
   import §4q§.§!#Q§;
   import §8§.§#$+§;
   import §<!O§.§@#`§;
   import §^!,§.AbstractPopup;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §0!0§ extends AbstractPopup
   {
      
      public static const ID:String = "TutorialPopup";
       
      
      protected var §4!J§:MovieClip;
      
      protected var §+"!§:String;
      
      protected var §3! §:§@X§;
      
      protected var §+#]§:Boolean;
      
      public function §0!0§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§@X§, param6:Boolean = true)
      {
         super(param1,param2,§@#`§.§#!c§.Popups.Popup_Tutorial[0],ID);
         this.§+"!§ = param4;
         this.§3! § = param5;
         this.§+#]§ = param6;
         this.§4!J§ = param3;
         this.§4!J§.name = "MovieClip_TutorialClip";
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:DisplayObjectContainer = §7!j§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.addChildAt(this.§4!J§,_loc1_.numChildren - 1);
         this.§4!J§.gotoAndPlay(1);
         if(this.§4!J§.ButtonEasterEgg5)
         {
            if(userProgress.§9"C§("1000-5"))
            {
               this.§4!J§.ButtonEasterEgg5.visible = false;
            }
            else
            {
               this.§4!J§.ButtonEasterEgg5.visible = true;
               this.§4!J§.ButtonEasterEgg5.buttonMode = true;
               this.§4!J§.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§2-§);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §7!j§.mClip.getChildByName("Container_Tutorial").visible = true;
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = §7!j§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc3_.removeChild(this.§4!J§);
         §7!j§.mClip.getChildByName("Container_Tutorial").visible = false;
         super.hide(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "CLOSE_TUTORIAL":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               dispatchEvent(new §4$#§(§4$#§.CLOSE,this));
         }
      }
      
      private function §2-§(param1:MouseEvent) : void
      {
         userProgress.§ R§("1000-5");
         this.§4!J§.ButtonEasterEgg5.visible = false;
      }
   }
}
