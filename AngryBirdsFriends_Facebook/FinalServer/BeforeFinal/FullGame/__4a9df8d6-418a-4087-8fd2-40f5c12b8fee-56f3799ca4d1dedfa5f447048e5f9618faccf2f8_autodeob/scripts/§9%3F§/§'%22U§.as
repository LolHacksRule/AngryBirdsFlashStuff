package §9?§
{
   import §#,§.§]$+§;
   import §&!_§.§!!K§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §,!Q§.§8#=§;
   import §0!s§.§5!-§;
   import §0!s§.§]"Y§;
   import §5" §.TabbedShopPopup;
   import §7R§.§ #`§;
   import §>z§.§#"l§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.URLVariables;
   import flash.system.Security;
   
   public class §'"U§
   {
      
      public static const §'"Y§:String = "https://cloud.rovio.com";
      
      public static const §="m§:String = "/ads/1.0/wall";
      
      public static const §0"F§:String = "/ads/1.0/track/image";
      
      public static const §8!#§:String = "/ads/1.0/track/link";
      
      public static const §-"N§:int = 600;
      
      public static const §9!H§:int = 338;
      
      private static const §<"@§:int = 654;
      
      private static var §3!l§:Boolean = false;
      
      private static const §@"9§:int = 10;
       
      
      private var §&#J§:String = "application/x-www-form-urlencoded";
      
      private var §[$5§:§]$+§;
      
      private var §9N§:int;
      
      private var §1"b§:int;
      
      private var mTween:§7$C§;
      
      private var §%F§:§%!M§;
      
      private var §^!-§:URLLoader;
      
      private var §>",§:MovieClip;
      
      private var §!D§:Object;
      
      private var § !u§:Boolean;
      
      private var §4$§:int;
      
      public function §'"U§(param1:§]$+§)
      {
         super();
         this.§[$5§ = param1;
         this.§%F§ = new §%!M§();
         Security.loadPolicyFile("http://cloud.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://news-assets.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
         this.§4$§ = 0;
      }
      
      protected static function get userProgress() : § #`§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as § #`§;
      }
      
      public function §@e§(param1:Event = null) : void
      {
         if(§3!l§)
         {
            this.§>#N§();
            return;
         }
         var _loc2_:String = §!!K§.§%#S§().§6#2§();
         if(_loc2_)
         {
            this.§+$E§(_loc2_);
         }
         else
         {
            this.§>#N§();
         }
      }
      
      private function §+$E§(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:URLRequest = new URLRequest(§'"Y§ + §="m§);
         var _loc3_:Object = new Object();
         _loc3_.did = userProgress.userID;
         _loc3_.ctx = "PauseMenuPromo";
         _loc3_.accessToken = param1;
         _loc3_.sw = §-"N§;
         _loc3_.sh = §9!H§;
         _loc2_.contentType = this.§&#J§;
         var _loc4_:URLVariables = new URLVariables();
         for(_loc5_ in _loc3_)
         {
            _loc4_[_loc5_] = _loc3_[_loc5_];
         }
         _loc2_.data = _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         this.§^!-§ = new URLLoader();
         this.§^!-§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§^!-§.addEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
         this.§^!-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-O§);
         this.§^!-§.load(_loc2_);
      }
      
      private function §3Q§(param1:IOErrorEvent) : void
      {
         this.§>#N§();
      }
      
      private function §>#N§() : void
      {
         this.§[$5§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §6$A§.§1!m§("PlaceholderAd");
         this.§>",§ = new _loc1_();
         var _loc2_:§]$+§ = this.§[$5§.getItemByName("News_Item_Holder") as §]$+§;
         var _loc3_:MovieClip = _loc2_.mClip.NewsHolder;
         this.§>",§.buttonMode = true;
         this.§>",§.addEventListener(MouseEvent.CLICK,this.§[#Y§);
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         _loc3_.addChild(this.§>",§);
         §3!l§ = true;
      }
      
      private function §[#Y§(param1:MouseEvent) : void
      {
         var _loc2_:§5!-§ = new TabbedShopPopup(§#"l§.NORMAL,§]"Y§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §-O§(param1:SecurityErrorEvent) : void
      {
         this.§>#N§();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§!D§ = JSON.parse(param1.currentTarget.data);
         this.§^s§();
      }
      
      public function reset() : void
      {
         var _loc3_:int = 0;
         if(this.mTween)
         {
            this.mTween.§%"#§();
         }
         var _loc1_:§]$+§ = this.§[$5§.getItemByName("News_Item_Holder") as §]$+§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§1"b§ = 0;
         if(this.§!D§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§!D§.length)
            {
               (this.§!D§[_loc3_].item as §""S§).§?#x§();
               _loc3_++;
            }
         }
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§8#=§ = null;
         var _loc3_:* = false;
         var _loc4_:§+!2§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§[$5§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§[$5§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §+!2§(this.§[$5§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
                  break;
               }
               _loc4_.setComponentState(§+!2§.§6v§);
               this.§[$5§.getItemByName("NewsArrowUp").setVisibility(false);
               this.§[$5§.getItemByName("NewsArrowDown").setVisibility(false);
               break;
            case "NEWS_UP":
               --this.§1"b§;
               this.scroll(§<"@§);
               break;
            case "NEWS_DOWN":
               ++this.§1"b§;
               this.scroll(-§<"@§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§+!2§ = §+!2§(this.§[$5§.getItemByName("Button_ShowNews"));
         if(_loc2_.§>'§ == §+!2§.§6v§)
         {
            this.§[$5§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§[$5§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§!D§ && this.§!D§.length > 2)
         {
            if(this.§1"b§ <= 0)
            {
               this.§[$5§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§[$5§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§1"b§ + 1) * 2 >= this.§!D§.length)
            {
               this.§[$5§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§[$5§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§[$5§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§[$5§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§]$+§ = this.§[$5§.getItemByName("News_Item_Holder") as §]$+§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.mTween)
            {
               this.mTween.§%"#§();
            }
            this.mTween = §"!&§.§`"H§.§1"W§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§"!&§.§0!§);
            this.mTween.play();
         }
         this.§;z§();
      }
      
      private function §^s§() : void
      {
         var _loc1_:§]$+§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§""S§ = null;
         this.§1"b§ = 0;
         if(this.§!D§)
         {
            _loc1_ = this.§[$5§.getItemByName("News_Item_Holder") as §]$+§;
            _loc2_ = _loc1_.mClip.NewsHolder;
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
            }
            if(this.§!D§.length > 0)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§!D§.length)
               {
                  (_loc4_ = this.§%F§.§!!S§(this.§!D§[_loc3_].image,this.§!D§[_loc3_].link,this.§!D§[_loc3_].linkId,this.§!D§[_loc3_].adId)).§>#e§(§'"Y§ + §0"F§,§'"Y§ + §8!#§,userProgress.userID,§!!K§.§%#S§().§6#2§());
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §9!H§ * 1 * _loc3_;
                  this.§!D§[_loc3_].item = _loc4_;
                  _loc3_++;
               }
            }
            else
            {
               this.§>#N§();
            }
         }
         this.§[$5§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
      
      public function dispose() : void
      {
         if(this.§^!-§)
         {
            this.§^!-§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§^!-§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3Q§);
            this.§^!-§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-O§);
            this.§^!-§ = null;
         }
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
         if(this.§%F§)
         {
            this.§%F§.dispose();
            this.§%F§ = null;
         }
         if(this.§>",§)
         {
            this.§>",§.removeEventListener(MouseEvent.CLICK,this.§[#Y§);
            this.§>",§.removeChildren();
            this.§>",§ = null;
         }
         this.§!D§ = null;
      }
      
      public function §0#i§(param1:Boolean) : void
      {
         this.§ !u§ = param1;
         this.§;z§();
      }
      
      private function §;z§() : void
      {
         if(!this.§!D§)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§!D§.length)
         {
            (this.§!D§[_loc1_].item as §""S§).§7!W§(this.§ !u§ && _loc1_ >= this.§1"b§ * 2 && _loc1_ <= this.§1"b§ * 2 + 1);
            _loc1_++;
         }
      }
   }
}
