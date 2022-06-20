package §[!;§
{
   import § h§.§-!S§;
   import §2E§.§]!P§;
   import §4#l§.TabbedShopPopup;
   import §8!G§.CoinShopPopup;
   import §9!6§.§## §;
   import com.rovio.assets.§=@§;
   import flash.display.DisplayObjectContainer;
   import flash.display.SimpleButton;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §[">§
   {
      
      public static const §^!1§:Array = ["buttonOne","buttonTwo","buttonThree"];
       
      
      private var §"w§:String;
      
      private var § $+§:String;
      
      private var §4#r§:String;
      
      private var §@$0§:String;
      
      private var § $-§:String;
      
      private var §[G§:String;
      
      private var §0#5§:int;
      
      private var §'"B§:SimpleButton;
      
      private var §!!#§:String;
      
      public function §[">§(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:int)
      {
         super();
         this.§"w§ = param1;
         this.§ $+§ = param2;
         this.§4#r§ = param3;
         this.§@$0§ = param4;
         this.§ $-§ = param5 != null ? param5 : "";
         this.§[G§ = param6;
         this.§0#5§ = param7;
         this.§'"B§ = new §=@§.§9!x§("ButtonDynamicNotification" + param4)();
         this.§2#j§(this.§ $-§);
         this.§'"B§.scaleX = param7 / 100;
         this.§'"B§.scaleY = param7 / 100;
         this.§'"B§.addEventListener(MouseEvent.CLICK,this.§9#W§,false,0,true);
      }
      
      public function §'j§() : SimpleButton
      {
         return this.§'"B§;
      }
      
      public function §"#;§() : Number
      {
         return this.§'"B§.width;
      }
      
      protected function §2#j§(param1:String) : void
      {
         var _loc3_:TextField = null;
         var _loc2_:DisplayObjectContainer = this.§'"B§.upState as DisplayObjectContainer;
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
         _loc3_.text = this.§ $-§;
         var _loc5_:Number = this.§"#;§() * 0.88;
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
         _loc2_ = this.§'"B§.overState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§ $-§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
         _loc2_ = this.§'"B§.downState as DisplayObjectContainer;
         _loc4_ = 0;
         while(_loc4_ < _loc2_.numChildren)
         {
            if(_loc2_.getChildAt(_loc4_) is TextField)
            {
               _loc3_ = _loc2_.getChildAt(_loc4_) as TextField;
               _loc3_.text = this.§ $-§;
               break;
            }
            _loc4_++;
         }
         if(_loc8_)
         {
            _loc3_.setTextFormat(_loc7_);
         }
      }
      
      protected function §9#W§(param1:MouseEvent) : void
      {
         var e:MouseEvent = param1;
         if(this.§!!#§)
         {
            AngryBirdsBase.singleton.popupManager.§>#g§(this.§!!#§);
         }
         switch(this.§4#r§)
         {
            case "OPEN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new TabbedShopPopup(§-!S§.NORMAL,§## §.TOP));
               break;
            case "OPEN_COIN_SHOP":
               AngryBirdsBase.singleton.popupManager.openPopup(new CoinShopPopup(§-!S§.NORMAL,§## §.TOP));
               break;
            case "HYPERLINK":
               try
               {
                  AngryBirdsBase.singleton.exitFullScreen();
                  navigateToURL(new URLRequest(this.§[G§),"_blank");
               }
               catch(e:Error)
               {
               }
         }
         §]!P§.§1!7§().§6#Q§(this.§ $+§,this.§"w§);
      }
      
      public function §'#7§(param1:String) : void
      {
         this.§!!#§ = param1;
      }
   }
}
