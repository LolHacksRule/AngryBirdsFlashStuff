package §5";§
{
   import §&"`§.TabbedShopPopup;
   import §1!=§.§^"U§;
   import §4#V§.CoinShopPopup;
   import §?P§.§]"$§;
   import §`7§.§ try§;
   import com.rovio.assets.§!"f§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class § !N§
   {
      
      public static const §9#_§:Array = ["buttonOne","buttonTwo","buttonThree"];
       
      
      private var §;P§:String;
      
      private var §'$2§:String;
      
      private var §,"'§:String;
      
      private var §-!x§:String;
      
      private var § !i§:String;
      
      private var §=$!§:String;
      
      private var §,#D§:int;
      
      private var §&!C§:SimpleButton;
      
      private var §#!`§:String;
      
      public function § !N§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int)
      {
         super();
         this.§;P§ = param1;
         this.§'$2§ = param2;
         this.§,"'§ = param3;
         this.§-!x§ = param4;
         this.§ !i§ = param5 != null ? param5 : "";
         this.§=$!§ = param6;
         this.§,#D§ = param7;
         this.§&!C§ = new §!"f§.§##?§("ButtonDynamicNotification" + param4)();
         this.§0#'§(this.§ !i§);
         this.§&!C§.scaleX = param7 / 100;
         this.§&!C§.scaleY = param7 / 100;
         this.§&!C§.addEventListener(MouseEvent.CLICK,this.§]#B§,false,0,true);
      }
      
      public function §`#c§() : SimpleButton
      {
         return this.§&!C§;
      }
      
      public function §&!T§() : Number
      {
         return this.§&!C§.width;
      }
      
      protected function §0#'§(param1:String) : void
      {
         var _loc3_:TextField = null;
         var _loc2_:DisplayObjectContainer = this.§&!C§.upState as DisplayObjectContainer;
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
         _loc3_.text = this.§ !i§;
         var _loc5_:Number = this.§&!T§() * 0.88;
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
         _loc2_ = this.§&!C§.overState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§ !i§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
         _loc2_ = this.§&!C§.downState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§ !i§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
      }
      
      protected function §]#B§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         if(this.§#!`§)
         {
            AngryBirdsBase.singleton.popupManager.§""^§(this.§#!`§);
         }
         switch(this.§,"'§)
         {
            case "OPEN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§]"$§.NORMAL,§^"U§.TOP));
               break;
            case "OPEN_COIN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§]"$§.NORMAL,§^"U§.TOP));
               break;
            case "HYPERLINK":
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest(this.§=$!§),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         § try§.§!!t§().§^"T§(this.§'$2§,this.§;P§);
      }
      
      public function §^"G§(param1:String) : void
      {
         this.§#!`§ = param1;
      }
   }
}
