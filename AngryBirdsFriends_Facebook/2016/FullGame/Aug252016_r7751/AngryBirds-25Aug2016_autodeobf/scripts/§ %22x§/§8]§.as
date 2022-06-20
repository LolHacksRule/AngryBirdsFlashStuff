package § "x§
{
   import §"!U§.TabbedShopPopup;
   import §>!#§.§-#A§;
   import §>q§.CoinShopPopup;
   import §?"R§.§[W§;
   import §^!,§.§<d§;
   import com.rovio.assets.§@`§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §8]§
   {
      
      public static const §!"v§:Array = ["buttonOne","buttonTwo","buttonThree"];
       
      
      private var §[H§:String;
      
      private var § "$§:String;
      
      private var §6$4§:String;
      
      private var § "P§:String;
      
      private var §-=§:String;
      
      private var §,R§:String;
      
      private var §3$;§:int;
      
      private var §+B§:SimpleButton;
      
      private var §1!F§:String;
      
      public function §8]§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int)
      {
         super();
         this.§[H§ = param1;
         this.§ "$§ = param2;
         this.§6$4§ = param3;
         this.§ "P§ = param4;
         this.§-=§ = param5 != null ? param5 : "";
         this.§,R§ = param6;
         this.§3$;§ = param7;
         this.§+B§ = new §@`§.§4!i§("ButtonDynamicNotification" + param4)();
         this.§["p§(this.§-=§);
         this.§+B§.scaleX = param7 / 100;
         this.§+B§.scaleY = param7 / 100;
         this.§+B§.addEventListener(MouseEvent.CLICK,this.§;!<§,false,0,true);
      }
      
      public function §3"H§() : SimpleButton
      {
         return this.§+B§;
      }
      
      public function §6# §() : Number
      {
         return this.§+B§.width;
      }
      
      protected function §["p§(param1:String) : void
      {
         var _loc2_:TextField = TextField(DisplayObjectContainer(this.§+B§.upState).getChildAt(1));
         _loc2_.text = this.§-=§;
         var _loc3_:Number = this.§6# §() * 0.88;
         var _loc4_:int = int(_loc2_.getTextFormat().size);
         var _loc5_:TextFormat = _loc2_.getTextFormat();
         var _loc6_:Boolean = false;
         while(_loc2_.textWidth > _loc3_ && _loc4_ > 0)
         {
            _loc4_--;
            _loc5_.size = _loc4_;
            _loc2_.setTextFormat(_loc5_);
            _loc6_ = true;
         }
         _loc2_ = TextField(DisplayObjectContainer(this.§+B§.overState).getChildAt(1));
         _loc2_.text = this.§-=§;
         if(_loc6_)
         {
            _loc2_.setTextFormat(_loc5_);
         }
         _loc2_ = TextField(DisplayObjectContainer(this.§+B§.downState).getChildAt(1));
         _loc2_.text = this.§-=§;
         if(_loc6_)
         {
            _loc2_.setTextFormat(_loc5_);
         }
      }
      
      protected function §;!<§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         if(this.§1!F§)
         {
            AngryBirdsBase.singleton.popupManager.closePopupById(this.§1!F§);
         }
         switch(this.§6$4§)
         {
            case "OPEN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§[W§.NORMAL,§<d§.TOP));
               break;
            case "OPEN_COIN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§[W§.NORMAL,§<d§.TOP));
               break;
            case "HYPERLINK":
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest(this.§,R§),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         §-#A§.§6$2§().§,!0§(this.§ "$§,this.§[H§);
      }
      
      public function §'!z§(param1:String) : void
      {
         this.§1!F§ = param1;
      }
   }
}
