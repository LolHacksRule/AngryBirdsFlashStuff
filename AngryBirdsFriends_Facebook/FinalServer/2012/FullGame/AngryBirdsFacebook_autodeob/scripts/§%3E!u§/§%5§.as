package §>!u§
{
   import §#M§.§^0§;
   import §&!"§.§`B§;
   import §-B§.§?!j§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §;n§.§&G§;
   import §;n§.§^q§;
   import §[!-§.§?x§;
   import com.rovio.assets.§>"5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Security;
   
   public class §%5§
   {
      
      public static const §+"%§:String = "http://cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abc&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      public static const §^I§:int = 613;
      
      public static const §9"0§:int = 409;
      
      private static const § ";§:int = 654;
      
      private static var §8!A§:Boolean = false;
       
      
      private var §2!K§:§^0§;
      
      private var §#w§:String;
      
      private var §#`§:Array;
      
      private var §2!l§:int;
      
      private var §9#§:Object;
      
      private var §#!m§:int;
      
      private var §7j§:§!"&§;
      
      private var §5!7§:§-"'§;
      
      private var §%!G§:Object;
      
      public function §%5§(param1:§^0§)
      {
         super();
         this.§2!K§ = param1;
         this.§5!7§ = new §-"'§();
         Security.loadPolicyFile("http://cloud.rovio.com");
         Security.loadPolicyFile("http://news-assets.rovio.com");
      }
      
      public function § !d§() : void
      {
         if(§8!A§)
         {
            this.§`" §();
            return;
         }
         var _loc1_:URLRequest = §?x§.§>t§(§+"%§);
         var _loc2_:URLLoader = new URLLoader(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§<5§);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>"E§);
      }
      
      private function §<5§(param1:IOErrorEvent) : void
      {
         this.§`" §();
      }
      
      private function §`" §() : void
      {
         this.§2!K§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §>"5§.§6s§("PlaceholderAd");
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:§?!j§ = this.§2!K§.getItemByName("News_Item_Holder") as §?!j§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         _loc2_.buttonMode = true;
         _loc2_.addEventListener(MouseEvent.CLICK,this.§;h§);
         while(_loc4_.numChildren > 0)
         {
            _loc4_.removeChildAt(0);
         }
         _loc4_.addChild(_loc2_);
         §8!A§ = true;
      }
      
      private function §;h§(param1:MouseEvent) : void
      {
         §`B§.§8m§();
      }
      
      protected function §>"E§(param1:SecurityErrorEvent) : void
      {
         this.§`" §();
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = null;
         _loc2_ = JSON.parse(param1.currentTarget.data);
         this.§%!G§ = _loc2_.channels;
         this.§5!U§();
      }
      
      public function reset() : void
      {
         if(this.§7j§)
         {
            this.§7j§.§7V§();
         }
         var _loc1_:§?!j§ = this.§2!K§.getItemByName("News_Item_Holder") as §?!j§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§#!m§ = 0;
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§&G§ = null;
         var _loc3_:* = false;
         var _loc4_:§^q§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§2!K§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§2!K§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §^q§(this.§2!K§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
                  break;
               }
               _loc4_.setComponentState(§^q§.§]">§);
               this.§2!K§.getItemByName("NewsArrowUp").setVisibility(false);
               this.§2!K§.getItemByName("NewsArrowDown").setVisibility(false);
               break;
            case "NEWS_UP":
               --this.§#!m§;
               this.scroll(§ ";§);
               break;
            case "NEWS_DOWN":
               ++this.§#!m§;
               this.scroll(-§ ";§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§^q§ = §^q§(this.§2!K§.getItemByName("Button_ShowNews"));
         if(_loc2_.§9@§ == §^q§.§]">§)
         {
            this.§2!K§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§2!K§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§#`§ && this.§#`§.length > 2)
         {
            if(this.§#!m§ <= 0)
            {
               this.§2!K§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§2!K§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§#!m§ + 1) * 2 >= this.§#`§.length)
            {
               this.§2!K§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§2!K§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§2!K§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§2!K§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§?!j§ = this.§2!K§.getItemByName("News_Item_Holder") as §?!j§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.§7j§)
            {
               this.§7j§.§7V§();
            }
            this.§7j§ = §&p§.§1[§.§7!3§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§&p§.§%"8§);
            this.§7j§.play();
         }
      }
      
      private function §5!U§() : void
      {
         var _loc1_:§?!j§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§7!5§ = null;
         this.§#!m§ = 0;
         if(this.§%!G§)
         {
            this.§#`§ = this.§%!G§.plain.media;
            if(this.§#`§)
            {
               _loc1_ = this.§2!K§.getItemByName("News_Item_Holder") as §?!j§;
               _loc2_ = _loc1_.mClip.NewsHolder;
               while(_loc2_.numChildren > 0)
               {
                  _loc2_.removeChildAt(0);
               }
               _loc3_ = 0;
               while(_loc3_ < this.§#`§.length)
               {
                  _loc4_ = this.§5!7§.§5`§(this.§#`§[_loc3_].url,this.§#`§[_loc3_].link);
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §9"0§ * 0.8 * _loc3_;
                  _loc3_++;
               }
            }
         }
         this.§2!K§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
   }
}
