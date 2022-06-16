package §<"F§
{
   import §%i§.§4"9§;
   import §0!i§.§]q§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §5!Y§.§9"6§;
   import §5!Y§.Popup;
   import §5!Y§.StatePopupManager;
   import §6!H§.§6!e§;
   import §9!n§.LevelManager;
   import §;u§.§5<§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   public class §"i§ extends Popup
   {
      
      private static const §!"%§:String = "";
      
      private static const §'8§:String = "Email successfully submited!";
      
      private static const §80§:String = "An error occured while submitting your email.";
      
      private static const §;!2§:String = "You have already entered the competition!";
       
      
      private var §9!a§:Boolean = false;
      
      private var §>"P§:StatePopupManager;
      
      private var §5O§:Boolean = false;
      
      private var §!!w§:String = "";
      
      public function §"i§(param1:§`_§, param2:StatePopupManager, param3:Boolean)
      {
         super(§ "<§.§%I§.Views.PopupView_EnterCompetitionPopup[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§if §);
         this.§>"P§ = param2;
         this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
         var _loc4_:TextField;
         if((_loc4_ = (§[w§.getItemByName("TextField_Email_Input") as §4"9§).mClip.text) != null)
         {
            _loc4_.addEventListener(Event.CHANGE,this.§26§);
         }
         this.§06§();
         if(§%"S§.§!C§.§9"%§.§7"T§.email == "" || §%"S§.§!C§.§9"%§.§7"T§.email == null)
         {
            this.§<![§();
         }
         else
         {
            this.§8!p§(§%"S§.§!C§.§9"%§.§7"T§.email);
            this.§,!$§();
         }
         §[w§.getItemByName("Textfield_ReadAndAgreeTerms").setVisibility(!param3);
         §[w§.getItemByName("CheckBox_Empty").setVisibility(!param3);
         §[w§.getItemByName("Checkbox_TermsAndConditions").setVisibility(!param3);
         §[w§.getItemByName("Enter_Button").setVisibility(!param3);
         §[w§.getItemByName("Button_TermsAndConditions").setVisibility(!param3);
         §[w§.getItemByName("Button_ChangeEmail").setVisibility(param3);
         §%"S§.§!C§.§9"%§.§7"T§.addEventListener(§]q§.§!"D§,this.§&U§);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      private function §26§(param1:Event) : void
      {
         this.§5O§ = this.§="H§();
         if(this.§5O§)
         {
            ((§[w§.getItemByName("TextField_Email_Input") as §4"9§).mClip.text as TextField).textColor = 0;
         }
      }
      
      private function §<![§() : void
      {
         var _loc3_:§3d§ = null;
         var _loc1_:String = §?l§.§ "G§.stage.loaderInfo.parameters.accessToken;
         var _loc2_:URLRequest = §9!7§.§,!l§("https://graph.facebook.com/me?fields=email&access_token=" + _loc1_ + "&format=json");
         _loc2_.method = URLRequestMethod.POST;
         _loc3_ = new §3d§(null,1);
         _loc3_.addEventListener(Event.COMPLETE,this.§&+§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§,!G§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§,!G§);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      public function §&+§(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = JSON.parse((e.currentTarget as URLLoader).data);
            this.§8!p§(returnObject.email);
            this.§,!$§();
            this.§26§(null);
         }
         catch(e:Error)
         {
            §,!G§(null);
         }
      }
      
      private function §8!p§(param1:String) : void
      {
         this.§!!w§ = param1;
         (§[w§.getItemByName("TextField_Email_Input") as §4"9§).setText(this.§!!w§);
         this.§26§(null);
      }
      
      public function §,!G§(param1:Event) : void
      {
         (§[w§.getItemByName("TextField_Email_Input") as §4"9§).setText(§!"%§);
         this.§,!$§();
      }
      
      private function §,!$§() : void
      {
         (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = false;
      }
      
      private function §-"!§() : void
      {
         (§[w§.getItemByName("MovieClip_Popup_Loading") as §!!G§).visible = true;
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "CHECKBOX_CHANGE":
               this.§9!a§ = !this.§9!a§;
               this.§06§();
               break;
            case "TERMS_AND_CONDITIONS":
               §9"6§.§?B§();
               break;
            case "SUBMIT_NAME_TO_COMPETITION":
               this.§,!'§();
         }
      }
      
      private function §,!'§() : void
      {
         var _loc1_:String = null;
         var _loc2_:TextField = null;
         if(this.§5O§)
         {
            this.§-"!§();
            _loc1_ = encodeURIComponent((§[w§.getItemByName("TextField_Email_Input") as §4"9§).§ do§());
            §%"S§.§!C§.§9"%§.§7"T§.§-!8§(_loc1_);
         }
         else
         {
            _loc2_ = (§[w§.getItemByName("TextField_Email_Input") as §4"9§).mClip.text as TextField;
            if(_loc2_.text.length < 1)
            {
               _loc2_.text = "Invalid email.";
            }
            _loc2_.textColor = 16711680;
         }
      }
      
      protected function §&U§(param1:§]q§) : void
      {
         if(!AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(§#!$§.§4"P§ + §["M§.§0<§))
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).saveTutorialSeen(§#!$§.§4"P§ + §["M§.§0<§);
            LevelManager.§,m§ = 6;
            §%"S§.§!C§.§`H§(§5<§.STATE_NAME);
         }
         this.close();
      }
      
      public function §@S§(param1:Event) : void
      {
         §9"6§.§#!o§();
         this.close();
      }
      
      private function §06§() : void
      {
         var _loc1_:§!!G§ = §[w§.getItemByName("Checkbox_TermsAndConditions") as §!!G§;
         var _loc2_:§!!G§ = §[w§.getItemByName("Enter_Button") as §!!G§;
         if(this.§9!a§)
         {
            _loc1_.setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc2_.setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§!!G§.§@!T§);
            _loc2_.setComponentState(§!!G§.§@!T§);
         }
         if(this.§9!a§)
         {
            _loc2_.mClip.alpha = 1;
            _loc2_.mClip.mouseEnabled = true;
         }
         else
         {
            _loc2_.mClip.alpha = 0.6;
            _loc2_.mClip.mouseEnabled = false;
         }
      }
      
      private function §="H§() : Boolean
      {
         var _loc1_:String = (§[w§.getItemByName("TextField_Email_Input") as §4"9§).§ do§().toLowerCase();
         var _loc2_:RegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
         return _loc2_.test(_loc1_);
      }
      
      override public function close() : void
      {
         §%"S§.§!C§.§9"%§.§7"T§.removeEventListener(§]q§.§!"D§,this.§&U§);
         this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
         super.close();
      }
   }
}
