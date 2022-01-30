package §,!x§
{
   import §!o§.§-,§;
   import §"p§.§@8§;
   import §"p§.Base64;
   import §,r§.§5!L§;
   import §-!@§.§3Q§;
   import §-!@§.§6P§;
   import §-!^§.§6k§;
   import §-=§.§8"1§;
   import §0"7§.§ !2§;
   import §0Z§.§+I§;
   import §1!"§.§<=§;
   import §1!N§.§"!k§;
   import §2!w§.Quest;
   import §2!w§.§[D§;
   import §2L§.StateMap;
   import §7!%§.§ if§;
   import §7!%§.§2m§;
   import §7!%§.§3f§;
   import §7!%§.§4!p§;
   import §7!%§.§9!n§;
   import §7K§.§@";§;
   import §7N§.StateLevelEditorTestPlay;
   import §>!#§.§-""§;
   import §>";§.§#§;
   import §>P§.§%t§;
   import §@">§.§#! §;
   import §^H§.§1l§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §%?§ implements §]!'§
   {
       
      
      private var §>!V§:Quest;
      
      private var §#,§:§%t§;
      
      private var §[",§:§]S§;
      
      private var §53§:Vector.<DisplayObject>;
      
      private var §+!K§:Boolean = false;
      
      private var §,Z§:§4!p§;
      
      private var §2"-§:§3f§;
      
      private var §3!d§:§9!n§;
      
      private var §try§:§2m§;
      
      private var §^n§:String;
      
      private var §^!C§:String;
      
      private var §5!#§:DisplayObject;
      
      private var §2,§:§+I§;
      
      private var §5!H§:Boolean = false;
      
      private var §1i§:§-,§;
      
      private var §?!§:Boolean = false;
      
      private const §`2§:int = 4000;
      
      public function §%?§(param1:§]S§)
      {
         this.§53§ = new Vector.<DisplayObject>();
         super();
         this.§[",§ = param1;
         this.§#,§ = new §%t§(this.§[",§.§]!c§.§?F§ as §1l§,§#! §.§5!;§.Views.View_QuestMenu[0],this.§[",§.§]!c§.§?F§.container);
         this.§#,§.addEventListener(Event.SELECT,this.§5'§);
         §[D§.§ "!§.addEventListener(§ !2§.§^$§,this.onQuestCompleted);
      }
      
      public function initialize() : void
      {
         this.§[",§.§]!c§.addEventListener(§8"1§.CONTINUE,this.§^R§,false,1);
         this.§[",§.§]!c§.addEventListener(§8"1§.CANCEL,this.§#!G§);
         this.§[",§.§]!c§.addEventListener(§8"1§.PUBLISH,this.§+!J§);
         this.§[",§.§<" §.addEventListener(§8"1§.§["<§,this.§[!o§);
         this.§[",§.§<" §.addEventListener(§8"1§.CHANGE,this.§;!j§);
         this.§[",§.§=!P§.addEventListener(§8"1§.§2!b§,this.§;!j§);
         this.§[",§.§;!]§.addEventListener(§8"1§.§-!V§,this.onPhysicsEnabled);
         this.§[",§.§;!]§.addEventListener(§8"1§.§1!e§,this.§'l§);
         this.§[",§.§]!c§.addEventListener(§8"1§.§;S§,this.onPlay);
         this.§[",§.§]!c§.addEventListener(KeyboardEvent.KEY_DOWN,this.§;4§);
      }
      
      public function activate() : void
      {
         §0!s§.§ "!§.§3"'§(this.§-U§,§0!s§.SAVE);
         §0!s§.§ "!§.§3"'§(this.§>!<§,§0!s§.CONTINUE);
         §0!s§.§ "!§.§3"'§(this.§%§,§0!s§.MODIFY);
         §0!s§.§ "!§.§3"'§(this.§^I§,§0!s§.ADD);
         §0!s§.§ "!§.§3"'§(this.§&!t§,§0!s§.DELETE);
         §0!s§.§ "!§.§3"'§(this.§^?§,§0!s§.CATEGORY);
         §0!s§.§ "!§.§3"'§(this.§>!z§,§0!s§.GRAVITY);
         §0!s§.§ "!§.§3"'§(this.§;!=§,§0!s§.CREATE_UNDO);
         if(!this.§>!V§)
         {
            this.§69§();
         }
         this.§#,§.init(this.§>!V§);
         if(this.§<E§ == Quest.§?!f§ && StateLevelEditorTestPlay.§+c§)
         {
            this.§=u§();
         }
         else
         {
            this.§[",§.§]!c§.§!!=§().§!!y§();
            if(this.§]!L§())
            {
               this.§[",§.§]!c§.§!!=§().getItemByName("Categories").setVisibility(false);
               this.§[",§.§]!c§.§!!=§().getItemByName("Categories2").setVisibility(true);
               this.§[",§.§]!c§.§!!=§().§8"=§("Birds");
            }
            this.§5S§();
         }
      }
      
      private function §;4§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == "f".charCodeAt())
         {
            StateLevelEditorTestPlay.§+c§ = true;
            this.§=u§();
            this.§[",§.§]!c§.§!!=§().§,!!§();
         }
         if(this.§<E§ != Quest.§'!F§)
         {
            return;
         }
         if(param1.charCode == "w".charCodeAt())
         {
            this.§>!V§.§[3§();
            this.§[",§.§<" §.§"!§();
            this.§[",§.§]!c§.§!!=§().§8"=§("Blocks");
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§?!§)
         {
            if(!this.§5!H§)
            {
               this.§?!§ = false;
               this.play();
               return;
            }
         }
         else if(this.§>!V§)
         {
            if(!this.§[",§.§;!]§.§";§() || this.§<E§ == Quest.§+!`§ || this.§<E§ == Quest.§,"9§)
            {
               this.§>!V§.update(param1);
            }
            this.§%"8§(this.§>!V§.getHUDs());
            this.§6!g§();
         }
         this.§#,§.update(param1);
      }
      
      private function §%"8§(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.§53§)
         {
            if(param1.indexOf(_loc2_) == -1)
            {
               this.§[",§.§]!c§.§?F§.movieClip.removeChild(_loc2_);
            }
         }
         this.§53§ = param1;
         for each(_loc2_ in this.§53§)
         {
            if(_loc2_.parent != this.§[",§.§]!c§.§?F§.movieClip)
            {
               this.§[",§.§]!c§.§?F§.movieClip.addChildAt(_loc2_,0);
            }
         }
      }
      
      public function §6!g§() : void
      {
         var _loc1_:DisplayObject = this.§>!V§.getNextInstruction();
         if(this.§5!#§ && this.§5!#§ != _loc1_ && this.§5!#§.parent)
         {
            this.§5!#§.parent.removeChild(this.§5!#§);
         }
         this.§5!#§ = _loc1_;
         if(this.§5!#§)
         {
            if(!this.§5!#§.parent)
            {
               this.§[",§.§]!c§.§?F§.movieClip.addChild(this.§5!#§);
            }
            this.§5!#§.visible = !this.§[",§.§;!]§.§";§();
            this.§5!#§.visible = this.§5!#§.visible && !this.§5!H§;
         }
         if(!this.§1i§.parent && !this.§>!V§.§"q§)
         {
            this.§[",§.§]!c§.§?F§.movieClip.addChild(this.§1i§);
         }
      }
      
      public function §>]§() : int
      {
         if(this.§>!V§)
         {
            return this.§>!V§.§>]§();
         }
         return 0;
      }
      
      private function §;!j§(param1:Event) : void
      {
         this.update(0);
         StateLevelEditorTestPlay.§+c§ = false;
         if(this.§>!V§ && !this.§]!L§())
         {
            this.§>!V§.§"!§();
         }
      }
      
      private function §+!J§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         this.§>!V§.onPhysicsEnabled();
         if(this.§try§.§]!H§().length > 0)
         {
            _loc2_ = this.§[",§.§<" §.§<%§();
            if(!_loc2_.valid)
            {
               _loc2_ = new Object();
            }
            else
            {
               _loc3_ = StateLevelEditorTestPlay.§"!&§();
               if(_loc3_ == null)
               {
                  _loc3_ = new BitmapData(100,100);
               }
               _loc4_ = §@";§.encode(_loc3_);
               _loc2_.screen = Base64.§7!6§(_loc4_);
               _loc2_.name = this.§try§.§]!H§();
            }
            this.§^n§ = JSON.stringify(_loc2_);
            this.§try§.§;u§();
            §[D§.§ "!§.completeQuest(this.§^n§);
         }
      }
      
      private function §5S§() : void
      {
         var _loc2_:§ if§ = null;
         if(this.§5!H§)
         {
            return;
         }
         var _loc1_:String = this.§>!V§.§"M§();
         if(_loc1_)
         {
            _loc2_ = §6P§.§'!P§(_loc1_);
            _loc2_.§0!O§ = this.§6!D§;
            this.§5!H§ = true;
            this.§1i§.visible = false;
         }
      }
      
      private function §6!D§() : void
      {
         this.§5!H§ = false;
         this.§1i§.visible = true;
         this.§5S§();
      }
      
      private function §=u§() : void
      {
         this.§try§ = new §2m§(§#! §.§5!;§.Views.PopupView_PrePublish[0],this.§[",§.§]!c§.§!!=§(),this.§>!V§);
         this.§try§.open();
         this.§#,§.hide();
      }
      
      public function get §=t§() : String
      {
         if(this.§>!V§)
         {
            return this.§>!V§.§=t§;
         }
         return "";
      }
      
      public function §%§(param1:§"!k§ = null) : Boolean
      {
         if(!this.§>!V§)
         {
            return true;
         }
         if(this.§>!V§.§=t§ == Quest.§,"9§ || this.§>!V§.§=t§ == Quest.§>h§)
         {
            return false;
         }
         if(param1 && !param1.§!! §())
         {
            return false;
         }
         if(param1 && param1.isTexture() && !this.§+!K§)
         {
            return false;
         }
         if(param1 && this.§]!L§() && !param1.§&!d§())
         {
            return false;
         }
         if(!this.§>!V§.§%§(param1))
         {
            return false;
         }
         return true;
      }
      
      private function §]!L§() : Boolean
      {
         return this.§^!C§ != null;
      }
      
      public function §^I§(param1:String = null) : Boolean
      {
         if(!this.§>!V§)
         {
            return true;
         }
         if(this.§>!V§.§=t§ == Quest.§,"9§ || this.§>!V§.§=t§ == Quest.§>h§)
         {
            return false;
         }
         if(!this.§>!V§.§%!0§)
         {
            return false;
         }
         if(param1 && this.§]!L§() && param1.indexOf("BIRD") == -1)
         {
            return false;
         }
         return true;
      }
      
      public function §&!t§(param1:§"!k§ = null) : Boolean
      {
         §§push(Boolean(this.§%§(param1)));
         if(Boolean(this.§%§(param1)))
         {
            §§pop();
            return !this.§>!V§ || !this.§>!V§.isObjectNeeded(param1);
         }
         §§goto(addr23);
      }
      
      public function §>!<§() : Boolean
      {
         if(!this.§>!V§)
         {
            return true;
         }
         if(this.§>!V§.§=t§ == Quest.§?!f§ && this.§[",§.§<" §.getBirdCount() < 1)
         {
            return false;
         }
         return this.§>!V§.§=t§ == Quest.§]!V§ || this.§>!V§.§=t§ == Quest.§?!f§;
      }
      
      public function §^?§(param1:String) : Boolean
      {
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(this.§>!V§ && !this.§>!V§.§"q§ && _loc2_.indexOf(param1) != -1)
         {
            return false;
         }
         return true;
      }
      
      public function §;!=§() : Boolean
      {
         if(this.§>!V§.§=t§ != Quest.§,"9§ && this.§>!V§.§=t§ != Quest.§>h§)
         {
            return true;
         }
         return false;
      }
      
      public function §'I§() : void
      {
         if(this.§>!V§)
         {
            this.§[",§.§=!P§.§2-§();
            this.§>!V§.removeEventListener(§ !2§.§=";§,this.§2!x§);
            this.§>!V§.removeEventListener(§ !2§.§0!?§,this.§"<§);
            this.§>!V§.removeEventListener(§ !2§.§'!N§,this.§"<§);
            this.§>!V§.dispose();
            if(this.§5!#§ && this.§5!#§.parent)
            {
               this.§5!#§.parent.removeChild(this.§5!#§);
            }
            this.§5!#§ = null;
            if(this.§1i§.parent)
            {
               this.§1i§.parent.removeChild(this.§1i§);
            }
            this.§1i§ = null;
            this.§>!V§ = null;
         }
      }
      
      private function §-!3§(param1:§ !2§) : void
      {
         this.§5S§();
      }
      
      private function §2!x§(param1:§ !2§ = null) : void
      {
         this.§5S§();
         var _loc2_:String = this.§>!V§.§=t§;
         if(_loc2_ == Quest.§>h§)
         {
            this.§#,§.hide();
         }
         else if(param1 && param1.§'!q§ == Quest.§1e§)
         {
            this.§[",§.§<" §.§"!§();
            this.§'l§();
         }
         else if(_loc2_ == Quest.§,"9§)
         {
            this.§[",§.§;!]§.§'=§(true);
         }
         else if(param1 && param1.§'!q§ == Quest.§,"9§)
         {
            this.§#,§.show();
            this.§[",§.§]!c§.§!!=§().§8"=§("Wood");
            this.§[",§.§;!]§.§'=§(false);
            this.§[",§.§=!P§.§3O§();
            this.§[",§.§=!P§.§ !]§(false);
            this.§[",§.§;o§.static(this.§>!V§.§'!M§());
         }
         else if(param1 && param1.§'!q§ == Quest.§+!`§)
         {
            this.§[",§.§;!]§.§'=§(false);
            if(param1.§0f§ == Quest.§?!f§)
            {
               this.§2!O§();
            }
         }
         else if(param1 && param1.§'!q§ == Quest.§?!f§)
         {
            this.§>!b§();
         }
         else if(_loc2_ == Quest.§+!`§)
         {
            this.§[",§.§;o§.goToCastleView();
         }
      }
      
      private function §2!O§() : void
      {
         if(§<=§.§ "!§.§1d§())
         {
            this.§^!C§ = this.§[",§.§]!c§.§!!=§().§4!I§();
            this.§[",§.§]!c§.§!!=§().getItemByName("Categories").setVisibility(false);
            this.§[",§.§]!c§.§!!=§().getItemByName("Categories2").setVisibility(true);
            this.§[",§.§]!c§.§!!=§().§8"=§("Birds");
         }
         else
         {
            this.§?!§ = true;
         }
      }
      
      private function §>!b§() : void
      {
         this.§[",§.§]!c§.§!!=§().getItemByName("Categories").setVisibility(true);
         this.§[",§.§]!c§.§!!=§().getItemByName("Categories2").setVisibility(false);
         if(this.§^!C§ != null)
         {
            this.§[",§.§]!c§.§!!=§().§8"=§(this.§^!C§);
            this.§^!C§ = null;
         }
      }
      
      private function get §<E§() : String
      {
         if(this.§>!V§)
         {
            return this.§>!V§.§=t§;
         }
         return Quest.§>h§;
      }
      
      private function §5'§(param1:Event) : void
      {
         this.§'I§();
      }
      
      private function §4!%§() : void
      {
         this.§[",§.§;!]§.§'=§(true);
         this.§>!V§.§0!#§();
         this.§>!V§.update(0);
         this.§[",§.§]!c§.§!!=§().getItemByName("ButtonCheck").setVisibility(false);
         this.§[",§.§]!c§.§!!=§().getItemByName("ButtonGravity").setVisibility(false);
         this.§[",§.§]!c§.§!!=§().getItemByName("Button_Cancel").setVisibility(true);
      }
      
      private function §"<§(param1:§ !2§) : void
      {
         this.§[",§.§]!c§.§!!=§().getItemByName("ButtonCheck").setVisibility(true);
         this.§[",§.§]!c§.§!!=§().getItemByName("ButtonGravity").setVisibility(true);
         this.§[",§.§]!c§.§!!=§().getItemByName("Button_Cancel").setVisibility(false);
         this.§[",§.§;!]§.§'=§(false);
      }
      
      private function §<"!§() : String
      {
         if(this.§>!V§.§;!!§())
         {
            return this.§>!V§.§;!!§().description;
         }
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         try
         {
            this.§try§.close();
            this.§try§ = null;
            this.§[",§.§]!c§.§!!=§().§,!!§();
            this.§[",§.§=!P§.§2-§();
            this.§2"-§ = new §3f§(§#! §.§5!;§.Views.PopupView_Rewards[0],this.§[",§.§]!c§.§!!=§(),this.§>!V§.§8!S§().length + 1);
            this.§2"-§.open();
            timer = new Timer(this.§`2§,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§6!<§);
            timer.start();
            §6k§.§+"=§(§6k§.§08§);
         }
         catch(e:Error)
         {
            §@8§.log("Error parsing response");
         }
         this.§'I§();
      }
      
      protected function §6!<§(param1:TimerEvent) : void
      {
         if(this.§2"-§)
         {
            this.§2"-§.close();
            this.§2"-§ = null;
         }
         if((AngryBirdsFP11.§`!j§ as §#§).§^!B§)
         {
            this.§3!d§ = new §9!n§(§#! §.§5!;§.Views.PopupView_LevelUp[0],this.§[",§.§]!c§.§!!=§());
            this.§3!d§.open();
            this.§3!d§.mClip.addEventListener(§3Q§.§#!B§,this.§0P§);
         }
         else
         {
            this.§0P§(null);
         }
      }
      
      protected function §0P§(param1:Event) : void
      {
         this.§,Z§ = new §4!p§(§#! §.§5!;§.Views.PopupView_FinishLevel[0],this.§[",§.§]!c§.§!!=§());
         this.§,Z§.open();
      }
      
      private function §[!o§(param1:Event) : void
      {
         if(this.§>!V§)
         {
            this.§>!V§.refresh(this.§[",§.§<" §.§9!8§);
         }
      }
      
      private function §^R§(param1:Event) : void
      {
         if(!this.§>!V§)
         {
            return;
         }
         if(this.§<E§ != Quest.§>h§ && this.§<E§ != Quest.§?!f§)
         {
            if(this.§<E§ != Quest.§+!`§)
            {
               if(this.§[",§.§;!]§.§";§())
               {
                  this.§[",§.§;!]§.§'=§(false);
               }
               this.§4!%§();
            }
         }
         if(this.§<E§ == Quest.§?!f§)
         {
            if(!this.§]!L§())
            {
               this.§2!O§();
            }
            else
            {
               this.play();
            }
         }
      }
      
      private function play() : void
      {
         this.§[",§.§]!c§.§5!2§();
      }
      
      private function onPlay(param1:§8"1§) : void
      {
         this.§>!V§.onPhysicsEnabled();
      }
      
      private function §#!G§(param1:Event) : void
      {
         if(this.§>!V§ && this.§>!V§.§=t§ == Quest.§+!`§)
         {
            this.§>!V§.§]" §();
         }
         else if(this.§try§ != null)
         {
            this.§try§.close();
            this.§try§ = null;
            this.§[",§.§]!c§.§!!=§().§!!y§();
         }
         else if(this.§,Z§ != null)
         {
            this.§,Z§.close();
            this.§,Z§ = null;
            this.§[",§.§]!c§.mNextState = StateMap.§8n§;
            §5!L§.§&!y§ = true;
         }
         else if(this.§>!V§ && this.§>!V§.§=t§ == Quest.§?!f§)
         {
            this.§>!b§();
         }
      }
      
      private function §69§() : void
      {
         var _loc2_:XML = null;
         var _loc1_:XML = §-""§.§+!_§;
         §<=§.§ "!§.§?Q§();
         if(_loc1_)
         {
            this.§+!K§ = false;
            this.§>!V§ = new Quest(this.§[",§.§<" §.§9!8§);
            this.§1i§ = new §-,§(this.§>!V§);
            this.§>!V§.addEventListener(§ !2§.§6@§,this.§-!3§);
            this.§>!V§.addEventListener(§ !2§.§=";§,this.§2!x§);
            this.§>!V§.addEventListener(§ !2§.§0!?§,this.§"<§);
            this.§>!V§.addEventListener(§ !2§.§'!N§,this.§"<§);
            this.§>!V§.§&!m§(_loc1_);
            if(_loc1_.availableItems != undefined)
            {
               for each(_loc2_ in _loc1_.availableItems[0].item)
               {
                  §<=§.§ "!§.§;!$§(_loc2_.toString());
               }
               §<=§.§ "!§.§"x§ = _loc1_.availableItems.@count;
            }
            else
            {
               §<=§.§ "!§.§1,§();
               §<=§.§ "!§.§"x§ = 100;
            }
         }
         else
         {
            this.§+!K§ = true;
            this.§>!V§ = Quest.§?!,§(this.§[",§.§<" §.§9!8§);
            this.§1i§ = new §-,§(this.§>!V§);
         }
         this.§2!x§();
         §6k§.§+"=§(§6k§.§'!=§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§>!V§.onPhysicsEnabled();
         this.§[",§.§;o§.goToCastleView();
      }
      
      private function §'l§(param1:Event = null) : void
      {
         this.§[",§.§;o§.static(this.§>!V§.§'!M§());
      }
      
      public function § p§() : Boolean
      {
         return this.§<E§ != Quest.§'!F§;
      }
      
      public function §-U§() : Boolean
      {
         if(!this.§>!V§)
         {
            return true;
         }
         return this.§>!V§.§%!0§;
      }
      
      public function §>!z§() : Boolean
      {
         if(!this.§>!V§)
         {
            return true;
         }
         return this.§>!V§.§%!0§;
      }
      
      public function §+q§() : Boolean
      {
         return this.§>!V§ != null;
      }
   }
}
