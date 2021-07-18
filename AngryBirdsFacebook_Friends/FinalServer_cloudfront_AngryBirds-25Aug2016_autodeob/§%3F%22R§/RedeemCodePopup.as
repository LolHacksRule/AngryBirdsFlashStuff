package §?"R§
{
   import §%$!§.§%h§;
   import §%$!§.§=]§;
   import §1!@§.§&#u§;
   import §3!B§.§9##§;
   import §8§.§#$+§;
   import §<!O§.§@#`§;
   import §>!#§.§-#A§;
   import §]$9§.§5$!§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§<d§;
   import §^!,§.AbstractPopup;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TextEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.ui.Keyboard;
   
   public class RedeemCodePopup extends AbstractPopup
   {
      
      public static const ID:String = "RedeemCodePopup";
       
      
      private var §7b§:§5$!§;
      
      private const §%H§:String = "/code/redeem?code=";
      
      private var §>#a§:TextField;
      
      private var §-"d§:TextField;
      
      private const §#J§:String = "TYPE CODE HERE...";
      
      private var §5!;§:Boolean = true;
      
      public function RedeemCodePopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§@#`§.§#!c§.Views.PopupView_RedeemCode[0],ID);
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         AngryBirdsBase.singleton.exitFullScreen();
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override protected function init() : void
      {
         super.init();
         §7!j§.mClip.btnSend.addEventListener(MouseEvent.CLICK,this.§0!b§);
         this.§>#a§ = §7!j§.mClip.codeTextField;
         this.§>#a§.addEventListener(MouseEvent.CLICK,this.§="c§);
         this.§>#a§.addEventListener(TextEvent.TEXT_INPUT,this.§]c§);
         this.§>#a§.addEventListener(Event.CHANGE,this.§@v§);
         this.§-"d§ = §7!j§.mClip.errorMessage;
         §7!j§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§="R§);
         §7!j§.mClip.addEventListener(KeyboardEvent.KEY_UP,this.§,!Q§);
         this.§5!;§ = true;
      }
      
      protected function §@v§(param1:Event) : void
      {
         this.§>#a§.text = this.§>#a§.text.toUpperCase();
      }
      
      protected function §,!Q§(param1:KeyboardEvent) : void
      {
         this.§>#a§.text = this.§>#a§.text.toUpperCase();
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§0!b§(null);
         }
      }
      
      protected function §]c§(param1:TextEvent) : void
      {
         this.§>#a§.text = this.§>#a§.text.toUpperCase();
      }
      
      private function §="R§(param1:MouseEvent) : void
      {
         super.close();
      }
      
      protected function §="c§(param1:MouseEvent) : void
      {
         if(this.§>#a§.text == this.§#J§)
         {
            this.§>#a§.text = "";
         }
      }
      
      protected function §0!b§(param1:MouseEvent) : void
      {
         §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
         if(this.§>#a§.text == null || §&#u§.trim(this.§>#a§.text," ").length == 0 || this.§>#a§.text == this.§#J§)
         {
            this.§>#a§.text = "";
            this.§-"d§.text = "";
            return;
         }
         this.§>#a§.text = §&#u§.trim(this.§>#a§.text," ");
         if(this.§>#a§.text.length > 23)
         {
            this.§>#a§.text = this.§>#a§.text.substr(0,24);
         }
         this.§-$7§(this.§>#a§.text);
      }
      
      private function §=!M§() : void
      {
         this.§5!;§ = !this.§5!;§;
         §7!j§.mClip.btnSend.mouseEnabled = this.§5!;§;
         §7!j§.mClip.btnClose.mouseEnabled = this.§5!;§;
         this.§>#a§.type = !!this.§5!;§ ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
      }
      
      private function §-$7§(param1:String) : void
      {
         this.§=!M§();
         this.§-"d§.text = "";
         var _loc2_:URLRequest = §>J§.§'[§(AngryBirdsBase.SERVER_ROOT + this.§%H§ + encodeURI(param1));
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§7b§ = new §5$!§();
         this.§7b§.addEventListener(Event.COMPLETE,this.§"k§);
         this.§7b§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§7b§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§7b§.addEventListener(§>#J§.§-$%§,this.onError);
         this.§7b§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§7b§.load(_loc2_);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§7b§)
         {
            this.§7b§.removeEventListener(Event.COMPLETE,this.§"k§);
            this.§7b§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§7b§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
         §7!j§.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§="R§);
         §7!j§.mClip.btnSend.removeEventListener(MouseEvent.CLICK,this.§0!b§);
         this.§>#a§.removeEventListener(MouseEvent.CLICK,this.§="c§);
         super.hide(param1,param2);
      }
      
      protected function §"k§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:§9##§ = null;
         var _loc5_:String = null;
         var _loc6_:CodeRedeemInfoPopup = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         this.§=!M§();
         if(param1 && param1.type == §>#J§.§-$%§)
         {
            this.§-"d§.text = "";
            return;
         }
         if(param1 && param1.currentTarget.data.errorCode && param1.currentTarget.data.errorMessage)
         {
            this.§-"d§.text = param1.currentTarget.data.errorMessage;
            return;
         }
         this.§-"d§.text = "";
         if(param1.currentTarget.data.items || param1.currentTarget.data.avatar)
         {
            this.§>#a§.text = "";
            _loc2_ = 0;
            _loc3_ = new §9##§();
            if(param1.currentTarget.data.items && param1.currentTarget.data.items.items[0].i == "VirtualCurrency")
            {
               _loc7_ = param1.currentTarget.data.items.items[0].q;
               _loc8_ = param1.currentTarget.data.items.itemsPrev[0].q;
               _loc2_ = _loc7_ - _loc8_;
               _loc3_.currency = "IVC";
               _loc3_.iapType = §=]§.§;Q§;
            }
            else
            {
               _loc9_ = §%h§.§3!]§.§7#S§(param1.currentTarget.data.items.items[0].i);
               _loc2_ = param1.currentTarget.data.items.items[0].q - _loc9_;
            }
            _loc3_.§;"O§ = ID;
            _loc3_.amount = _loc2_;
            _loc3_.gainType = §-#A§.§2!@§;
            _loc3_.itemType = param1.currentTarget.data.items.items[0].i;
            §-#A§.§6$2§().§]!H§(false,_loc3_.itemType,_loc3_.amount,_loc3_.gainType,_loc3_.§;"O§,_loc3_.level,_loc3_.itemType,_loc3_.iapType,_loc3_.§#!v§,_loc3_.currency,_loc3_.§'$§);
            _loc2_.toString() + " x " + param1.currentTarget.data.items.items[0].i;
            _loc5_ = (_loc5_ = param1.currentTarget.data.imageRef) == "COIN" ? "redeem_coin" : "redeem_gift";
            _loc6_ = new CodeRedeemInfoPopup(§[W§.§5Z§,§<d§.TOP,param1.currentTarget.data.message,_loc5_);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
            §%h§.§3!]§.§=L§();
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         this.§=!M§();
         if(param1 && param1.type == §>#J§.§-$%§)
         {
            this.§-"d§.text = "";
            return;
         }
      }
      
      protected function §@!w§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§[W§.§5Z§,§<d§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
   }
}
