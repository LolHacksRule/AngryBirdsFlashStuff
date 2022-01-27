package §&!q§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §#!k§.§4!4§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §,!_§.§>!_§;
   import §,"v§.§@§;
   import §4##§.§5!9§;
   import §4##§.§7!Y§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §<"s§.§0u§;
   import §^9§.§<! §;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §9!;§
   {
      
      public static const §+"D§:String = "cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abw&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      private static const §!"T§:int = 90;
      
      private static const §["8§:int = 35;
      
      private static const §5p§:int = 25;
      
      private static const § !R§:int = 353;
      
      private static const §2E§:int = 530;
      
      private static const §]!k§:int = 385;
      
      private static const §'y§:int = 440;
      
      private static const §?#-§:int = 2;
      
      private static var §+"4§:Boolean = false;
       
      
      private var §'#0§:§`"z§;
      
      private var §#!u§:URLLoader;
      
      private var §4!o§:§4!Q§;
      
      private var §9"F§:int;
      
      private var §2"n§:Array;
      
      private var §0"2§:Rectangle;
      
      private var §6"'§:int;
      
      private var offsetX:int;
      
      private var §#V§:Object;
      
      private var §,r§:§,m§;
      
      private var §`!E§:§5!9§;
      
      private var §'!7§:§<`§;
      
      private var §6"i§:§,m§;
      
      private var §!#2§:§,m§;
      
      private var §1"I§:§2"8§;
      
      private var §4!9§:§2"8§;
      
      private var §>!&§:§2"8§;
      
      private var §+"]§:MovieClip;
      
      public function §9!;§(param1:§,m§)
      {
         super();
         this.§,r§ = param1;
         var _loc2_:Number = (§'y§ - §5p§ * (§?#-§ - 1)) / §?#-§;
         this.§0"2§ = this.§>"o§(§2E§,§ !R§,§]!k§,_loc2_);
         this.§6"'§ = this.§0"2§.height + §5p§;
         this.offsetX = §["8§ + (§]!k§ - this.§0"2§.width) / 2;
         this.init();
         this.§'#0§ = new §`"z§(this.§0"2§);
         this.§,r§.mClip.stage.addEventListener(Event.RESIZE,this.§!!P§);
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§,r§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§,r§.visible;
      }
      
      private function §!!P§(param1:Event) : void
      {
         this.scroll();
      }
      
      protected function §>"o§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = -1) : Rectangle
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
         this.§`!E§ = this.§,r§.getItemByName("AngryBirdLoader");
         this.§6"i§ = §,m§(this.§,r§.getItemByName("News_Item_Holder"));
         this.§!#2§ = §,m§(this.§,r§.getItemByName("RovioNewsContainer"));
         this.§'!7§ = §<`§(this.§,r§.getItemByName("RovioNewsLogo"));
         this.§1"I§ = §2"8§(this.§,r§.getItemByName("Button_ShowNews"));
         this.§4!9§ = §2"8§(this.§,r§.getItemByName("NewsArrowUp"));
         this.§>!&§ = §2"8§(this.§,r§.getItemByName("NewsArrowDown"));
         this.§,r§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
      }
      
      public function §?!t§() : void
      {
         this.§=!J§();
         this.§#!u§ = new URLLoader();
         this.§#!u§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§#!u§.addEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
         this.§#!u§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#Z§);
         var _loc1_:String = §;"@§.SERVER_ROOT.substr(0,5) == "https" ? "https://" : "http://";
         var _loc2_:URLRequest = §>!_§.§^O§(_loc1_ + §+"D§);
         this.§#!u§.load(_loc2_);
      }
      
      private function §<#1§(param1:IOErrorEvent) : void
      {
         this.§9M§();
      }
      
      protected function §#Z§(param1:SecurityErrorEvent) : void
      {
         this.§9M§();
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.currentTarget.data);
         this.§#V§ = _loc2_.channels;
         this.§?$§();
      }
      
      private function §9M§() : void
      {
         this.§`!E§.setVisibility(false);
         var _loc1_:Class = §5"]§.§4!K§("PlaceholderAd");
         this.§+"]§ = new _loc1_();
         this.§+"]§.width = this.§0"2§.width;
         this.§+"]§.height = this.§0"2§.height;
         this.§+"]§.buttonMode = true;
         this.§+"]§.addEventListener(MouseEvent.CLICK,this.§'"P§);
         var _loc2_:MovieClip = this.§6"i§.mClip.NewsHolder;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         _loc2_.addChild(this.§+"]§);
         _loc2_.x = _loc2_.x = this.offsetX;
         §+"4§ = true;
      }
      
      private function §'"P§(param1:MouseEvent) : void
      {
         var _loc2_:§5!R§ = new §<! §(§0u§.§]!?§,§^T§.§0O§);
         §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      public function reset() : void
      {
         if(this.§4!o§)
         {
            this.§4!o§.§7!"§();
         }
         var _loc1_:MovieClip = this.§6"i§.mClip.NewsHolder;
         _loc1_.y = 0;
         this.§9"F§ = 0;
         this.scroll();
      }
      
      public function dispose() : void
      {
         this.§,r§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§,r§.mClip.stage.removeEventListener(Event.RESIZE,this.§!!P§);
         this.§=!J§();
         if(this.§4!o§)
         {
            this.§4!o§.stop();
            this.§4!o§ = null;
         }
         if(this.§'#0§)
         {
            this.§'#0§.dispose();
         }
         if(this.§+"]§)
         {
            this.§+"]§.removeEventListener(MouseEvent.CLICK,this.§'"P§);
         }
      }
      
      private function §=!J§() : void
      {
         if(this.§#!u§)
         {
            try
            {
               this.§#!u§.close();
            }
            catch(e:Error)
            {
            }
            this.§#!u§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§#!u§.removeEventListener(IOErrorEvent.IO_ERROR,this.§<#1§);
            this.§#!u§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§#Z§);
            this.§#!u§ = null;
         }
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         var _loc2_:* = false;
         switch(param1.§84§)
         {
            case "SHOW_NEWS":
               _loc2_ = !this.§6"i§.visible;
               this.§6"i§.setVisibility(_loc2_);
               if(this.§6"i§.visible)
               {
                  this.§1"I§.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll();
               }
               else
               {
                  this.§1"I§.setComponentState(§7!Y§.§6!7§);
               }
               break;
            case "NEWS_UP":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§#!H§();
               this.scroll();
               break;
            case "NEWS_DOWN":
               §@§.§=Y§("misc_menubuttonproceed_1");
               this.§+"@§();
               this.scroll();
         }
      }
      
      private function §+"@§() : void
      {
         this.§9"F§ += §?#-§;
         this.§9"F§ = this.§9"F§ >= this.§2"n§.length - 1 ? int(this.§2"n§.length - 1) : int(this.§9"F§);
      }
      
      private function §#!H§() : void
      {
         this.§9"F§ -= §?#-§;
         this.§9"F§ = this.§9"F§ < 0 ? 0 : int(this.§9"F§);
      }
      
      private function scroll() : void
      {
         var _loc1_:Number = §!"T§ + this.§6"'§ * this.§9"F§ * -1;
         if(this.§1"I§.§1"w§ == §7!Y§.§6!7§)
         {
            this.§4!9§.setVisibility(false);
            this.§>!&§.setVisibility(false);
            return;
         }
         if(this.§2"n§ && this.§2"n§.length > 2)
         {
            if(this.§9"F§ <= 0)
            {
               this.§4!9§.setVisibility(false);
            }
            else
            {
               this.§4!9§.setVisibility(true);
            }
            if(this.§9"F§ >= this.§2"n§.length - 1 - (§?#-§ - 1))
            {
               this.§>!&§.setVisibility(false);
            }
            else
            {
               this.§>!&§.setVisibility(true);
            }
         }
         else
         {
            this.§4!9§.setVisibility(false);
            this.§>!&§.setVisibility(false);
         }
         if(this.§4!o§)
         {
            this.§4!o§.§7!"§();
         }
         var _loc2_:MovieClip = this.§6"i§.mClip.NewsHolder;
         this.§4!o§ = §41§.§-G§.§&#'§(_loc2_,{"y":_loc1_},null,0.33,§41§.§9!,§);
         this.§4!o§.play();
      }
      
      private function §?$§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§9"h§ = null;
         if(this.§#V§ && this.§#V§.plain && this.§#V§.plain.media)
         {
            this.§2"n§ = this.§#V§.plain.media;
            if(this.§2"n§)
            {
               _loc1_ = this.§6"i§.mClip.NewsHolder;
               _loc2_ = this.§6"i§.mClip.HolderMask;
               _loc2_.y = _loc1_.y = §!"T§;
               _loc2_.x = _loc1_.x = this.offsetX;
               while(_loc1_.numChildren > 0)
               {
                  _loc1_.removeChildAt(0);
               }
               _loc3_ = 0;
               _loc4_ = 0;
               while(_loc4_ < this.§2"n§.length)
               {
                  _loc5_ = this.§'#0§.§4!c§(this.§2"n§[_loc4_].url,this.§2"n§[_loc4_].link);
                  _loc1_.addChild(_loc5_);
                  _loc5_.y = _loc3_;
                  _loc3_ += this.§6"'§;
                  _loc4_++;
               }
            }
         }
         this.§`!E§.setVisibility(false);
         this.§9"F§ = 0;
         this.scroll();
      }
   }
}
