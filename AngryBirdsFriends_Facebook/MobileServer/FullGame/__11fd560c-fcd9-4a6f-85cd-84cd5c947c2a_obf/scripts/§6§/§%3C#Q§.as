package §6§#3
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §&"`§.TabbedShopPopup;
   import §-!S§.§##>§;
   import §1!=§.§%#;§;
   import §1!=§.§^"U§;
   import §3#T§.§,#[§;
   import §3#T§.§@"!§;
   import §<h§.§[#K§;
   import §?P§.§]"$§;
   import §`7§.§ try§;
   import com.rovio.assets.§!"f§;
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
   
   public class §<#Q§
   {
      
      public static const §,"e§:String = "https://cloud.rovio.com";
      
      public static const §2!4§:String = "/ads/1.0/wall";
      
      public static const §`!Z§:String = "/ads/1.0/track/image";
      
      public static const §9k§:String = "/ads/1.0/track/link";
      
      public static const §#"=§:int = 600;
      
      public static const §2#$§:int = 338;
      
      private static const §%!1§:int = 654;
      
      private static var §&e§:Boolean = false;
      
      private static const §#!]§:int = 10;
       
      
      private var §;!"§:String = "application/x-www-form-urlencoded";
      
      private var §`!H§:§[#K§;
      
      private var §"#+§:int;
      
      private var §!$>§:int;
      
      private var mTween:§4[§;
      
      private var §&#-§:§0"m§;
      
      private var §@!0§:URLLoader;
      
      private var §@$&§:MovieClip;
      
      private var §3$8§:Object;
      
      private var §5s§:Boolean;
      
      private var §-!U§:int;
      
      public function §<#Q§(param1:§[#K§)
      {
         super();
         this.§`!H§ = param1;
         this.§&#-§ = new §0"m§();
         Security.loadPolicyFile("http://cloud.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://news-assets.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
         this.§-!U§ = 0;
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      public function §5"X§(param1:Event = null) : void
      {
         if(§&e§)
         {
            this.§^!h§();
            return;
         }
         var _loc2_:String = § try§.§!!t§().§7#^§();
         if(_loc2_)
         {
            this.§'"w§(_loc2_);
         }
         else
         {
            this.§^!h§();
         }
      }
      
      private function §'"w§(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:URLRequest = new URLRequest(§,"e§ + §2!4§);
         var _loc3_:Object = new Object();
         _loc3_.did = userProgress.userID;
         _loc3_.ctx = "PauseMenuPromo";
         _loc3_.accessToken = param1;
         _loc3_.sw = §#"=§;
         _loc3_.sh = §2#$§;
         _loc2_.contentType = this.§;!"§;
         var _loc4_:URLVariables = new URLVariables();
         for(_loc5_ in _loc3_)
         {
            _loc4_[_loc5_] = _loc3_[_loc5_];
         }
         _loc2_.data = _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         this.§@!0§ = new URLLoader();
         this.§@!0§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§@!0§.addEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
         this.§@!0§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1#o§);
         this.§@!0§.load(_loc2_);
      }
      
      private function §5L§(param1:IOErrorEvent) : void
      {
         this.§^!h§();
      }
      
      private function §^!h§() : void
      {
         this.§`!H§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §!"f§.§##?§("PlaceholderAd");
         this.§@$&§ = new _loc1_();
         var _loc2_:§[#K§ = this.§`!H§.getItemByName("News_Item_Holder") as §[#K§;
         var _loc3_:MovieClip = _loc2_.mClip.NewsHolder;
         this.§@$&§.buttonMode = true;
         this.§@$&§.addEventListener(MouseEvent.CLICK,this.§]#A§);
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         _loc3_.addChild(this.§@$&§);
         §&e§ = true;
      }
      
      private function §]#A§(param1:MouseEvent) : void
      {
         var _loc2_:§%#;§ = new TabbedShopPopup(§]"$§.NORMAL,§^"U§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §1#o§(param1:SecurityErrorEvent) : void
      {
         this.§^!h§();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§3$8§ = JSON.parse(param1.currentTarget.data);
         this.§#!Q§();
      }
      
      public function reset() : void
      {
         var _loc3_:int = 0;
         if(this.mTween)
         {
            this.mTween.§@g§();
         }
         var _loc1_:§[#K§ = this.§`!H§.getItemByName("News_Item_Holder") as §[#K§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§!$>§ = 0;
         if(this.§3$8§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§3$8§.length)
            {
               (this.§3$8§[_loc3_].item as §@#J§).§8#Q§();
               _loc3_++;
            }
         }
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§@"!§ = null;
         var _loc3_:* = false;
         var _loc4_:§,#[§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§`!H§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§`!H§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §,#[§(this.§`!H§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
               }
               else
               {
                  _loc4_.setComponentState(§,#[§.§1$,§);
                  this.§`!H§.getItemByName("NewsArrowUp").setVisibility(false);
                  this.§`!H§.getItemByName("NewsArrowDown").setVisibility(false);
               }
               break;
            case "NEWS_UP":
               --this.§!$>§;
               this.scroll(§%!1§);
               break;
            case "NEWS_DOWN":
               ++this.§!$>§;
               this.scroll(-§%!1§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§,#[§ = §,#[§(this.§`!H§.getItemByName("Button_ShowNews"));
         if(_loc2_.§2!t§ == §,#[§.§1$,§)
         {
            this.§`!H§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§`!H§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§3$8§ && this.§3$8§.length > 2)
         {
            if(this.§!$>§ <= 0)
            {
               this.§`!H§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§`!H§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§!$>§ + 1) * 2 >= this.§3$8§.length)
            {
               this.§`!H§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§`!H§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§`!H§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§`!H§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§[#K§ = this.§`!H§.getItemByName("News_Item_Holder") as §[#K§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.mTween)
            {
               this.mTween.§@g§();
            }
            this.mTween = §&"H§.§6!§.§6C§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§&"H§.§9"_§);
            this.mTween.play();
         }
         this.§<v§();
      }
      
      private function §#!Q§() : void
      {
         var _loc1_:§[#K§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§@#J§ = null;
         this.§!$>§ = 0;
         if(this.§3$8§)
         {
            _loc1_ = this.§`!H§.getItemByName("News_Item_Holder") as §[#K§;
            _loc2_ = _loc1_.mClip.NewsHolder;
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
            }
            if(this.§3$8§.length > 0)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§3$8§.length)
               {
                  (_loc4_ = this.§&#-§.§5#§(this.§3$8§[_loc3_].image,this.§3$8§[_loc3_].link,this.§3$8§[_loc3_].linkId,this.§3$8§[_loc3_].adId)).§%#U§(§,"e§ + §`!Z§,§,"e§ + §9k§,userProgress.userID,§ try§.§!!t§().§7#^§());
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §2#$§ * 1 * _loc3_;
                  this.§3$8§[_loc3_].item = _loc4_;
                  _loc3_++;
               }
            }
            else
            {
               this.§^!h§();
            }
         }
         this.§`!H§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
      
      public function dispose() : void
      {
         if(this.§@!0§)
         {
            this.§@!0§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§@!0§.removeEventListener(IOErrorEvent.IO_ERROR,this.§5L§);
            this.§@!0§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§1#o§);
            this.§@!0§ = null;
         }
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
         if(this.§&#-§)
         {
            this.§&#-§.dispose();
            this.§&#-§ = null;
         }
         if(this.§@$&§)
         {
            this.§@$&§.removeEventListener(MouseEvent.CLICK,this.§]#A§);
            this.§@$&§.removeChildren();
            this.§@$&§ = null;
         }
         this.§3$8§ = null;
      }
      
      public function §%"t§(param1:Boolean) : void
      {
         this.§5s§ = param1;
         this.§<v§();
      }
      
      private function §<v§() : void
      {
         if(!this.§3$8§)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§3$8§.length)
         {
            (this.§3$8§[_loc1_].item as §@#J§).§<!y§(this.§5s§ && _loc1_ >= this.§!$>§ * 2 && _loc1_ <= this.§!$>§ * 2 + 1);
            _loc1_++;
         }
      }
   }
}
