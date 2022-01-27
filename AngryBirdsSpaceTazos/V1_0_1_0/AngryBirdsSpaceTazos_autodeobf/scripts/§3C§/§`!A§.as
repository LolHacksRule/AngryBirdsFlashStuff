package §3C§
{
   import § !Y§.§&$§;
   import §!X§.§<!3§;
   import §!X§.§[1§;
   import §0N§.§0!g§;
   import §1%§.§0!3§;
   import §3D§.HighscoreSidebar;
   import §4"§.PopupSidebarEvent;
   import §5X§.§+!#§;
   import §6"4§.§&a§;
   import §7!B§.§@"@§;
   import §7!H§.§1#§;
   import §7!H§.§8"6§;
   import §7!H§.AbstractPopup;
   import §77§.§&!>§;
   import §8!_§.§4!U§;
   import §8!_§.StateEpisodeSelection;
   import §<"8§.§6!c§;
   import §<W§.§!!u§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§ f§;
   import §^"#§.§!j§;
   import §^"#§.§]!a§;
   import flash.display.MovieClip;
   
   public class §`!A§ extends AbstractPopup
   {
      
      private static var §4C§:Class = §;n§;
      
      private static var §+k§:HighscoreSidebar = null;
       
      
      private var §;!V§:§0!3§;
      
      private var §`9§:int = -1;
      
      private var §0!b§:int = -1;
      
      private var §1Y§:§]!a§;
      
      private var §2d§:MovieClip;
      
      private var §`V§:§5!9§;
      
      private var §6">§:§@"@§;
      
      private var §-S§:Vector.<§!j§>;
      
      public function §`!A§(param1:§@"@§)
      {
         super(§1#§.§'w§,§8"6§.§ K§,§0!g§.§[!y§(§4C§));
         this.§6">§ = param1;
      }
      
      public function get §>!?§() : Vector.<§!j§>
      {
         return this.§-S§;
      }
      
      override protected function init() : void
      {
         super.init();
         if(§+k§ == null)
         {
            §+k§ = new HighscoreSidebar();
         }
         §+k§.§=y§(§[S§);
         this.updateTextFields();
         this.§1M§();
         §+k§.changeState(HighscoreSidebar.§9"§);
         this.§1Y§ = new §]!a§(30,110,210,211);
         §[S§.getItemByName("MovieClip_SoundVisualizer").mClip.addChild(this.§1Y§);
         this.§2d§ = §[S§.getItemByName("MovieClip_HalEye").mClip;
         this.§`V§ = §!D§.§[!1§.§7!$§(§!D§.§[!1§.§1"<§(this.§2d§,{
            "scaleX":1.2,
            "scaleY":1.2
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },1),§!D§.§[!1§.§1"<§(this.§2d§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":1.2,
            "scaleY":1.2
         },1));
         this.§1Y§.addEventListener(§ f§.§%@§,this.§8!9§);
      }
      
      private function §8!9§(param1:§ f§) : void
      {
         if(this.§`V§)
         {
            if(!this.§`V§.isCompleted)
            {
               return;
            }
         }
         this.§`V§ = §!D§.§[!1§.§7!$§(§!D§.§[!1§.§1"<§(this.§2d§,{
            "scaleX":1.2,
            "scaleY":1.2
         },{
            "scaleX":0.75,
            "scaleY":0.75
         },0.1),§!D§.§[!1§.§1"<§(this.§2d§,{
            "scaleX":0.75,
            "scaleY":0.75
         },{
            "scaleX":1.2,
            "scaleY":1.2
         },0.1));
         this.§`V§.play();
      }
      
      public function §1M§() : void
      {
         §[S§.getItemByName("MovieClip_SoundOff").mClip.mouseEnabled = false;
         §[S§.getItemByName("MovieClip_SoundOff").setVisibility(!§+k§.§<!c§());
         var _loc1_:Boolean = this.§-!%§();
         §+k§.§4"1§(_loc1_);
         §+k§.§@Z§(!_loc1_);
         §[S§.getItemByName("Button_Credits").setVisibility(_loc1_);
         §[S§.getItemByName("Button_Tutorial").setVisibility(!_loc1_);
         §[S§.getItemByName("Button_Login").setVisibility(!(§ !g§.§;!'§ as §`Y§).§]]§.§?m§);
         §[S§.getItemByName("Button_Logout").setVisibility((§ !g§.§;!'§ as §`Y§).§]]§.§?m§);
      }
      
      public function §,A§(param1:Boolean) : void
      {
         if(!this.§1Y§)
         {
            return;
         }
         if(param1)
         {
            this.§1Y§.start();
         }
         else
         {
            this.§1Y§.stop();
         }
      }
      
      public function §<U§(param1:Boolean = true) : void
      {
         §+k§.container.getItemByName("Button_Credits").setVisibility(param1);
         §+k§.container.getItemByName("Button_Tutorial").setVisibility(!param1);
      }
      
      public function §""8§(param1:Boolean) : void
      {
         §+k§.§@Z§(param1);
      }
      
      public function §4"1§(param1:Boolean) : void
      {
         §+k§.§4"1§(param1);
      }
      
      public function § w§() : Boolean
      {
         return §+k§.container.getItemByName("Button_Credits").visible;
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         §+k§.§0!H§(param1,param2,param3);
         switch(param2)
         {
            case "MUTE":
               §+k§.§@p§(!§+k§.§<!c§());
               §[S§.getItemByName("MovieClip_SoundOff").setVisibility(!§+k§.§<!c§());
               break;
            case "LOGOUT":
               § !g§.§;!'§.§>";§.openPopup(new §[%§(this.§6">§));
               break;
            case "LOGIN":
               § !g§.§;!'§.§>";§.openPopup(new §&a§(this.§6">§));
               break;
            case "CREDITS":
               dispatchEvent(new PopupSidebarEvent(PopupSidebarEvent.§5!<§));
               break;
            case "TUTORIAL":
               this.§@!h§();
               break;
            case "ENGLISH":
               this.§5!i§("en");
               §+k§.§"!r§();
               break;
            case "SPANISH":
               this.§5!i§("es");
               §+k§.§"!r§();
         }
      }
      
      protected function §@!h§() : void
      {
         var _loc1_:§<!3§ = § !g§.§;!'§.§@"8§;
         var _loc2_:Vector.<String> = _loc1_.§+!Q§.getTutorialNamesForMapping(§[1§.§'!9§);
         _loc1_.§#!s§(_loc2_,true,true,true,true,null,true,false);
      }
      
      private function §5!i§(param1:String) : void
      {
         §&$§.§[!1§.setLanguage(param1);
         §7Z§.setLanguage(param1);
         param1 = §&$§.§[!1§.§^!2§();
         §6!c§.§?!6§("language",param1);
      }
      
      public function updateTextFields() : void
      {
         §&$§.§[!1§.updateTextFields(§[S§,"HighscoreSidebar");
         this.§^"<§();
      }
      
      public function §5g§(param1:int) : void
      {
         param1 = param1;
         this.§0!b§ = param1 / (1000 * 60 * 60);
         this.§`9§ = this.§0!b§ / 24;
         this.updateTextFields();
      }
      
      private function §^"<§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         if(this.§`9§ > 0)
         {
            §[S§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(true);
            §[S§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
            _loc1_ = (§[S§.getItemByName("TextField_CompetitionTimeLeft") as §&!>§).§ !'§.text;
            _loc2_ = "x";
            _loc3_ = _loc1_.replace(_loc2_,this.§`9§);
            (§[S§.getItemByName("TextField_CompetitionTimeLeft") as §&!>§).§ !'§.text = _loc3_;
         }
         else if(this.§0!b§ >= 0)
         {
            §[S§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
            §[S§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(true);
            _loc1_ = (§[S§.getItemByName("TextField_CompetitionTimeLeftHours") as §&!>§).§ !'§.text;
            _loc4_ = "x";
            _loc3_ = _loc1_.replace(_loc4_,this.§0!b§);
            (§[S§.getItemByName("TextField_CompetitionTimeLeftHours") as §&!>§).§ !'§.text = _loc3_;
         }
         else
         {
            §[S§.getItemByName("TextField_CompetitionTimeLeft").setVisibility(false);
            §[S§.getItemByName("TextField_CompetitionTimeLeftHours").setVisibility(false);
         }
      }
      
      protected function §-!%§() : Boolean
      {
         if((§ !g§.§;!'§ as §`Y§).§6![§() == StateEpisodeSelection.STATE_NAME || (§ !g§.§;!'§ as §`Y§).§6![§() == §4!U§.STATE_NAME)
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
      
      override protected function runTransition(param1:§!!u§) : void
      {
         super.runTransition(param1);
      }
      
      public function get §9Z§() : HighscoreSidebar
      {
         return §+k§;
      }
      
      public function get §@!j§() : §@"@§
      {
         return this.§6">§;
      }
      
      public function set §>!?§(param1:Vector.<§!j§>) : void
      {
         this.§-S§ = param1;
      }
   }
}
