package §+"C§
{
   import §!"0§.§`"F§;
   import §!"4§.§]<§;
   import §'!n§.§[!I§;
   import §+"2§.§?d§;
   import §+"2§.AbstractPopup;
   import §+"2§.§`B§;
   import §+=§.§5h§;
   import §,!7§.§2a§;
   import §1!C§.PopupSidebarEvent;
   import §4!Z§.§%^§;
   import §6!C§.§7[§;
   import §6"A§.HighscoreSidebar;
   import §6B§.§?"2§;
   import §6O§.§6!x§;
   import §9!L§.§0"6§;
   import §9!L§.§3!W§;
   import §9!L§.§="!§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §=" §.§?-§;
   import §=" §.StateEpisodeSelection;
   import §>!X§.§1i§;
   import §>!X§.§6!Q§;
   import flash.display.MovieClip;
   
   public class §8!;§ extends AbstractPopup
   {
      
      private static var §?!T§:Class = §9!a§;
      
      private static var §]"!§:HighscoreSidebar = null;
       
      
      private var §`Y§:§6!x§;
      
      private var §"4§:int = -1;
      
      private var §,!o§:int = -1;
      
      private var §9Y§:§0"6§;
      
      private var §?!L§:MovieClip;
      
      private var §>!B§:§15§;
      
      private var §^§:§]<§;
      
      private var §6!f§:Vector.<§="!§>;
      
      public function §8!;§(param1:§]<§)
      {
         super(§?d§.§+!o§,§`B§.§-! §,§7[§.§[!n§(§?!T§));
         this.§^§ = param1;
      }
      
      public function get §%"=§() : Vector.<§="!§>
      {
         return this.§6!f§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§]"!§ == null)
         {
            §]"!§ = new HighscoreSidebar();
         }
         §]"!§.§^+§(§ 1§);
         this.updateTextFields();
         this.§&!'§();
         §]"!§.changeState(HighscoreSidebar.§'r§);
         this.§9Y§ = new §0"6§(30,110,210,211);
         § 1§.getItemByName("MovieClip_SoundVisualizer").mClip.addChild(this.§9Y§);
         this.§?!L§ = § 1§.getItemByName("MovieClip_HalEye").mClip;
         this.§>!B§ = §@F§.§8!J§.§^"&§(§@F§.§8!J§.§&6§(this.§?!L§,{
            "scaleX":1.2,
            "scaleY":1.2
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1),§@F§.§8!J§.§&6§(this.§?!L§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":1.2,
            "scaleY":1.2
         },1));
         this.§9Y§.addEventListener(§3!W§.§"T§,this.§,E§);
      }
      
      private function §,E§(param1:§3!W§) : void
      {
         if(this.§>!B§)
         {
            if(!this.§>!B§.isCompleted)
            {
               return;
            }
         }
         this.§>!B§ = §@F§.§8!J§.§^"&§(§@F§.§8!J§.§&6§(this.§?!L§,{
            "scaleX":1.2,
            "scaleY":1.2
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },0.1),§@F§.§8!J§.§&6§(this.§?!L§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":1.2,
            "scaleY":1.2
         },0.1));
         this.§>!B§.play();
      }
      
      public function §&!'§() : void
      {
         § 1§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         § 1§.getItemByName("MovieClip_SoundOff").setVisibility(!§]"!§.§8O§());
         var _loc1_:Boolean = this.§!<§();
         §]"!§.§^"@§(_loc1_);
         §]"!§.§4,§(!_loc1_);
         § 1§.getItemByName("Button_Credits").setVisibility(_loc1_);
         § 1§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         § 1§.getItemByName("Button_Login").setVisibility(!(§&"<§.§<!7§ as §["!§).§<!%§.§-"9§);
         § 1§.getItemByName("Button_Logout").setVisibility((§&"<§.§<!7§ as §["!§).§<!%§.§-"9§);
      }
      
      public function §^"A§(param1:Boolean) : void
      {
         if(!this.§9Y§)
         {
            return;
         }
         if(param1)
         {
            this.§9Y§.start();
         }
         else
         {
            this.§9Y§.stop();
         }
      }
      
      public function §`!4§(param1:Boolean = true) : void
      {
         §]"!§.container.getItemByName("Button_Credits").setVisibility(param1);
         §]"!§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §@R§(param1:Boolean) : void
      {
         §]"!§.§4,§(param1);
      }
      
      public function §^"@§(param1:Boolean) : void
      {
         §]"!§.§^"@§(param1);
      }
      
      public function §<<§() : Boolean
      {
         return §]"!§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         §]"!§.§>!f§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §]"!§.§0!p§(!§]"!§.§8O§());
               § 1§.getItemByName("MovieClip_SoundOff").setVisibility(!§]"!§.§8O§());
               break;
            case "LOGOUT":
               §&"<§.§<!7§.§1"0§.openPopup(new §#!^§(this.§^§));
               break;
            case "LOGIN":
               §&"<§.§<!7§.§1"0§.openPopup(new §`"F§(this.§^§));
               break;
            case "CREDITS":
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§9!?§));
               break;
            case "TUTORIAL":
               this.§4!y§();
               break;
            case "ENGLISH":
               this.§7q§("en");
               §]"!§.§3A§();
               break;
            case "SPANISH":
               this.§7q§("es");
               §]"!§.§3A§();
         }
      }
      
      protected function §4!y§() : void
      {
         var _loc1_:§1i§ = §&"<§.§<!7§.§5!p§;
         var _loc2_:Vector.<String> = _loc1_.§'">§.getTutorialNamesForMapping(§6!Q§.§'5§);
         _loc1_.§[!?§(_loc2_,true,true,true,true,null,true,false);
      }
      
      private function §7q§(param1:String) : void
      {
         §[!I§.§8!J§.setLanguage(param1);
         §3"%§.setLanguage(param1);
         param1 = §[!I§.§8!J§.§,"+§();
         §%^§.§]"3§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §[!I§.§8!J§.updateTextFields(§ 1§,"HighscoreSidebar");
         this.§,!r§();
      }
      
      public function §+!_§(param1:int) : void
      {
         param1 = param1;
         this.§,!o§ = param1 / (1000 * 60 * 60);
         this.§"4§ = this.§,!o§ / 24;
         this.updateTextFields();
      }
      
      private function §,!r§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(this.§"4§ > 0)
         {
            § 1§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(true);
            § 1§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
            _loc1_ = (§ 1§.getItemByName("TextField_CompetitionTimeLeft") as §2a§).§%!%§.text;
            _loc2_ = "x";
            _loc3_ = _loc1_.replace(_loc2_,this.§"4§);
            (§ 1§.getItemByName("TextField_CompetitionTimeLeft") as §2a§).§%!%§.text = _loc3_;
         }
         else if(this.§,!o§ >= 0)
         {
            § 1§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
            § 1§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(true);
            _loc1_ = (§ 1§.getItemByName("TextField_CompetitionTimeLeftHours") as §2a§).§%!%§.text;
            _loc4_ = "x";
            _loc3_ = _loc1_.replace(_loc4_,this.§,!o§);
            (§ 1§.getItemByName("TextField_CompetitionTimeLeftHours") as §2a§).§%!%§.text = _loc3_;
         }
         else
         {
            § 1§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
            § 1§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
         }
      }
      
      protected function §!<§() : Boolean
      {
         if((§&"<§.§<!7§ as §["!§).§=9§() == StateEpisodeSelection.STATE_NAME || (§&"<§.§<!7§ as §["!§).§=9§() == §?-§.STATE_NAME)
         {
            return true;
         }
         return false;
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override protected function runTransition(param1:§5h§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §>"0§() : HighscoreSidebar
      {
         return §]"!§;
      }
      
      public function get §&!I§() : §]<§
      {
         return this.§^§;
      }
      
      public function set §%"=§(param1:Vector.<§="!§>) : void
      {
         this.§6!f§ = param1;
      }
   }
}
