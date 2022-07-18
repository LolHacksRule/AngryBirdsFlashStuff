package §@§#4
{
   import §!"e§.§`"W§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§^"m§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;! §.§!Z§;
   import §;"Y§.§1"z§;
   import §;"Y§.§]#X§;
   import §<w§.§6#'§;
   import §="2§.§?!r§;
   import §[!m§.§+5§;
   import §[!m§.§[!j§;
   import §`!o§.§<9§;
   import com.rovio.assets.§5_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §<"b§
   {
      
      public static const §5N§:String = "cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abw&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      private static const §9!c§:int = 90;
      
      private static const §<!K§:int = 35;
      
      private static const §,"w§:int = 25;
      
      private static const §"7§:int = 353;
      
      private static const §<";§:int = 530;
      
      private static const §"!d§:int = 385;
      
      private static const §5!@§:int = 440;
      
      private static const §4Y§:int = 2;
      
      private static var §0O§:Boolean = false;
       
      
      private var § #0§:§["E§;
      
      private var §0!x§:URLLoader;
      
      private var §1"8§:§[#R§;
      
      private var §[!i§:int;
      
      private var §?"W§:Array;
      
      private var §["9§:Rectangle;
      
      private var §!"s§:int;
      
      private var offsetX:int;
      
      private var §@#N§:Object;
      
      private var §^c§:§ #^§;
      
      private var §9v§:§]#X§;
      
      private var § #J§:§0"$§;
      
      private var § "m§:§ #^§;
      
      private var §'"'§:§ #^§;
      
      private var §2"m§:§^"m§;
      
      private var §6!e§:§^"m§;
      
      private var §?"p§:§^"m§;
      
      private var §5C§:MovieClip;
      
      public function §<"b§(param1:§ #^§)
      {
         super();
         this.§^c§ = param1;
         var _loc2_:Number = (§5!@§ - §,"w§ * (§4Y§ - 1)) / §4Y§;
         this.§["9§ = this.§`3§(§<";§,§"7§,§"!d§,_loc2_);
         this.§!"s§ = this.§["9§.height + §,"w§;
         this.offsetX = §<!K§ + (§"!d§ - this.§["9§.width) / 2;
         this.init();
         this.§ #0§ = new §["E§(this.§["9§);
         this.§^c§.mClip.stage.addEventListener(Event.RESIZE,this.§=_§);
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§^c§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§^c§.visible;
      }
      
      private function §=_§(param1:Event) : void
      {
         this.scroll();
      }
      
      protected function §`3§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = -1) : Rectangle
      {
         var _loc6_:Number = param5 == -1 ? Number(param1 / param2) : Number(param5);
         var _loc7_:Number = param3;
         var _loc8_:Number = param4;
         if(_loc6_ >= 1)
         {
            if((_loc8_ = param3 / _loc6_) > param4)
            {
               _loc7_ = (_loc8_ = param4) * _loc6_;
            }
         }
         else if((_loc7_ = param4 * _loc6_) > param3)
         {
            _loc8_ = (_loc7_ = param3) / _loc6_;
         }
         return new Rectangle(0,0,_loc7_,_loc8_);
      }
      
      private function init() : void
      {
         this.§9v§ = this.§^c§.getItemByName("AngryBirdLoader");
         this.§ "m§ = § #^§(this.§^c§.getItemByName("News_Item_Holder"));
         this.§'"'§ = § #^§(this.§^c§.getItemByName("RovioNewsContainer"));
         this.§ #J§ = §0"$§(this.§^c§.getItemByName("RovioNewsLogo"));
         this.§2"m§ = §^"m§(this.§^c§.getItemByName("Button_ShowNews"));
         this.§6!e§ = §^"m§(this.§^c§.getItemByName("NewsArrowUp"));
         this.§?"p§ = §^"m§(this.§^c§.getItemByName("NewsArrowDown"));
         this.§^c§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
      }
      
      public function §4i§() : void
      {
         this.§6#`§();
         this.§0!x§ = new URLLoader();
         this.§0!x§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§0!x§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
         this.§0!x§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!k§);
         var _loc1_:String = §4#;§.SERVER_ROOT.substr(0,5) == "https" ? "https://" : "http://";
         var _loc2_:URLRequest = §<9§.§""I§(_loc1_ + §5N§);
         this.§0!x§.load(_loc2_);
      }
      
      private function §=!'§(param1:IOErrorEvent) : void
      {
         this.§;"U§();
      }
      
      protected function §9!k§(param1:SecurityErrorEvent) : void
      {
         this.§;"U§();
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.currentTarget.data);
         this.§@#N§ = _loc2_.channels;
         this.§2!9§();
      }
      
      private function §;"U§() : void
      {
         this.§9v§.setVisibility(false);
         var _loc1_:Class = §5_§.§`"G§("PlaceholderAd");
         this.§5C§ = new _loc1_();
         this.§5C§.width = this.§["9§.width;
         this.§5C§.height = this.§["9§.height;
         this.§5C§.buttonMode = true;
         this.§5C§.addEventListener(MouseEvent.CLICK,this.§;!t§);
         var _loc2_:MovieClip = this.§ "m§.mClip.NewsHolder;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         _loc2_.addChild(this.§5C§);
         _loc2_.x = _loc2_.x = this.offsetX;
         §0O§ = true;
      }
      
      private function §;!t§(param1:MouseEvent) : void
      {
         var _loc2_:§[!j§ = new §!Z§(§`"W§.§?z§,§+5§.§>!g§);
         §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      public function reset() : void
      {
         if(this.§1"8§)
         {
            this.§1"8§.§^"P§();
         }
         var _loc1_:MovieClip = this.§ "m§.mClip.NewsHolder;
         _loc1_.y = 0;
         this.§[!i§ = 0;
         this.scroll();
      }
      
      public function dispose() : void
      {
         this.§^c§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§^c§.mClip.stage.removeEventListener(Event.RESIZE,this.§=_§);
         this.§6#`§();
         if(this.§1"8§)
         {
            this.§1"8§.stop();
            this.§1"8§ = null;
         }
         if(this.§ #0§)
         {
            this.§ #0§.dispose();
         }
         if(this.§5C§)
         {
            this.§5C§.removeEventListener(MouseEvent.CLICK,this.§;!t§);
         }
      }
      
      private function §6#`§() : void
      {
         if(this.§0!x§)
         {
            try
            {
               this.§0!x§.close();
            }
            catch(e:Error)
            {
            }
            this.§0!x§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§0!x§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!'§);
            this.§0!x§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§9!k§);
            this.§0!x§ = null;
         }
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         var _loc2_:* = false;
         switch(param1.§=!k§)
         {
            case "SHOW_NEWS":
               _loc2_ = !this.§ "m§.visible;
               this.§ "m§.setVisibility(_loc2_);
               if(this.§ "m§.visible)
               {
                  this.§2"m§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll();
               }
               else
               {
                  this.§2"m§.setComponentState(§1"z§.§4"o§);
               }
               break;
            case "NEWS_UP":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§<"H§();
               this.scroll();
               break;
            case "NEWS_DOWN":
               §?!r§.§"#_§("misc_menubuttonproceed_1");
               this.§`# §();
               this.scroll();
         }
      }
      
      private function §`# §() : void
      {
         this.§[!i§ += §4Y§;
         this.§[!i§ = this.§[!i§ >= this.§?"W§.length - 1 ? int(this.§?"W§.length - 1) : int(this.§[!i§);
      }
      
      private function §<"H§() : void
      {
         this.§[!i§ -= §4Y§;
         this.§[!i§ = this.§[!i§ < 0 ? 0 : int(this.§[!i§);
      }
      
      private function scroll() : void
      {
         var _loc1_:Number = §9!c§ + this.§!"s§ * this.§[!i§ * -1;
         if(this.§2"m§.§^'§ == §1"z§.§4"o§)
         {
            this.§6!e§.setVisibility(false);
            this.§?"p§.setVisibility(false);
            return;
         }
         if(this.§?"W§ && this.§?"W§.length > 2)
         {
            if(this.§[!i§ <= 0)
            {
               this.§6!e§.setVisibility(false);
            }
            else
            {
               this.§6!e§.setVisibility(true);
            }
            if(this.§[!i§ >= this.§?"W§.length - 1 - (§4Y§ - 1))
            {
               this.§?"p§.setVisibility(false);
            }
            else
            {
               this.§?"p§.setVisibility(true);
            }
         }
         else
         {
            this.§6!e§.setVisibility(false);
            this.§?"p§.setVisibility(false);
         }
         if(this.§1"8§)
         {
            this.§1"8§.§^"P§();
         }
         var _loc2_:MovieClip = this.§ "m§.mClip.NewsHolder;
         this.§1"8§ = §-#C§.§%!E§.§^!H§(_loc2_,{"y":_loc1_},null,0.33,§-#C§.§>v§);
         this.§1"8§.play();
      }
      
      private function §2!9§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§4!+§ = null;
         if(this.§@#N§ && this.§@#N§.plain && this.§@#N§.plain.media)
         {
            this.§?"W§ = this.§@#N§.plain.media;
            if(this.§?"W§)
            {
               _loc1_ = this.§ "m§.mClip.NewsHolder;
               _loc2_ = this.§ "m§.mClip.HolderMask;
               _loc2_.y = _loc1_.y = §9!c§;
               _loc2_.x = _loc1_.x = this.offsetX;
               while(_loc1_.numChildren > 0)
               {
                  _loc1_.removeChildAt(0);
               }
               _loc3_ = 0;
               _loc4_ = 0;
               while(_loc4_ < this.§?"W§.length)
               {
                  _loc5_ = this.§ #0§.§<"3§(this.§?"W§[_loc4_].url,this.§?"W§[_loc4_].link);
                  _loc1_.addChild(_loc5_);
                  _loc5_.y = _loc3_;
                  _loc3_ += this.§!"s§;
                  _loc4_++;
               }
            }
         }
         this.§9v§.setVisibility(false);
         this.§[!i§ = 0;
         this.scroll();
      }
   }
}
