package §7N§
{
   import §"",§.§+§;
   import §"p§.§;!b§;
   import §+I§.§9!%§;
   import §,b§.§4H§;
   import §1"2§.§ F§;
   import §1"2§.§,!]§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import §`"3§.§8"4§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §]0§ extends Popup
   {
      
      private static const §-"!§:String = "";
      
      private static const §2c§:String = "Email successfully submited!";
      
      private static const §3d§:String = "An error occured while submitting your email.";
      
      private static const §@e§:String = "You have already entered the competition!";
       
      
      private var §@u§:Boolean = false;
      
      private var §<q§:StatePopupManager;
      
      private var §4b§:Boolean = false;
      
      private var §>b§:String = "";
      
      public function §]0§(param1:§"!j§, param2:StatePopupManager)
      {
         super(§1"-§.§ !>§.Views.PopupView_LotusTournamentContestEnter[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§&!a§);
         this.§<q§ = param2;
         this.§<q§.addEventListener(§4H§.§%!g§,this.onUiInteraction);
         var _loc3_:TextField = (§0!'§.getItemByName("TextField_Email_Input") as §+§).mClip.text;
         if(_loc3_ != null)
         {
            _loc3_.addEventListener(Event.CHANGE,this.§6!H§);
         }
         this.§^Q§();
         this.§!!9§();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         AngryBirdsFP11.§`"B§.§'H§();
      }
      
      private function §6!H§(param1:Event) : void
      {
         this.§4b§ = this.§<!2§();
         if(this.§4b§)
         {
            ((§0!'§.getItemByName("TextField_Email_Input") as §+§).mClip.text as TextField).textColor = 0;
         }
      }
      
      private function §!!9§() : void
      {
         var _loc3_:§,!S§ = null;
         var _loc1_:String = §9!%§.§ !W§.stage.loaderInfo.parameters.accessToken;
         var _loc2_:URLRequest = §4!J§.§3j§("https://graph.facebook.com/me?fields=email&access_token=" + _loc1_ + "&format=json");
         _loc2_.method = URLRequestMethod.POST;
         _loc3_ = new §,!S§(null,1);
         _loc3_.addEventListener(Event.COMPLETE,this.§2!X§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§1!_§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1!_§);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      public function §2!X§(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §8"4§.§,!M§((e.currentTarget as URLLoader).data);
            this.§>b§ = returnObject.email;
            (§0!'§.getItemByName("TextField_Email_Input") as §+§).setText(this.§>b§);
            this.§6F§();
            this.§6!H§(null);
         }
         catch(e:Error)
         {
            §1!_§(null);
         }
      }
      
      public function §1!_§(param1:Event) : void
      {
         (§0!'§.getItemByName("TextField_Email_Input") as §+§).setText(§-"!§);
         this.§6F§();
      }
      
      private function §6F§() : void
      {
         (§0!'§.getItemByName("MovieClip_Popup_Loading") as § F§).visible = false;
      }
      
      private function §?!G§() : void
      {
         (§0!'§.getItemByName("MovieClip_Popup_Loading") as § F§).visible = true;
      }
      
      private function §&!a§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function onUiInteraction(param1:§4H§) : void
      {
         this.uiInteractionHandler(param1.§@`§,param1.§@C§,param1.§5!+§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "CHECKBOX_CHANGE":
               this.§@u§ = !this.§@u§;
               this.§^Q§();
               break;
            case "TERMS_AND_CONDITIONS":
               §43§.§5"'§();
               break;
            case "SUBMIT_NAME_TO_COMPETITION":
               this.§8S§();
               break;
            case "LOTUS_POPUP_LINK":
               navigateToURL(new URLRequest("https://www.facebook.com/LotusRenaultGP"),"_blank");
         }
      }
      
      private function §8S§() : void
      {
         var _loc1_:String = null;
         var _loc2_:URLRequest = null;
         var _loc3_:§,!S§ = null;
         var _loc4_:TextField = null;
         if(this.§4b§)
         {
            this.§?!G§();
            _loc1_ = encodeURIComponent((§0!'§.getItemByName("TextField_Email_Input") as §+§).§0H§());
            _loc2_ = §4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/tournamentdraw/" + _loc1_);
            _loc2_.method = URLRequestMethod.POST;
            _loc3_ = new §,!S§(null,1);
            _loc3_.addEventListener(Event.COMPLETE,this.§0"8§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§-!"§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-!"§);
            _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
            _loc3_.load(_loc2_);
         }
         else
         {
            if((_loc4_ = (§0!'§.getItemByName("TextField_Email_Input") as §+§).mClip.text as TextField).text.length < 1)
            {
               _loc4_.text = "Invalid email.";
            }
            _loc4_.textColor = 16711680;
         }
      }
      
      public function §0"8§(param1:Event) : void
      {
         var _loc2_:String = (param1.currentTarget as URLLoader).data;
         if(_loc2_.toUpperCase() == "SUCCESS")
         {
            §;!b§.§,!b§ = true;
            § W§.§%!y§.§ !`§(§;!b§.STATE_NAME);
            this.close();
         }
         else
         {
            §43§.§?!S§();
            this.close();
         }
      }
      
      public function §-!"§(param1:Event) : void
      {
         §43§.§?!S§();
         this.close();
      }
      
      private function §^Q§() : void
      {
         var _loc1_:§ F§ = §0!'§.getItemByName("Checkbox_TermsAndConditions") as § F§;
         var _loc2_:§ F§ = §0!'§.getItemByName("Enter_Button") as § F§;
         if(this.§@u§)
         {
            _loc1_.setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc2_.setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§ F§.§8'§);
            _loc2_.setComponentState(§ F§.§8'§);
         }
         if(this.§@u§)
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
      
      private function §<!2§() : Boolean
      {
         var _loc1_:String = (§0!'§.getItemByName("TextField_Email_Input") as §+§).§0H§().toLowerCase();
         var _loc2_:RegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
         return _loc2_.test(_loc1_);
      }
      
      override public function close() : void
      {
         this.§<q§.removeEventListener(§4H§.§%!g§,this.onUiInteraction);
         super.close();
      }
   }
}
