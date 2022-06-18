package §9m§
{
   import § h§.§-!S§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §-"S§.§>#G§;
   import §2$;§.§!"e§;
   import §2E§.§]!P§;
   import §4#l§.TabbedShopPopup;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §<8§.§6!1§;
   import §<8§.§;"k§;
   import com.rovio.assets.§=@§;
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
   
   public class §0#E§
   {
      
      public static const §3"D§:String = "https://cloud.rovio.com";
      
      public static const §[s§:String = "/ads/1.0/wall";
      
      public static const §3"a§:String = "/ads/1.0/track/image";
      
      public static const §`#;§:String = "/ads/1.0/track/link";
      
      public static const §<!z§:int = 600;
      
      public static const §-!Z§:int = 338;
      
      private static const §@"s§:int = 654;
      
      private static var §,#e§:Boolean = false;
      
      private static const §+[§:int = 10;
       
      
      private var §4$@§:String = "application/x-www-form-urlencoded";
      
      private var §@!D§:§!"e§;
      
      private var §5F§:int;
      
      private var §&!`§:int;
      
      private var mTween:§@#5§;
      
      private var §,3§:§8!4§;
      
      private var §&k§:URLLoader;
      
      private var §6#H§:MovieClip;
      
      private var §?!0§:Object;
      
      private var §,"+§:Boolean;
      
      private var §-Z§:int;
      
      public function §0#E§(param1:§!"e§)
      {
         super();
         this.§@!D§ = param1;
         this.§,3§ = new §8!4§();
         Security.loadPolicyFile("http://cloud.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://news-assets.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
         this.§-Z§ = 0;
      }
      
      protected static function get userProgress() : §>#G§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §>#G§;
      }
      
      public function §;!K§(param1:Event = null) : void
      {
         if(§,#e§)
         {
            this.§+!z§();
            return;
         }
         var _loc2_:String = §]!P§.§1!7§().§&!<§();
         if(_loc2_)
         {
            this.§`#<§(_loc2_);
         }
         else
         {
            this.§+!z§();
         }
      }
      
      private function §`#<§(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:URLRequest = new URLRequest(§3"D§ + §[s§);
         var _loc3_:Object = new Object();
         _loc3_.did = userProgress.userID;
         _loc3_.ctx = "PauseMenuPromo";
         _loc3_.accessToken = param1;
         _loc3_.sw = §<!z§;
         _loc3_.sh = §-!Z§;
         _loc2_.contentType = this.§4$@§;
         var _loc4_:URLVariables = new URLVariables();
         for(_loc5_ in _loc3_)
         {
            _loc4_[_loc5_] = _loc3_[_loc5_];
         }
         _loc2_.data = _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         this.§&k§ = new URLLoader();
         this.§&k§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§&k§.addEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
         this.§&k§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#i§);
         this.§&k§.load(_loc2_);
      }
      
      private function §%! §(param1:IOErrorEvent) : void
      {
         this.§+!z§();
      }
      
      private function §+!z§() : void
      {
         this.§@!D§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §=@§.§9!x§("PlaceholderAd");
         this.§6#H§ = new _loc1_();
         var _loc2_:§!"e§ = this.§@!D§.getItemByName("News_Item_Holder") as §!"e§;
         var _loc3_:MovieClip = _loc2_.mClip.NewsHolder;
         this.§6#H§.buttonMode = true;
         this.§6#H§.addEventListener(MouseEvent.CLICK,this.§`#T§);
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         _loc3_.addChild(this.§6#H§);
         §,#e§ = true;
      }
      
      private function §`#T§(param1:MouseEvent) : void
      {
         var _loc2_:§?!y§ = new TabbedShopPopup(§-!S§.NORMAL,§## §.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §!#i§(param1:SecurityErrorEvent) : void
      {
         this.§+!z§();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§?!0§ = JSON.parse(param1.currentTarget.data);
         this.§0#S§();
      }
      
      public function reset() : void
      {
         var _loc3_:int = 0;
         if(this.mTween)
         {
            this.mTween.§+!_§();
         }
         var _loc1_:§!"e§ = this.§@!D§.getItemByName("News_Item_Holder") as §!"e§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§&!`§ = 0;
         if(this.§?!0§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§?!0§.length)
            {
               (this.§?!0§[_loc3_].item as §-w§).§?#g§();
               _loc3_++;
            }
         }
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§6!1§ = null;
         var _loc3_:* = false;
         var _loc4_:§;"k§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§@!D§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§@!D§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §;"k§(this.§@!D§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
               }
               else
               {
                  _loc4_.setComponentState(§;"k§.§`"2§);
                  this.§@!D§.getItemByName("NewsArrowUp").setVisibility(false);
                  this.§@!D§.getItemByName("NewsArrowDown").setVisibility(false);
               }
               break;
            case "NEWS_UP":
               --this.§&!`§;
               this.scroll(§@"s§);
               break;
            case "NEWS_DOWN":
               ++this.§&!`§;
               this.scroll(-§@"s§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§;"k§ = §;"k§(this.§@!D§.getItemByName("Button_ShowNews"));
         if(_loc2_.§?"@§ == §;"k§.§`"2§)
         {
            this.§@!D§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§@!D§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§?!0§ && this.§?!0§.length > 2)
         {
            if(this.§&!`§ <= 0)
            {
               this.§@!D§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§@!D§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§&!`§ + 1) * 2 >= this.§?!0§.length)
            {
               this.§@!D§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§@!D§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§@!D§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§@!D§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§!"e§ = this.§@!D§.getItemByName("News_Item_Holder") as §!"e§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.mTween)
            {
               this.mTween.§+!_§();
            }
            this.mTween = §5"<§.§3"1§.§3#§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§5"<§.§&"1§);
            this.mTween.play();
         }
         this.§!"R§();
      }
      
      private function §0#S§() : void
      {
         var _loc1_:§!"e§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§-w§ = null;
         this.§&!`§ = 0;
         if(this.§?!0§)
         {
            _loc1_ = this.§@!D§.getItemByName("News_Item_Holder") as §!"e§;
            _loc2_ = _loc1_.mClip.NewsHolder;
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
            }
            if(this.§?!0§.length > 0)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§?!0§.length)
               {
                  (_loc4_ = this.§,3§.§'!r§(this.§?!0§[_loc3_].image,this.§?!0§[_loc3_].link,this.§?!0§[_loc3_].linkId,this.§?!0§[_loc3_].adId)).§1"K§(§3"D§ + §3"a§,§3"D§ + §`#;§,userProgress.userID,§]!P§.§1!7§().§&!<§());
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §-!Z§ * 1 * _loc3_;
                  this.§?!0§[_loc3_].item = _loc4_;
                  _loc3_++;
               }
            }
            else
            {
               this.§+!z§();
            }
         }
         this.§@!D§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
      
      public function dispose() : void
      {
         if(this.§&k§)
         {
            this.§&k§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§&k§.removeEventListener(IOErrorEvent.IO_ERROR,this.§%! §);
            this.§&k§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!#i§);
            this.§&k§ = null;
         }
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
         if(this.§,3§)
         {
            this.§,3§.dispose();
            this.§,3§ = null;
         }
         if(this.§6#H§)
         {
            this.§6#H§.removeEventListener(MouseEvent.CLICK,this.§`#T§);
            this.§6#H§.removeChildren();
            this.§6#H§ = null;
         }
         this.§?!0§ = null;
      }
      
      public function §#x§(param1:Boolean) : void
      {
         this.§,"+§ = param1;
         this.§!"R§();
      }
      
      private function §!"R§() : void
      {
         if(!this.§?!0§)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§?!0§.length)
         {
            (this.§?!0§[_loc1_].item as §-w§).§=!§(this.§,"+§ && _loc1_ >= this.§&!`§ * 2 && _loc1_ <= this.§&!`§ * 2 + 1);
            _loc1_++;
         }
      }
   }
}
