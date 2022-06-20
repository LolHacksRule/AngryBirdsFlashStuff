package § o§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §1#W§.§!#&§;
   import §6V§.§?!=§;
   import §8#D§.§=>§;
   import §;#r§.§"g§;
   import §<#m§.AbstractPopup;
   import §<#m§.§^#o§;
   import §^#]§.§1#H§;
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
       
      
      private var §]"h§:§4"v§;
      
      private const §<#6§:String = "/code/redeem?code=";
      
      private var § "1§:TextField;
      
      private var § "W§:TextField;
      
      private const §?#d§:String = "TYPE CODE HERE...";
      
      private var §%! §:Boolean = true;
      
      public function RedeemCodePopup(param1:int, param2:int, param3:XML = null, param4:String = "AbstractPopup")
      {
         super(param1,param2,§=>§.§%" §.Views.PopupView_RedeemCode[0],ID);
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
         §1"6§.mClip.btnSend.addEventListener(MouseEvent.CLICK,this.§'"W§);
         this.§ "1§ = §1"6§.mClip.codeTextField;
         this.§ "1§.addEventListener(MouseEvent.CLICK,this.§1!r§);
         this.§ "1§.addEventListener(TextEvent.TEXT_INPUT,this.§+#4§);
         this.§ "1§.addEventListener(Event.CHANGE,this.§ !X§);
         this.§ "W§ = §1"6§.mClip.errorMessage;
         §1"6§.mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§]2§);
         §1"6§.mClip.addEventListener(KeyboardEvent.KEY_UP,this.§[#;§);
         this.§%! § = true;
      }
      
      protected function § !X§(param1:Event) : void
      {
         this.§ "1§.text = this.§ "1§.text.toUpperCase();
      }
      
      protected function §[#;§(param1:KeyboardEvent) : void
      {
         this.§ "1§.text = this.§ "1§.text.toUpperCase();
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.§'"W§(null);
         }
      }
      
      protected function §+#4§(param1:TextEvent) : void
      {
         this.§ "1§.text = this.§ "1§.text.toUpperCase();
      }
      
      private function §]2§(param1:MouseEvent) : void
      {
         super.close();
      }
      
      protected function §1!r§(param1:MouseEvent) : void
      {
         if(this.§ "1§.text == this.§?#d§)
         {
            this.§ "1§.text = "";
         }
      }
      
      protected function §'"W§(param1:MouseEvent) : void
      {
         §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
         if(this.§ "1§.text == null || §1#H§.trim(this.§ "1§.text," ").length == 0 || this.§ "1§.text == this.§?#d§)
         {
            this.§ "1§.text = "";
            this.§ "W§.text = "";
            return;
         }
         this.§ "1§.text = §1#H§.trim(this.§ "1§.text," ");
         if(this.§ "1§.text.length > 23)
         {
            this.§ "1§.text = this.§ "1§.text.substr(0,24);
         }
         this.§;"r§(this.§ "1§.text);
      }
      
      private function §4!;§() : void
      {
         this.§%! § = !this.§%! §;
         §1"6§.mClip.btnSend.mouseEnabled = this.§%! §;
         §1"6§.mClip.btnClose.mouseEnabled = this.§%! §;
         this.§ "1§.type = !!this.§%! § ? TextFieldType.INPUT : TextFieldType.DYNAMIC;
      }
      
      private function §;"r§(param1:String) : void
      {
         this.§4!;§();
         this.§ "W§.text = "";
         var _loc2_:URLRequest = §%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + this.§<#6§ + encodeURI(param1));
         _loc2_.method = URLRequestMethod.GET;
         _loc2_.contentType = "application/json";
         this.§]"h§ = new §4"v§();
         this.§]"h§.addEventListener(Event.COMPLETE,this.§&!L§);
         this.§]"h§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this.§]"h§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         this.§]"h§.addEventListener(§]e§.§5!;§,this.onError);
         this.§]"h§.dataFormat = URLLoaderDataFormat.TEXT;
         this.§]"h§.load(_loc2_);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(this.§]"h§)
         {
            this.§]"h§.removeEventListener(Event.COMPLETE,this.§&!L§);
            this.§]"h§.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
            this.§]"h§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
         }
         §1"6§.mClip.btnClose.removeEventListener(MouseEvent.CLICK,this.§]2§);
         §1"6§.mClip.btnSend.removeEventListener(MouseEvent.CLICK,this.§'"W§);
         this.§ "1§.removeEventListener(MouseEvent.CLICK,this.§1!r§);
         super.hide(param1,param2);
      }
      
      protected function §&!L§(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:§"g§ = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:CodeRedeemInfoPopup = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         this.§4!;§();
         if(param1 && param1.type == §]e§.§5!;§)
         {
            this.§ "W§.text = "";
            return;
         }
         if(param1 && param1.currentTarget.data.errorCode && param1.currentTarget.data.errorMessage)
         {
            this.§ "W§.text = param1.currentTarget.data.errorMessage;
            return;
         }
         this.§ "W§.text = "";
         if(param1.currentTarget.data.items || param1.currentTarget.data.avatar)
         {
            this.§ "1§.text = "";
            _loc2_ = 0;
            _loc3_ = new §"g§();
            if(param1.currentTarget.data.items && param1.currentTarget.data.items.items[0].i == "VirtualCurrency")
            {
               _loc7_ = param1.currentTarget.data.items.items[0].q;
               _loc8_ = param1.currentTarget.data.items.itemsPrev[0].q;
               _loc2_ = _loc7_ - _loc8_;
               _loc3_.currency = "IVC";
               _loc3_.§;!1§ = §6$0§.§3#j§;
            }
            else
            {
               _loc9_ = §4"W§.§ "D§.§04§(param1.currentTarget.data.items.items[0].i);
               _loc2_ = param1.currentTarget.data.items.items[0].q - _loc9_;
            }
            _loc3_.screen = ID;
            _loc3_.amount = _loc2_;
            _loc3_.§>"j§ = §?!=§.§+"W§;
            _loc3_.itemType = param1.currentTarget.data.items.items[0].i;
            §?!=§.§3!q§().§%"X§(false,_loc3_.itemType,_loc3_.amount,_loc3_.§>"j§,_loc3_.screen,_loc3_.level,_loc3_.itemType,_loc3_.§;!1§,_loc3_.§^$9§,_loc3_.currency,_loc3_.§]$9§);
            _loc4_ = _loc2_.toString() + " x " + param1.currentTarget.data.items.items[0].i;
            _loc5_ = (_loc5_ = param1.currentTarget.data.imageRef) == "COIN" ? "redeem_coin" : "redeem_gift";
            _loc6_ = new CodeRedeemInfoPopup(§%"!§.§4!P§,§^#o§.TOP,param1.currentTarget.data.message,_loc5_);
            AngryBirdsBase.singleton.popupManager.openPopup(_loc6_);
            §4"W§.§ "D§.§@!z§();
         }
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         this.§4!;§();
         if(param1 && param1.type == §]e§.§5!;§)
         {
            this.§ "W§.text = "";
            return;
         }
      }
      
      protected function §[#U§(param1:String) : void
      {
         var _loc2_:ErrorPopup = new ErrorPopup(§%"!§.§4!P§,§^#o§.TOP,param1);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
   }
}
