package §;!Q§
{
   import §##K§.§9#]§;
   import §%$!§.§+3§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §4q§.§!#Q§;
   import §6"r§.§]$!§;
   import §<!O§.§@#`§;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §]$9§.§5$!§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   
   public class §-q§ extends AbstractPopup
   {
      
      private static const §<#!§:String = "";
      
      private static const §&#p§:String = "Email successfully submited!";
      
      private static const §-$+§:String = "An error occured while submitting your email.";
      
      private static const §5M§:String = "You have already entered the competition!";
       
      
      private var §1'§:Boolean = false;
      
      private var §^#y§:Boolean = false;
      
      private var §@"E§:String = "";
      
      private var §5x§:Boolean;
      
      public function §-q§(param1:int, param2:int, param3:Boolean)
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_EnterCompetitionPopup[0]);
         this.§5x§ = param3;
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §7!j§.mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§'#p§);
         var _loc2_:TextField = (§7!j§.getItemByName("TextField_Email_Input") as §]$!§).mClip.text;
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(Event.CHANGE,this.§'#R§);
         }
         this.§!!g§();
         if(this.dataModel.§&!?§.email == "" || this.dataModel.§&!?§.email == null)
         {
            this.§'"i§();
         }
         else
         {
            this.§>"k§(§+3§(§8G§.§%#S§.dataModel).§&!?§.email);
            this.§=!A§();
         }
         §7!j§.getItemByName("Textfield_ReadAndAgreeTerms").setVisibility(!this.§5x§);
         §7!j§.getItemByName("CheckBox_Empty").setVisibility(!this.§5x§);
         §7!j§.getItemByName("Checkbox_TermsAndConditions").setVisibility(!this.§5x§);
         §7!j§.getItemByName("Enter_Button").setVisibility(!this.§5x§);
         §7!j§.getItemByName("Button_TermsAndConditions").setVisibility(!this.§5x§);
         §7!j§.getItemByName("Button_ChangeEmail").setVisibility(this.§5x§);
         this.dataModel.§&!?§.addEventListener(§9#]§.§@";§,this.§0"U§);
      }
      
      private function get dataModel() : §+3§
      {
         return §+3§(AngryBirdsBase.singleton.dataModel);
      }
      
      private function §'#R§(param1:Event) : void
      {
         this.§^#y§ = this.§?#r§();
         if(this.§^#y§)
         {
            ((§7!j§.getItemByName("TextField_Email_Input") as §]$!§).mClip.text as TextField).textColor = 0;
         }
      }
      
      private function §'"i§() : void
      {
         var _loc3_:§5$!§ = null;
         var _loc1_:String = §>"$§.§<_§.stage.loaderInfo.parameters.accessToken;
         var _loc2_:URLRequest = §>J§.§'[§("https://graph.facebook.com/" + §8G§.§4#§ + "/me?fields=email&access_token=" + _loc1_ + "&format=json");
         _loc2_.method = URLRequestMethod.POST;
         _loc3_ = new §5$!§(null,1);
         _loc3_.addEventListener(Event.COMPLETE,this.§!p§);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.§5_§);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§5_§);
         _loc3_.dataFormat = URLLoaderDataFormat.TEXT;
         _loc3_.load(_loc2_);
      }
      
      public function §!p§(param1:Event) : void
      {
         var returnObject:Object = null;
         var e:Event = param1;
         try
         {
            returnObject = (e.currentTarget as URLLoader).data;
            this.§>"k§(returnObject.email);
            this.§=!A§();
            this.§'#R§(null);
         }
         catch(e:Error)
         {
            §5_§(null);
         }
      }
      
      private function §>"k§(param1:String) : void
      {
         this.§@"E§ = param1;
         (§7!j§.getItemByName("TextField_Email_Input") as §]$!§).setText(this.§@"E§);
         this.§'#R§(null);
      }
      
      public function §5_§(param1:Event) : void
      {
         (§7!j§.getItemByName("TextField_Email_Input") as §]$!§).setText(§<#!§);
         this.§=!A§();
      }
      
      private function §=!A§() : void
      {
         (§7!j§.getItemByName("MovieClip_Popup_Loading") as §4P§).visible = false;
      }
      
      private function §+"q§() : void
      {
         (§7!j§.getItemByName("MovieClip_Popup_Loading") as §4P§).visible = true;
      }
      
      private function §'#p§(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "CHECKBOX_CHANGE":
               this.§1'§ = !this.§1'§;
               this.§!!g§();
               break;
            case "TERMS_AND_CONDITIONS":
               AngryBirdsBase.singleton.popupManager.openPopup(new §,$+§(§[W§.NORMAL,§<d§.DEFAULT));
               break;
            case "SUBMIT_NAME_TO_COMPETITION":
               this.§3#M§();
         }
      }
      
      private function §3#M§() : void
      {
         var _loc1_:String = null;
         var _loc2_:TextField = null;
         if(this.§^#y§)
         {
            this.§+"q§();
            _loc1_ = encodeURIComponent((§7!j§.getItemByName("TextField_Email_Input") as §]$!§).§7$!§());
            this.dataModel.§&!?§.§-"r§(_loc1_);
         }
         else
         {
            _loc2_ = (§7!j§.getItemByName("TextField_Email_Input") as §]$!§).mClip.text as TextField;
            if(_loc2_.text.length < 1)
            {
               _loc2_.text = "Invalid email.";
            }
            _loc2_.textColor = 16711680;
         }
      }
      
      protected function §0"U§(param1:§9#]§) : void
      {
         if(!this.dataModel.userProgress.hasTutorialBeenSeen(§!#Q§.§5##§ + §7B§.§2!k§))
         {
            (this.dataModel.userProgress as §!#Q§).saveTutorialSeen(§!#Q§.§5##§ + §7B§.§2!k§);
            §8G§(§8G§.§%#S§).§ #3§();
         }
         close();
      }
      
      private function §!!g§() : void
      {
         var _loc1_:§4P§ = §7!j§.getItemByName("Checkbox_TermsAndConditions") as §4P§;
         var _loc2_:§4P§ = §7!j§.getItemByName("Enter_Button") as §4P§;
         if(this.§1'§)
         {
            _loc1_.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
            _loc2_.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         else
         {
            _loc1_.setComponentState(§4P§.§#"X§);
            _loc2_.setComponentState(§4P§.§#"X§);
         }
         if(this.§1'§)
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
      
      private function §?#r§() : Boolean
      {
         var _loc1_:String = (§7!j§.getItemByName("TextField_Email_Input") as §]$!§).§7$!§().toLowerCase();
         var _loc2_:RegExp = /^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/;
         return _loc2_.test(_loc1_);
      }
      
      override public function dispose() : void
      {
         this.dataModel.§&!?§.removeEventListener(§9#]§.§@";§,this.§0"U§);
         super.dispose();
      }
   }
}
