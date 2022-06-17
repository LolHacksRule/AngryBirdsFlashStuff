package §[!B§
{
   import §#!E§.§2#Q§;
   import §%#v§.§0"j§;
   import §4!n§.§'!,§;
   import §6W§.§0"5§;
   import §;$5§.AbstractPopup;
   import §;w§.§5"_§;
   import §>"9§.§[#%§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §7i§ extends AbstractPopup
   {
      
      public static const ID:String = "TutorialPopup";
       
      
      protected var §>!,§:MovieClip;
      
      protected var §+!H§:String;
      
      protected var §"#f§:§0"5§;
      
      protected var §>"T§:Boolean;
      
      public function §7i§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§0"5§, param6:Boolean = true)
      {
         super(param1,param2,§0"j§.§-i§.Popups.Popup_Tutorial[0],ID);
         this.§+!H§ = param4;
         this.§"#f§ = param5;
         this.§>"T§ = param6;
         this.§>!,§ = param3;
         this.§>!,§.name = "MovieClip_TutorialClip";
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:DisplayObjectContainer = §8#Y§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.addChildAt(this.§>!,§,_loc1_.numChildren - 1);
         this.§>!,§.gotoAndPlay(1);
         if(this.§>!,§.ButtonEasterEgg5)
         {
            if(userProgress.§!#h§("1000-5"))
            {
               this.§>!,§.ButtonEasterEgg5.visible = false;
            }
            else
            {
               this.§>!,§.ButtonEasterEgg5.visible = true;
               this.§>!,§.ButtonEasterEgg5.buttonMode = true;
               this.§>!,§.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§8"!§);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §8#Y§.mClip.getChildByName("Container_Tutorial").visible = true;
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = §8#Y§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc3_.removeChild(this.§>!,§);
         §8#Y§.mClip.getChildByName("Container_Tutorial").visible = false;
         super.hide(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "CLOSE_TUTORIAL":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               dispatchEvent(new §5"_§(§5"_§.CLOSE,this));
         }
      }
      
      private function §8"!§(param1:MouseEvent) : void
      {
         userProgress.§?!7§("1000-5");
         this.§>!,§.ButtonEasterEgg5.visible = false;
      }
   }
}
