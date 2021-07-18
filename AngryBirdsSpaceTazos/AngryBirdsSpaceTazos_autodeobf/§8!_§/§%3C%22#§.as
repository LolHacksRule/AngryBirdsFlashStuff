package §8!_§
{
   import § !Y§.§&$§;
   import § !Y§.§="6§;
   import §%!r§.§3!'§;
   import §3C§.§9!%§;
   import §3C§.§^p§;
   import §3D§.HighscoreSidebar;
   import §4"§.PopupSidebarEvent;
   import §5X§.§+!#§;
   import §6"4§.§&a§;
   import §7!0§.§3!d§;
   import §7!0§.§8!B§;
   import §7!B§.§2"#§;
   import §7!B§.§@!^§;
   import §7!B§.§@"@§;
   import §7!B§.LoginHandlerEvent;
   import §7!B§.§^!q§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §9y§.§8"3§;
   import §9y§.EpisodeButtonEvent;
   import §9y§.§`"C§;
   import §<"8§.§6!c§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§!j§;
   import §^"#§.§&"$§;
   import §^"#§.ColorFadeLayerEvent;
   import §`!j§.§3,§;
   import §`!j§.§9"!§;
   import com.rovio.assets.§ !h§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.ui.Keyboard;
   
   public class §<"#§ extends StateEpisodeSelection
   {
      
      private static const §]S§:Number = 0.5;
      
      private static const §,!C§:Number = 82;
       
      
      private var §9=§:Number;
      
      private var §9!1§:Number;
      
      private var §;"9§:Number;
      
      private var §;z§:Number;
      
      private var §="G§:§5!9§;
      
      protected var §1S§:Number;
      
      private var §7!@§:Boolean = false;
      
      private var §^"+§:Boolean = true;
      
      private var §6B§:§2"#§;
      
      private var §%+§:String;
      
      private var §]"C§:String = "";
      
      private var §+"<§:§8!B§;
      
      private var §27§:int = 2;
      
      private var §94§:String = "";
      
      private var §6">§:§@"@§;
      
      protected var §!"&§:§&"$§ = null;
      
      private var §+z§:Boolean;
      
      public function §<"#§(param1:§9"!§, param2:§3!'§, param3:§@"@§, param4:Boolean, param5:String = "ChapterSelectionState")
      {
         super(param1,param2,param4,param5);
         this.§+"<§ = new §8!B§();
         this.§6">§ = param3;
      }
      
      override protected function init() : void
      {
         this.§!"&§ = new §&"$§(0,0,0,1);
         super.init();
         this.§6B§ = new §2"#§();
         this.§;"E§();
         (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§ = new Vector.<§!j§>();
         (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.maxChars = 12;
         var _loc1_:int = Math.floor(Math.random() * 3) + 2;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            this.§6!-§("");
            _loc2_++;
         }
         var _loc3_:int = Math.floor(Math.random() * 2) + 1;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.§6!-§("2");
            _loc2_++;
         }
      }
      
      override protected function initChapterLayer() : void
      {
         var _loc3_:§3,§ = null;
         this.§9=§ = §8!A§.getItemByName("Button_Previous").y;
         this.§9!1§ = this.§9=§ - §,!C§;
         this.§;"9§ = §8!A§.getItemByName("EnterCode").y;
         this.§;z§ = this.§;"9§ - §,!C§;
         §5!B§ = §8!A§.getItemByName("Container_ChapterSelection") as § ",§;
         §,<§ = [];
         §03§ = [];
         var _loc1_:Number = 0;
         §3G§ = new Sprite();
         §5!B§.mClip.addChild(§3G§);
         var _loc2_:int = §6u§.getEpisodeCount() - 1;
         while(_loc2_ >= 0)
         {
            _loc3_ = §6u§.getEpisode(_loc2_);
            if(!_loc3_.§@!i§)
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
         var _loc2_:§!j§ = null;
         var _loc3_:§`"C§ = null;
         var _loc4_:int = 0;
         var _loc5_:§`"C§ = null;
         var _loc6_:§5!9§ = null;
         super.activate(param1);
         for each(_loc2_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.addChild(_loc2_);
         }
         this.§+z§ = false;
         §8!A§.container.mClip.addChild(this.§!"&§);
         this.§<e§();
         § !g§.§;!'§.§>";§.§@;§();
         (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(true);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(true);
         this.updateLocalization();
         this.§6">§.addEventListener(LoginHandlerEvent.§4!Q§,this.§6!I§);
         this.§6">§.addEventListener(LoginHandlerEvent.§!"8§,this.§6!I§);
         this.§6">§.addEventListener(LoginHandlerEvent.§%&§,this.§2";§);
         this.§6B§.addEventListener(§^!q§.§&e§,this.§1"-§);
         this.§+"<§.addEventListener(§3!d§.§+T§,this.§1" §);
         this.§+"<§.addEventListener(§3!d§.§!e§,this.§?!3§);
         this.§+"<§.addEventListener(§3!d§.§-l§,this.§21§);
         this.§+"<§.addEventListener(§3!d§.§9!v§,this.§%b§);
         (§ !g§.§;!'§ as §`Y§).§&,§.§,A§(true);
         §`Y§.§2!M§();
         this.§?E§();
         if(this.§%+§)
         {
            _loc4_ = 1;
            for each(_loc5_ in §,<§)
            {
               _loc3_ = §,<§[(_loc4_ + (2 - this.§27§)) % 3];
               (_loc6_ = §!D§.§[!1§.§1"<§(_loc5_,{
                  "x":_loc3_.§%f§,
                  "y":_loc3_.§+! §,
                  "scaleX":_loc3_.§=0§,
                  "scaleY":_loc3_.§3"2§,
                  "alpha":1
               },null,0.5,§!D§.§7"-§)).play();
               _loc4_++;
            }
         }
         this.§%+§ = null;
         if(§@!^§.§2j§.§8B§)
         {
            this.§<§();
         }
         else
         {
            this.§2!>§();
         }
         (§ !g§.§;!'§ as §`Y§).§&,§.addEventListener(PopupSidebarEvent.§5!<§,this.§0!W§);
         §[M§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
      }
      
      private function §0!W§(param1:PopupSidebarEvent) : void
      {
         var _loc2_:§`"C§ = null;
         var _loc3_:§5!9§ = null;
         for each(_loc2_ in §,<§)
         {
            _loc3_ = §!D§.§[!1§.§1"<§(_loc2_,{"y":-500},null,0.5,§!D§.§7"-§);
            _loc3_.play();
         }
         (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
         (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(true);
         if(!§@!^§.§2j§.§8B§)
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§2E§(false);
         }
         else
         {
            (§ !g§.§;!'§ as §`Y§).§&,§.§9Z§.§0!s§(false);
         }
         _loc3_.onComplete = this.§%L§;
         this.§2!>§(this.§9=§ + 130);
         this.§#"8§(this.§9=§ + 100);
      }
      
      private function §%L§() : void
      {
         var _loc1_:§9"!§ = (§ !g§.§;!'§ as §`Y§).§=!+§;
         _loc1_.loadLevel(_loc1_.getValidLevelId(HighscoreSidebar.§?2§));
         this.§%+§ = HighscoreSidebar.§?2§;
         §8!^§(§>!N§.STATE_NAME);
      }
      
      protected function §<e§() : void
      {
         if(this.§!"&§ && !this.§+z§)
         {
            this.§!"&§.mouseEnabled = true;
            this.§+z§ = true;
            this.§!"&§.§24§(1);
            this.§!"&§.§7t§(0,0.25);
            this.§!"&§.addEventListener(ColorFadeLayerEvent.§;Y§,this.§0!r§);
         }
      }
      
      private function §0!r§(param1:ColorFadeLayerEvent) : void
      {
         this.§!"&§.mouseEnabled = false;
         this.§!"&§.removeEventListener(ColorFadeLayerEvent.§;Y§,this.§0!r§);
      }
      
      private function §?E§(param1:Boolean = false) : void
      {
         var _loc2_:§`"C§ = null;
         for each(_loc2_ in §,<§)
         {
            _loc2_.refresh(param1);
         }
         this.§#"8§();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§!j§ = null;
         (§ !g§.§;!'§ as §`Y§).§&,§.removeEventListener(PopupSidebarEvent.§5!<§,this.§0!W§);
         if(this.§!"&§.parent == §8!A§.container.mClip)
         {
            §8!A§.container.mClip.removeChild(this.§!"&§);
         }
         §8!A§.getItemByName("Button_Login0").setVisibility(false);
         §8!A§.getItemByName("Button_Login1").setVisibility(false);
         §8!A§.getItemByName("Button_Login2").setVisibility(false);
         this.§6">§.removeEventListener(LoginHandlerEvent.§!"8§,this.§=!>§);
         this.§6">§.removeEventListener(LoginHandlerEvent.ERROR,this.§4@§);
         this.§6B§.removeEventListener(§^!q§.§&e§,this.§1"-§);
         (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
         this.§6">§.removeEventListener(LoginHandlerEvent.§4!Q§,this.§6!I§);
         this.§6">§.removeEventListener(LoginHandlerEvent.§!"8§,this.§6!I§);
         this.§6">§.removeEventListener(LoginHandlerEvent.§%&§,this.§2";§);
         this.§+"<§.removeEventListener(§3!d§.§+T§,this.§1" §);
         this.§+"<§.removeEventListener(§3!d§.§!e§,this.§?!3§);
         this.§+"<§.removeEventListener(§3!d§.§-l§,this.§21§);
         this.§+"<§.removeEventListener(§3!d§.§9!v§,this.§%b§);
         §[M§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§6!h§);
         for each(_loc1_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.removeChild(_loc1_);
         }
         super.deActivate();
      }
      
      override public function updateLocalization() : void
      {
         if(this.§]"C§ == this.§94§)
         {
            this.§]"C§ = "";
         }
         super.updateLocalization();
         §&$§.§[!1§.updateTextFields(§8!A§.container,"StateEpisodeSelection");
         if(!(§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.hasEventListener(MouseEvent.MOUSE_DOWN))
         {
            (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
         }
         this.§94§ = (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.text;
         this.§;"E§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               _loc4_ = ((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).§5!m§();
               this.§+"<§.§6!L§(_loc4_);
               break;
            case "CODE_FAQ":
               §6!c§.§?!6§("displayFAQ");
               break;
            case "LOGIN":
               § !g§.§;!'§.§>";§.openPopup(new §&a§(this.§6">§));
               break;
            case "NEXT":
               if(!§+!4§)
               {
                  --this.§27§;
                  this.moveToChapter(this.§27§);
               }
               break;
            case "PREVIOUS":
               if(!§+!4§)
               {
                  ++this.§27§;
                  this.moveToChapter(this.§27§);
               }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§`"C§ = null;
         super.update(param1);
         this.§<!E§(param1);
         for each(_loc2_ in §,<§)
         {
            _loc2_.update(param1);
         }
         if(!this.§7!@§)
         {
            this.moveToChapter(this.§27§);
            this.§7!@§ = true;
            §="6§.§^!U§(§="6§.§,!&§);
            if(this.§6">§.§+!T§())
            {
               this.§6">§.addEventListener(LoginHandlerEvent.§!"8§,this.§=!>§);
               this.§6">§.addEventListener(LoginHandlerEvent.ERROR,this.§4@§);
               this.§6">§.§7j§(this.§6">§.name,this.§6">§.password,true);
            }
         }
      }
      
      override protected function configureChapterButtons() : void
      {
         var _loc3_:MovieClip = null;
         this.scrollIndex = 2;
         var _loc1_:Number = 0;
         var _loc2_:int = 0;
         while(_loc2_ < §,<§.length)
         {
            _loc3_ = new § !h§.§["3§("Button_Dot")();
            if(_loc2_ == §`_§)
            {
               _loc3_.gotoAndStop("Selected");
            }
            else
            {
               _loc3_.gotoAndStop("UnSelected");
            }
            _loc3_.x = 20 * _loc2_ - §,<§.length * 20 / 2 + _loc3_.width / 2 + §`Y§.§7O§ / 2;
            _loc3_.y = (§8!A§.getItemByName("Button_Previous") as §@_§).y;
            this.§8!A§.addChild(_loc3_);
            §03§.push(_loc3_);
            _loc1_ += _loc3_.width;
            _loc2_++;
         }
      }
      
      override protected function coverFlowScale() : void
      {
         §5!B§.getItemByName("Button_Login0").x = (§,<§[0] as §`"C§).x;
         §5!B§.getItemByName("Button_Login0").y = (§,<§[0] as §`"C§).y;
         §5!B§.getItemByName("Button_Login0").mClip.scaleX = (§,<§[0] as §`"C§).§?U§();
         §5!B§.getItemByName("Button_Login0").mClip.scaleY = (§,<§[0] as §`"C§).§?U§();
         §5!B§.getItemByName("Button_Login1").x = (§,<§[1] as §`"C§).x;
         §5!B§.getItemByName("Button_Login1").y = (§,<§[1] as §`"C§).y;
         §5!B§.getItemByName("Button_Login1").mClip.scaleX = (§,<§[1] as §`"C§).§?U§();
         §5!B§.getItemByName("Button_Login1").mClip.scaleY = (§,<§[1] as §`"C§).§?U§();
         §5!B§.getItemByName("Button_Login2").x = (§,<§[2] as §`"C§).x;
         §5!B§.getItemByName("Button_Login2").y = (§,<§[2] as §`"C§).y;
         §5!B§.getItemByName("Button_Login2").mClip.scaleX = (§,<§[2] as §`"C§).§?U§();
         §5!B§.getItemByName("Button_Login2").mClip.scaleY = (§,<§[2] as §`"C§).§?U§();
         if(!§@!^§.§2j§.§8B§)
         {
            §8!A§.getItemByName("Button_Login0").setVisibility(true);
            §8!A§.getItemByName("Button_Login1").setVisibility(true);
            §8!A§.getItemByName("Button_Login2").setVisibility(true);
         }
         else
         {
            §8!A§.getItemByName("Button_Login0").setVisibility(false);
            §8!A§.getItemByName("Button_Login1").setVisibility(false);
            §8!A§.getItemByName("Button_Login2").setVisibility(false);
         }
      }
      
      public function set scrollIndex(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < §,<§.length)
         {
            this.§0!v§(§,<§[_loc2_],_loc2_ - param1);
            _loc2_++;
         }
         this.§1S§ = param1;
         this.§"!y§();
      }
      
      private function §"!y§() : void
      {
         var button:DisplayObject = null;
         var sortedButtons:Array = §,<§.concat().sort(function(param1:DisplayObject, param2:DisplayObject):Number
         {
            return Math.abs(§,<§.indexOf(param2) - §1S§) - Math.abs(§,<§.indexOf(param1) - §1S§);
         });
         var index:int = 0;
         for each(button in sortedButtons)
         {
            §3G§.setChildIndex(button,index++);
         }
         §5!B§.setObjectToFront(§5!B§.getItemByName("Button_Login0"));
         §5!B§.setObjectToFront(§5!B§.getItemByName("Button_Login1"));
         §5!B§.setObjectToFront(§5!B§.getItemByName("Button_Login2"));
      }
      
      protected function §0!v§(param1:§`"C§, param2:Number) : void
      {
         var _loc3_:int = §,<§.indexOf(param1);
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
         return this.§1S§;
      }
      
      override protected function updateEpisodeButtons() : void
      {
      }
      
      override protected function addEpisode(param1:String, param2:Number, param3:§3,§ = null) : Number
      {
         var _loc4_:§`"C§ = null;
         if(param3 != null)
         {
            (_loc4_ = new §`"C§(param3)).addEventListener(MouseEvent.CLICK,this.onChapterClick);
            _loc4_.addEventListener(EpisodeButtonEvent.§ for§,this.§!>§);
            §3G§.addChild(_loc4_);
            §,<§.push(_loc4_);
            _loc4_.§%f§ = §8!A§.container.getItemByName("MovieClip_Star" + §,<§.length).x;
            _loc4_.§+! § = §8!A§.container.getItemByName("MovieClip_Star" + §,<§.length).y;
            _loc4_.§=0§ = §8!A§.container.getItemByName("MovieClip_Star" + §,<§.length).mClip.scaleX;
            _loc4_.§3"2§ = §8!A§.container.getItemByName("MovieClip_Star" + §,<§.length).mClip.scaleY;
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
         if(!§+!4§)
         {
            if(§,<§.indexOf(param1.currentTarget) < this.§27§)
            {
               if(this.§27§ == 2 && §,<§.indexOf(param1.currentTarget) == 1 || this.§27§ == 1)
               {
                  --this.§27§;
               }
               else
               {
                  ++this.§27§;
               }
            }
            if(§,<§.indexOf(param1.currentTarget) > this.§27§)
            {
               if(this.§27§ == 0 && §,<§.indexOf(param1.currentTarget) == 2)
               {
                  --this.§27§;
               }
               else
               {
                  ++this.§27§;
               }
            }
            if(§`_§ != this.§27§)
            {
               this.moveToChapter(this.§27§);
            }
         }
      }
      
      protected function §!>§(param1:EpisodeButtonEvent) : void
      {
         var _loc3_:§`"C§ = null;
         var _loc4_:int = 0;
         var _loc5_:§`"C§ = null;
         var _loc6_:§5!9§ = null;
         this.§%+§ = param1.levelName;
         if(this.§^"+§)
         {
            _loc4_ = 1;
            for each(_loc5_ in §,<§)
            {
               _loc3_ = §,<§[(_loc4_ + (2 - this.§27§)) % 3];
               (_loc6_ = §!D§.§[!1§.§1"<§(_loc5_,{
                  "x":(_loc3_.§%f§ - param1.x) * 3,
                  "y":(_loc3_.§+! § - param1.y) * 3,
                  "scaleX":_loc3_.§=0§ * 3,
                  "scaleY":_loc3_.§3"2§ * 3,
                  "alpha":0
               },null,0.5,§!D§.§7"-§)).play();
               _loc4_++;
            }
            (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
            (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(true);
            _loc6_.onComplete = this.§3!P§;
         }
         else if(!§@!^§.§2j§.§8B§)
         {
            § !g§.§;!'§.§>";§.openPopup(new §&a§(this.§6">§));
         }
         else if(§@!^§.§2j§.§8B§ && !§@!^§.§2j§.verified)
         {
            this.§[!W§();
         }
         else if(§@!^§.§#^§(param1.levelName))
         {
            _loc4_ = 1;
            for each(_loc5_ in §,<§)
            {
               _loc3_ = §,<§[(_loc4_ + (2 - this.§27§)) % 3];
               (_loc6_ = §!D§.§[!1§.§1"<§(_loc5_,{
                  "x":(_loc3_.§%f§ - param1.x) * 3,
                  "y":(_loc3_.§+! § - param1.y) * 3,
                  "scaleX":_loc3_.§=0§ * 3,
                  "scaleY":_loc3_.§3"2§ * 3,
                  "alpha":0
               },null,0.5,§!D§.§7"-§)).play();
               _loc4_++;
            }
            (§ !g§.§;!'§ as §`Y§).§&,§.§4"1§(false);
            (§ !g§.§;!'§ as §`Y§).§&,§.§<U§(true);
            _loc6_.onComplete = this.§3!P§;
            this.§2!>§(this.§9=§ + 130);
            this.§#"8§(this.§9=§ + 100);
         }
         else
         {
            this.§6!P§();
         }
      }
      
      private function §3!P§() : void
      {
         this.§?!E§(this.§%+§);
      }
      
      private function §?!E§(param1:String) : void
      {
         §6u§.loadLevel(§6u§.getValidLevelId(param1));
         §8!^§(§?!#§.STATE_NAME);
      }
      
      private function §6!P§() : void
      {
         § !g§.§;!'§.§>";§.openPopup(new §^p§(§8"3§.LEVEL_LOCKED,§^p§.§>F§));
      }
      
      private function §[!W§() : void
      {
         this.§6B§.§[!W§(§@!^§.§2j§.id);
      }
      
      private function §1"-§(param1:§^!q§) : void
      {
         if(§@!^§.§2j§.§8B§ && !§@!^§.§2j§.verified)
         {
            § !g§.§;!'§.§>";§.openPopup(new §9!%§());
         }
         else if(this.§%+§ && §@!^§.§#^§(this.§%+§) || this.§^"+§)
         {
            this.§?!E§(this.§%+§);
            this.§%+§ = null;
         }
         else
         {
            this.§6!P§();
         }
      }
      
      override protected function moveToChapter(param1:int) : void
      {
         var _loc2_:§`"C§ = null;
         var _loc4_:§`"C§ = null;
         if(this.§27§ < 0)
         {
            this.scrollIndex = 3;
            this.§27§ = 2;
         }
         if(this.§27§ > 2)
         {
            this.scrollIndex = -1;
            this.§27§ = 0;
         }
         param1 = this.§27§;
         §+!4§ = true;
         §`_§ = param1;
         §8!t§ = §!D§.§[!1§.§1"<§(this,{"scrollIndex":param1},null,0.8,§!D§.§!!R§);
         §8!t§.onComplete = this.onChapterTweenComplete;
         §8!t§.play();
         var _loc3_:int = 1;
         for each(_loc4_ in §,<§)
         {
            _loc2_ = §,<§[(_loc3_ + (2 - param1)) % 3];
            §!D§.§[!1§.§1"<§(_loc4_,{
               "x":_loc2_.§%f§,
               "y":_loc2_.§+! §,
               "scaleX":_loc2_.§=0§,
               "scaleY":_loc2_.§3"2§
            },null,1,§!D§.§7"-§).play();
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
         while(_loc1_ < §03§.length)
         {
            if(_loc1_ > this.§1S§ - 0.5 && _loc1_ < this.§1S§ + 0.5)
            {
               §03§[2 - _loc1_].gotoAndStop("Selected");
            }
            else
            {
               §03§[2 - _loc1_].gotoAndStop("UnSelected");
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
      
      private function §=!>§(param1:LoginHandlerEvent) : void
      {
         this.§6">§.removeEventListener(LoginHandlerEvent.§!"8§,this.§=!>§);
         this.§6">§.removeEventListener(LoginHandlerEvent.ERROR,this.§4@§);
         (§ !g§.§;!'§ as §`Y§).§&,§.§1M§();
         this.deActivate();
         this.activate(StateEpisodeSelection.STATE_NAME);
         this.§?E§();
      }
      
      private function §4@§(param1:LoginHandlerEvent) : void
      {
         this.§6">§.removeEventListener(LoginHandlerEvent.§!"8§,this.§=!>§);
         this.§6">§.removeEventListener(LoginHandlerEvent.ERROR,this.§4@§);
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         super.keyDown(param1);
         if(!§`Y§.§1!]§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.K:
                  if(!§ !g§.§;!'§.§>";§.§^",§())
                  {
                     this.§^"+§ = true;
                     this.§?E§(this.§^"+§);
                  }
            }
         }
      }
      
      private function §6!-§(param1:String) : void
      {
         var _loc2_:MovieClip = new § !h§.§["3§("Asteroid_Ad" + param1)();
         var _loc3_:§!j§ = new §!j§(_loc2_);
         (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§.push(_loc3_);
      }
      
      private function §<!E§(param1:Number) : void
      {
         var _loc2_:§!j§ = null;
         for each(_loc2_ in (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§)
         {
            _loc2_.update(param1);
            if(!_loc2_.isAlive)
            {
               (§ !g§.§;!'§ as §`Y§).§&,§.§>!?§.splice((§ !g§.§;!'§ as §`Y§).§&,§.§>!?§.indexOf(_loc2_),1);
               (§8!A§.getItemByName("MovieClip_ChapterSelectionBG") as §,y§).mClip.removeChild(_loc2_);
            }
         }
      }
      
      private function §6P§(param1:String) : void
      {
         this.§]"C§ = ((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).§5!m§();
         ((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).setText(param1);
         if(param1 != "")
         {
            §8!A§.setText(param1,"TextField_TazosCodeEnter");
            (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.setSelection(0,param1.length);
            (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.addEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
         }
      }
      
      private function §1" §(param1:§3!d§) : void
      {
         this.§6P§(this.§%!<§);
         this.§]"C§ = "";
      }
      
      private function §?!3§(param1:§3!d§) : void
      {
         if(§&$§.§[!1§.§^!2§() == "en")
         {
            this.§6P§("Code already used");
         }
         else
         {
            this.§6P§("Código ya utilizado");
         }
      }
      
      private function §21§(param1:§3!d§) : void
      {
         if(§&$§.§[!1§.§^!2§() == "en")
         {
            this.§6P§("Incorrect code");
         }
         else
         {
            this.§6P§("Código incorrecto");
         }
      }
      
      private function §%b§(param1:§3!d§) : void
      {
         this.§6P§(this.§%!<§);
      }
      
      private function § !$§(param1:MouseEvent) : void
      {
         (§8!A§.getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§ !$§);
         if(this.§]"C§ == this.§94§ || this.§]"C§ == "Incorrect code" || this.§]"C§ == "Código incorrecto" || this.§]"C§ == "Code already used" || this.§]"C§ == "Código ya utilizado")
         {
            this.§]"C§ = "";
         }
         §8!A§.setText(this.§]"C§,"TextField_TazosCodeEnter");
      }
      
      public function get §%!<§() : String
      {
         return this.§94§;
      }
      
      private function §6!I§(param1:LoginHandlerEvent) : void
      {
         this.§4"@§();
         this.§<§();
         this.§?E§();
      }
      
      private function §4"@§() : void
      {
         if(this.§27§ == 0)
         {
            --this.§27§;
         }
         if(this.§27§ == 1)
         {
            ++this.§27§;
         }
         this.moveToChapter(this.§27§);
      }
      
      private function §2";§(param1:LoginHandlerEvent) : void
      {
         this.§]"C§ = "";
         this.§2!>§();
         this.§?E§();
      }
      
      private function §<§() : void
      {
         if(this.§="G§)
         {
            this.§="G§.stop();
         }
         this.§="G§ = §!D§.§[!1§.§1"<§(§8!A§.getItemByName("EnterCode"),{"y":this.§;z§},null,§]S§,§!D§.§7"-§);
         this.§="G§.§%S§ = false;
         this.§="G§.play();
         §8!A§.getItemByName("Button_SubmitCode").setEnabled(true);
         §8!A§.getItemByName("TextField_TazosCodeEnter").setEnabled(true);
         §8!A§.getItemByName("Button_CodeInstructions").setEnabled(true);
      }
      
      private function §2!>§(param1:Number = 0) : void
      {
         if(param1 == 0)
         {
            param1 = this.§;"9§;
         }
         if(this.§="G§)
         {
            this.§="G§.stop();
         }
         this.§="G§ = §!D§.§[!1§.§1"<§(§8!A§.getItemByName("EnterCode"),{"y":param1},null,§]S§,§!D§.§7"-§);
         this.§="G§.§%S§ = false;
         this.§="G§.play();
         §8!A§.getItemByName("Button_SubmitCode").setEnabled(false);
         §8!A§.getItemByName("TextField_TazosCodeEnter").setEnabled(false);
         §8!A§.getItemByName("Button_CodeInstructions").setEnabled(false);
      }
      
      private function §#"8§(param1:Number = 0) : void
      {
         var _loc2_:MovieClip = null;
         if(param1 == 0)
         {
            if(!§@!^§.§2j§.§8B§)
            {
               param1 = this.§9=§;
            }
            else
            {
               param1 = this.§9!1§;
            }
         }
         for each(_loc2_ in §03§)
         {
            §!D§.§[!1§.§1"<§(_loc2_,{"y":param1},null,§]S§,§!D§.§7"-§).play();
            §!D§.§[!1§.§1"<§(§8!A§.getItemByName("Button_Previous") as §@_§,{"y":param1},null,§]S§,§!D§.§7"-§).play();
            §!D§.§[!1§.§1"<§(§8!A§.getItemByName("Button_Next") as §@_§,{"y":param1},null,§]S§,§!D§.§7"-§).play();
         }
      }
      
      private function §#I§(param1:TextField) : Number
      {
         var _loc2_:Rectangle = param1.getCharBoundaries(0);
         var _loc3_:Rectangle = param1.getCharBoundaries(param1.length - 1);
         return _loc3_.x + _loc3_.width - _loc2_.x + _loc2_.width / 2;
      }
      
      public function §;"E§() : void
      {
         var _loc1_:TextField = §8!A§.getItemByName("Button_CodeInstructions").mClip.text;
         var _loc2_:MovieClip = §8!A§.getItemByName("Button_CodeInstructions").mClip.MovieClip_Code_Underline;
         var _loc3_:MovieClip = §8!A§.getItemByName("Button_CodeInstructions").mClip.MouseHitArea;
         _loc2_.width = this.§#I§(_loc1_);
         _loc3_.width = _loc2_.width;
         this.§45§(_loc1_);
      }
      
      private function §45§(param1:TextField) : void
      {
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.italic = true;
         param1.setTextFormat(_loc2_);
      }
      
      private function §6!h§(param1:MouseEvent) : void
      {
         var _loc2_:String = ((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).§5!m§();
         var _loc3_:TextField = ((§8!A§.container.getItemByName("EnterCode") as § ",§).getItemByName("TextField_TazosCodeEnter") as §&!>§).§ !'§;
         if(_loc2_ == "" && param1.target != _loc3_)
         {
            this.§6P§(this.§%!<§);
         }
      }
   }
}
