package §^"w§
{
   import § "L§.§23§;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import §!L§.§`#u§;
   import §#"4§.§3";§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?Q§.§@#D§;
   import §^"3§.§ #&§;
   import §^"3§.§^"C§;
   import §`D§.TabbedShopPopup;
   import com.rovio.assets.§[a§;
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
   
   public class §<#l§
   {
      
      public static const §2!]§:String = "https://cloud.rovio.com";
      
      public static const §9$A§:String = "/ads/1.0/wall";
      
      public static const §`$&§:String = "/ads/1.0/track/image";
      
      public static const §%]§:String = "/ads/1.0/track/link";
      
      public static const §!#a§:int = 600;
      
      public static const §;"T§:int = 338;
      
      private static const §2!i§:int = 654;
      
      private static var § #i§:Boolean = false;
      
      private static const §[$-§:int = 10;
       
      
      private var §@#Y§:String = "application/x-www-form-urlencoded";
      
      private var §;!w§:§23§;
      
      private var §1#!§:int;
      
      private var §@!+§:int;
      
      private var mTween:§@$-§;
      
      private var §+#Z§:§[#M§;
      
      private var §+U§:URLLoader;
      
      private var §'M§:MovieClip;
      
      private var §1#t§:Object;
      
      private var §2L§:Boolean;
      
      private var §8#a§:int;
      
      public function §<#l§(param1:§23§)
      {
         super();
         this.§;!w§ = param1;
         this.§+#Z§ = new §[#M§();
         Security.loadPolicyFile("http://cloud.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://news-assets.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
         this.§8#a§ = 0;
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      public function §[x§(param1:Event = null) : void
      {
         if(§ #i§)
         {
            this.§<#I§();
            return;
         }
         var _loc2_:String = §3";§.§#"'§().§]$<§();
         if(_loc2_)
         {
            this.§20§(_loc2_);
         }
         else
         {
            this.§<#I§();
         }
      }
      
      private function §20§(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:URLRequest = new URLRequest(§2!]§ + §9$A§);
         var _loc3_:Object = new Object();
         _loc3_.did = userProgress.userID;
         _loc3_.ctx = "PauseMenuPromo";
         _loc3_.accessToken = param1;
         _loc3_.sw = §!#a§;
         _loc3_.sh = §;"T§;
         _loc2_.contentType = this.§@#Y§;
         var _loc4_:URLVariables = new URLVariables();
         for(_loc5_ in _loc3_)
         {
            _loc4_[_loc5_] = _loc3_[_loc5_];
         }
         _loc2_.data = _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         this.§+U§ = new URLLoader();
         this.§+U§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§+U§.addEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
         this.§+U§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^"0§);
         this.§+U§.load(_loc2_);
      }
      
      private function §4"v§(param1:IOErrorEvent) : void
      {
         this.§<#I§();
      }
      
      private function §<#I§() : void
      {
         this.§;!w§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §[a§.§8#k§("PlaceholderAd");
         this.§'M§ = new _loc1_();
         var _loc2_:§23§ = this.§;!w§.getItemByName("News_Item_Holder") as §23§;
         var _loc3_:MovieClip = _loc2_.mClip.NewsHolder;
         this.§'M§.buttonMode = true;
         this.§'M§.addEventListener(MouseEvent.CLICK,this.§^"6§);
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         _loc3_.addChild(this.§'M§);
         § #i§ = true;
      }
      
      private function §^"6§(param1:MouseEvent) : void
      {
         var _loc2_:§,#@§ = new TabbedShopPopup(§@#D§.NORMAL,§5R§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §^"0§(param1:SecurityErrorEvent) : void
      {
         this.§<#I§();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§1#t§ = JSON.parse(param1.currentTarget.data);
         this.§5#y§();
      }
      
      public function reset() : void
      {
         var _loc3_:int = 0;
         if(this.mTween)
         {
            this.mTween.§0"D§();
         }
         var _loc1_:§23§ = this.§;!w§.getItemByName("News_Item_Holder") as §23§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§@!+§ = 0;
         if(this.§1#t§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§1#t§.length)
            {
               (this.§1#t§[_loc3_].item as §8"P§).§9r§();
               _loc3_++;
            }
         }
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§^"C§ = null;
         var _loc3_:* = false;
         var _loc4_:§ #&§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§;!w§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§;!w§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = § #&§(this.§;!w§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
               }
               else
               {
                  _loc4_.setComponentState(§ #&§.§ ! §);
                  this.§;!w§.getItemByName("NewsArrowUp").setVisibility(false);
                  this.§;!w§.getItemByName("NewsArrowDown").setVisibility(false);
               }
               break;
            case "NEWS_UP":
               --this.§@!+§;
               this.scroll(§2!i§);
               break;
            case "NEWS_DOWN":
               ++this.§@!+§;
               this.scroll(-§2!i§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§ #&§ = § #&§(this.§;!w§.getItemByName("Button_ShowNews"));
         if(_loc2_.§;!i§ == § #&§.§ ! §)
         {
            this.§;!w§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§;!w§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§1#t§ && this.§1#t§.length > 2)
         {
            if(this.§@!+§ <= 0)
            {
               this.§;!w§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§;!w§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§@!+§ + 1) * 2 >= this.§1#t§.length)
            {
               this.§;!w§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§;!w§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§;!w§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§;!w§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§23§ = this.§;!w§.getItemByName("News_Item_Holder") as §23§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.mTween)
            {
               this.mTween.§0"D§();
            }
            this.mTween = §6"W§.§+!,§.§9!n§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§6"W§.§9"$§);
            this.mTween.play();
         }
         this.§""A§();
      }
      
      private function §5#y§() : void
      {
         var _loc1_:§23§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§8"P§ = null;
         this.§@!+§ = 0;
         if(this.§1#t§)
         {
            _loc1_ = this.§;!w§.getItemByName("News_Item_Holder") as §23§;
            _loc2_ = _loc1_.mClip.NewsHolder;
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
            }
            if(this.§1#t§.length > 0)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§1#t§.length)
               {
                  (_loc4_ = this.§+#Z§.§ "V§(this.§1#t§[_loc3_].image,this.§1#t§[_loc3_].link,this.§1#t§[_loc3_].linkId,this.§1#t§[_loc3_].adId)).§0"B§(§2!]§ + §`$&§,§2!]§ + §%]§,userProgress.userID,§3";§.§#"'§().§]$<§());
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §;"T§ * 1 * _loc3_;
                  this.§1#t§[_loc3_].item = _loc4_;
                  _loc3_++;
               }
            }
            else
            {
               this.§<#I§();
            }
         }
         this.§;!w§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
      
      public function dispose() : void
      {
         if(this.§+U§)
         {
            this.§+U§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§+U§.removeEventListener(IOErrorEvent.IO_ERROR,this.§4"v§);
            this.§+U§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§^"0§);
            this.§+U§ = null;
         }
         if(this.mTween)
         {
            this.mTween.stop();
            this.mTween = null;
         }
         if(this.§+#Z§)
         {
            this.§+#Z§.dispose();
            this.§+#Z§ = null;
         }
         if(this.§'M§)
         {
            this.§'M§.removeEventListener(MouseEvent.CLICK,this.§^"6§);
            this.§'M§.removeChildren();
            this.§'M§ = null;
         }
         this.§1#t§ = null;
      }
      
      public function §5$3§(param1:Boolean) : void
      {
         this.§2L§ = param1;
         this.§""A§();
      }
      
      private function §""A§() : void
      {
         if(!this.§1#t§)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§1#t§.length)
         {
            (this.§1#t§[_loc1_].item as §8"P§).§7#-§(this.§2L§ && _loc1_ >= this.§@!+§ * 2 && _loc1_ <= this.§@!+§ * 2 + 1);
            _loc1_++;
         }
      }
   }
}
