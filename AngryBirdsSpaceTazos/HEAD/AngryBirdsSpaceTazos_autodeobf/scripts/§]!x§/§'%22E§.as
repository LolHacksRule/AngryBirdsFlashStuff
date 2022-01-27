package §]!x§
{
   import § "A§.§,";§;
   import § "A§.§7!4§;
   import §"o§.§>!!§;
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §#R§.§0<§;
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §-!r§.AbstractPopup;
   import §1!K§.§2!h§;
   import §1!k§.§'!5§;
   import §1!k§.§6!I§;
   import §1!k§.§9C§;
   import §26§.§3v§;
   import §4u§.§!H§;
   import §5"@§.§0x§;
   import §7!6§.§@Y§;
   import §8Y§.PopupSidebarEvent;
   import §9%§.§2w§;
   import §9%§.StateEpisodeSelection;
   import §="<§.§#`§;
   import §>!x§.HighscoreSidebar;
   import §`!w§.§?!U§;
   import flash.display.MovieClip;
   
   public class §'"E§ extends AbstractPopup
   {
      
      private static var §4!w§:Class = §0b§;
      
      private static var §?!S§:HighscoreSidebar = null;
       
      
      private var §#"$§:§>!!§;
      
      private var §+Z§:int = -1;
      
      private var §7c§:int = -1;
      
      private var §!!F§:§9C§;
      
      private var §0Z§:MovieClip;
      
      private var §7!Q§:§,4§;
      
      private var §>!Z§:§0x§;
      
      private var §>!&§:Vector.<§6!I§>;
      
      public function §'"E§(param1:§0x§)
      {
         super(§>§.§=#§,§'!h§.§3"4§,§?!U§.§3!c§(§4!w§));
         this.§>!Z§ = param1;
      }
      
      public function get §5§() : Vector.<§6!I§>
      {
         return this.§>!&§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§?!S§ == null)
         {
            §?!S§ = new HighscoreSidebar();
         }
         §?!S§.§[Q§(§3!a§);
         this.updateTextFields();
         this.§&&§();
         §?!S§.changeState(HighscoreSidebar.§#!V§);
         this.§!!F§ = new §9C§(30,110,210,211);
         §3!a§.getItemByName("MovieClip_SoundVisualizer").mClip.addChild(this.§!!F§);
         this.§0Z§ = §3!a§.getItemByName("MovieClip_HalEye").mClip;
         this.§7!Q§ = §"!t§.§3R§.§&"9§(§"!t§.§3R§.§2m§(this.§0Z§,{
            "scaleX":1.2,
            "scaleY":1.2
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1),§"!t§.§3R§.§2m§(this.§0Z§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":1.2,
            "scaleY":1.2
         },1));
         this.§!!F§.addEventListener(§'!5§.§54§,this.§+"-§);
      }
      
      private function §+"-§(param1:§'!5§) : void
      {
         if(this.§7!Q§)
         {
            if(!this.§7!Q§.isCompleted)
            {
               return;
            }
         }
         this.§7!Q§ = §"!t§.§3R§.§&"9§(§"!t§.§3R§.§2m§(this.§0Z§,{
            "scaleX":1.2,
            "scaleY":1.2
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },0.1),§"!t§.§3R§.§2m§(this.§0Z§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":1.2,
            "scaleY":1.2
         },0.1));
         this.§7!Q§.play();
      }
      
      public function §&&§() : void
      {
         §3!a§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §3!a§.getItemByName("MovieClip_SoundOff").setVisibility(!§?!S§.§6"#§());
         var _loc1_:Boolean = this.§5"$§();
         §?!S§.§,j§(_loc1_);
         §?!S§.§9^§(!_loc1_);
         §3!a§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §3!a§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §3!a§.getItemByName("Button_Login").setVisibility(!(§2&§.§6o§ as §@T§).§'"5§.§ ^§);
         §3!a§.getItemByName("Button_Logout").setVisibility((§2&§.§6o§ as §@T§).§'"5§.§ ^§);
      }
      
      public function §-_§(param1:Boolean) : void
      {
         if(!this.§!!F§)
         {
            return;
         }
         if(param1)
         {
            this.§!!F§.start();
         }
         else
         {
            this.§!!F§.stop();
         }
      }
      
      public function §!!5§(param1:Boolean = true) : void
      {
         §?!S§.container.getItemByName("Button_Credits").setVisibility(param1);
         §?!S§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §&"C§(param1:Boolean) : void
      {
         §?!S§.§9^§(param1);
      }
      
      public function §,j§(param1:Boolean) : void
      {
         §?!S§.§,j§(param1);
      }
      
      public function §,1§() : Boolean
      {
         return §?!S§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         §?!S§.§;!A§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §?!S§.§3!J§(!§?!S§.§6"#§());
               §3!a§.getItemByName("MovieClip_SoundOff").setVisibility(!§?!S§.§6"#§());
               break;
            case "LOGOUT":
               §2&§.§6o§.§^7§.openPopup(new §8!#§(this.§>!Z§));
               break;
            case "LOGIN":
               §2&§.§6o§.§^7§.openPopup(new §2!h§(this.§>!Z§));
               break;
            case "CREDITS":
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§5R§));
               break;
            case "TUTORIAL":
               this.§^2§();
               break;
            case "ENGLISH":
               this.§8;§("en");
               §?!S§.§ 9§();
               break;
            case "SPANISH":
               this.§8;§("es");
               §?!S§.§ 9§();
         }
      }
      
      protected function §^2§() : void
      {
         var _loc1_:§,";§ = §2&§.§6o§.§<!?§;
         var _loc2_:Vector.<String> = _loc1_.§[!g§.getTutorialNamesForMapping(§7!4§.§<#§);
         _loc1_.§8j§(_loc2_,true,true,true,true,null,true,false);
      }
      
      private function §8;§(param1:String) : void
      {
         §!H§.§3R§.setLanguage(param1);
         § "@§.setLanguage(param1);
         param1 = §!H§.§3R§.§6"-§();
         §3v§.§0!Z§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §!H§.§3R§.updateTextFields(§3!a§,"HighscoreSidebar");
         this.§@"%§();
      }
      
      public function § !6§(param1:int) : void
      {
         param1 = param1;
         this.§7c§ = param1 / (1000 * 60 * 60);
         this.§+Z§ = this.§7c§ / 24;
         this.updateTextFields();
      }
      
      private function §@"%§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(this.§+Z§ > 0)
         {
            §3!a§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(true);
            §3!a§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
            _loc1_ = (§3!a§.getItemByName("TextField_CompetitionTimeLeft") as §#`§).§';§.text;
            _loc2_ = "x";
            _loc3_ = _loc1_.replace(_loc2_,this.§+Z§);
            (§3!a§.getItemByName("TextField_CompetitionTimeLeft") as §#`§).§';§.text = _loc3_;
         }
         else if(this.§7c§ >= 0)
         {
            §3!a§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
            §3!a§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(true);
            _loc1_ = (§3!a§.getItemByName("TextField_CompetitionTimeLeftHours") as §#`§).§';§.text;
            _loc4_ = "x";
            _loc3_ = _loc1_.replace(_loc4_,this.§7c§);
            (§3!a§.getItemByName("TextField_CompetitionTimeLeftHours") as §#`§).§';§.text = _loc3_;
         }
         else
         {
            §3!a§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
            §3!a§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
         }
      }
      
      protected function §5"$§() : Boolean
      {
         if((§2&§.§6o§ as §@T§).§;y§() == StateEpisodeSelection.STATE_NAME || (§2&§.§6o§ as §@T§).§;y§() == §2w§.STATE_NAME)
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
      
      override protected function runTransition(param1:§0<§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §`a§() : HighscoreSidebar
      {
         return §?!S§;
      }
      
      public function get §]U§() : §0x§
      {
         return this.§>!Z§;
      }
      
      public function set §5§(param1:Vector.<§6!I§>) : void
      {
         this.§>!&§ = param1;
      }
   }
}
