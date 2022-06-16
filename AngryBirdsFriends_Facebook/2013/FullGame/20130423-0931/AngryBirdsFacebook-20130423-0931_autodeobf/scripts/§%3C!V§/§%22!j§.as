package §<!V§
{
   import §%i§.§0!Y§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §2<§.§9!7§;
   import §5!Y§.§9"6§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Security;
   
   public class §"!j§
   {
      
      public static const §!!B§:String = "http://cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abc&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      public static const §,<§:int = 613;
      
      public static const §;!+§:int = 409;
      
      private static const §["Q§:int = 654;
      
      private static var §8!L§:Boolean = false;
       
      
      private var §2"@§:§`_§;
      
      private var §;""§:String;
      
      private var §&_§:Array;
      
      private var §6"B§:int;
      
      private var §"!I§:Object;
      
      private var §'"5§:int;
      
      private var § !5§:§6!K§;
      
      private var §!"A§:§9!3§;
      
      private var §55§:Object;
      
      public function §"!j§(param1:§`_§)
      {
         super();
         this.§2"@§ = param1;
         this.§!"A§ = new §9!3§();
         Security.loadPolicyFile("http://cloud.rovio.com");
         Security.loadPolicyFile("http://news-assets.rovio.com");
      }
      
      public function §%"?§() : void
      {
         if(§8!L§)
         {
            this.§%!o§();
            return;
         }
         var _loc1_:URLRequest = §9!7§.§,!l§(§!!B§);
         var _loc2_:URLLoader = new URLLoader(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§]!^§);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§2!q§);
      }
      
      private function §]!^§(param1:IOErrorEvent) : void
      {
         this.§%!o§();
      }
      
      private function §%!o§() : void
      {
         this.§2"@§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §?q§.§ q§("PlaceholderAd");
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:§0!Y§ = this.§2"@§.getItemByName("News_Item_Holder") as §0!Y§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         _loc2_.buttonMode = true;
         _loc2_.addEventListener(MouseEvent.CLICK,this.§0!O§);
         while(_loc4_.numChildren > 0)
         {
            _loc4_.removeChildAt(0);
         }
         _loc4_.addChild(_loc2_);
         §8!L§ = true;
      }
      
      private function §0!O§(param1:MouseEvent) : void
      {
         §9"6§.§;!w§();
      }
      
      protected function §2!q§(param1:SecurityErrorEvent) : void
      {
         this.§%!o§();
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = null;
         _loc2_ = JSON.parse(param1.currentTarget.data);
         this.§55§ = _loc2_.channels;
         this.§!!S§();
      }
      
      public function reset() : void
      {
         if(this.§ !5§)
         {
            this.§ !5§.§7!d§();
         }
         var _loc1_:§0!Y§ = this.§2"@§.getItemByName("News_Item_Holder") as §0!Y§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§'"5§ = 0;
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§!>§ = null;
         var _loc3_:* = false;
         var _loc4_:§!!G§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§2"@§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§2"@§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §!!G§(this.§2"@§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
               }
               else
               {
                  _loc4_.setComponentState(§!!G§.§@!T§);
                  this.§2"@§.getItemByName("NewsArrowUp").setVisibility(false);
                  this.§2"@§.getItemByName("NewsArrowDown").setVisibility(false);
               }
               break;
            case "NEWS_UP":
               --this.§'"5§;
               this.scroll(§["Q§);
               break;
            case "NEWS_DOWN":
               ++this.§'"5§;
               this.scroll(-§["Q§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§!!G§ = §!!G§(this.§2"@§.getItemByName("Button_ShowNews"));
         if(_loc2_.§4" § == §!!G§.§@!T§)
         {
            this.§2"@§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§2"@§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§&_§ && this.§&_§.length > 2)
         {
            if(this.§'"5§ <= 0)
            {
               this.§2"@§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§2"@§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§'"5§ + 1) * 2 >= this.§&_§.length)
            {
               this.§2"@§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§2"@§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§2"@§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§2"@§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§0!Y§ = this.§2"@§.getItemByName("News_Item_Holder") as §0!Y§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.§ !5§)
            {
               this.§ !5§.§7!d§();
            }
            this.§ !5§ = §0W§.§&"5§.§]!r§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§0W§.§4!E§);
            this.§ !5§.play();
         }
      }
      
      private function §!!S§() : void
      {
         var _loc1_:§0!Y§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§'"M§ = null;
         this.§'"5§ = 0;
         if(this.§55§)
         {
            this.§&_§ = this.§55§.plain.media;
            if(this.§&_§)
            {
               _loc1_ = this.§2"@§.getItemByName("News_Item_Holder") as §0!Y§;
               _loc2_ = _loc1_.mClip.NewsHolder;
               while(_loc2_.numChildren > 0)
               {
                  _loc2_.removeChildAt(0);
               }
               _loc3_ = 0;
               while(_loc3_ < this.§&_§.length)
               {
                  _loc4_ = this.§!"A§.§6!U§(this.§&_§[_loc3_].url,this.§&_§[_loc3_].link);
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §;!+§ * 0.8 * _loc3_;
                  _loc3_++;
               }
            }
         }
         this.§2"@§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
   }
}
