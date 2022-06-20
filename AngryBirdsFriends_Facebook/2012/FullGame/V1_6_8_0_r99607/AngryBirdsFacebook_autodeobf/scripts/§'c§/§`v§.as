package §'c§
{
   import §"",§.§<+§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§ F§;
   import §1"2§.§#z§;
   import §7N§.§43§;
   import §9"%§.§4!J§;
   import §]!F§.§"!j§;
   import com.rovio.assets.§#!J§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Security;
   
   public class §`v§
   {
      
      public static const §!z§:String = "http://cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abc&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      public static const §#!v§:int = 613;
      
      public static const §#!X§:int = 409;
      
      private static const §9!F§:int = 652;
      
      private static var §@!r§:Boolean = false;
       
      
      private var §2"-§:§"!j§;
      
      private var §[^§:String;
      
      private var §?!B§:Array;
      
      private var §3A§:int;
      
      private var §#!o§:Object;
      
      private var §@!?§:int;
      
      private var § 5§:§-!F§;
      
      private var §@"%§:§6!i§;
      
      private var §8t§:Object;
      
      public function §`v§(param1:§"!j§)
      {
         super();
         this.§2"-§ = param1;
         this.§@"%§ = new §6!i§();
         Security.loadPolicyFile("http://cloud.rovio.com");
         Security.loadPolicyFile("http://news-assets.rovio.com");
      }
      
      public function §[1§() : void
      {
         if(§@!r§)
         {
            this.§<l§();
            return;
         }
         var _loc1_:URLRequest = §4!J§.§3j§(§!z§);
         var _loc2_:URLLoader = new URLLoader(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§9"<§);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§%u§);
      }
      
      private function §9"<§(param1:IOErrorEvent) : void
      {
         this.§<l§();
      }
      
      private function §<l§() : void
      {
         this.§2"-§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §#!J§.§1!Y§("PlaceholderAd");
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:§<+§ = this.§2"-§.getItemByName("News_Item_Holder") as §<+§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         _loc2_.buttonMode = true;
         _loc2_.addEventListener(MouseEvent.CLICK,this.§7R§);
         while(_loc4_.numChildren > 0)
         {
            _loc4_.removeChildAt(0);
         }
         _loc4_.addChild(_loc2_);
         §@!r§ = true;
      }
      
      private function §7R§(param1:MouseEvent) : void
      {
         §43§.§9C§();
      }
      
      protected function §%u§(param1:SecurityErrorEvent) : void
      {
         this.§<l§();
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = null;
         _loc2_ = JSON.parse(param1.currentTarget.data);
         this.§8t§ = _loc2_.channels;
         this.§3'§();
      }
      
      public function reset() : void
      {
         if(this.§ 5§)
         {
            this.§ 5§.§@N§();
         }
         var _loc1_:§<+§ = this.§2"-§.getItemByName("News_Item_Holder") as §<+§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§@!?§ = 0;
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§#z§ = null;
         var _loc3_:* = false;
         var _loc4_:§ F§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§2"-§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§2"-§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = § F§(this.§2"-§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
                  break;
               }
               _loc4_.setComponentState(§ F§.§8'§);
               this.§2"-§.getItemByName("NewsArrowUp").setVisibility(false);
               this.§2"-§.getItemByName("NewsArrowDown").setVisibility(false);
               break;
            case "NEWS_UP":
               --this.§@!?§;
               this.scroll(§9!F§);
               break;
            case "NEWS_DOWN":
               ++this.§@!?§;
               this.scroll(-§9!F§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§ F§ = § F§(this.§2"-§.getItemByName("Button_ShowNews"));
         if(_loc2_.§2!N§ == § F§.§8'§)
         {
            this.§2"-§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§2"-§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§?!B§ && this.§?!B§.length > 2)
         {
            if(this.§@!?§ <= 0)
            {
               this.§2"-§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§2"-§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§@!?§ + 1) * 2 >= this.§?!B§.length)
            {
               this.§2"-§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§2"-§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§2"-§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§2"-§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§<+§ = this.§2"-§.getItemByName("News_Item_Holder") as §<+§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.§ 5§)
            {
               this.§ 5§.§@N§();
            }
            this.§ 5§ = §7!b§.§8c§.§4&§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§7!b§.§!!h§);
            this.§ 5§.play();
         }
      }
      
      private function §3'§() : void
      {
         var _loc1_:§<+§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§#0§ = null;
         this.§@!?§ = 0;
         if(this.§8t§)
         {
            this.§?!B§ = this.§8t§.plain.media;
            if(this.§?!B§)
            {
               _loc1_ = this.§2"-§.getItemByName("News_Item_Holder") as §<+§;
               _loc2_ = _loc1_.mClip.NewsHolder;
               while(_loc2_.numChildren > 0)
               {
                  _loc2_.removeChildAt(0);
               }
               _loc3_ = 0;
               while(_loc3_ < this.§?!B§.length)
               {
                  _loc4_ = this.§@"%§.§^!,§(this.§?!B§[_loc3_].url,this.§?!B§[_loc3_].link);
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §#!X§ * 0.8 * _loc3_;
                  _loc3_++;
               }
            }
         }
         this.§2"-§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
   }
}
