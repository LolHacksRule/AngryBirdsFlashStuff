package §?]§
{
   import § o§.§%"!§;
   import §6V§.§?!=§;
   import §7",§.TabbedShopPopup;
   import §9"0§.CoinShopPopup;
   import §<#m§.§^#o§;
   import com.rovio.assets.§+$#§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §[!y§
   {
      
      public static const §<"r§:Array = ["buttonOne","buttonTwo","buttonThree"];
       
      
      private var §`"y§:String;
      
      private var §>"7§:String;
      
      private var §6#0§:String;
      
      private var §5T§:String;
      
      private var §;$%§:String;
      
      private var §]!X§:String;
      
      private var §%_§:int;
      
      private var §?"F§:SimpleButton;
      
      private var §8"]§:String;
      
      public function §[!y§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int)
      {
         super();
         this.§`"y§ = param1;
         this.§>"7§ = param2;
         this.§6#0§ = param3;
         this.§5T§ = param4;
         this.§;$%§ = param5 != null ? param5 : "";
         this.§]!X§ = param6;
         this.§%_§ = param7;
         this.§?"F§ = new §+$#§.§["`§("ButtonDynamicNotification" + param4)();
         this.§+k§(this.§;$%§);
         this.§?"F§.scaleX = param7 / 100;
         this.§?"F§.scaleY = param7 / 100;
         this.§?"F§.addEventListener(MouseEvent.CLICK,this.§'"r§,false,0,true);
      }
      
      public function §4#W§() : SimpleButton
      {
         return this.§?"F§;
      }
      
      public function §,#Y§() : Number
      {
         return this.§?"F§.width;
      }
      
      protected function §+k§(param1:String) : void
      {
         var _loc3_:TextField = null;
         var _loc2_:DisplayObjectContainer = this.§?"F§.upState as DisplayObjectContainer;
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
         _loc3_.text = this.§;$%§;
         var _loc5_:Number = this.§,#Y§() * 0.88;
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
         _loc2_ = this.§?"F§.overState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§;$%§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
         _loc2_ = this.§?"F§.downState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§;$%§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
      }
      
      protected function §'"r§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         if(this.§8"]§)
         {
            AngryBirdsBase.singleton.popupManager.§?$=§(this.§8"]§);
         }
         switch(this.§6#0§)
         {
            case "OPEN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§%"!§.NORMAL,§^#o§.TOP));
               break;
            case "OPEN_COIN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§%"!§.NORMAL,§^#o§.TOP));
               break;
            case "HYPERLINK":
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest(this.§]!X§),"_blank");
                  break;
               }
               catch(e:Error)
               {
                  break;
               }
         }
         §?!=§.§3!q§().§2#"§(this.§>"7§,this.§`"y§);
      }
      
      public function §&#6§(param1:String) : void
      {
         this.§8"]§ = param1;
      }
   }
}
