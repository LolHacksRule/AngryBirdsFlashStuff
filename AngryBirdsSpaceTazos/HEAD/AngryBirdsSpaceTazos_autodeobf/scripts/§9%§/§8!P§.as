package §9%§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §%"%§.§2Z§;
   import §1!K§.§2!h§;
   import §1!k§.§2!^§;
   import §1!k§.§6!I§;
   import §1!k§.ColorFadeLayerEvent;
   import §1z§.§^!@§;
   import §1z§.§^"6§;
   import §26§.§3v§;
   import §4u§.§!H§;
   import §4u§.§1y§;
   import §5"@§.§0x§;
   import §5"@§.§1!N§;
   import §5"@§.§;x§;
   import §5"@§.LoginHandlerEvent;
   import §5"@§.§[!f§;
   import §7!6§.§@Y§;
   import §8Y§.PopupSidebarEvent;
   import §="<§.§#`§;
   import §="<§.§'!j§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import §>!x§.HighscoreSidebar;
   import §[z§.§;§;
   import §[z§.§;H§;
   import §]!x§.§&A§;
   import §]!x§.§]F§;
   import §`>§.§>7§;
   import §`>§.EpisodeButtonEvent;
   import §`>§.§`Z§;
   import com.rovio.assets.§1!h§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §8!P§ extends StateEpisodeSelection
   {
      
      private static const §4W§:Number = 0.5;
      
      private static const §"D§:Number = 82;
       
      
      private var §6!+§:Number;
      
      private var §null§:Number;
      
      private var §9!H§:Number;
      
      private var §?"A§:Number;
      
      private var §2q§:§,4§;
      
      protected var §40§:Number;
      
      private var §4v§:Boolean = false;
      
      private var §4r§:Boolean = false;
      
      private var §]<§:§[!f§;
      
      private var §4C§:String;
      
      private var §6"4§:String = "";
      
      private var §>!v§:§;H§;
      
      private var §7!F§:int = 2;
      
      private var §<"#§:String = "";
      
      private var §>!Z§:§0x§;
      
      protected var §[H§:§2!^§ = null;
      
      private var §#!p§:Boolean;
      
      public function §8!P§(param1:§^!@§, param2:§2Z§, param3:§0x§, param4:Boolean, param5:String = "ChapterSelectionState")
      {
         super(param1,param2,param4,param5);
         this.§>!v§ = new §;H§();
         this.§>!Z§ = param3;
      }
      
      override protected function init() : void
      {
         this.§[H§ = new §2!^§(0,0,0,1);
         super.init();
         this.§]<§ = new §[!f§();
         this.§@@§();
         (§2&§.§6o§ as §@T§).§56§.§5§ = new Vector.<§6!I§>();
         (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.maxChars = 12;
         var _loc1_:int = Math.floor(Math.random() * 3) + 2;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§'!8§("");
            _loc2_++;
         }
         var _loc3_:int = Math.floor(Math.random() * 2) + 1;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.§'!8§("2");
            _loc2_++;
         }
      }
      
      override protected function initChapterLayer() : void
      {
         var _loc3_:§^"6§ = null;
         this.§6!+§ = §%!A§.getItemByName("Button_Previous").y;
         this.§null§ = this.§6!+§ - §"D§;
         this.§9!H§ = §%!A§.getItemByName("EnterCode").y;
         this.§?"A§ = this.§9!H§ - §"D§;
         §"!G§ = §%!A§.getItemByName("Container_ChapterSelection") as §,"$§;
         §>!A§ = [];
         §#!N§ = [];
         var _loc1_:Number = 0;
         §?!&§ = new Sprite();
         §"!G§.mClip.addChild(§?!&§);
         var _loc2_:int = §#"=§.getEpisodeCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §#"=§.getEpisode(_loc2_);
            if(!_loc3_.§="7§)
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
         var _loc2_:§6!I§ = null;
         var _loc3_:§`Z§ = null;
         var _loc4_:int = 0;
         var _loc5_:§`Z§ = null;
         var _loc6_:§,4§ = null;
         super.activate(param1);
         for each(_loc2_ in (§2&§.§6o§ as §@T§).§56§.§5§)
         {
            (§%!A§.getItemByName("MovieClip_ChapterSelectionBG") as §'!j§).mClip.addChild(_loc2_);
         }
         this.§#!p§ = false;
         §%!A§.container.mClip.addChild(this.§[H§);
         this.§^,§();
         §2&§.§6o§.§^7§.§;!7§();
         (§2&§.§6o§ as §@T§).§56§.§,j§(true);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(true);
         this.updateLocalization();
         this.§>!Z§.addEventListener(LoginHandlerEvent.§,!!§,this.§`"0§);
         this.§>!Z§.addEventListener(LoginHandlerEvent.§["4§,this.§`"0§);
         this.§>!Z§.addEventListener(LoginHandlerEvent.§[!G§,this.§^z§);
         this.§]<§.addEventListener(§;x§.§=!8§,this.§]"1§);
         this.§>!v§.addEventListener(§;§.§&!C§,this.§"!h§);
         this.§>!v§.addEventListener(§;§.§2!R§,this.§[X§);
         this.§>!v§.addEventListener(§;§.§?"-§,this.§ x§);
         this.§>!v§.addEventListener(§;§.§=S§,this.§5"8§);
         (§2&§.§6o§ as §@T§).§56§.§-_§(true);
         §@T§.§,k§();
         this.§1!F§();
         if(this.§4C§)
         {
            _loc4_ = 1;
            for each(_loc5_ in §>!A§)
            {
               _loc3_ = §>!A§[(_loc4_ + (2 - this.§7!F§)) % 3];
               (_loc6_ = §"!t§.§3R§.§2m§(_loc5_,{
                  "x":_loc3_.§@y§,
                  "y":_loc3_.§2!P§,
                  "scaleX":_loc3_.§,"C§,
                  "scaleY":_loc3_.§,!D§,
                  "alpha":1
               },null,0.5,§"!t§.§+"%§)).play();
               _loc4_++;
            }
         }
         this.§4C§ = null;
         if(§1!N§.§,!<§.§=!9§)
         {
            this.§=!S§();
         }
         else
         {
            this.§0"9§();
         }
         (§2&§.§6o§ as §@T§).§56§.addEventListener(PopupSidebarEvent.§5R§,this.§?"9§);
         §0s§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
         (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.addEventListener(KeyboardEvent.KEY_DOWN,this.§""2§);
      }
      
      private function §?"9§(param1:PopupSidebarEvent) : void
      {
         var _loc2_:§`Z§ = null;
         var _loc3_:§,4§ = null;
         for each(_loc2_ in §>!A§)
         {
            _loc3_ = §"!t§.§3R§.§2m§(_loc2_,{"y":-500},null,0.5,§"!t§.§+"%§);
            _loc3_.play();
         }
         (§2&§.§6o§ as §@T§).§56§.§,j§(false);
         (§2&§.§6o§ as §@T§).§56§.§!!5§(true);
         if(!§1!N§.§,!<§.§=!9§)
         {
            (§2&§.§6o§ as §@T§).§56§.§`a§.§%"<§(false);
         }
         else
         {
            (§2&§.§6o§ as §@T§).§56§.§`a§.§+x§(false);
         }
         _loc3_.onComplete = this.§8!b§;
         this.§0"9§(this.§6!+§ + 130);
         this.§'#§(this.§6!+§ + 100);
      }
      
      private function §8!b§() : void
      {
         var _loc1_:§^!@§ = (§2&§.§6o§ as §@T§).§,"=§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§<l§));
         this.§4C§ = HighscoreSidebar.§<l§;
         § !I§(§="6§.STATE_NAME);
      }
      
      protected function §^,§() : void
      {
         if(this.§[H§ && !this.§#!p§)
         {
            this.§[H§.mouseEnabled = true;
            this.§#!p§ = true;
            this.§[H§.§6f§(1);
            this.§[H§.§[!1§(0,0.25);
            this.§[H§.addEventListener(ColorFadeLayerEvent.§4,§,this.§%`§);
         }
      }
      
      private function §%`§(param1:ColorFadeLayerEvent) : void
      {
         this.§[H§.mouseEnabled = false;
         this.§[H§.removeEventListener(ColorFadeLayerEvent.§4,§,this.§%`§);
      }
      
      private function §1!F§(param1:Boolean = false) : void
      {
         var _loc2_:§`Z§ = null;
         for each(_loc2_ in §>!A§)
         {
            _loc2_.refresh(param1);
         }
         this.§'#§();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§6!I§ = null;
         (§2&§.§6o§ as §@T§).§56§.removeEventListener(PopupSidebarEvent.§5R§,this.§?"9§);
         if(this.§[H§.parent == §%!A§.container.mClip)
         {
            §%!A§.container.mClip.removeChild(this.§[H§);
         }
         §%!A§.getItemByName("Button_Login0").setVisibility(false);
         §%!A§.getItemByName("Button_Login1").setVisibility(false);
         §%!A§.getItemByName("Button_Login2").setVisibility(false);
         this.§>!Z§.removeEventListener(LoginHandlerEvent.§["4§,this.§&!-§);
         this.§>!Z§.removeEventListener(LoginHandlerEvent.ERROR,this.§-"G§);
         this.§]<§.removeEventListener(§;x§.§=!8§,this.§]"1§);
         (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,!O§);
         this.§>!Z§.removeEventListener(LoginHandlerEvent.§,!!§,this.§`"0§);
         this.§>!Z§.removeEventListener(LoginHandlerEvent.§["4§,this.§`"0§);
         this.§>!Z§.removeEventListener(LoginHandlerEvent.§[!G§,this.§^z§);
         this.§>!v§.removeEventListener(§;§.§&!C§,this.§"!h§);
         this.§>!v§.removeEventListener(§;§.§2!R§,this.§[X§);
         this.§>!v§.removeEventListener(§;§.§?"-§,this.§ x§);
         this.§>!v§.removeEventListener(§;§.§=S§,this.§5"8§);
         §0s§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`L§);
         for each(_loc1_ in (§2&§.§6o§ as §@T§).§56§.§5§)
         {
            (§%!A§.getItemByName("MovieClip_ChapterSelectionBG") as §'!j§).mClip.removeChild(_loc1_);
         }
         (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§""2§);
         super.deActivate();
      }
      
      override public function updateLocalization() : void
      {
         if(this.§6"4§ == this.§<"#§)
         {
            this.§6"4§ = "";
         }
         super.updateLocalization();
         §!H§.§3R§.updateTextFields(§%!A§.container,"StateEpisodeSelection");
         if(!(§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,!O§);
         }
         this.§<"#§ = (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.text;
         this.§@@§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               this.§+!L§();
               break;
            case "CODE_FAQ":
               §3v§.§0!Z§("displayFAQ");
               break;
            case "LOGIN":
               §2&§.§6o§.§^7§.openPopup(new §2!h§(this.§>!Z§));
               break;
            case "NEXT":
               if(!§"!Y§)
               {
                  --this.§7!F§;
                  this.moveToChapter(this.§7!F§);
                  break;
               }
               break;
            case "PREVIOUS":
               if(!§"!Y§)
               {
                  ++this.§7!F§;
                  this.moveToChapter(this.§7!F§);
                  break;
               }
         }
      }
      
      private function §+!L§() : void
      {
         var _loc1_:String = ((§%!A§.container.getItemByName("EnterCode") as §,"$§).getItemByName("TextField_TazosCodeEnter") as §#`§).§%!E§();
         this.§>!v§.§+!L§(_loc1_);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§`Z§ = null;
         super.update(param1);
         this.§5!z§(param1);
         for each(_loc2_ in §>!A§)
         {
            _loc2_.update(param1);
         }
         if(!this.§4v§)
         {
            this.moveToChapter(this.§7!F§);
            this.§4v§ = true;
            §1y§.§<>§(§1y§.§,""§);
            if(this.§>!Z§.§=!A§())
            {
               this.§>!Z§.addEventListener(LoginHandlerEvent.§["4§,this.§&!-§);
               this.§>!Z§.addEventListener(LoginHandlerEvent.ERROR,this.§-"G§);
               this.§>!Z§.§3!Y§(this.§>!Z§.name,this.§>!Z§.password,true);
            }
         }
      }
      
      override protected function configureChapterButtons() : void
      {
         var _loc3_:MovieClip = null;
         this.scrollIndex = 2;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §>!A§.length)
         {
            _loc3_ = new §1!h§.§4!D§("Button_Dot")();
            if(_loc2_ == §5!,§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = 20 * _loc2_ - §>!A§.length * 20 / 2 + _loc3_.width / 2 + §@T§.§>v§ / 2;
            _loc3_.y = (§%!A§.getItemByName("Button_Previous") as §87§).y;
            this.§%!A§.addChild(_loc3_);
            §#!N§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc2_++;
         }
      }
      
      override protected function coverFlowScale() : void
      {
         §"!G§.getItemByName("Button_Login0").x = (§>!A§[0] as §`Z§).x;
         §"!G§.getItemByName("Button_Login0").y = (§>!A§[0] as §`Z§).y;
         §"!G§.getItemByName("Button_Login0").mClip.scaleX = (§>!A§[0] as §`Z§).§1K§();
         §"!G§.getItemByName("Button_Login0").mClip.scaleY = (§>!A§[0] as §`Z§).§1K§();
         §"!G§.getItemByName("Button_Login1").x = (§>!A§[1] as §`Z§).x;
         §"!G§.getItemByName("Button_Login1").y = (§>!A§[1] as §`Z§).y;
         §"!G§.getItemByName("Button_Login1").mClip.scaleX = (§>!A§[1] as §`Z§).§1K§();
         §"!G§.getItemByName("Button_Login1").mClip.scaleY = (§>!A§[1] as §`Z§).§1K§();
         §"!G§.getItemByName("Button_Login2").x = (§>!A§[2] as §`Z§).x;
         §"!G§.getItemByName("Button_Login2").y = (§>!A§[2] as §`Z§).y;
         §"!G§.getItemByName("Button_Login2").mClip.scaleX = (§>!A§[2] as §`Z§).§1K§();
         §"!G§.getItemByName("Button_Login2").mClip.scaleY = (§>!A§[2] as §`Z§).§1K§();
         if(!§1!N§.§,!<§.§=!9§)
         {
            §%!A§.getItemByName("Button_Login0").setVisibility(true);
            §%!A§.getItemByName("Button_Login1").setVisibility(true);
            §%!A§.getItemByName("Button_Login2").setVisibility(true);
         }
         else
         {
            §%!A§.getItemByName("Button_Login0").setVisibility(false);
            §%!A§.getItemByName("Button_Login1").setVisibility(false);
            §%!A§.getItemByName("Button_Login2").setVisibility(false);
         }
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < §>!A§.length)
         {
            this.§=!g§(§>!A§[_loc2_],_loc2_ - param1);
            _loc2_++;
         }
         this.§40§ = param1;
         this.§+[§();
      }
      
      private function §+[§() : void
      {
         var button:DisplayObject = null;
         var sortedButtons:Array = §>!A§.concat().sort(function(param1:DisplayObject, param2:DisplayObject):Number
         {
            return Math.abs(§>!A§.indexOf(param2) - §40§) - Math.abs(§>!A§.indexOf(param1) - §40§);
         });
         var index:int = 0;
         for each(button in sortedButtons)
         {
            §?!&§.setChildIndex(button,index++);
         }
         §"!G§.setObjectToFront(§"!G§.getItemByName("Button_Login0"));
         §"!G§.setObjectToFront(§"!G§.getItemByName("Button_Login1"));
         §"!G§.setObjectToFront(§"!G§.getItemByName("Button_Login2"));
      }
      
      protected function §=!g§(param1:§`Z§, param2:Number) : void
      {
         var _loc3_:int = §>!A§.indexOf(param1);
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
         return this.§40§;
      }
      
      override protected function updateEpisodeButtons() : void
      {
      }
      
      override protected function addEpisode(param1:String, param2:Number, param3:§^"6§ = null) : Number
      {
         var _loc4_:§`Z§ = null;
         if(param3 != null)
         {
            (_loc4_ = new §`Z§(param3)).addEventListener(MouseEvent.CLICK,this.onChapterClick);
            _loc4_.addEventListener(EpisodeButtonEvent.§-!c§,this.§-"=§);
            §?!&§.addChild(_loc4_);
            §>!A§.push(_loc4_);
            _loc4_.§@y§ = §%!A§.container.getItemByName("MovieClip_Star" + §>!A§.length).x;
            _loc4_.§2!P§ = §%!A§.container.getItemByName("MovieClip_Star" + §>!A§.length).y;
            _loc4_.§,"C§ = §%!A§.container.getItemByName("MovieClip_Star" + §>!A§.length).mClip.scaleX;
            _loc4_.§,!D§ = §%!A§.container.getItemByName("MovieClip_Star" + §>!A§.length).mClip.scaleY;
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
         if(!§"!Y§)
         {
            if(§>!A§.indexOf(param1.currentTarget) < this.§7!F§)
            {
               if(this.§7!F§ == 2 && §>!A§.indexOf(param1.currentTarget) == 1 || this.§7!F§ == 1)
               {
                  --this.§7!F§;
               }
               else
               {
                  ++this.§7!F§;
               }
            }
            if(§>!A§.indexOf(param1.currentTarget) > this.§7!F§)
            {
               if(this.§7!F§ == 0 && §>!A§.indexOf(param1.currentTarget) == 2)
               {
                  --this.§7!F§;
               }
               else
               {
                  ++this.§7!F§;
               }
            }
            if(§5!,§ != this.§7!F§)
            {
               this.moveToChapter(this.§7!F§);
            }
         }
      }
      
      protected function §-"=§(param1:EpisodeButtonEvent) : void
      {
         var _loc3_:§`Z§ = null;
         var _loc4_:int = 0;
         var _loc5_:§`Z§ = null;
         var _loc6_:§,4§ = null;
         this.§4C§ = param1.levelName;
         if(this.§4r§)
         {
            _loc4_ = 1;
            for each(_loc5_ in §>!A§)
            {
               _loc3_ = §>!A§[(_loc4_ + (2 - this.§7!F§)) % 3];
               (_loc6_ = §"!t§.§3R§.§2m§(_loc5_,{
                  "x":(_loc3_.§@y§ - param1.x) * 3,
                  "y":(_loc3_.§2!P§ - param1.y) * 3,
                  "scaleX":_loc3_.§,"C§ * 3,
                  "scaleY":_loc3_.§,!D§ * 3,
                  "alpha":0
               },null,0.5,§"!t§.§+"%§)).play();
               _loc4_++;
            }
            (§2&§.§6o§ as §@T§).§56§.§,j§(false);
            (§2&§.§6o§ as §@T§).§56§.§!!5§(true);
            _loc6_.onComplete = this.§"!7§;
         }
         else if(!§1!N§.§,!<§.§=!9§)
         {
            §2&§.§6o§.§^7§.openPopup(new §2!h§(this.§>!Z§));
         }
         else if(§1!N§.§,!<§.§=!9§ && !§1!N§.§,!<§.verified)
         {
            this.§9y§();
         }
         else if(§1!N§.§8![§(param1.levelName))
         {
            _loc4_ = 1;
            for each(_loc5_ in §>!A§)
            {
               _loc3_ = §>!A§[(_loc4_ + (2 - this.§7!F§)) % 3];
               (_loc6_ = §"!t§.§3R§.§2m§(_loc5_,{
                  "x":(_loc3_.§@y§ - param1.x) * 3,
                  "y":(_loc3_.§2!P§ - param1.y) * 3,
                  "scaleX":_loc3_.§,"C§ * 3,
                  "scaleY":_loc3_.§,!D§ * 3,
                  "alpha":0
               },null,0.5,§"!t§.§+"%§)).play();
               _loc4_++;
            }
            (§2&§.§6o§ as §@T§).§56§.§,j§(false);
            (§2&§.§6o§ as §@T§).§56§.§!!5§(true);
            _loc6_.onComplete = this.§"!7§;
            this.§0"9§(this.§6!+§ + 130);
            this.§'#§(this.§6!+§ + 100);
         }
         else
         {
            this.§=!^§();
         }
      }
      
      private function §"!7§() : void
      {
         this.§5!a§(this.§4C§);
      }
      
      private function §5!a§(param1:String) : void
      {
         §#"=§.loadLevel(§#"=§.getValidLevelId(param1));
         § !I§(§^! §.STATE_NAME);
      }
      
      private function §=!^§() : void
      {
         §2&§.§6o§.§^7§.openPopup(new §&A§(§>7§.LEVEL_LOCKED,§&A§.§?!d§));
      }
      
      private function §9y§() : void
      {
         this.§]<§.§9y§(§1!N§.§,!<§.id);
      }
      
      private function §]"1§(param1:§;x§) : void
      {
         if(§1!N§.§,!<§.§=!9§ && !§1!N§.§,!<§.verified)
         {
            §2&§.§6o§.§^7§.openPopup(new §]F§());
         }
         else if(this.§4C§ && §1!N§.§8![§(this.§4C§) || this.§4r§)
         {
            this.§5!a§(this.§4C§);
            this.§4C§ = null;
         }
         else
         {
            this.§=!^§();
         }
      }
      
      override protected function moveToChapter(param1:int) : void
      {
         var _loc2_:§`Z§ = null;
         var _loc4_:§`Z§ = null;
         if(this.§7!F§ < 0)
         {
            this.scrollIndex = 3;
            this.§7!F§ = 2;
         }
         if(this.§7!F§ > 2)
         {
            this.scrollIndex = -1;
            this.§7!F§ = 0;
         }
         param1 = this.§7!F§;
         §"!Y§ = true;
         §5!,§ = param1;
         §5l§ = §"!t§.§3R§.§2m§(this,{"scrollIndex":param1},null,0.8,§"!t§.§]!o§);
         §5l§.onComplete = this.onChapterTweenComplete;
         §5l§.play();
         var _loc3_:int = 1;
         for each(_loc4_ in §>!A§)
         {
            _loc2_ = §>!A§[(_loc3_ + (2 - param1)) % 3];
            §"!t§.§3R§.§2m§(_loc4_,{
               "x":_loc2_.§@y§,
               "y":_loc2_.§2!P§,
               "scaleX":_loc2_.§,"C§,
               "scaleY":_loc2_.§,!D§
            },null,1,§"!t§.§+"%§).play();
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
         while(_loc1_ < §#!N§.length)
         {
            if(_loc1_ > this.§40§ - 0.5 && _loc1_ < this.§40§ + 0.5)
            {
               §#!N§[2 - _loc1_].gotoAndStop("Selected");
            }
            else
            {
               §#!N§[2 - _loc1_].gotoAndStop("UnSelected");
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
      
      private function §&!-§(param1:LoginHandlerEvent) : void
      {
         this.§>!Z§.removeEventListener(LoginHandlerEvent.§["4§,this.§&!-§);
         this.§>!Z§.removeEventListener(LoginHandlerEvent.ERROR,this.§-"G§);
         (§2&§.§6o§ as §@T§).§56§.§&&§();
         this.deActivate();
         this.activate(StateEpisodeSelection.STATE_NAME);
         this.§1!F§();
      }
      
      private function §-"G§(param1:LoginHandlerEvent) : void
      {
         this.§>!Z§.removeEventListener(LoginHandlerEvent.§["4§,this.§&!-§);
         this.§>!Z§.removeEventListener(LoginHandlerEvent.ERROR,this.§-"G§);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§@T§.§2§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§2&§.§6o§.§^7§.§"r§())
                  {
                     this.§4r§ = true;
                     this.§1!F§(this.§4r§);
                     break;
                  }
            }
         }
      }
      
      private function §""2§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               this.§+!L§();
         }
      }
      
      private function §'!8§(param1:String) : void
      {
         var _loc2_:MovieClip = new §1!h§.§4!D§("Asteroid_Ad" + param1)();
         var _loc3_:§6!I§ = new §6!I§(_loc2_);
         (§2&§.§6o§ as §@T§).§56§.§5§.push(_loc3_);
      }
      
      private function §5!z§(param1:Number) : void
      {
         var _loc2_:§6!I§ = null;
         for each(_loc2_ in (§2&§.§6o§ as §@T§).§56§.§5§)
         {
            _loc2_.update(param1);
            if(!_loc2_.isAlive)
            {
               (§2&§.§6o§ as §@T§).§56§.§5§.splice((§2&§.§6o§ as §@T§).§56§.§5§.indexOf(_loc2_),1);
               (§%!A§.getItemByName("MovieClip_ChapterSelectionBG") as §'!j§).mClip.removeChild(_loc2_);
            }
         }
      }
      
      private function §<!#§(param1:String) : void
      {
         this.§6"4§ = ((§%!A§.container.getItemByName("EnterCode") as §,"$§).getItemByName("TextField_TazosCodeEnter") as §#`§).§%!E§();
         ((§%!A§.container.getItemByName("EnterCode") as §,"$§).getItemByName("TextField_TazosCodeEnter") as §#`§).setText(param1);
         if(param1 != "")
         {
            §%!A§.setText(param1,"TextField_TazosCodeEnter");
            (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.setSelection(0,param1.length);
            (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.addEventListener(MouseEvent.MOUSE_DOWN,this.§,!O§);
         }
      }
      
      private function §"!h§(param1:§;§) : void
      {
         this.§<!#§(this.§'o§);
         this.§6"4§ = "";
      }
      
      private function §[X§(param1:§;§) : void
      {
         if(§!H§.§3R§.§6"-§() == "en")
         {
            this.§<!#§("Code already used");
         }
         else
         {
            this.§<!#§("Código ya utilizado");
         }
      }
      
      private function § x§(param1:§;§) : void
      {
         if(§!H§.§3R§.§6"-§() == "en")
         {
            this.§<!#§("Incorrect code");
         }
         else
         {
            this.§<!#§("Código incorrecto");
         }
      }
      
      private function §5"8§(param1:§;§) : void
      {
         this.§<!#§(this.§'o§);
      }
      
      private function §,!O§(param1:MouseEvent) : void
      {
         (§%!A§.getItemByName("TextField_TazosCodeEnter") as §#`§).§';§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§,!O§);
         if(this.§6"4§ == this.§<"#§ || this.§6"4§ == "Incorrect code" || this.§6"4§ == "Código incorrecto" || this.§6"4§ == "Code already used" || this.§6"4§ == "Código ya utilizado")
         {
            this.§6"4§ = "";
         }
         §%!A§.setText(this.§6"4§,"TextField_TazosCodeEnter");
      }
      
      public function get §'o§() : String
      {
         return this.§<"#§;
      }
      
      private function §`"0§(param1:LoginHandlerEvent) : void
      {
         this.§&o§();
         this.§=!S§();
         this.§1!F§();
      }
      
      private function §&o§() : void
      {
         if(this.§7!F§ == 0)
         {
            --this.§7!F§;
         }
         if(this.§7!F§ == 1)
         {
            ++this.§7!F§;
         }
         this.moveToChapter(this.§7!F§);
      }
      
      private function §^z§(param1:LoginHandlerEvent) : void
      {
         this.§6"4§ = "";
         this.§0"9§();
         this.§1!F§();
      }
      
      private function §=!S§() : void
      {
         if(this.§2q§)
         {
            this.§2q§.stop();
         }
         this.§2q§ = §"!t§.§3R§.§2m§(§%!A§.getItemByName("EnterCode"),{"y":this.§?"A§},null,§4W§,§"!t§.§+"%§);
         this.§2q§.§3"&§ = false;
         this.§2q§.play();
         §%!A§.getItemByName("Button_SubmitCode").setEnabled(true);
         §%!A§.getItemByName("TextField_TazosCodeEnter").setEnabled(true);
         §%!A§.getItemByName("Button_CodeInstructions").setEnabled(true);
      }
      
      private function §0"9§(param1:Number = 0) : void
      {
         if(param1 == 0)
         {
            param1 = this.§9!H§;
         }
         if(this.§2q§)
         {
            this.§2q§.stop();
         }
         this.§2q§ = §"!t§.§3R§.§2m§(§%!A§.getItemByName("EnterCode"),{"y":param1},null,§4W§,§"!t§.§+"%§);
         this.§2q§.§3"&§ = false;
         this.§2q§.play();
         §%!A§.getItemByName("Button_SubmitCode").setEnabled(false);
         §%!A§.getItemByName("TextField_TazosCodeEnter").setEnabled(false);
         §%!A§.getItemByName("Button_CodeInstructions").setEnabled(false);
         this.§6"4§ = "";
      }
      
      private function §'#§(param1:Number = 0) : void
      {
         var _loc2_:MovieClip = null;
         if(param1 == 0)
         {
            if(!§1!N§.§,!<§.§=!9§)
            {
               param1 = this.§6!+§;
            }
            else
            {
               param1 = this.§null§;
            }
         }
         for each(_loc2_ in §#!N§)
         {
            §"!t§.§3R§.§2m§(_loc2_,{"y":param1},null,§4W§,§"!t§.§+"%§).play();
            §"!t§.§3R§.§2m§(§%!A§.getItemByName("Button_Previous") as §87§,{"y":param1},null,§4W§,§"!t§.§+"%§).play();
            §"!t§.§3R§.§2m§(§%!A§.getItemByName("Button_Next") as §87§,{"y":param1},null,§4W§,§"!t§.§+"%§).play();
         }
      }
      
      private function §'5§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      public function §@@§() : void
      {
         var _loc1_:TextField = §%!A§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §%!A§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §%!A§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         _loc2_.width = this.§'5§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§-"C§(_loc1_);
      }
      
      private function §-"C§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      private function §`L§(param1:MouseEvent) : void
      {
         var _loc2_:String = ((§%!A§.container.getItemByName("EnterCode") as §,"$§).getItemByName("TextField_TazosCodeEnter") as §#`§).§%!E§();
         var _loc3_:TextField = ((§%!A§.container.getItemByName("EnterCode") as §,"$§).getItemByName("TextField_TazosCodeEnter") as §#`§).§';§;
         if(_loc2_ == "" && param1.target != _loc3_)
         {
            this.§<!#§(this.§'o§);
         }
      }
   }
}
