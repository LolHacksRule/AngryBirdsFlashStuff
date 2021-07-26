package §%J§
{
   import § %§.§1Q§;
   import §!$;§.§8#F§;
   import §-!S§.§##>§;
   import §1!=§.AbstractPopup;
   import §2I§.§5#j§;
   import §3#T§.§'§;
   import §@!M§.§!"p§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §2"6§ extends AbstractPopup
   {
      
      public static const ID:String = "TutorialPopup";
       
      
      protected var §#"i§:MovieClip;
      
      protected var §&"Q§:String;
      
      protected var §%!;§:§5#j§;
      
      protected var §2#b§:Boolean;
      
      public function §2"6§(param1:int, param2:int, param3:MovieClip, param4:String, param5:§5#j§, param6:Boolean = true)
      {
         super(param1,param2,§1Q§.§5T§.Popups.Popup_Tutorial[0],ID);
         this.§&"Q§ = param4;
         this.§%!;§ = param5;
         this.§2#b§ = param6;
         this.§#"i§ = param3;
         this.§#"i§.name = "MovieClip_TutorialClip";
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      override protected function init() : void
      {
         super.init();
         var _loc1_:DisplayObjectContainer = §,#2§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc1_.addChildAt(this.§#"i§,_loc1_.numChildren - 1);
         this.§#"i§.gotoAndPlay(1);
         if(this.§#"i§.ButtonEasterEgg5)
         {
            if(userProgress.§44§("1000-5"))
            {
               this.§#"i§.ButtonEasterEgg5.visible = false;
            }
            else
            {
               this.§#"i§.ButtonEasterEgg5.visible = true;
               this.§#"i§.ButtonEasterEgg5.buttonMode = true;
               this.§#"i§.ButtonEasterEgg5.addEventListener(MouseEvent.CLICK,this.§ !H§);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §,#2§.mClip.getChildByName("Container_Tutorial").visible = true;
         super.show(param1);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:DisplayObjectContainer = §,#2§.mClip.getChildByName("Container_Tutorial") as DisplayObjectContainer;
         _loc3_.removeChild(this.§#"i§);
         §,#2§.mClip.getChildByName("Container_Tutorial").visible = false;
         super.hide(param1,param2);
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         super.onUIInteraction(param1,param2,param3);
         switch(param2.toUpperCase())
         {
            case "CLOSE_TUTORIAL":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               dispatchEvent(new §8#F§(§8#F§.CLOSE,this));
         }
      }
      
      private function § !H§(param1:MouseEvent) : void
      {
         userProgress.§8$,§("1000-5");
         this.§#"i§.ButtonEasterEgg5.visible = false;
      }
   }
}
