package §1!3§
{
   import §"c§.CoinShopPopup;
   import §&!_§.§!!K§;
   import §0!s§.§]"Y§;
   import §5" §.TabbedShopPopup;
   import §>z§.§#"l§;
   import com.rovio.assets.§6$A§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §in §
   {
      
      public static const §]#R§:Array = ["buttonOne","buttonTwo","buttonThree"];
       
      
      private var §;!f§:String;
      
      private var §;"!§:String;
      
      private var §,M§:String;
      
      private var §"#D§:String;
      
      private var §9![§:String;
      
      private var §6$#§:String;
      
      private var §6"'§:int;
      
      private var §"!N§:SimpleButton;
      
      private var §&#!§:String;
      
      public function §in §(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int)
      {
         super();
         this.§;!f§ = param1;
         this.§;"!§ = param2;
         this.§,M§ = param3;
         this.§"#D§ = param4;
         this.§9![§ = param5 != null ? param5 : "";
         this.§6$#§ = param6;
         this.§6"'§ = param7;
         this.§"!N§ = new §6$A§.§1!m§("ButtonDynamicNotification" + param4)();
         this.§<#?§(this.§9![§);
         this.§"!N§.scaleX = param7 / 100;
         this.§"!N§.scaleY = param7 / 100;
         this.§"!N§.addEventListener(MouseEvent.CLICK,this.§%2§,false,0,true);
      }
      
      public function §"#4§() : SimpleButton
      {
         return this.§"!N§;
      }
      
      public function §7$A§() : Number
      {
         return this.§"!N§.width;
      }
      
      protected function §<#?§(param1:String) : void
      {
         var _loc3_:TextField = null;
         var _loc2_:DisplayObjectContainer = this.§"!N§.upState as DisplayObjectContainer;
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
         _loc3_.text = this.§9![§;
         var _loc5_:Number = this.§7$A§() * 0.88;
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
         _loc2_ = this.§"!N§.overState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§9![§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
         _loc2_ = this.§"!N§.downState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§9![§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
      }
      
      protected function §%2§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         if(this.§&#!§)
         {
            AngryBirdsBase.singleton.popupManager.§7$9§(this.§&#!§);
         }
         switch(this.§,M§)
         {
            case "OPEN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.TOP));
               break;
            case "OPEN_COIN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§#"l§.NORMAL,§]"Y§.TOP));
               break;
            case "HYPERLINK":
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest(this.§6$#§),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         §!!K§.§%#S§().§#"^§(this.§;"!§,this.§;!f§);
      }
      
      public function §?#J§(param1:String) : void
      {
         this.§&#!§ = param1;
      }
   }
}
