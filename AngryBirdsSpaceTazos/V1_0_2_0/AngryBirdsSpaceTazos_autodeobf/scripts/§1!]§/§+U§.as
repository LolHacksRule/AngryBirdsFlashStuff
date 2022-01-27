package §1!]§
{
   import § X§.§38§;
   import § X§.§7q§;
   import §!i§.§?"%§;
   import §""<§.§=Q§;
   import §"_§.§&r§;
   import §"_§.§3o§;
   import §"_§.AbstractPopup;
   import §'#§.§^4§;
   import §4!t§.§95§;
   import §6"6§.§>o§;
   import §7!c§.§4'§;
   import §7!c§.StateEpisodeSelection;
   import §7!s§.HighscoreSidebar;
   import §;+§.§3!n§;
   import §<!#§.§3"%§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §<l§.§#r§;
   import §]!M§.PopupSidebarEvent;
   import §]!O§.§#!i§;
   import §]!O§.§,"1§;
   import §]!O§.§^?§;
   import §]n§.§0!g§;
   import flash.display.MovieClip;
   
   public class §+U§ extends AbstractPopup
   {
      
      private static var §8!u§:Class = §5n§;
      
      private static var §1P§:HighscoreSidebar = null;
       
      
      private var §[!S§:§0!g§;
      
      private var §51§:int = -1;
      
      private var §3v§:int = -1;
      
      private var § !f§:§^?§;
      
      private var §26§:MovieClip;
      
      private var § !-§:§8"+§;
      
      private var §1!^§:§>o§;
      
      private var §1H§:Vector.<§,"1§>;
      
      public function §+U§(param1:§>o§)
      {
         super(§&r§.§>I§,§3o§.§0!n§,§=Q§.§%!g§(§8!u§));
         this.§1!^§ = param1;
      }
      
      public function get §[";§() : Vector.<§,"1§>
      {
         return this.§1H§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§1P§ == null)
         {
            §1P§ = new HighscoreSidebar();
         }
         §1P§.§5"@§(§&#§);
         this.updateTextFields();
         this.§'!L§();
         §1P§.changeState(HighscoreSidebar.§7>§);
         this.§ !f§ = new §^?§(30,110,210,211);
         §&#§.getItemByName("MovieClip_SoundVisualizer").mClip.addChild(this.§ !f§);
         this.§26§ = §&#§.getItemByName("MovieClip_HalEye").mClip;
         this.§ !-§ = §<K§.§<"B§.§-!E§(§<K§.§<"B§.§`!c§(this.§26§,{
            "scaleX":1.2,
            "scaleY":1.2
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1),§<K§.§<"B§.§`!c§(this.§26§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":1.2,
            "scaleY":1.2
         },1));
         this.§ !f§.addEventListener(§#!i§.§`";§,this.§]a§);
      }
      
      private function §]a§(param1:§#!i§) : void
      {
         if(this.§ !-§)
         {
            if(!this.§ !-§.isCompleted)
            {
               return;
            }
         }
         this.§ !-§ = §<K§.§<"B§.§-!E§(§<K§.§<"B§.§`!c§(this.§26§,{
            "scaleX":1.2,
            "scaleY":1.2
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },0.1),§<K§.§<"B§.§`!c§(this.§26§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":1.2,
            "scaleY":1.2
         },0.1));
         this.§ !-§.play();
      }
      
      public function §'!L§() : void
      {
         §&#§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §&#§.getItemByName("MovieClip_SoundOff").setVisibility(!§1P§.§?3§());
         var _loc1_:Boolean = this.§&W§();
         §1P§.§;j§(_loc1_);
         §1P§.§4!a§(!_loc1_);
         §&#§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §&#§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §&#§.getItemByName("Button_Login").setVisibility(!(§&!h§.§ u§ as §^"=§).§^!7§.§,n§);
         §&#§.getItemByName("Button_Logout").setVisibility((§&!h§.§ u§ as §^"=§).§^!7§.§,n§);
      }
      
      public function §!!6§(param1:Boolean) : void
      {
         if(!this.§ !f§)
         {
            return;
         }
         if(param1)
         {
            this.§ !f§.start();
         }
         else
         {
            this.§ !f§.stop();
         }
      }
      
      public function §%!P§(param1:Boolean = true) : void
      {
         §1P§.container.getItemByName("Button_Credits").setVisibility(param1);
         §1P§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §@!k§(param1:Boolean) : void
      {
         §1P§.§4!a§(param1);
      }
      
      public function §;j§(param1:Boolean) : void
      {
         §1P§.§;j§(param1);
      }
      
      public function §`!t§() : Boolean
      {
         return §1P§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         §1P§.§6!G§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §1P§.§@!a§(!§1P§.§?3§());
               §&#§.getItemByName("MovieClip_SoundOff").setVisibility(!§1P§.§?3§());
               break;
            case "LOGOUT":
               §&!h§.§ u§.§-"F§.openPopup(new §'"0§(this.§1!^§));
               break;
            case "LOGIN":
               §&!h§.§ u§.§-"F§.openPopup(new §3!n§(this.§1!^§));
               break;
            case "CREDITS":
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§]!S§));
               break;
            case "TUTORIAL":
               this.§?!M§();
               break;
            case "ENGLISH":
               this.§+Z§("en");
               §1P§.§2!x§();
               break;
            case "SPANISH":
               this.§+Z§("es");
               §1P§.§2!x§();
         }
      }
      
      protected function §?!M§() : void
      {
         var _loc1_:§7q§ = §&!h§.§ u§.§+"5§;
         var _loc2_:Vector.<String> = _loc1_.§`Q§.getTutorialNamesForMapping(§38§.§!J§);
         _loc1_.§^"9§(_loc2_,true,true,true,true,null,true,false);
      }
      
      private function §+Z§(param1:String) : void
      {
         §^4§.§<"B§.setLanguage(param1);
         §4!T§.setLanguage(param1);
         param1 = §^4§.§<"B§.§+!P§();
         §#r§.§#!2§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §^4§.§<"B§.updateTextFields(§&#§,"HighscoreSidebar");
         this.§&"8§();
      }
      
      public function §>d§(param1:int) : void
      {
         param1 = param1;
         this.§3v§ = param1 / (1000 * 60 * 60);
         this.§51§ = this.§3v§ / 24;
         this.updateTextFields();
      }
      
      private function §&"8§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(this.§51§ > 0)
         {
            §&#§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(true);
            §&#§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
            _loc1_ = (§&#§.getItemByName("TextField_CompetitionTimeLeft") as §?"%§).§8!o§.text;
            _loc2_ = "x";
            _loc3_ = _loc1_.replace(_loc2_,this.§51§);
            (§&#§.getItemByName("TextField_CompetitionTimeLeft") as §?"%§).§8!o§.text = _loc3_;
         }
         else if(this.§3v§ >= 0)
         {
            §&#§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
            §&#§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(true);
            _loc1_ = (§&#§.getItemByName("TextField_CompetitionTimeLeftHours") as §?"%§).§8!o§.text;
            _loc4_ = "x";
            _loc3_ = _loc1_.replace(_loc4_,this.§3v§);
            (§&#§.getItemByName("TextField_CompetitionTimeLeftHours") as §?"%§).§8!o§.text = _loc3_;
         }
         else
         {
            §&#§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
            §&#§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
         }
      }
      
      protected function §&W§() : Boolean
      {
         if((§&!h§.§ u§ as §^"=§).§+R§() == StateEpisodeSelection.STATE_NAME || (§&!h§.§ u§ as §^"=§).§+R§() == §4'§.STATE_NAME)
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
      
      override protected function runTransition(param1:§3"%§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §?!,§() : HighscoreSidebar
      {
         return §1P§;
      }
      
      public function get §5!d§() : §>o§
      {
         return this.§1!^§;
      }
      
      public function set §[";§(param1:Vector.<§,"1§>) : void
      {
         this.§1H§ = param1;
      }
   }
}
