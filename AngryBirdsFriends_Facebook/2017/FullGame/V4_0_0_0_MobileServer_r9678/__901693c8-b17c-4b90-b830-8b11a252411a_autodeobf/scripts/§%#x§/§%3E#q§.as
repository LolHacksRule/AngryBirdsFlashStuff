package §%#x§
{
   import § o§.§%"!§;
   import §%#A§.§]!_§;
   import §5"?§.§4"-§;
   import §6V§.§?!=§;
   import §7",§.TabbedShopPopup;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<"1§.§@!N§;
   import §<"1§.§[!K§;
   import §<#m§.§!"<§;
   import §<#m§.§^#o§;
   import com.rovio.assets.§+$#§;
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
   
   public class §>#q§
   {
      
      public static const §[! §:String = "https://cloud.rovio.com";
      
      public static const §#"w§:String = "/ads/1.0/wall";
      
      public static const §0#&§:String = "/ads/1.0/track/image";
      
      public static const §0"n§:String = "/ads/1.0/track/link";
      
      public static const §3!?§:int = 600;
      
      public static const §<#x§:int = 338;
      
      private static const §5$!§:int = 654;
      
      private static var §2#]§:Boolean = false;
      
      private static const §-"[§:int = 10;
       
      
      private var §&!o§:String = "application/x-www-form-urlencoded";
      
      private var §?Q§:§]!_§;
      
      private var §%#e§:int;
      
      private var §1#D§:int;
      
      private var §>"n§:§-#C§;
      
      private var §@e§:§6y§;
      
      private var §="$§:URLLoader;
      
      private var §##!§:MovieClip;
      
      private var §1K§:Object;
      
      private var §@#6§:Boolean;
      
      private var §&A§:int;
      
      public function §>#q§(param1:§]!_§)
      {
         super();
         this.§?Q§ = param1;
         this.§@e§ = new §6y§();
         Security.loadPolicyFile("http://cloud.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://news-assets.rovio.com/crossdomain.xml");
         Security.loadPolicyFile("http://ads.cdn.rovio.com/crossdomain.xml");
         this.§&A§ = 0;
      }
      
      protected static function get userProgress() : §4"-§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §4"-§;
      }
      
      public function §0!8§(param1:Event = null) : void
      {
         if(§2#]§)
         {
            this.§%=§();
            return;
         }
         var _loc2_:String = §?!=§.§3!q§().§?#<§();
         if(_loc2_)
         {
            this.§%!e§(_loc2_);
         }
         else
         {
            this.§%=§();
         }
      }
      
      private function §%!e§(param1:String) : void
      {
         var _loc5_:* = null;
         var _loc2_:URLRequest = new URLRequest(§[! § + §#"w§);
         var _loc3_:Object = new Object();
         _loc3_.did = userProgress.userID;
         _loc3_.ctx = "PauseMenuPromo";
         _loc3_.accessToken = param1;
         _loc3_.sw = §3!?§;
         _loc3_.sh = §<#x§;
         _loc2_.contentType = this.§&!o§;
         var _loc4_:URLVariables = new URLVariables();
         for(_loc5_ in _loc3_)
         {
            _loc4_[_loc5_] = _loc3_[_loc5_];
         }
         _loc2_.data = _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         this.§="$§ = new URLLoader();
         this.§="$§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§="$§.addEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
         this.§="$§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`%§);
         this.§="$§.load(_loc2_);
      }
      
      private function §3"`§(param1:IOErrorEvent) : void
      {
         this.§%=§();
      }
      
      private function §%=§() : void
      {
         this.§?Q§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §+$#§.§["`§("PlaceholderAd");
         this.§##!§ = new _loc1_();
         var _loc2_:§]!_§ = this.§?Q§.getItemByName("News_Item_Holder") as §]!_§;
         var _loc3_:MovieClip = _loc2_.mClip.NewsHolder;
         this.§##!§.buttonMode = true;
         this.§##!§.addEventListener(MouseEvent.CLICK,this.§]!V§);
         while(_loc3_.numChildren > 0)
         {
            _loc3_.removeChildAt(0);
         }
         _loc3_.addChild(this.§##!§);
         §2#]§ = true;
      }
      
      private function §]!V§(param1:MouseEvent) : void
      {
         var _loc2_:§!"<§ = new TabbedShopPopup(§%"!§.NORMAL,§^#o§.DEFAULT);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      protected function §`%§(param1:SecurityErrorEvent) : void
      {
         this.§%=§();
      }
      
      private function onComplete(param1:Event) : void
      {
         this.§1K§ = JSON.parse(param1.currentTarget.data);
         this.§>!L§();
      }
      
      public function reset() : void
      {
         var _loc3_:int = 0;
         if(this.§>"n§)
         {
            this.§>"n§.§=`§();
         }
         var _loc1_:§]!_§ = this.§?Q§.getItemByName("News_Item_Holder") as §]!_§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§1#D§ = 0;
         if(this.§1K§)
         {
            _loc3_ = 0;
            while(_loc3_ < this.§1K§.length)
            {
               (this.§1K§[_loc3_].item as §5"j§).§2#F§();
               _loc3_++;
            }
         }
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§[!K§ = null;
         var _loc3_:* = false;
         var _loc4_:§@!N§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§?Q§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§?Q§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §@!N§(this.§?Q§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
                  break;
               }
               _loc4_.setComponentState(§@!N§.§null§);
               this.§?Q§.getItemByName("NewsArrowUp").setVisibility(false);
               this.§?Q§.getItemByName("NewsArrowDown").setVisibility(false);
               break;
            case "NEWS_UP":
               --this.§1#D§;
               this.scroll(§5$!§);
               break;
            case "NEWS_DOWN":
               ++this.§1#D§;
               this.scroll(-§5$!§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§@!N§ = §@!N§(this.§?Q§.getItemByName("Button_ShowNews"));
         if(_loc2_.§;!M§ == §@!N§.§null§)
         {
            this.§?Q§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§?Q§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§1K§ && this.§1K§.length > 2)
         {
            if(this.§1#D§ <= 0)
            {
               this.§?Q§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§?Q§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§1#D§ + 1) * 2 >= this.§1K§.length)
            {
               this.§?Q§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§?Q§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§?Q§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§?Q§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§]!_§ = this.§?Q§.getItemByName("News_Item_Holder") as §]!_§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.§>"n§)
            {
               this.§>"n§.§=`§();
            }
            this.§>"n§ = §6"w§.§ "D§.§""3§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§6"w§.§2!i§);
            this.§>"n§.play();
         }
         this.§6!M§();
      }
      
      private function §>!L§() : void
      {
         var _loc1_:§]!_§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§5"j§ = null;
         this.§1#D§ = 0;
         if(this.§1K§)
         {
            _loc1_ = this.§?Q§.getItemByName("News_Item_Holder") as §]!_§;
            _loc2_ = _loc1_.mClip.NewsHolder;
            while(_loc2_.numChildren > 0)
            {
               _loc2_.removeChildAt(0);
            }
            if(this.§1K§.length > 0)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§1K§.length)
               {
                  (_loc4_ = this.§@e§.§!!`§(this.§1K§[_loc3_].image,this.§1K§[_loc3_].link,this.§1K§[_loc3_].linkId,this.§1K§[_loc3_].adId)).§=#-§(§[! § + §0#&§,§[! § + §0"n§,userProgress.userID,§?!=§.§3!q§().§?#<§());
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §<#x§ * 1 * _loc3_;
                  this.§1K§[_loc3_].item = _loc4_;
                  _loc3_++;
               }
            }
            else
            {
               this.§%=§();
            }
         }
         this.§?Q§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
      
      public function dispose() : void
      {
         if(this.§="$§)
         {
            this.§="$§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§="$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§3"`§);
            this.§="$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`%§);
            this.§="$§ = null;
         }
         if(this.§>"n§)
         {
            this.§>"n§.stop();
            this.§>"n§ = null;
         }
         if(this.§@e§)
         {
            this.§@e§.dispose();
            this.§@e§ = null;
         }
         if(this.§##!§)
         {
            this.§##!§.removeEventListener(MouseEvent.CLICK,this.§]!V§);
            this.§##!§.removeChildren();
            this.§##!§ = null;
         }
         this.§1K§ = null;
      }
      
      public function §4#O§(param1:Boolean) : void
      {
         this.§@#6§ = param1;
         this.§6!M§();
      }
      
      private function §6!M§() : void
      {
         if(!this.§1K§)
         {
            return;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§1K§.length)
         {
            (this.§1K§[_loc1_].item as §5"j§).§;#M§(this.§@#6§ && _loc1_ >= this.§1#D§ * 2 && _loc1_ <= this.§1#D§ * 2 + 1);
            _loc1_++;
         }
      }
   }
}
