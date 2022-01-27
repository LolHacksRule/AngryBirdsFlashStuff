package §7!c§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §!i§.§?"%§;
   import §!i§.§^!d§;
   import §"!>§.§<!o§;
   import §'#§.§9Y§;
   import §'#§.§^4§;
   import §1!]§.§,!_§;
   import §1!]§.§^!W§;
   import §4!t§.§95§;
   import §4!x§.§&!=§;
   import §4!x§.§<W§;
   import §5s§.§ !_§;
   import §5s§.§=!4§;
   import §5s§.EpisodeButtonEvent;
   import §6"6§.§ get§;
   import §6"6§.§40§;
   import §6"6§.§8!t§;
   import §6"6§.§>o§;
   import §6"6§.LoginHandlerEvent;
   import §7!s§.HighscoreSidebar;
   import §;!0§.;
   import §;!0§.§]§;
   import §;+§.§3!n§;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §<l§.§#r§;
   import §]!M§.PopupSidebarEvent;
   import §]!O§.§,"1§;
   import §]!O§.ColorFadeLayerEvent;
   import §]!O§.§^!j§;
   import com.rovio.assets.§2!3§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   
   public class §^!9§ extends StateEpisodeSelection
   {
      
      private static const §<X§:Number = 0.5;
      
      private static const §!!`§:Number = 82;
       
      
      private var §2!C§:Number;
      
      private var §-!t§:Number;
      
      private var §;c§:Number;
      
      private var §0!7§:Number;
      
      private var §2E§:§8"+§;
      
      protected var §]o§:Number;
      
      private var §01§:Boolean = false;
      
      private var §1"#§:Boolean = false;
      
      private var §0"&§:§8!t§;
      
      private var §'!A§:String;
      
      private var §"!k§:String = "";
      
      private var §!c§:§<W§;
      
      private var §1"?§:int = 2;
      
      private var §=!@§:String = "";
      
      private var §1!^§:§>o§;
      
      protected var §=!#§:§^!j§ = null;
      
      private var § !w§:Boolean;
      
      public function §^!9§(param1:§#2§, param2:§<!o§, param3:§>o§, param4:Boolean, param5:String = "ChapterSelectionState")
      {
         super(param1,param2,param4,param5);
         this.§!c§ = new §<W§();
         this.§1!^§ = param3;
      }
      
      override protected function init() : void
      {
         this.§=!#§ = new §^!j§(0,0,0,1);
         super.init();
         this.§0"&§ = new §8!t§();
         this.§`2§();
         (§&!h§.§ u§ as §^"=§).§?P§.§[";§ = new Vector.<§,"1§>();
         (§4§.getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§.maxChars = 12;
         var _loc1_:int = Math.floor(Math.random() * 3) + 2;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§"H§("");
            _loc2_++;
         }
         var _loc3_:int = Math.floor(Math.random() * 2) + 1;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.§"H§("2");
            _loc2_++;
         }
      }
      
      override protected function initChapterLayer() : void
      {
         var _loc3_:§]§ = null;
         this.§2!C§ = §4§.getItemByName("Button_Previous").y;
         this.§-!t§ = this.§2!C§ - §!!`§;
         this.§;c§ = §4§.getItemByName("EnterCode").y;
         this.§0!7§ = this.§;c§ - §!!`§;
         §;N§ = §4§.getItemByName("Container_ChapterSelection") as §1s§;
         §=z§ = [];
         §;!#§ = [];
         var _loc1_:Number = 0;
         §%C§ = new Sprite();
         §;N§.mClip.addChild(§%C§);
         var _loc2_:int = §,W§.getEpisodeCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §,W§.getEpisode(_loc2_);
            if(!_loc3_.§0!_§)
            {
               _loc1_ = this.addEpisode(_loc3_.menuImage,_loc1_,_loc3_);
            }
            _loc2_--;
         }
         this.addExtraButtons(_loc1_);
         this.configureChapterButtons();
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§,"1§ = null;
         var _loc3_:§=!4§ = null;
         var _loc4_:int = 0;
         var _loc5_:§=!4§ = null;
         var _loc6_:§8"+§ = null;
         super.activate(param1);
         for each(_loc2_ in (§&!h§.§ u§ as §^"=§).§?P§.§[";§)
         {
            (§4§.getItemByName("MovieClip_ChapterSelectionBG") as §^!d§).mClip.addChild(_loc2_);
         }
         this.§ !w§ = false;
         §4§.container.mClip.addChild(this.§=!#§);
         this.§]!6§();
         §&!h§.§ u§.§-"F§.§=!B§();
         (§&!h§.§ u§ as §^"=§).§?P§.§;j§(true);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(true);
         this.updateLocalization();
         this.§1!^§.addEventListener(LoginHandlerEvent.§%&§,this.§[!$§);
         this.§1!^§.addEventListener(LoginHandlerEvent.§8"1§,this.§[!$§);
         this.§1!^§.addEventListener(LoginHandlerEvent.§@!;§,this.§6f§);
         this.§0"&§.addEventListener(§ get§.§#U§,this.§7!>§);
         this.§!c§.addEventListener(§&!=§.§^!H§,this.§&"0§);
         this.§!c§.addEventListener(§&!=§.§>!8§,this.§^!U§);
         this.§!c§.addEventListener(§&!=§.§7w§,this.§&6§);
         this.§!c§.addEventListener(§&!=§.§5"$§,this.§<9§);
         (§&!h§.§ u§ as §^"=§).§?P§.§!!6§(true);
         §^"=§.§`=§();
         this.§`!0§();
         if(this.§'!A§)
         {
            _loc4_ = 1;
            for each(_loc5_ in §=z§)
            {
               _loc3_ = §=z§[(_loc4_ + (2 - this.§1"?§)) % 3];
               (_loc6_ = §<K§.§<"B§.§`!c§(_loc5_,{
                  "x":_loc3_.§'6§,
                  "y":_loc3_.§^K§,
                  "scaleX":_loc3_.§84§,
                  "scaleY":_loc3_.§0!U§,
                  "alpha":1
               },null,0.5,§<K§.§^!s§)).play();
               _loc4_++;
            }
         }
         this.§'!A§ = null;
         if(§40§.§1"$§.§ !0§)
         {
            this.§2!M§();
         }
         else
         {
            this.§5N§();
         }
         (§&!h§.§ u§ as §^"=§).§?P§.addEventListener(PopupSidebarEvent.§]!S§,this.§!!s§);
         §%!@§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
      }
      
      private function §!!s§(param1:PopupSidebarEvent) : void
      {
         var _loc2_:§=!4§ = null;
         var _loc3_:§8"+§ = null;
         for each(_loc2_ in §=z§)
         {
            _loc3_ = §<K§.§<"B§.§`!c§(_loc2_,{"y":-500},null,0.5,§<K§.§^!s§);
            _loc3_.play();
         }
         (§&!h§.§ u§ as §^"=§).§?P§.§;j§(false);
         (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(true);
         if(!§40§.§1"$§.§ !0§)
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§']§(false);
         }
         else
         {
            (§&!h§.§ u§ as §^"=§).§?P§.§?!,§.§0u§(false);
         }
         _loc3_.onComplete = this.§9"!§;
         this.§5N§(this.§2!C§ + 130);
         this.§@!M§(this.§2!C§ + 100);
      }
      
      private function §9"!§() : void
      {
         var _loc1_:§#2§ = (§&!h§.§ u§ as §^"=§).§>F§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§=!7§));
         this.§'!A§ = HighscoreSidebar.§=!7§;
         §2g§(§]!^§.STATE_NAME);
      }
      
      protected function §]!6§() : void
      {
         if(this.§=!#§ && !this.§ !w§)
         {
            this.§=!#§.mouseEnabled = true;
            this.§ !w§ = true;
            this.§=!#§.§8!j§(1);
            this.§=!#§.§#A§(0,0.25);
            this.§=!#§.addEventListener(ColorFadeLayerEvent.§9"?§,this.§=!K§);
         }
      }
      
      private function §=!K§(param1:ColorFadeLayerEvent) : void
      {
         this.§=!#§.mouseEnabled = false;
         this.§=!#§.removeEventListener(ColorFadeLayerEvent.§9"?§,this.§=!K§);
      }
      
      private function §`!0§(param1:Boolean = false) : void
      {
         var _loc2_:§=!4§ = null;
         for each(_loc2_ in §=z§)
         {
            _loc2_.refresh(param1);
         }
         this.§@!M§();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§,"1§ = null;
         (§&!h§.§ u§ as §^"=§).§?P§.removeEventListener(PopupSidebarEvent.§]!S§,this.§!!s§);
         if(this.§=!#§.parent == §4§.container.mClip)
         {
            §4§.container.mClip.removeChild(this.§=!#§);
         }
         §4§.getItemByName("Button_Login0").setVisibility(false);
         §4§.getItemByName("Button_Login1").setVisibility(false);
         §4§.getItemByName("Button_Login2").setVisibility(false);
         this.§1!^§.removeEventListener(LoginHandlerEvent.§8"1§,this.§6!k§);
         this.§1!^§.removeEventListener(LoginHandlerEvent.ERROR,this.§4!9§);
         this.§0"&§.removeEventListener(§ get§.§#U§,this.§7!>§);
         (§4§.getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!;§);
         this.§1!^§.removeEventListener(LoginHandlerEvent.§%&§,this.§[!$§);
         this.§1!^§.removeEventListener(LoginHandlerEvent.§8"1§,this.§[!$§);
         this.§1!^§.removeEventListener(LoginHandlerEvent.§@!;§,this.§6f§);
         this.§!c§.removeEventListener(§&!=§.§^!H§,this.§&"0§);
         this.§!c§.removeEventListener(§&!=§.§>!8§,this.§^!U§);
         this.§!c§.removeEventListener(§&!=§.§7w§,this.§&6§);
         this.§!c§.removeEventListener(§&!=§.§5"$§,this.§<9§);
         §%!@§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§9!C§);
         for each(_loc1_ in (§&!h§.§ u§ as §^"=§).§?P§.§[";§)
         {
            (§4§.getItemByName("MovieClip_ChapterSelectionBG") as §^!d§).mClip.removeChild(_loc1_);
         }
         super.deActivate();
      }
      
      override public function updateLocalization() : void
      {
         if(this.§"!k§ == this.§=!@§)
         {
            this.§"!k§ = "";
         }
         super.updateLocalization();
         §^4§.§<"B§.updateTextFields(§4§.container,"StateEpisodeSelection");
         if(!(§4§.getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            (§4§.getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!;§);
         }
         this.§=!@§ = (§4§.getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§.text;
         this.§`2§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               _loc4_ = ((§4§.container.getItemByName("EnterCode") as §1s§).getItemByName("TextField_TazosCodeEnter") as §?"%§).§]!`§();
               this.§!c§.§%!%§(_loc4_);
               break;
            case "CODE_FAQ":
               §#r§.§#!2§("displayFAQ");
               break;
            case "LOGIN":
               §&!h§.§ u§.§-"F§.openPopup(new §3!n§(this.§1!^§));
               break;
            case "NEXT":
               if(!§2!2§)
               {
                  --this.§1"?§;
                  this.moveToChapter(this.§1"?§);
                  break;
               }
               break;
            case "PREVIOUS":
               if(!§2!2§)
               {
                  ++this.§1"?§;
                  this.moveToChapter(this.§1"?§);
                  break;
               }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§=!4§ = null;
         super.update(param1);
         this.§9"G§(param1);
         for each(_loc2_ in §=z§)
         {
            _loc2_.update(param1);
         }
         if(!this.§01§)
         {
            this.moveToChapter(this.§1"?§);
            this.§01§ = true;
            §9Y§.§6x§(§9Y§.§!!,§);
            if(this.§1!^§.§<"'§())
            {
               this.§1!^§.addEventListener(LoginHandlerEvent.§8"1§,this.§6!k§);
               this.§1!^§.addEventListener(LoginHandlerEvent.ERROR,this.§4!9§);
               this.§1!^§.§ s§(this.§1!^§.name,this.§1!^§.password,true);
            }
         }
      }
      
      override protected function configureChapterButtons() : void
      {
         var _loc3_:MovieClip = null;
         this.scrollIndex = 2;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §=z§.length)
         {
            _loc3_ = new §2!3§.dynamic("Button_Dot")();
            if(_loc2_ == §&!?§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = 20 * _loc2_ - §=z§.length * 20 / 2 + _loc3_.width / 2 + §^"=§.§%!f§ / 2;
            _loc3_.y = (§4§.getItemByName("Button_Previous") as §3!A§).y;
            this.§4§.addChild(_loc3_);
            §;!#§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc2_++;
         }
      }
      
      override protected function coverFlowScale() : void
      {
         §;N§.getItemByName("Button_Login0").x = (§=z§[0] as §=!4§).x;
         §;N§.getItemByName("Button_Login0").y = (§=z§[0] as §=!4§).y;
         §;N§.getItemByName("Button_Login0").mClip.scaleX = (§=z§[0] as §=!4§).§&!n§();
         §;N§.getItemByName("Button_Login0").mClip.scaleY = (§=z§[0] as §=!4§).§&!n§();
         §;N§.getItemByName("Button_Login1").x = (§=z§[1] as §=!4§).x;
         §;N§.getItemByName("Button_Login1").y = (§=z§[1] as §=!4§).y;
         §;N§.getItemByName("Button_Login1").mClip.scaleX = (§=z§[1] as §=!4§).§&!n§();
         §;N§.getItemByName("Button_Login1").mClip.scaleY = (§=z§[1] as §=!4§).§&!n§();
         §;N§.getItemByName("Button_Login2").x = (§=z§[2] as §=!4§).x;
         §;N§.getItemByName("Button_Login2").y = (§=z§[2] as §=!4§).y;
         §;N§.getItemByName("Button_Login2").mClip.scaleX = (§=z§[2] as §=!4§).§&!n§();
         §;N§.getItemByName("Button_Login2").mClip.scaleY = (§=z§[2] as §=!4§).§&!n§();
         if(!§40§.§1"$§.§ !0§)
         {
            §4§.getItemByName("Button_Login0").setVisibility(true);
            §4§.getItemByName("Button_Login1").setVisibility(true);
            §4§.getItemByName("Button_Login2").setVisibility(true);
         }
         else
         {
            §4§.getItemByName("Button_Login0").setVisibility(false);
            §4§.getItemByName("Button_Login1").setVisibility(false);
            §4§.getItemByName("Button_Login2").setVisibility(false);
         }
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < §=z§.length)
         {
            this.§?'§(§=z§[_loc2_],_loc2_ - param1);
            _loc2_++;
         }
         this.§]o§ = param1;
         this.§<!"§();
      }
      
      private function §<!"§() : void
      {
         var button:DisplayObject = null;
         var sortedButtons:Array = §=z§.concat().sort(function(param1:DisplayObject, param2:DisplayObject):Number
         {
            return Math.abs(§=z§.indexOf(param2) - §]o§) - Math.abs(§=z§.indexOf(param1) - §]o§);
         });
         var index:int = 0;
         for each(button in sortedButtons)
         {
            §%C§.setChildIndex(button,index++);
         }
         §;N§.setObjectToFront(§;N§.getItemByName("Button_Login0"));
         §;N§.setObjectToFront(§;N§.getItemByName("Button_Login1"));
         §;N§.setObjectToFront(§;N§.getItemByName("Button_Login2"));
      }
      
      protected function §?'§(param1:§=!4§, param2:Number) : void
      {
         var _loc3_:int = §=z§.indexOf(param1);
         if(param2 == 0)
         {
            param1.buttonMode = false;
         }
         else
         {
            param1.buttonMode = true;
         }
         param1.scrollIndex = param2;
      }
      
      public function get scrollIndex() : Number
      {
         return this.§]o§;
      }
      
      override protected function updateEpisodeButtons() : void
      {
      }
      
      override protected function addEpisode(param1:String, param2:Number, param3:§]§ = null) : Number
      {
         var _loc4_:§=!4§ = null;
         if(param3 != null)
         {
            (_loc4_ = new §=!4§(param3)).addEventListener(MouseEvent.CLICK,this.onChapterClick);
            _loc4_.addEventListener(EpisodeButtonEvent.§"!M§,this.§%!]§);
            §%C§.addChild(_loc4_);
            §=z§.push(_loc4_);
            _loc4_.§'6§ = §4§.container.getItemByName("MovieClip_Star" + §=z§.length).x;
            _loc4_.§^K§ = §4§.container.getItemByName("MovieClip_Star" + §=z§.length).y;
            _loc4_.§84§ = §4§.container.getItemByName("MovieClip_Star" + §=z§.length).mClip.scaleX;
            _loc4_.§0!U§ = §4§.container.getItemByName("MovieClip_Star" + §=z§.length).mClip.scaleY;
            _loc4_.y -= 500;
         }
         else
         {
            super.addEpisode(param1,param2);
         }
         return 0;
      }
      
      override protected function onChapterClick(param1:MouseEvent) : void
      {
         if(!§2!2§)
         {
            if(§=z§.indexOf(param1.currentTarget) < this.§1"?§)
            {
               if(this.§1"?§ == 2 && §=z§.indexOf(param1.currentTarget) == 1 || this.§1"?§ == 1)
               {
                  --this.§1"?§;
               }
               else
               {
                  ++this.§1"?§;
               }
            }
            if(§=z§.indexOf(param1.currentTarget) > this.§1"?§)
            {
               if(this.§1"?§ == 0 && §=z§.indexOf(param1.currentTarget) == 2)
               {
                  --this.§1"?§;
               }
               else
               {
                  ++this.§1"?§;
               }
            }
            if(§&!?§ != this.§1"?§)
            {
               this.moveToChapter(this.§1"?§);
            }
         }
      }
      
      protected function §%!]§(param1:EpisodeButtonEvent) : void
      {
         var _loc3_:§=!4§ = null;
         var _loc4_:int = 0;
         var _loc5_:§=!4§ = null;
         var _loc6_:§8"+§ = null;
         this.§'!A§ = param1.levelName;
         if(this.§1"#§)
         {
            _loc4_ = 1;
            for each(_loc5_ in §=z§)
            {
               _loc3_ = §=z§[(_loc4_ + (2 - this.§1"?§)) % 3];
               (_loc6_ = §<K§.§<"B§.§`!c§(_loc5_,{
                  "x":(_loc3_.§'6§ - param1.x) * 3,
                  "y":(_loc3_.§^K§ - param1.y) * 3,
                  "scaleX":_loc3_.§84§ * 3,
                  "scaleY":_loc3_.§0!U§ * 3,
                  "alpha":0
               },null,0.5,§<K§.§^!s§)).play();
               _loc4_++;
            }
            (§&!h§.§ u§ as §^"=§).§?P§.§;j§(false);
            (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(true);
            _loc6_.onComplete = this.§#h§;
         }
         else if(!§40§.§1"$§.§ !0§)
         {
            §&!h§.§ u§.§-"F§.openPopup(new §3!n§(this.§1!^§));
         }
         else if(§40§.§1"$§.§ !0§ && !§40§.§1"$§.verified)
         {
            this.§<>§();
         }
         else if(§40§.§1!f§(param1.levelName))
         {
            _loc4_ = 1;
            for each(_loc5_ in §=z§)
            {
               _loc3_ = §=z§[(_loc4_ + (2 - this.§1"?§)) % 3];
               (_loc6_ = §<K§.§<"B§.§`!c§(_loc5_,{
                  "x":(_loc3_.§'6§ - param1.x) * 3,
                  "y":(_loc3_.§^K§ - param1.y) * 3,
                  "scaleX":_loc3_.§84§ * 3,
                  "scaleY":_loc3_.§0!U§ * 3,
                  "alpha":0
               },null,0.5,§<K§.§^!s§)).play();
               _loc4_++;
            }
            (§&!h§.§ u§ as §^"=§).§?P§.§;j§(false);
            (§&!h§.§ u§ as §^"=§).§?P§.§%!P§(true);
            _loc6_.onComplete = this.§#h§;
            this.§5N§(this.§2!C§ + 130);
            this.§@!M§(this.§2!C§ + 100);
         }
         else
         {
            this.§8C§();
         }
      }
      
      private function §#h§() : void
      {
         this.§-!7§(this.§'!A§);
      }
      
      private function §-!7§(param1:String) : void
      {
         §,W§.loadLevel(§,W§.getValidLevelId(param1));
         §2g§(§"!H§.STATE_NAME);
      }
      
      private function §8C§() : void
      {
         §&!h§.§ u§.§-"F§.openPopup(new §,!_§(§ !_§.LEVEL_LOCKED,§,!_§.§;V§));
      }
      
      private function §<>§() : void
      {
         this.§0"&§.§<>§(§40§.§1"$§.id);
      }
      
      private function §7!>§(param1:§ get§) : void
      {
         if(§40§.§1"$§.§ !0§ && !§40§.§1"$§.verified)
         {
            §&!h§.§ u§.§-"F§.openPopup(new §^!W§());
         }
         else if(this.§'!A§ && §40§.§1!f§(this.§'!A§) || this.§1"#§)
         {
            this.§-!7§(this.§'!A§);
            this.§'!A§ = null;
         }
         else
         {
            this.§8C§();
         }
      }
      
      override protected function moveToChapter(param1:int) : void
      {
         var _loc2_:§=!4§ = null;
         var _loc4_:§=!4§ = null;
         if(this.§1"?§ < 0)
         {
            this.scrollIndex = 3;
            this.§1"?§ = 2;
         }
         if(this.§1"?§ > 2)
         {
            this.scrollIndex = -1;
            this.§1"?§ = 0;
         }
         param1 = this.§1"?§;
         §2!2§ = true;
         §&!?§ = param1;
         §-!2§ = §<K§.§<"B§.§`!c§(this,{"scrollIndex":param1},null,0.8,§<K§.§""@§);
         §-!2§.onComplete = this.onChapterTweenComplete;
         §-!2§.play();
         var _loc3_:int = 1;
         for each(_loc4_ in §=z§)
         {
            _loc2_ = §=z§[(_loc3_ + (2 - param1)) % 3];
            §<K§.§<"B§.§`!c§(_loc4_,{
               "x":_loc2_.§'6§,
               "y":_loc2_.§^K§,
               "scaleX":_loc2_.§84§,
               "scaleY":_loc2_.§0!U§
            },null,1,§<K§.§^!s§).play();
            _loc3_++;
         }
      }
      
      override protected function onChapterTweenComplete() : void
      {
         super.onChapterTweenComplete();
      }
      
      override protected function checkIfPagePassed() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §;!#§.length)
         {
            if(_loc1_ > this.§]o§ - 0.5 && _loc1_ < this.§]o§ + 0.5)
            {
               §;!#§[2 - _loc1_].gotoAndStop("Selected");
            }
            else
            {
               §;!#§[2 - _loc1_].gotoAndStop("UnSelected");
            }
            _loc1_++;
         }
      }
      
      override protected function addExtraButtons(param1:Number) : void
      {
      }
      
      override protected function resetButtons() : void
      {
      }
      
      private function §6!k§(param1:LoginHandlerEvent) : void
      {
         this.§1!^§.removeEventListener(LoginHandlerEvent.§8"1§,this.§6!k§);
         this.§1!^§.removeEventListener(LoginHandlerEvent.ERROR,this.§4!9§);
         (§&!h§.§ u§ as §^"=§).§?P§.§'!L§();
         this.deActivate();
         this.activate(StateEpisodeSelection.STATE_NAME);
         this.§`!0§();
      }
      
      private function §4!9§(param1:LoginHandlerEvent) : void
      {
         this.§1!^§.removeEventListener(LoginHandlerEvent.§8"1§,this.§6!k§);
         this.§1!^§.removeEventListener(LoginHandlerEvent.ERROR,this.§4!9§);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§^"=§.§?A§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§&!h§.§ u§.§-"F§.§^X§())
                  {
                     this.§1"#§ = true;
                     this.§`!0§(this.§1"#§);
                     break;
                  }
            }
         }
      }
      
      private function §"H§(param1:String) : void
      {
         var _loc2_:MovieClip = new §2!3§.dynamic("Asteroid_Ad" + param1)();
         var _loc3_:§,"1§ = new §,"1§(_loc2_);
         (§&!h§.§ u§ as §^"=§).§?P§.§[";§.push(_loc3_);
      }
      
      private function §9"G§(param1:Number) : void
      {
         var _loc2_:§,"1§ = null;
         for each(_loc2_ in (§&!h§.§ u§ as §^"=§).§?P§.§[";§)
         {
            _loc2_.update(param1);
            if(!_loc2_.isAlive)
            {
               (§&!h§.§ u§ as §^"=§).§?P§.§[";§.splice((§&!h§.§ u§ as §^"=§).§?P§.§[";§.indexOf(_loc2_),1);
               (§4§.getItemByName("MovieClip_ChapterSelectionBG") as §^!d§).mClip.removeChild(_loc2_);
            }
         }
      }
      
      private function §[!o§(param1:String) : void
      {
         this.§"!k§ = ((§4§.container.getItemByName("EnterCode") as §1s§).getItemByName("TextField_TazosCodeEnter") as §?"%§).§]!`§();
         ((§4§.container.getItemByName("EnterCode") as §1s§).getItemByName("TextField_TazosCodeEnter") as §?"%§).setText(param1);
         if(param1 != "")
         {
            §4§.setText(param1,"TextField_TazosCodeEnter");
            (§4§.getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§.setSelection(0,param1.length);
            (§4§.getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0!;§);
         }
      }
      
      private function §&"0§(param1:§&!=§) : void
      {
         this.§[!o§(this.§'s§);
         this.§"!k§ = "";
      }
      
      private function §^!U§(param1:§&!=§) : void
      {
         if(§^4§.§<"B§.§+!P§() == "en")
         {
            this.§[!o§("Code already used");
         }
         else
         {
            this.§[!o§("Código ya utilizado");
         }
      }
      
      private function §&6§(param1:§&!=§) : void
      {
         if(§^4§.§<"B§.§+!P§() == "en")
         {
            this.§[!o§("Incorrect code");
         }
         else
         {
            this.§[!o§("Código incorrecto");
         }
      }
      
      private function §<9§(param1:§&!=§) : void
      {
         this.§[!o§(this.§'s§);
      }
      
      private function §0!;§(param1:MouseEvent) : void
      {
         (§4§.getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0!;§);
         if(this.§"!k§ == this.§=!@§ || this.§"!k§ == "Incorrect code" || this.§"!k§ == "Código incorrecto" || this.§"!k§ == "Code already used" || this.§"!k§ == "Código ya utilizado")
         {
            this.§"!k§ = "";
         }
         §4§.setText(this.§"!k§,"TextField_TazosCodeEnter");
      }
      
      public function get §'s§() : String
      {
         return this.§=!@§;
      }
      
      private function §[!$§(param1:LoginHandlerEvent) : void
      {
         this.§7!i§();
         this.§2!M§();
         this.§`!0§();
      }
      
      private function §7!i§() : void
      {
         if(this.§1"?§ == 0)
         {
            --this.§1"?§;
         }
         if(this.§1"?§ == 1)
         {
            ++this.§1"?§;
         }
         this.moveToChapter(this.§1"?§);
      }
      
      private function §6f§(param1:LoginHandlerEvent) : void
      {
         this.§"!k§ = "";
         this.§5N§();
         this.§`!0§();
      }
      
      private function §2!M§() : void
      {
         if(this.§2E§)
         {
            this.§2E§.stop();
         }
         this.§2E§ = §<K§.§<"B§.§`!c§(§4§.getItemByName("EnterCode"),{"y":this.§0!7§},null,§<X§,§<K§.§^!s§);
         this.§2E§.§5!Y§ = false;
         this.§2E§.play();
         §4§.getItemByName("Button_SubmitCode").setEnabled(true);
         §4§.getItemByName("TextField_TazosCodeEnter").setEnabled(true);
         §4§.getItemByName("Button_CodeInstructions").setEnabled(true);
      }
      
      private function §5N§(param1:Number = 0) : void
      {
         if(param1 == 0)
         {
            param1 = this.§;c§;
         }
         if(this.§2E§)
         {
            this.§2E§.stop();
         }
         this.§2E§ = §<K§.§<"B§.§`!c§(§4§.getItemByName("EnterCode"),{"y":param1},null,§<X§,§<K§.§^!s§);
         this.§2E§.§5!Y§ = false;
         this.§2E§.play();
         §4§.getItemByName("Button_SubmitCode").setEnabled(false);
         §4§.getItemByName("TextField_TazosCodeEnter").setEnabled(false);
         §4§.getItemByName("Button_CodeInstructions").setEnabled(false);
      }
      
      private function §@!M§(param1:Number = 0) : void
      {
         var _loc2_:MovieClip = null;
         if(param1 == 0)
         {
            if(!§40§.§1"$§.§ !0§)
            {
               param1 = this.§2!C§;
            }
            else
            {
               param1 = this.§-!t§;
            }
         }
         for each(_loc2_ in §;!#§)
         {
            §<K§.§<"B§.§`!c§(_loc2_,{"y":param1},null,§<X§,§<K§.§^!s§).play();
            §<K§.§<"B§.§`!c§(§4§.getItemByName("Button_Previous") as §3!A§,{"y":param1},null,§<X§,§<K§.§^!s§).play();
            §<K§.§<"B§.§`!c§(§4§.getItemByName("Button_Next") as §3!A§,{"y":param1},null,§<X§,§<K§.§^!s§).play();
         }
      }
      
      private function §3!M§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §`2§() : void
      {
         var _loc1_:TextField = §4§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §4§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §4§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         _loc2_.width = this.§3!M§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§=3§(_loc1_);
      }
      
      private function §=3§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      private function §9!C§(param1:MouseEvent) : void
      {
         var _loc2_:String = ((§4§.container.getItemByName("EnterCode") as §1s§).getItemByName("TextField_TazosCodeEnter") as §?"%§).§]!`§();
         var _loc3_:TextField = ((§4§.container.getItemByName("EnterCode") as §1s§).getItemByName("TextField_TazosCodeEnter") as §?"%§).§8!o§;
         if(_loc2_ == "" && param1.target != _loc3_)
         {
            this.§[!o§(this.§'s§);
         }
      }
   }
}
