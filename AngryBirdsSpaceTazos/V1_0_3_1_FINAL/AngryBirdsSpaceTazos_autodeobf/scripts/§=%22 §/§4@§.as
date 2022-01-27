package §=" §
{
   import §!!r§.§ !N§;
   import §!!r§.§<l§;
   import §!"0§.§`"F§;
   import §!"4§.§0A§;
   import §!"4§.§;";§;
   import §!"4§.LoginHandlerEvent;
   import §!"4§.§]<§;
   import §!"4§.§catch§;
   import §&e§.§4!"§;
   import §&e§.§<x§;
   import §&e§.EpisodeButtonEvent;
   import §'!n§.§1!x§;
   import §'!n§.§[!I§;
   import §+"C§.§3'§;
   import §+"C§.§["G§;
   import §,!7§.§%!J§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §,!7§.§8,§;
   import §1!C§.PopupSidebarEvent;
   import §4!Z§.§%^§;
   import §4",§.§,!j§;
   import §4",§.§2!S§;
   import §6"A§.HighscoreSidebar;
   import §6B§.§?"2§;
   import §71§.§;l§;
   import §9!L§.§8u§;
   import §9!L§.§="!§;
   import §9!L§.ColorFadeLayerEvent;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import com.rovio.assets.§>!;§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextLineMetrics;
   import flash.ui.Keyboard;
   
   public class §4@§ extends StateEpisodeSelection
   {
      
      private static const §;"D§:Number = 0.5;
      
      private static const §5!"§:Number = 82;
       
      
      private var §^F§:Number;
      
      private var §-G§:Number;
      
      private var §#D§:Number;
      
      private var §"!@§:Number;
      
      private var §[Q§:§15§;
      
      protected var §]!p§:Number;
      
      private var §,!!§:Boolean = false;
      
      private var §+-§:Boolean = false;
      
      private var §=!@§:§0A§;
      
      private var §;>§:String;
      
      private var §?";§:String = "";
      
      private var §7-§:§ !N§;
      
      private var §0L§:int = 2;
      
      private var §7E§:String = "";
      
      private var §^§:§]<§;
      
      protected var §@!3§:§8u§ = null;
      
      private var §"8§:Boolean;
      
      public function §4@§(param1:§,!j§, param2:§;l§, param3:§]<§, param4:Boolean, param5:String = "ChapterSelectionState")
      {
         super(param1,param2,param4,param5);
         this.§7-§ = new § !N§();
         this.§^§ = param3;
      }
      
      override protected function init() : void
      {
         this.§@!3§ = new §8u§(0,0,0,1);
         super.init();
         this.§=!@§ = new §0A§();
         this.§0!k§();
         (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§ = new Vector.<§="!§>();
         (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.maxChars = 12;
         var _loc1_:int = Math.floor(Math.random() * 3) + 2;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§[!g§("");
            _loc2_++;
         }
         var _loc3_:int = Math.floor(Math.random() * 2) + 1;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.§[!g§("2");
            _loc2_++;
         }
      }
      
      override protected function initChapterLayer() : void
      {
         var _loc3_:§2!S§ = null;
         this.§^F§ = §6!J§.getItemByName("Button_Previous").y;
         this.§-G§ = this.§^F§ - §5!"§;
         this.§#D§ = §6!J§.getItemByName("EnterCode").y;
         this.§"!@§ = this.§#D§ - §5!"§;
         §&!9§ = §6!J§.getItemByName("Container_ChapterSelection") as §5!k§;
         §]!b§ = [];
         §%"1§ = [];
         var _loc1_:Number = 0;
         §3;§ = new Sprite();
         §&!9§.mClip.addChild(§3;§);
         var _loc2_:int = §]m§.getEpisodeCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §]m§.getEpisode(_loc2_);
            if(!_loc3_.§^0§)
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
         var _loc2_:§="!§ = null;
         var _loc3_:§4!"§ = null;
         var _loc4_:int = 0;
         var _loc5_:§4!"§ = null;
         var _loc6_:§15§ = null;
         super.activate(param1);
         for each(_loc2_ in (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§)
         {
            (§6!J§.getItemByName("MovieClip_ChapterSelectionBG") as §8,§).mClip.addChild(_loc2_);
         }
         this.§"8§ = false;
         §6!J§.container.mClip.addChild(this.§@!3§);
         this.§else§();
         §&"<§.§<!7§.§1"0§.§`x§();
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(true);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(true);
         this.updateLocalization();
         this.§^§.addEventListener(LoginHandlerEvent.§7t§,this.§'b§);
         this.§^§.addEventListener(LoginHandlerEvent.§=!,§,this.§'b§);
         this.§^§.addEventListener(LoginHandlerEvent.§-s§,this.§`I§);
         this.§=!@§.addEventListener(§catch§.§=S§,this.§=&§);
         this.§7-§.addEventListener(§<l§.§'"#§,this.§6Z§);
         this.§7-§.addEventListener(§<l§.§7#§,this.§`!V§);
         this.§7-§.addEventListener(§<l§.§0y§,this.§?T§);
         this.§7-§.addEventListener(§<l§.§9!E§,this.§0!d§);
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"A§(true);
         §["!§.§>X§();
         this.§ !5§();
         if(this.§;>§)
         {
            _loc4_ = 1;
            for each(_loc5_ in §]!b§)
            {
               _loc3_ = §]!b§[(_loc4_ + (2 - this.§0L§)) % 3];
               (_loc6_ = §@F§.§8!J§.§&6§(_loc5_,{
                  "x":_loc3_.§,!8§,
                  "y":_loc3_.§[p§,
                  "scaleX":_loc3_.§3s§,
                  "scaleY":_loc3_.§6" §,
                  "alpha":1
               },null,0.5,§@F§.§=p§)).play();
               _loc4_++;
            }
         }
         this.§;>§ = null;
         if(§;";§.§3U§.§1T§)
         {
            this.§1z§();
         }
         else
         {
            this.§"!M§();
         }
         (§&"<§.§<!7§ as §["!§).§^"<§.addEventListener(PopupSidebarEvent.§9!?§,this.§4"H§);
         §49§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
         (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.addEventListener(KeyboardEvent.KEY_DOWN,this.§["'§);
      }
      
      private function §4"H§(param1:PopupSidebarEvent) : void
      {
         var _loc2_:§4!"§ = null;
         var _loc3_:§15§ = null;
         for each(_loc2_ in §]!b§)
         {
            _loc3_ = §@F§.§8!J§.§&6§(_loc2_,{"y":-500},null,0.5,§@F§.§=p§);
            _loc3_.play();
         }
         (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(false);
         (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(true);
         if(!§;";§.§3U§.§1T§)
         {
            (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§4[§(false);
         }
         else
         {
            (§&"<§.§<!7§ as §["!§).§^"<§.§>"0§.§ g§(false);
         }
         _loc3_.onComplete = this.§0!G§;
         this.§"!M§(this.§^F§ + 130);
         this.set(this.§^F§ + 100);
      }
      
      private function §0!G§() : void
      {
         var _loc1_:§,!j§ = (§&"<§.§<!7§ as §["!§).§;!u§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§-R§));
         this.§;>§ = HighscoreSidebar.§-R§;
         §'Q§(§%",§.STATE_NAME);
      }
      
      protected function §else§() : void
      {
         if(this.§@!3§ && !this.§"8§)
         {
            this.§@!3§.mouseEnabled = true;
            this.§"8§ = true;
            this.§@!3§.§"!i§(1);
            this.§@!3§.§<"&§(0,0.25);
            this.§@!3§.addEventListener(ColorFadeLayerEvent.§+[§,this.§3?§);
         }
      }
      
      private function §3?§(param1:ColorFadeLayerEvent) : void
      {
         this.§@!3§.mouseEnabled = false;
         this.§@!3§.removeEventListener(ColorFadeLayerEvent.§+[§,this.§3?§);
      }
      
      private function § !5§(param1:Boolean = false) : void
      {
         var _loc2_:§4!"§ = null;
         for each(_loc2_ in §]!b§)
         {
            _loc2_.refresh(param1);
         }
         this.set();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§="!§ = null;
         (§&"<§.§<!7§ as §["!§).§^"<§.removeEventListener(PopupSidebarEvent.§9!?§,this.§4"H§);
         if(this.§@!3§.parent == §6!J§.container.mClip)
         {
            §6!J§.container.mClip.removeChild(this.§@!3§);
         }
         §6!J§.getItemByName("Button_Login0").setVisibility(false);
         §6!J§.getItemByName("Button_Login1").setVisibility(false);
         §6!J§.getItemByName("Button_Login2").setVisibility(false);
         this.§^§.removeEventListener(LoginHandlerEvent.§=!,§,this.§^!T§);
         this.§^§.removeEventListener(LoginHandlerEvent.ERROR,this.§@^§);
         this.§=!@§.removeEventListener(§catch§.§=S§,this.§=&§);
         (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"v§);
         this.§^§.removeEventListener(LoginHandlerEvent.§7t§,this.§'b§);
         this.§^§.removeEventListener(LoginHandlerEvent.§=!,§,this.§'b§);
         this.§^§.removeEventListener(LoginHandlerEvent.§-s§,this.§`I§);
         this.§7-§.removeEventListener(§<l§.§'"#§,this.§6Z§);
         this.§7-§.removeEventListener(§<l§.§7#§,this.§`!V§);
         this.§7-§.removeEventListener(§<l§.§0y§,this.§?T§);
         this.§7-§.removeEventListener(§<l§.§9!E§,this.§0!d§);
         §49§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!u§);
         for each(_loc1_ in (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§)
         {
            (§6!J§.getItemByName("MovieClip_ChapterSelectionBG") as §8,§).mClip.removeChild(_loc1_);
         }
         (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.removeEventListener(KeyboardEvent.KEY_DOWN,this.§["'§);
         super.deActivate();
      }
      
      override public function updateLocalization() : void
      {
         if(this.§?";§ == this.§7E§)
         {
            this.§?";§ = "";
         }
         super.updateLocalization();
         §[!I§.§8!J§.updateTextFields(§6!J§.container,"StateEpisodeSelection");
         if(!(§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"v§);
         }
         this.§7E§ = (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.text;
         this.§0!k§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               this.§ ";§();
               break;
            case "CODE_FAQ":
               §%^§.§]"3§("displayFAQ");
               break;
            case "LOGIN":
               §&"<§.§<!7§.§1"0§.openPopup(new §`"F§(this.§^§));
               break;
            case "NEXT":
               if(!§%,§)
               {
                  --this.§0L§;
                  this.moveToChapter(this.§0L§);
                  break;
               }
               break;
            case "PREVIOUS":
               if(!§%,§)
               {
                  ++this.§0L§;
                  this.moveToChapter(this.§0L§);
                  break;
               }
         }
      }
      
      private function § ";§() : void
      {
         var _loc1_:String = ((§6!J§.container.getItemByName("EnterCode") as §5!k§).getItemByName("TextField_TazosCodeEnter") as §2a§).§;!E§();
         this.§7-§.§ ";§(_loc1_);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§4!"§ = null;
         super.update(param1);
         this.§5&§(param1);
         for each(_loc2_ in §]!b§)
         {
            _loc2_.update(param1);
         }
         if(!this.§,!!§)
         {
            this.moveToChapter(this.§0L§);
            this.§,!!§ = true;
            §1!x§.§6"6§(§1!x§.§[!X§);
            if(this.§^§.§@"@§())
            {
               this.§^§.addEventListener(LoginHandlerEvent.§=!,§,this.§^!T§);
               this.§^§.addEventListener(LoginHandlerEvent.ERROR,this.§@^§);
               this.§^§.§["§(this.§^§.name,this.§^§.password,true);
            }
         }
      }
      
      override protected function configureChapterButtons() : void
      {
         var _loc3_:MovieClip = null;
         this.scrollIndex = 2;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §]!b§.length)
         {
            _loc3_ = new §>!;§.§+!u§("Button_Dot")();
            if(_loc2_ == §%"0§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = 20 * _loc2_ - §]!b§.length * 20 / 2 + _loc3_.width / 2 + §["!§.§35§ / 2;
            _loc3_.y = (§6!J§.getItemByName("Button_Previous") as §%!J§).y;
            this.§6!J§.addChild(_loc3_);
            §%"1§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc2_++;
         }
      }
      
      override protected function coverFlowScale() : void
      {
         §&!9§.getItemByName("Button_Login0").x = (§]!b§[0] as §4!"§).x;
         §&!9§.getItemByName("Button_Login0").y = (§]!b§[0] as §4!"§).y;
         §&!9§.getItemByName("Button_Login0").mClip.scaleX = (§]!b§[0] as §4!"§).§>i§();
         §&!9§.getItemByName("Button_Login0").mClip.scaleY = (§]!b§[0] as §4!"§).§>i§();
         §&!9§.getItemByName("Button_Login1").x = (§]!b§[1] as §4!"§).x;
         §&!9§.getItemByName("Button_Login1").y = (§]!b§[1] as §4!"§).y;
         §&!9§.getItemByName("Button_Login1").mClip.scaleX = (§]!b§[1] as §4!"§).§>i§();
         §&!9§.getItemByName("Button_Login1").mClip.scaleY = (§]!b§[1] as §4!"§).§>i§();
         §&!9§.getItemByName("Button_Login2").x = (§]!b§[2] as §4!"§).x;
         §&!9§.getItemByName("Button_Login2").y = (§]!b§[2] as §4!"§).y;
         §&!9§.getItemByName("Button_Login2").mClip.scaleX = (§]!b§[2] as §4!"§).§>i§();
         §&!9§.getItemByName("Button_Login2").mClip.scaleY = (§]!b§[2] as §4!"§).§>i§();
         if(!§;";§.§3U§.§1T§)
         {
            §6!J§.getItemByName("Button_Login0").setVisibility(true);
            §6!J§.getItemByName("Button_Login1").setVisibility(true);
            §6!J§.getItemByName("Button_Login2").setVisibility(true);
         }
         else
         {
            §6!J§.getItemByName("Button_Login0").setVisibility(false);
            §6!J§.getItemByName("Button_Login1").setVisibility(false);
            §6!J§.getItemByName("Button_Login2").setVisibility(false);
         }
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < §]!b§.length)
         {
            this.§7%§(§]!b§[_loc2_],_loc2_ - param1);
            _loc2_++;
         }
         this.§]!p§ = param1;
         this.§9!,§();
      }
      
      private function §9!,§() : void
      {
         var button:DisplayObject = null;
         var sortedButtons:Array = §]!b§.concat().sort(function(param1:DisplayObject, param2:DisplayObject):Number
         {
            return Math.abs(§]!b§.indexOf(param2) - §]!p§) - Math.abs(§]!b§.indexOf(param1) - §]!p§);
         });
         var index:int = 0;
         for each(button in sortedButtons)
         {
            §3;§.setChildIndex(button,index++);
         }
         §&!9§.setObjectToFront(§&!9§.getItemByName("Button_Login0"));
         §&!9§.setObjectToFront(§&!9§.getItemByName("Button_Login1"));
         §&!9§.setObjectToFront(§&!9§.getItemByName("Button_Login2"));
      }
      
      protected function §7%§(param1:§4!"§, param2:Number) : void
      {
         var _loc3_:int = §]!b§.indexOf(param1);
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
         return this.§]!p§;
      }
      
      override protected function updateEpisodeButtons() : void
      {
      }
      
      override protected function addEpisode(param1:String, param2:Number, param3:§2!S§ = null) : Number
      {
         var _loc4_:§4!"§ = null;
         if(param3 != null)
         {
            (_loc4_ = new §4!"§(param3)).addEventListener(MouseEvent.CLICK,this.onChapterClick);
            _loc4_.addEventListener(EpisodeButtonEvent.§9Q§,this.§]_§);
            §3;§.addChild(_loc4_);
            §]!b§.push(_loc4_);
            _loc4_.§,!8§ = §6!J§.container.getItemByName("MovieClip_Star" + §]!b§.length).x;
            _loc4_.§[p§ = §6!J§.container.getItemByName("MovieClip_Star" + §]!b§.length).y;
            _loc4_.§3s§ = §6!J§.container.getItemByName("MovieClip_Star" + §]!b§.length).mClip.scaleX;
            _loc4_.§6" § = §6!J§.container.getItemByName("MovieClip_Star" + §]!b§.length).mClip.scaleY;
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
         if(!§%,§)
         {
            if(§]!b§.indexOf(param1.currentTarget) < this.§0L§)
            {
               if(this.§0L§ == 2 && §]!b§.indexOf(param1.currentTarget) == 1 || this.§0L§ == 1)
               {
                  --this.§0L§;
               }
               else
               {
                  ++this.§0L§;
               }
            }
            if(§]!b§.indexOf(param1.currentTarget) > this.§0L§)
            {
               if(this.§0L§ == 0 && §]!b§.indexOf(param1.currentTarget) == 2)
               {
                  --this.§0L§;
               }
               else
               {
                  ++this.§0L§;
               }
            }
            if(§%"0§ != this.§0L§)
            {
               this.moveToChapter(this.§0L§);
            }
         }
      }
      
      protected function §]_§(param1:EpisodeButtonEvent) : void
      {
         var _loc3_:§4!"§ = null;
         var _loc4_:int = 0;
         var _loc5_:§4!"§ = null;
         var _loc6_:§15§ = null;
         this.§;>§ = param1.levelName;
         if(this.§+-§)
         {
            _loc4_ = 1;
            for each(_loc5_ in §]!b§)
            {
               _loc3_ = §]!b§[(_loc4_ + (2 - this.§0L§)) % 3];
               (_loc6_ = §@F§.§8!J§.§&6§(_loc5_,{
                  "x":(_loc3_.§,!8§ - param1.x) * 3,
                  "y":(_loc3_.§[p§ - param1.y) * 3,
                  "scaleX":_loc3_.§3s§ * 3,
                  "scaleY":_loc3_.§6" § * 3,
                  "alpha":0
               },null,0.5,§@F§.§=p§)).play();
               _loc4_++;
            }
            (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(false);
            (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(true);
            _loc6_.onComplete = this.§ " §;
         }
         else if(!§;";§.§3U§.§1T§)
         {
            §&"<§.§<!7§.§1"0§.openPopup(new §`"F§(this.§^§));
         }
         else if(§;";§.§3U§.§1T§ && !§;";§.§3U§.verified)
         {
            this.§"! §();
         }
         else if(§;";§.§9I§(param1.levelName))
         {
            _loc4_ = 1;
            for each(_loc5_ in §]!b§)
            {
               _loc3_ = §]!b§[(_loc4_ + (2 - this.§0L§)) % 3];
               (_loc6_ = §@F§.§8!J§.§&6§(_loc5_,{
                  "x":(_loc3_.§,!8§ - param1.x) * 3,
                  "y":(_loc3_.§[p§ - param1.y) * 3,
                  "scaleX":_loc3_.§3s§ * 3,
                  "scaleY":_loc3_.§6" § * 3,
                  "alpha":0
               },null,0.5,§@F§.§=p§)).play();
               _loc4_++;
            }
            (§&"<§.§<!7§ as §["!§).§^"<§.§^"@§(false);
            (§&"<§.§<!7§ as §["!§).§^"<§.§`!4§(true);
            _loc6_.onComplete = this.§ " §;
            this.§"!M§(this.§^F§ + 130);
            this.set(this.§^F§ + 100);
         }
         else
         {
            this.§,!N§();
         }
      }
      
      private function § " §() : void
      {
         this.§8!k§(this.§;>§);
      }
      
      private function §8!k§(param1:String) : void
      {
         §]m§.loadLevel(§]m§.getValidLevelId(param1));
         §'Q§(§ Q§.STATE_NAME);
      }
      
      private function §,!N§() : void
      {
         §&"<§.§<!7§.§1"0§.openPopup(new §["G§(§<x§.LEVEL_LOCKED,§["G§.§[!r§));
      }
      
      private function §"! §() : void
      {
         this.§=!@§.§"! §(§;";§.§3U§.id);
      }
      
      private function §=&§(param1:§catch§) : void
      {
         if(§;";§.§3U§.§1T§ && !§;";§.§3U§.verified)
         {
            §&"<§.§<!7§.§1"0§.openPopup(new §3'§());
         }
         else if(this.§;>§ && §;";§.§9I§(this.§;>§) || this.§+-§)
         {
            this.§8!k§(this.§;>§);
            this.§;>§ = null;
         }
         else
         {
            this.§,!N§();
         }
      }
      
      override protected function moveToChapter(param1:int) : void
      {
         var _loc2_:§4!"§ = null;
         var _loc4_:§4!"§ = null;
         if(this.§0L§ < 0)
         {
            this.scrollIndex = 3;
            this.§0L§ = 2;
         }
         if(this.§0L§ > 2)
         {
            this.scrollIndex = -1;
            this.§0L§ = 0;
         }
         param1 = this.§0L§;
         §%,§ = true;
         §%"0§ = param1;
         §4!0§ = §@F§.§8!J§.§&6§(this,{"scrollIndex":param1},null,0.8,§@F§.§%<§);
         §4!0§.onComplete = this.onChapterTweenComplete;
         §4!0§.play();
         var _loc3_:int = 1;
         for each(_loc4_ in §]!b§)
         {
            _loc2_ = §]!b§[(_loc3_ + (2 - param1)) % 3];
            §@F§.§8!J§.§&6§(_loc4_,{
               "x":_loc2_.§,!8§,
               "y":_loc2_.§[p§,
               "scaleX":_loc2_.§3s§,
               "scaleY":_loc2_.§6" §
            },null,1,§@F§.§=p§).play();
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
         while(_loc1_ < §%"1§.length)
         {
            if(_loc1_ > this.§]!p§ - 0.5 && _loc1_ < this.§]!p§ + 0.5)
            {
               §%"1§[2 - _loc1_].gotoAndStop("Selected");
            }
            else
            {
               §%"1§[2 - _loc1_].gotoAndStop("UnSelected");
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
      
      private function §^!T§(param1:LoginHandlerEvent) : void
      {
         this.§^§.removeEventListener(LoginHandlerEvent.§=!,§,this.§^!T§);
         this.§^§.removeEventListener(LoginHandlerEvent.ERROR,this.§@^§);
         (§&"<§.§<!7§ as §["!§).§^"<§.§&!'§();
         this.deActivate();
         this.activate(StateEpisodeSelection.STATE_NAME);
         this.§ !5§();
      }
      
      private function §@^§(param1:LoginHandlerEvent) : void
      {
         this.§^§.removeEventListener(LoginHandlerEvent.§=!,§,this.§^!T§);
         this.§^§.removeEventListener(LoginHandlerEvent.ERROR,this.§@^§);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§["!§.§+!"§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§&"<§.§<!7§.§1"0§.§["5§())
                  {
                     this.§+-§ = true;
                     this.§ !5§(this.§+-§);
                     break;
                  }
            }
         }
      }
      
      private function §["'§(param1:KeyboardEvent) : void
      {
         switch(param1.keyCode)
         {
            case Keyboard.ENTER:
               this.§ ";§();
         }
      }
      
      private function §[!g§(param1:String) : void
      {
         var _loc2_:MovieClip = new §>!;§.§+!u§("Asteroid_Ad" + param1)();
         var _loc3_:§="!§ = new §="!§(_loc2_);
         (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§.push(_loc3_);
      }
      
      private function §5&§(param1:Number) : void
      {
         var _loc2_:§="!§ = null;
         for each(_loc2_ in (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§)
         {
            _loc2_.update(param1);
            if(!_loc2_.isAlive)
            {
               (§&"<§.§<!7§ as §["!§).§^"<§.§%"=§.splice((§&"<§.§<!7§ as §["!§).§^"<§.§%"=§.indexOf(_loc2_),1);
               (§6!J§.getItemByName("MovieClip_ChapterSelectionBG") as §8,§).mClip.removeChild(_loc2_);
            }
         }
      }
      
      private function §!+§(param1:String) : void
      {
         this.§?";§ = ((§6!J§.container.getItemByName("EnterCode") as §5!k§).getItemByName("TextField_TazosCodeEnter") as §2a§).§;!E§();
         ((§6!J§.container.getItemByName("EnterCode") as §5!k§).getItemByName("TextField_TazosCodeEnter") as §2a§).setText(param1);
         if(param1 != "")
         {
            §6!J§.setText(param1,"TextField_TazosCodeEnter");
            (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.setSelection(0,param1.length);
            (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"v§);
         }
      }
      
      private function §6Z§(param1:§<l§) : void
      {
         this.§!+§(this.§#!3§);
         this.§?";§ = "";
      }
      
      private function §`!V§(param1:§<l§) : void
      {
         if(§[!I§.§8!J§.§,"+§() == "en")
         {
            this.§!+§("Code already used");
         }
         else
         {
            this.§!+§("Código ya utilizado");
         }
      }
      
      private function §?T§(param1:§<l§) : void
      {
         if(§[!I§.§8!J§.§,"+§() == "en")
         {
            this.§!+§("Incorrect code");
         }
         else
         {
            this.§!+§("Código incorrecto");
         }
      }
      
      private function §0!d§(param1:§<l§) : void
      {
         this.§!+§(this.§#!3§);
      }
      
      private function §"v§(param1:MouseEvent) : void
      {
         (§6!J§.getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"v§);
         if(this.§?";§ == this.§7E§ || this.§?";§ == "Incorrect code" || this.§?";§ == "Código incorrecto" || this.§?";§ == "Code already used" || this.§?";§ == "Código ya utilizado")
         {
            this.§?";§ = "";
         }
         §6!J§.setText(this.§?";§,"TextField_TazosCodeEnter");
      }
      
      public function get §#!3§() : String
      {
         return this.§7E§;
      }
      
      private function §'b§(param1:LoginHandlerEvent) : void
      {
         this.§?%§();
         this.§1z§();
         this.§ !5§();
      }
      
      private function §?%§() : void
      {
         if(this.§0L§ == 0)
         {
            --this.§0L§;
         }
         if(this.§0L§ == 1)
         {
            ++this.§0L§;
         }
         this.moveToChapter(this.§0L§);
      }
      
      private function §`I§(param1:LoginHandlerEvent) : void
      {
         this.§?";§ = "";
         this.§"!M§();
         this.§ !5§();
      }
      
      private function §1z§() : void
      {
         if(this.§[Q§)
         {
            this.§[Q§.stop();
         }
         this.§[Q§ = §@F§.§8!J§.§&6§(§6!J§.getItemByName("EnterCode"),{"y":this.§"!@§},null,§;"D§,§@F§.§=p§);
         this.§[Q§.§!5§ = false;
         this.§[Q§.play();
         §6!J§.getItemByName("Button_SubmitCode").setEnabled(true);
         §6!J§.getItemByName("TextField_TazosCodeEnter").setEnabled(true);
         §6!J§.getItemByName("Button_CodeInstructions").setEnabled(true);
      }
      
      private function §"!M§(param1:Number = 0) : void
      {
         if(param1 == 0)
         {
            param1 = this.§#D§;
         }
         if(this.§[Q§)
         {
            this.§[Q§.stop();
         }
         this.§[Q§ = §@F§.§8!J§.§&6§(§6!J§.getItemByName("EnterCode"),{"y":param1},null,§;"D§,§@F§.§=p§);
         this.§[Q§.§!5§ = false;
         this.§[Q§.play();
         §6!J§.getItemByName("Button_SubmitCode").setEnabled(false);
         §6!J§.getItemByName("TextField_TazosCodeEnter").setEnabled(false);
         §6!J§.getItemByName("Button_CodeInstructions").setEnabled(false);
         this.§?";§ = "";
      }
      
      private function set(param1:Number = 0) : void
      {
         var _loc2_:MovieClip = null;
         if(param1 == 0)
         {
            if(!§;";§.§3U§.§1T§)
            {
               param1 = this.§^F§;
            }
            else
            {
               param1 = this.§-G§;
            }
         }
         for each(_loc2_ in §%"1§)
         {
            §@F§.§8!J§.§&6§(_loc2_,{"y":param1},null,§;"D§,§@F§.§=p§).play();
            §@F§.§8!J§.§&6§(§6!J§.getItemByName("Button_Previous") as §%!J§,{"y":param1},null,§;"D§,§@F§.§=p§).play();
            §@F§.§8!J§.§&6§(§6!J§.getItemByName("Button_Next") as §%!J§,{"y":param1},null,§;"D§,§@F§.§=p§).play();
         }
      }
      
      private function §@3§(param1:TextField) : Number
      {
         var _loc2_:TextLineMetrics = param1.getLineMetrics(0);
         return _loc2_.width;
      }
      
      public function §0!k§() : void
      {
         var _loc1_:TextField = §6!J§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §6!J§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §6!J§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         _loc2_.width = this.§@3§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§=m§(_loc1_);
      }
      
      private function §=m§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      private function §3!u§(param1:MouseEvent) : void
      {
         var _loc2_:String = ((§6!J§.container.getItemByName("EnterCode") as §5!k§).getItemByName("TextField_TazosCodeEnter") as §2a§).§;!E§();
         var _loc3_:TextField = ((§6!J§.container.getItemByName("EnterCode") as §5!k§).getItemByName("TextField_TazosCodeEnter") as §2a§).§%!%§;
         if(_loc2_ == "" && param1.target != _loc3_)
         {
            this.§!+§(this.§#!3§);
         }
      }
   }
}
