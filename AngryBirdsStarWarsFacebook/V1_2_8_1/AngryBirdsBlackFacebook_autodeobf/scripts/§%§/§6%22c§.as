package §%§#4
{
   import §%!G§.§0"V§;
   import §+"Y§.§^!S§;
   import §+"x§.§2!s§;
   import §+"x§.§3!§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §4"m§.§>" §;
   import §8!h§.§%"z§;
   import §8!h§.§[Z§;
   import §=!4§.§8"U§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §`"1§.§=Q§;
   import com.rovio.assets.§%!Z§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class §6"c§
   {
      
      public static const §^!l§:String = "cloud.rovio.com/content/embed/pauseMenu/channel/?d=facebook&p=abw&v=1.1.1&a=full&r=game&c=rovio&icons=true&cat=plain";
      
      private static const §9"M§:int = 90;
      
      private static const §7!E§:int = 35;
      
      private static const §+"H§:int = 25;
      
      private static const §%!g§:int = 353;
      
      private static const §7"=§:int = 530;
      
      private static const §6"%§:int = 385;
      
      private static const §['§:int = 440;
      
      private static const §0!y§:int = 2;
      
      private static var §&!E§:Boolean = false;
       
      
      private var §2o§:§@"r§;
      
      private var §'"+§:URLLoader;
      
      private var §9!Y§:§%b§;
      
      private var §7"r§:int;
      
      private var §6!d§:Array;
      
      private var §,"4§:Rectangle;
      
      private var §>"f§:int;
      
      private var offsetX:int;
      
      private var §-W§:Object;
      
      private var §[#,§:§@!8§;
      
      private var §&K§:§[Z§;
      
      private var §2=§:§9!c§;
      
      private var §=#2§:§@!8§;
      
      private var §"#!§:§@!8§;
      
      private var §1"f§:§;g§;
      
      private var §@"B§:§;g§;
      
      private var §^P§:§;g§;
      
      private var §6"x§:MovieClip;
      
      public function §6"c§(param1:§@!8§)
      {
         super();
         this.§[#,§ = param1;
         var _loc2_:Number = (§['§ - §+"H§ * (§0!y§ - 1)) / §0!y§;
         this.§,"4§ = this.§5!`§(§7"=§,§%!g§,§6"%§,_loc2_);
         this.§>"f§ = this.§,"4§.height + §+"H§;
         this.offsetX = §7!E§ + (§6"%§ - this.§,"4§.width) / 2;
         this.init();
         this.§2o§ = new §@"r§(this.§,"4§);
         this.§[#,§.mClip.stage.addEventListener(Event.RESIZE,this.§?<§);
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.§[#,§.visible = param1;
      }
      
      public function get visible() : Boolean
      {
         return this.§[#,§.visible;
      }
      
      private function §?<§(param1:Event) : void
      {
         this.scroll();
      }
      
      protected function §5!`§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number = -1) : Rectangle
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
         this.§&K§ = this.§[#,§.getItemByName("AngryBirdLoader");
         this.§=#2§ = §@!8§(this.§[#,§.getItemByName("News_Item_Holder"));
         this.§"#!§ = §@!8§(this.§[#,§.getItemByName("RovioNewsContainer"));
         this.§2=§ = §9!c§(this.§[#,§.getItemByName("RovioNewsLogo"));
         this.§1"f§ = §;g§(this.§[#,§.getItemByName("Button_ShowNews"));
         this.§@"B§ = §;g§(this.§[#,§.getItemByName("NewsArrowUp"));
         this.§^P§ = §;g§(this.§[#,§.getItemByName("NewsArrowDown"));
         this.§[#,§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
      }
      
      public function §&!^§() : void
      {
         this.§7"&§();
         this.§'"+§ = new URLLoader();
         this.§'"+§.addEventListener(Event.COMPLETE,this.onComplete);
         this.§'"+§.addEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
         this.§'"+§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;!§);
         var _loc1_:String = §4"#§.SERVER_ROOT.substr(0,5) == "https" ? "https://" : "http://";
         var _loc2_:URLRequest = §0"V§.§2"r§(_loc1_ + §^!l§);
         this.§'"+§.load(_loc2_);
      }
      
      private function §[!r§(param1:IOErrorEvent) : void
      {
         this.§!"_§();
      }
      
      protected function §;!§(param1:SecurityErrorEvent) : void
      {
         this.§!"_§();
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:Object = JSON.parse(param1.currentTarget.data);
         this.§-W§ = _loc2_.channels;
         this.§^I§();
      }
      
      private function §!"_§() : void
      {
         this.§&K§.setVisibility(false);
         var _loc1_:Class = §%!Z§.§;",§("PlaceholderAd");
         this.§6"x§ = new _loc1_();
         this.§6"x§.width = this.§,"4§.width;
         this.§6"x§.height = this.§,"4§.height;
         this.§6"x§.buttonMode = true;
         this.§6"x§.addEventListener(MouseEvent.CLICK,this.§#"1§);
         var _loc2_:MovieClip = this.§=#2§.mClip.NewsHolder;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
         _loc2_.addChild(this.§6"x§);
         _loc2_.x = _loc2_.x = this.offsetX;
         §&!E§ = true;
      }
      
      private function §#"1§(param1:MouseEvent) : void
      {
         var _loc2_:§3!§ = new §>" §(§^!S§.§'J§,§2!s§.§@"$§);
         §4"#§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      public function reset() : void
      {
         if(this.§9!Y§)
         {
            this.§9!Y§.§=!L§();
         }
         var _loc1_:MovieClip = this.§=#2§.mClip.NewsHolder;
         _loc1_.y = 0;
         this.§7"r§ = 0;
         this.scroll();
      }
      
      public function dispose() : void
      {
         this.§[#,§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§[#,§.mClip.stage.removeEventListener(Event.RESIZE,this.§?<§);
         this.§7"&§();
         if(this.§9!Y§)
         {
            this.§9!Y§.stop();
            this.§9!Y§ = null;
         }
         if(this.§2o§)
         {
            this.§2o§.dispose();
         }
         if(this.§6"x§)
         {
            this.§6"x§.removeEventListener(MouseEvent.CLICK,this.§#"1§);
         }
      }
      
      private function §7"&§() : void
      {
         if(this.§'"+§)
         {
            try
            {
               this.§'"+§.close();
            }
            catch(e:Error)
            {
            }
            this.§'"+§.removeEventListener(Event.COMPLETE,this.onComplete);
            this.§'"+§.removeEventListener(IOErrorEvent.IO_ERROR,this.§[!r§);
            this.§'"+§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§;!§);
            this.§'"+§ = null;
         }
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         var _loc2_:* = false;
         switch(param1.§5!u§)
         {
            case "SHOW_NEWS":
               _loc2_ = !this.§=#2§.visible;
               this.§=#2§.setVisibility(_loc2_);
               if(this.§=#2§.visible)
               {
                  this.§1"f§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  this.scroll();
               }
               else
               {
                  this.§1"f§.setComponentState(§%"z§.§30§);
               }
               break;
            case "NEWS_UP":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§`e§();
               this.scroll();
               break;
            case "NEWS_DOWN":
               §=Q§.§`!A§("misc_menubuttonproceed_1");
               this.§#k§();
               this.scroll();
         }
      }
      
      private function §#k§() : void
      {
         this.§7"r§ += §0!y§;
         this.§7"r§ = this.§7"r§ >= this.§6!d§.length - 1 ? int(this.§6!d§.length - 1) : int(this.§7"r§);
      }
      
      private function §`e§() : void
      {
         this.§7"r§ -= §0!y§;
         this.§7"r§ = this.§7"r§ < 0 ? 0 : int(this.§7"r§);
      }
      
      private function scroll() : void
      {
         var _loc1_:Number = §9"M§ + this.§>"f§ * this.§7"r§ * -1;
         if(this.§1"f§.§9"6§ == §%"z§.§30§)
         {
            this.§@"B§.setVisibility(false);
            this.§^P§.setVisibility(false);
            return;
         }
         if(this.§6!d§ && this.§6!d§.length > 2)
         {
            if(this.§7"r§ <= 0)
            {
               this.§@"B§.setVisibility(false);
            }
            else
            {
               this.§@"B§.setVisibility(true);
            }
            if(this.§7"r§ >= this.§6!d§.length - 1 - (§0!y§ - 1))
            {
               this.§^P§.setVisibility(false);
            }
            else
            {
               this.§^P§.setVisibility(true);
            }
         }
         else
         {
            this.§@"B§.setVisibility(false);
            this.§^P§.setVisibility(false);
         }
         if(this.§9!Y§)
         {
            this.§9!Y§.§=!L§();
         }
         var _loc2_:MovieClip = this.§=#2§.mClip.NewsHolder;
         this.§9!Y§ = §5!%§.§!6§.§4!M§(_loc2_,{"y":_loc1_},null,0.33,§5!%§.§1!Z§);
         this.§9!Y§.play();
      }
      
      private function §^I§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§3" § = null;
         if(this.§-W§ && this.§-W§.plain && this.§-W§.plain.media)
         {
            this.§6!d§ = this.§-W§.plain.media;
            if(this.§6!d§)
            {
               _loc1_ = this.§=#2§.mClip.NewsHolder;
               _loc2_ = this.§=#2§.mClip.HolderMask;
               _loc2_.y = _loc1_.y = §9"M§;
               _loc2_.x = _loc1_.x = this.offsetX;
               while(_loc1_.numChildren > 0)
               {
                  _loc1_.removeChildAt(0);
               }
               _loc3_ = 0;
               _loc4_ = 0;
               while(_loc4_ < this.§6!d§.length)
               {
                  _loc5_ = this.§2o§.§?9§(this.§6!d§[_loc4_].url,this.§6!d§[_loc4_].link);
                  _loc1_.addChild(_loc5_);
                  _loc5_.y = _loc3_;
                  _loc3_ += this.§>"f§;
                  _loc4_++;
               }
            }
         }
         this.§&K§.setVisibility(false);
         this.§7"r§ = 0;
         this.scroll();
      }
   }
}
