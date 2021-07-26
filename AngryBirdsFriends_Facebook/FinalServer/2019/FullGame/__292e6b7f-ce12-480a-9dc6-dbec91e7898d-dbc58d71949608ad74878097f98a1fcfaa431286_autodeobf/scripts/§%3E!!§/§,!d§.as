package §>!!§
{
   import § $0§.§5R§;
   import §#"4§.§3";§;
   import §?Q§.§@#D§;
   import §]"U§.CoinShopPopup;
   import §`D§.TabbedShopPopup;
   import com.rovio.assets.§[a§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §,!d§
   {
      
      public static const §]!+§:Array = ["buttonOne","buttonTwo","buttonThree"];
       
      
      private var §4!N§:String;
      
      private var §^#9§:String;
      
      private var § !%§:String;
      
      private var §%"F§:String;
      
      private var §^#B§:String;
      
      private var §>#i§:String;
      
      private var §<!H§:int;
      
      private var §^H§:SimpleButton;
      
      private var §5"9§:String;
      
      public function §,!d§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int)
      {
         super();
         this.§4!N§ = param1;
         this.§^#9§ = param2;
         this.§ !%§ = param3;
         this.§%"F§ = param4;
         this.§^#B§ = param5 != null ? param5 : "";
         this.§>#i§ = param6;
         this.§<!H§ = param7;
         this.§^H§ = new §[a§.§8#k§("ButtonDynamicNotification" + param4)();
         this.§'""§(this.§^#B§);
         this.§^H§.scaleX = param7 / 100;
         this.§^H§.scaleY = param7 / 100;
         this.§^H§.addEventListener(MouseEvent.CLICK,this.§ #E§,false,0,true);
      }
      
      public function §^#"§() : SimpleButton
      {
         return this.§^H§;
      }
      
      public function §5!c§() : Number
      {
         return this.§^H§.width;
      }
      
      protected function §'""§(param1:String) : void
      {
         var _loc3_:TextField = null;
         var _loc2_:DisplayObjectContainer = this.§^H§.upState as DisplayObjectContainer;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               break;
            }
            _loc4_++;
         }
         _loc3_.text = this.§^#B§;
         var _loc5_:Number = this.§5!c§() * 0.88;
         var _loc6_:int = int(_loc3_.getTextFormat().size);
         var _loc7_:TextFormat = _loc3_.getTextFormat();
         var _loc8_:Boolean = false;
         while(_loc3_.textWidth > _loc5_ && _loc6_ > 0)
         {
            _loc6_--;
            _loc7_.size = _loc6_;
            _loc3_.setTextFormat(_loc7_);
            _loc8_ = true;
         }
         _loc2_ = this.§^H§.overState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§^#B§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
         _loc2_ = this.§^H§.downState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§^#B§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
      }
      
      protected function § #E§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         if(this.§5"9§)
         {
            AngryBirdsBase.singleton.popupManager.§0"O§(this.§5"9§);
         }
         switch(this.§ !%§)
         {
            case "OPEN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§@#D§.NORMAL,§5R§.TOP));
               break;
            case "OPEN_COIN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§@#D§.NORMAL,§5R§.TOP));
               break;
            case "HYPERLINK":
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest(this.§>#i§),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         §3";§.§#"'§().§^l§(this.§^#9§,this.§4!N§);
      }
      
      public function §0#N§(param1:String) : void
      {
         this.§5"9§ = param1;
      }
   }
}
