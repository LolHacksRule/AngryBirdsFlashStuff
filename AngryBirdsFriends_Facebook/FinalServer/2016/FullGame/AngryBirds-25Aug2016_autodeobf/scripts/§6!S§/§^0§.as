package §6!S§
{
   import §"!U§.TabbedShopPopup;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§4P§;
   import §'!U§.§>$$§;
   import §4q§.§!#Q§;
   import §6"r§.§0"<§;
   import §>!#§.§-#A§;
   import §?"R§.§[W§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import com.rovio.assets.§@`§;
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
   
   public class §^0§
   {
      
      public static const §%#c§:String = "https://cloud.rovio.com";
      
      public static const §4""§:String = "/ads/1.0/wall";
      
      public static const §+#f§:String = "/ads/1.0/track/image";
      
      public static const §^#h§:String = "/ads/1.0/track/link";
      
      public static const §]9§:int = 600;
      
      public static const §8$4§:int = 338;
      
      private static const §6&§:int = 654;
      
      private static var §!#U§:Boolean = false;
      
      private static const §<#'§:int = 10;
       
      
      private var §'" §:String = "application/x-www-form-urlencoded";
      
      private var §!$§:§0"<§;
      
      private var §`$!§:int;
      
      private var §?#6§:int;
      
      private var §-c§:§+,§;
      
      private var §,K§:§@#<§;
      
      private var §`#2§:URLLoader;
      
      private var §&#j§:MovieClip;
      
      private var §]"o§:Object;
      
      private var §=+§:Boolean;
      
      private var §3#m§:int;
      
      public function §^0§(param1:§0"<§)
      {
         super();
         this.§!$§ = param1;
         this.§,K§ = new §@#<§();
         Security.loadPolicyFile("http://cloud.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://news-assets.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
         this.§3#m§ = 0;
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      public function §2$#§(param1:Event = null) : void
      {
         if(§!#U§)
         {
            this.§-#d§();
            return;
         }
         var _loc2_:String = §-#A§.§6$2§().§@Y§();
         if(_loc2_)
         {
            this.§`! §(_loc2_);
         }
         else
         {
            this.§-#d§();
         }
      }
      
      private function §`! §(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:URLRequest = new URLRequest(§%#c§ + §4""§);
         var _loc3_:Object = new Object();
         _loc3_.did = userProgress.userID;
         _loc3_.ctx = "PauseMenuPromo";
         _loc3_.accessToken = param1;
         _loc3_.sw = §]9§;
         _loc3_.sh = §8$4§;
         _loc2_.contentType = this.§'" §;
         var _loc4_:URLVariables = new URLVariables();
         for(_loc5_ in _loc3_)
         {
            _loc4_[_loc5_] = _loc3_[_loc5_];
         }
         _loc2_.data = _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         this.§`#2§ = new URLLoader();
         this.§`#2§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§`#2§.addEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
         this.§`#2§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>$8§);
         this.§`#2§.load(_loc2_);
      }
      
      private function §5"R§(param1:IOErrorEvent) : void
      {
         this.§-#d§();
      }
      
      private function §-#d§() : void
      {
         this.§!$§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §@`§.§4!i§("PlaceholderAd");
         this.§&#j§ = new _loc1_();
         var _loc2_:§0"<§ = this.§!$§.getItemByName("News_Item_Holder") as §0"<§;
         var _loc3_:MovieClip = _loc2_.mClip.NewsHolder;
         this.§&#j§.buttonMode = true;
         this.§&#j§.addEventListener(MouseEvent.CLICK,this.§5B§);
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         _loc3_.addChild(this.§&#j§);
         §!#U§ = true;
      }
      
      private function §5B§(param1:MouseEvent) : void
      {
         var _loc2_:§8!H§ = new TabbedShopPopup(§[W§.NORMAL,§<d§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §>$8§(param1:SecurityErrorEvent) : void
      {
         this.§-#d§();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§]"o§ = JSON.parse(param1.currentTarget.data);
         this.§#"D§();
      }
      
      public function reset() : void
      {
         var _loc3_:int = 0;
         if(this.§-c§)
         {
            this.§-c§.§?#$§();
         }
         var _loc1_:§0"<§ = this.§!$§.getItemByName("News_Item_Holder") as §0"<§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§?#6§ = 0;
         if(this.§]"o§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§]"o§.length)
            {
               (this.§]"o§[_loc3_].item as §"#a§).§;"?§();
               _loc3_++;
            }
         }
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§>$$§ = null;
         var _loc3_:* = false;
         var _loc4_:§4P§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§!$§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§!$§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §4P§(this.§!$§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
               }
               else
               {
                  _loc4_.setComponentState(§4P§.§#"X§);
                  this.§!$§.getItemByName("NewsArrowUp").setVisibility(false);
                  this.§!$§.getItemByName("NewsArrowDown").setVisibility(false);
               }
               break;
            case "NEWS_UP":
               --this.§?#6§;
               this.scroll(§6&§);
               break;
            case "NEWS_DOWN":
               ++this.§?#6§;
               this.scroll(-§6&§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§4P§ = §4P§(this.§!$§.getItemByName("Button_ShowNews"));
         if(_loc2_.§<"Q§ == §4P§.§#"X§)
         {
            this.§!$§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§!$§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§]"o§ && this.§]"o§.length > 2)
         {
            if(this.§?#6§ <= 0)
            {
               this.§!$§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§!$§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§?#6§ + 1) * 2 >= this.§]"o§.length)
            {
               this.§!$§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§!$§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§!$§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§!$§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§0"<§ = this.§!$§.getItemByName("News_Item_Holder") as §0"<§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.§-c§)
            {
               this.§-c§.§?#$§();
            }
            this.§-c§ = §""Z§.§3!]§.§5"0§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§""Z§.§0"2§);
            this.§-c§.play();
         }
         this.§6<§();
      }
      
      private function §#"D§() : void
      {
         var _loc1_:§0"<§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§"#a§ = null;
         this.§?#6§ = 0;
         if(this.§]"o§)
         {
            _loc1_ = this.§!$§.getItemByName("News_Item_Holder") as §0"<§;
            _loc2_ = _loc1_.mClip.NewsHolder;
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
            }
            if(this.§]"o§.length > 0)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§]"o§.length)
               {
                  (_loc4_ = this.§,K§.§,!&§(this.§]"o§[_loc3_].image,this.§]"o§[_loc3_].link,this.§]"o§[_loc3_].linkId,this.§]"o§[_loc3_].adId)).§^C§(§%#c§ + §+#f§,§%#c§ + §^#h§,userProgress.userID,§-#A§.§6$2§().§@Y§());
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §8$4§ * 1 * _loc3_;
                  this.§]"o§[_loc3_].item = _loc4_;
                  _loc3_++;
               }
            }
            else
            {
               this.§-#d§();
            }
         }
         this.§!$§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
      
      public function dispose() : void
      {
         if(this.§`#2§)
         {
            this.§`#2§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§`#2§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5"R§);
            this.§`#2§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>$8§);
            this.§`#2§ = null;
         }
         if(this.§-c§)
         {
            this.§-c§.stop();
            this.§-c§ = null;
         }
         if(this.§,K§)
         {
            this.§,K§.dispose();
            this.§,K§ = null;
         }
         if(this.§&#j§)
         {
            this.§&#j§.removeEventListener(MouseEvent.CLICK,this.§5B§);
            this.§&#j§.removeChildren();
            this.§&#j§ = null;
         }
         this.§]"o§ = null;
      }
      
      public function §=!!§(param1:Boolean) : void
      {
         this.§=+§ = param1;
         this.§6<§();
      }
      
      private function §6<§() : void
      {
         if(!this.§]"o§)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§]"o§.length)
         {
            (this.§]"o§[_loc1_].item as §"#a§).§'G§(this.§=+§ && _loc1_ >= this.§?#6§ * 2 && _loc1_ <= this.§?#6§ * 2 + 1);
            _loc1_++;
         }
      }
   }
}
