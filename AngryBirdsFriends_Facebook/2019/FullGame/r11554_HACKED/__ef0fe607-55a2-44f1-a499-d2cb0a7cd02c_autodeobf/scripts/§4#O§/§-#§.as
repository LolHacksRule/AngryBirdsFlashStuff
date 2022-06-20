package §4#O§
{
   import §!!?§.TabbedShopPopup;
   import §%4§.CoinShopPopup;
   import §+#B§.§+$A§;
   import §;$5§.§9§;
   import §?!N§.§%#§;
   import com.rovio.assets.§2"O§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §-#§
   {
      
      public static const §1"U§:Array = ["buttonOne","buttonTwo","buttonThree"];
       
      
      private var §5"+§:String;
      
      private var §^#K§:String;
      
      private var §'"@§:String;
      
      private var §=B§:String;
      
      private var §7#8§:String;
      
      private var §!#§:String;
      
      private var §]s§:int;
      
      private var §-$;§:SimpleButton;
      
      private var §-<§:String;
      
      public function §-#§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int)
      {
         super();
         this.§5"+§ = param1;
         this.§^#K§ = param2;
         this.§'"@§ = param3;
         this.§=B§ = param4;
         this.§7#8§ = param5 != null ? param5 : "";
         this.§!#§ = param6;
         this.§]s§ = param7;
         this.§-$;§ = new §2"O§.§`>§("ButtonDynamicNotification" + param4)();
         this.§'S§(this.§7#8§);
         this.§-$;§.scaleX = param7 / 100;
         this.§-$;§.scaleY = param7 / 100;
         this.§-$;§.addEventListener(MouseEvent.CLICK,this.§9#n§,false,0,true);
      }
      
      public function §2"2§() : SimpleButton
      {
         return this.§-$;§;
      }
      
      public function §""V§() : Number
      {
         return this.§-$;§.width;
      }
      
      protected function §'S§(param1:String) : void
      {
         var _loc3_:TextField = null;
         var _loc2_:DisplayObjectContainer = this.§-$;§.upState as DisplayObjectContainer;
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
         _loc3_.text = this.§7#8§;
         var _loc5_:Number = this.§""V§() * 0.88;
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
         _loc2_ = this.§-$;§.overState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§7#8§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
         _loc2_ = this.§-$;§.downState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§7#8§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
      }
      
      protected function §9#n§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         if(this.§-<§)
         {
            AngryBirdsBase.singleton.popupManager.§2;§(this.§-<§);
         }
         switch(this.§'"@§)
         {
            case "OPEN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%#§.NORMAL,§9#5§.TOP));
               break;
            case "OPEN_COIN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§%#§.NORMAL,§9#5§.TOP));
               break;
            case "HYPERLINK":
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest(this.§!#§),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         §+$A§.§@"i§().§'O§(this.§^#K§,this.§5"+§);
      }
      
      public function §@"p§(param1:String) : void
      {
         this.§-<§ = param1;
      }
   }
}
