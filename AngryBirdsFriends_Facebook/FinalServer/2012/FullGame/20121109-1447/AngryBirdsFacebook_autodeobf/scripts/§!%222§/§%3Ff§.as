package §!"2§
{
   import § "C§.§-!l§;
   import §#^§.§7!A§;
   import §'!s§.§%?§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §4!e§.§08§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.system.Security;
   
   public class §?f§
   {
      
      public static const §8!g§:String = "http://cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abc&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      public static const §=Z§:int = 613;
      
      public static const §7G§:int = 409;
      
      private static const §-$§:int = 654;
      
      private static var §+"%§:Boolean = false;
       
      
      private var §6w§:§7!A§;
      
      private var §'A§:String;
      
      private var §=""§:Array;
      
      private var §`&§:int;
      
      private var §&!k§:Object;
      
      private var §&R§:int;
      
      private var §]!2§:§"m§;
      
      private var §&+§:§7" §;
      
      private var §&y§:Object;
      
      public function §?f§(param1:§7!A§)
      {
         super();
         this.§6w§ = param1;
         this.§&+§ = new §7" §();
         Security.loadPolicyFile("http://cloud.rovio.com");
         Security.loadPolicyFile("http://news-assets.rovio.com");
      }
      
      public function §<h§() : void
      {
         if(§+"%§)
         {
            this.§5"B§();
            return;
         }
         var _loc1_:URLRequest = §-!l§.§%""§(§8!g§);
         var _loc2_:URLLoader = new URLLoader(_loc1_);
         _loc2_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.§>0§);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§""<§);
      }
      
      private function §>0§(param1:IOErrorEvent) : void
      {
         this.§5"B§();
      }
      
      private function §5"B§() : void
      {
         this.§6w§.getItemByName("AngryBirdLoader").setVisibility(false);
         var _loc1_:Class = §8B§.§6"C§("PlaceholderAd");
         var _loc2_:MovieClip = new _loc1_();
         var _loc3_:§08§ = this.§6w§.getItemByName("News_Item_Holder") as §08§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         _loc2_.buttonMode = true;
         _loc2_.addEventListener(MouseEvent.CLICK,this.§8!E§);
         while(_loc4_.numChildren > 0)
         {
            _loc4_.removeChildAt(0);
         }
         _loc4_.addChild(_loc2_);
         §+"%§ = true;
      }
      
      private function §8!E§(param1:MouseEvent) : void
      {
         §%?§.§#"9§();
      }
      
      protected function §""<§(param1:SecurityErrorEvent) : void
      {
         this.§5"B§();
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = null;
         _loc2_ = JSON.parse(param1.currentTarget.data);
         this.§&y§ = _loc2_.channels;
         this.§7h§();
      }
      
      public function reset() : void
      {
         if(this.§]!2§)
         {
            this.§]!2§.§?"3§();
         }
         var _loc1_:§08§ = this.§6w§.getItemByName("News_Item_Holder") as §08§;
         var _loc2_:MovieClip = _loc1_.mClip.NewsHolder;
         _loc2_.y = 0;
         this.§&R§ = 0;
         this.scroll(0);
      }
      
      public function uiInteractionHandler(param1:String) : void
      {
         var _loc2_:§7'§ = null;
         var _loc3_:* = false;
         var _loc4_:§=!&§ = null;
         switch(param1)
         {
            case "SHOW_NEWS":
               _loc2_ = this.§6w§.getItemByName("RovioNewsContainer");
               _loc3_ = !_loc2_.visible;
               _loc2_.setVisibility(_loc3_);
               this.§6w§.getItemByName("RovioNewsLogo").setVisibility(_loc3_);
               _loc4_ = §=!&§(this.§6w§.getItemByName("Button_ShowNews"));
               if(_loc2_.visible)
               {
                  _loc4_.setComponentState(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll(0);
                  break;
               }
               _loc4_.setComponentState(§=!&§.§ !s§);
               this.§6w§.getItemByName("NewsArrowUp").setVisibility(false);
               this.§6w§.getItemByName("NewsArrowDown").setVisibility(false);
               break;
            case "NEWS_UP":
               --this.§&R§;
               this.scroll(§-$§);
               break;
            case "NEWS_DOWN":
               ++this.§&R§;
               this.scroll(-§-$§);
         }
      }
      
      private function scroll(param1:int) : void
      {
         var _loc2_:§=!&§ = §=!&§(this.§6w§.getItemByName("Button_ShowNews"));
         if(_loc2_.§5!L§ == §=!&§.§ !s§)
         {
            this.§6w§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§6w§.getItemByName("NewsArrowDown").setVisibility(false);
            return;
         }
         if(this.§=""§ && this.§=""§.length > 2)
         {
            if(this.§&R§ <= 0)
            {
               this.§6w§.getItemByName("NewsArrowUp").setVisibility(false);
            }
            else
            {
               this.§6w§.getItemByName("NewsArrowUp").setVisibility(true);
            }
            if((this.§&R§ + 1) * 2 >= this.§=""§.length)
            {
               this.§6w§.getItemByName("NewsArrowDown").setVisibility(false);
            }
            else
            {
               this.§6w§.getItemByName("NewsArrowDown").setVisibility(true);
            }
         }
         else
         {
            this.§6w§.getItemByName("NewsArrowUp").setVisibility(false);
            this.§6w§.getItemByName("NewsArrowDown").setVisibility(false);
         }
         var _loc3_:§08§ = this.§6w§.getItemByName("News_Item_Holder") as §08§;
         var _loc4_:MovieClip = _loc3_.mClip.NewsHolder;
         if(Math.abs(param1) > 0)
         {
            if(this.§]!2§)
            {
               this.§]!2§.§?"3§();
            }
            this.§]!2§ = §>!+§.§;"§.§^!K§(_loc4_,{"y":_loc4_.y + param1},null,0.33,§>!+§.§!!>§);
            this.§]!2§.play();
         }
      }
      
      private function §7h§() : void
      {
         var _loc1_:§08§ = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§1w§ = null;
         this.§&R§ = 0;
         if(this.§&y§)
         {
            this.§=""§ = this.§&y§.plain.media;
            if(this.§=""§)
            {
               _loc1_ = this.§6w§.getItemByName("News_Item_Holder") as §08§;
               _loc2_ = _loc1_.mClip.NewsHolder;
               while(_loc2_.numChildren > 0)
               {
                  _loc2_.removeChildAt(0);
               }
               _loc3_ = 0;
               while(_loc3_ < this.§=""§.length)
               {
                  _loc4_ = this.§&+§.§%J§(this.§=""§[_loc3_].url,this.§=""§[_loc3_].link);
                  _loc2_.addChild(_loc4_);
                  _loc4_.y = 89 + §7G§ * 0.8 * _loc3_;
                  _loc3_++;
               }
            }
         }
         this.§6w§.getItemByName("AngryBirdLoader").setVisibility(false);
         this.scroll(0);
      }
   }
}
