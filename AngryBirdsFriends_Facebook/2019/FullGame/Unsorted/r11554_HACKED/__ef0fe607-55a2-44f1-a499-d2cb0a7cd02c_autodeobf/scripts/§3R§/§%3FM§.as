package §3R§
{
   import §!!?§.TabbedShopPopup;
   import §#!E§.§2#Q§;
   import §+#B§.§+$A§;
   import §4!n§.§#$>§;
   import §4!n§.§'!V§;
   import §5!$§.§<c§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §?!N§.§%#§;
   import com.rovio.assets.§2"O§;
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
   
   public class §?M§
   {
      
      public static const §>$4§:String = "https://cloud.rovio.com";
      
      public static const §3#w§:String = "/ads/1.0/wall";
      
      public static const §+!P§:String = "/ads/1.0/track/image";
      
      public static const §&!!§:String = "/ads/1.0/track/link";
      
      public static const §75§:int = 600;
      
      public static const §4#Q§:int = 338;
      
      private static const §1!a§:int = 654;
      
      private static var §`#O§:Boolean = false;
      
      private static const §8"$§:int = 10;
       
      
      private var §1#-§:String = "application/x-www-form-urlencoded";
      
      private var §<"`§:§<c§;
      
      private var §#"0§:int;
      
      private var §6"O§:int;
      
      private var mTween:§]%§;
      
      private var §9#q§:§4#=§;
      
      private var §0$8§:URLLoader;
      
      private var §[$C§:MovieClip;
      
      private var §4"%§:Object;
      
      private var §5$B§:Boolean;
      
      private var §6#=§:int;
      
      public function §?M§(param1:§<c§)
      {
         super();
         this.§<"`§ = param1;
         this.§9#q§ = new §4#=§();
         Security.loadPolicyFile("http://cloud.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://news-assets.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
         this.§6#=§ = 0;
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      public function §-#B§(param1:Event = null) : void
      {
         if(§`#O§)
         {
            this.final();
            return;
         }
         var _loc2_:String = §+$A§.§@"i§().§!#B§();
         if(_loc2_)
         {
            this.§+#1§(_loc2_);
         }
         else
         {
            this.final();
         }
      }
      
      private function §+#1§(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:URLRequest = new URLRequest(§>$4§ + §3#w§);
         var _loc3_:Object = new Object();
         _loc3_.did = userProgress.userID;
         _loc3_.ctx = "PauseMenuPromo";
         _loc3_.accessToken = param1;
         _loc3_.sw = §75§;
         _loc3_.sh = §4#Q§;
         _loc2_.contentType = this.§1#-§;
         var _loc4_:URLVariables = new URLVariables();
         for(_loc5_ in _loc3_)
         {
            _loc4_[_loc5_] = _loc3_[_loc5_];
         }
         _loc2_.data = _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         this.§0$8§ = new URLLoader();
         this.§0$8§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§0$8§.addEventListener(IOErrorEvent.IO_ERROR,this.§%Y§);
         this.§0$8§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#g§);
         this.§0$8§.load(_loc2_);
      }
      
      private function §%Y§(param1:IOErrorEvent) : void
      {
         this.final();
      }
      
      private function final() : void
      {
         this.§<"`§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §2"O§.§`>§("PlaceholderAd");
         this.§[$C§ = new _loc1_();
         var _loc2_:§<c§ = this.§<"`§.getItemByName("News_Item_Holder") as §<c§;
         var _loc3_:MovieClip = _loc2_.mClip.NewsHolder;
         this.§[$C§.buttonMode = true;
         this.§[$C§.addEventListener(MouseEvent.CLICK,this.§]_§);
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         _loc3_.addChild(this.§[$C§);
         §`#O§ = true;
      }
      
      private function §]_§(param1:MouseEvent) : void
      {
         var _loc2_:§@#G§ = new TabbedShopPopup(§%#§.NORMAL,§9#5§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §!#g§(param1:SecurityErrorEvent) : void
      {
         this.final();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§4"%§ = JSON.parse(param1.currentTarget.data);
         this.§>"0§();
      }
      
      public function reset() : void
      {
         var _loc3_:int = 0;
         if(this.mTween)
         {
            this.mTween.§6X§();
         }
         var _loc1_:§<c§ = this.§<"`§.getItemByName("News_Item_Holder") as §<c§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§6"O§ = 0;
         if(this.§4"%§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§4"%§.length)
            {
               (this.§4"%§[_loc3_].item as §##X§).§#!G§();
               _loc3_++;
            }
         }
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§#$>§ = null;
         var _loc3_:* = false;
         var _loc4_:§'!V§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§<"`§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§<"`§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §'!V§(this.§<"`§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
               }
               else
               {
                  _loc4_.setComponentState(§'!V§.§,[§);
                  this.§<"`§.getItemByName("NewsArrowUp").setVisibility(false);
                  this.§<"`§.getItemByName("NewsArrowDown").setVisibility(false);
               }
               break;
            case "NEWS_UP":
               --this.§6"O§;
               this.scroll(§1!a§);
               break;
            case "NEWS_DOWN":
               ++this.§6"O§;
               this.scroll(-§1!a§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§'!V§ = §'!V§(this.§<"`§.getItemByName("Button_ShowNews"));
         if(_loc2_.§9!#§ == §'!V§.§,[§)
         {
            this.§<"`§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§<"`§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§4"%§ && this.§4"%§.length > 2)
         {
            if(this.§6"O§ <= 0)
            {
               this.§<"`§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§<"`§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§6"O§ + 1) * 2 >= this.§4"%§.length)
            {
               this.§<"`§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§<"`§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§<"`§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§<"`§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§<c§ = this.§<"`§.getItemByName("News_Item_Holder") as §<c§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.mTween)
            {
               this.mTween.§6X§();
            }
            this.mTween = §'#n§.§?q§.§9!N§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§'#n§.§^!k§);
            this.mTween.play();
         }
         this.§%`§();
      }
      
      private function §>"0§() : void
      {
         var _loc1_:§<c§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§##X§ = null;
         this.§6"O§ = 0;
         if(this.§4"%§)
         {
            _loc1_ = this.§<"`§.getItemByName("News_Item_Holder") as §<c§;
            _loc2_ = _loc1_.mClip.NewsHolder;
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
            }
            if(this.§4"%§.length > 0)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§4"%§.length)
               {
                  (_loc4_ = this.§9#q§.§8!K§(this.§4"%§[_loc3_].image,this.§4"%§[_loc3_].link,this.§4"%§[_loc3_].linkId,this.§4"%§[_loc3_].adId)).§""&§(§>$4§ + §+!P§,§>$4§ + §&!!§,userProgress.userID,§+$A§.§@"i§().§!#B§());
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §4#Q§ * 1 * _loc3_;
                  this.§4"%§[_loc3_].item = _loc4_;
                  _loc3_++;
               }
            }
            else
            {
               this.final();
            }
         }
         this.§<"`§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
      
      public function dispose() : void
      {
         if(this.§0$8§)
         {
            this.§0$8§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§0$8§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%Y§);
            this.§0$8§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#g§);
            this.§0$8§ = null;
         }
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
         if(this.§9#q§)
         {
            this.§9#q§.dispose();
            this.§9#q§ = null;
         }
         if(this.§[$C§)
         {
            this.§[$C§.removeEventListener(MouseEvent.CLICK,this.§]_§);
            this.§[$C§.removeChildren();
            this.§[$C§ = null;
         }
         this.§4"%§ = null;
      }
      
      public function §]c§(param1:Boolean) : void
      {
         this.§5$B§ = param1;
         this.§%`§();
      }
      
      private function §%`§() : void
      {
         if(!this.§4"%§)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§4"%§.length)
         {
            (this.§4"%§[_loc1_].item as §##X§).§&#U§(this.§5$B§ && _loc1_ >= this.§6"O§ * 2 && _loc1_ <= this.§6"O§ * 2 + 1);
            _loc1_++;
         }
      }
   }
}
