package §'!s§
{
   import § !9§.§'!J§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §,V§.§'"5§;
   import §-!q§.§&O§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §]!A§.;
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
   
   public class §0!F§ extends Popup
   {
      
      private static const §2!-§:String = "";
      
      private static const §+D§:String = "Email successfully submited!";
      
      private static const §#B§:String = "An error occured while submitting your email.";
      
      private static const §%§:String = "You have already entered the competition!";
       
      
      private var §>t§:Boolean = false;
      
      private var §"!T§:StatePopupManager;
      
      private var § !W§:Boolean = false;
      
      private var §]J§:String = "";
      
      public function §0!F§(param1:§7!A§, param2:StatePopupManager)
      {
         super(§ "A§.§4[§.Views.PopupView_BrandedTournamentContestEnter[0],param1);
         mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§`!a§);
         this.§"!T§ = param2;
         this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
         var _loc3_:TextField = (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).mClip.text;
         if(_loc3_ != null)
         {
            _loc3_.addEventListener(Event.CHANGE,this.§9H§);
         }
         this.§2k§();
         this.§`"@§();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         AngryBirdsFP11.§@<§.§#m§();
      }
      
      private function §9H§(param1:Event) : void
      {
         this.§ !W§ = this.§?A§();
         if(this.§ !W§)
         {
            ((§]"3§.getItemByName("TextField_Email_Input") as §-"E§).mClip.text as TextField).textColor = 0;
         }
      }
      
      private function §`"@§() : void
      {
         var _loc3_:§0]§ = null;
         var _loc1_:String = §#6§.§ q§.stage.loaderInfo.parameters.accessToken;
         var _loc2_:URLRequest = §-!l§.§%""§("https://graph.facebook.com/me?fields=email&access_token=" + _loc1_ + "&format=json");
         _loc2_.method = URLRequestMethod.POST;
         _loc3_ = new §0]§(null,1);
         _loc3_.addEventListener(Event.COMPLETE,this.§;Y§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!T§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§]!T§);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      public function §;Y§(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = §'!J§.§0!>§((e.currentTarget as URLLoader).data);
            this.§]J§ = returnObject.email;
            (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).setText(this.§]J§);
            this.§[Z§();
            this.§9H§(null);
         }
         catch(e:Error)
         {
            §]!T§(null);
         }
      }
      
      public function §]!T§(param1:Event) : void
      {
         (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).setText(§2!-§);
         this.§[Z§();
      }
      
      private function §[Z§() : void
      {
         (§]"3§.getItemByName("MovieClip_Popup_Loading") as §=!&§).visible = false;
      }
      
      private function §@"?§() : void
      {
         (§]"3§.getItemByName("MovieClip_Popup_Loading") as §=!&§).visible = true;
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         switch(param2)
         {
            case "CHECKBOX_CHANGE":
               this.§>t§ = !this.§>t§;
               this.§2k§();
               break;
            case "TERMS_AND_CONDITIONS":
               §%?§.§6!?§();
               break;
            case "SUBMIT_NAME_TO_COMPETITION":
               this.§?!E§();
               break;
            case "LOTUS_POPUP_LINK":
               navigateToURL(new URLRequest("https://www.facebook.com/LotusRenaultGP"),"_blank");
         }
      }
      
      private function §?!E§() : void
      {
         var _loc1_:String = null;
         var _loc2_:URLRequest = null;
         var _loc3_:§0]§ = null;
         var _loc4_:TextField = null;
         if(this.§ !W§)
         {
            this.§@"?§();
            _loc1_ = encodeURIComponent((§]"3§.getItemByName("TextField_Email_Input") as §-"E§).§-W§());
            _loc2_ = §-!l§.§%""§(AngryBirdsFP11.§76§ + "/tournamentdraw/" + _loc1_);
            _loc2_.method = URLRequestMethod.POST;
            _loc3_ = new §0]§(null,1);
            _loc3_.addEventListener(Event.COMPLETE,this.§=%§);
            _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§75§);
            _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§75§);
            _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
            _loc3_.load(_loc2_);
         }
         else
         {
            if((_loc4_ = (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).mClip.text as TextField).text.length < 1)
            {
               _loc4_.text = "Invalid email.";
            }
            _loc4_.textColor = 16711680;
         }
      }
      
      public function §=%§(param1:Event) : void
      {
         var _loc2_:String = (param1.currentTarget as URLLoader).data;
         if(_loc2_.toUpperCase() == "SUCCESS")
         {
            §&O§.§3!w§ = true;
            §3T§.§67§.§=!w§(§&O§.STATE_NAME);
            this.close();
         }
         else
         {
            §%?§.§4!>§();
            this.close();
         }
      }
      
      public function §75§(param1:Event) : void
      {
         §%?§.§4!>§();
         this.close();
      }
      
      private function §2k§() : void
      {
         var _loc1_:§=!&§ = §]"3§.getItemByName("Checkbox_TermsAndConditions") as §=!&§;
         var _loc2_:§=!&§ = §]"3§.getItemByName("Enter_Button") as §=!&§;
         if(this.§>t§)
         {
            _loc1_.setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc2_.setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§=!&§.§ !s§);
            _loc2_.setComponentState(§=!&§.§ !s§);
         }
         if(this.§>t§)
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
      
      private function §?A§() : Boolean
      {
         var _loc1_:String = (§]"3§.getItemByName("TextField_Email_Input") as §-"E§).§-W§().toLowerCase();
         var _loc2_:RegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
         return _loc2_.test(_loc1_);
      }
      
      override public function close() : void
      {
         this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         super.close();
      }
   }
}
