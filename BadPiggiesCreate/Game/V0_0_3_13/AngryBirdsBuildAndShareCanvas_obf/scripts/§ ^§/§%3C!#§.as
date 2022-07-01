package § ^§
{
   import §""§.§8>§;
   import §""§.§]!^§;
   import §%!W§.§7!<§;
   import §&W§.§7L§;
   import §&W§.Base64;
   import §,!!§.§!U§;
   import §-!H§.§0!]§;
   import §0!C§.§,!h§;
   import §07§.§^P§;
   import §1!5§.§7!P§;
   import §1!5§.§8!`§;
   import §1!5§.§<"§;
   import §1!5§.§]!j§;
   import §1!5§.§^C§;
   import §2x§.§!!6§;
   import §3c§.§2A§;
   import §4!S§.§&"'§;
   import §4!S§.§<V§;
   import §4!S§.Quest;
   import §4!y§.StateMap;
   import §6O§.§99§;
   import §7!g§.§?!i§;
   import §8E§.§6$§;
   import §;W§.§"w§;
   import §=!D§.§<]§;
   import §=%§.§<A§;
   import §^^§.StateLevelEditorTestPlay;
   import §catch§.§-!m§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §<!#§ implements §-!"§
   {
       
      
      private var §%!o§:Quest;
      
      private var §!"6§:§2A§;
      
      private var §`5§:§0c§;
      
      private var §]T§:Vector.<DisplayObject>;
      
      private var §1!D§:Boolean = false;
      
      private var §8!J§:§8!`§;
      
      private var §#S§:§^C§;
      
      private var §^!Z§:§7!P§;
      
      private var §>'§:§]!j§;
      
      private var §9p§:String;
      
      private var §%"'§:String;
      
      private var §[">§:DisplayObject;
      
      private var §^m§:§-!m§;
      
      private var §11§:Boolean = false;
      
      private var §;T§:§6$§;
      
      private var §&!P§:Boolean = false;
      
      private const §&!s§:int = 4000;
      
      public function §<!#§(param1:§0c§)
      {
         this.§]T§ = new Vector.<DisplayObject>();
         super();
         this.§`5§ = param1;
         this.§!"6§ = new §2A§(this.§`5§.§!A§.§3?§ as §"w§,§,!h§.§`C§.Views.View_QuestMenu[0],this.§`5§.§!A§.§3?§.container);
         this.§!"6§.addEventListener(Event.SELECT,this.§0!7§);
         §<V§.§7!?§.addEventListener(§<]§.§=!_§,this.onQuestCompleted);
      }
      
      public function initialize() : void
      {
         this.§`5§.§!A§.addEventListener(§?!i§.CONTINUE,this.§^"$§,false,1);
         this.§`5§.§!A§.addEventListener(§?!i§.CANCEL,this.§ J§);
         this.§`5§.§!A§.addEventListener(§?!i§.PUBLISH,this.§8=§);
         this.§`5§.§6%§.addEventListener(§?!i§.§0"0§,this.§ !E§);
         this.§`5§.§6%§.addEventListener(§?!i§.CHANGE,this.§!§);
         this.§`5§.§8j§.addEventListener(§?!i§.§%"6§,this.§!§);
         this.§`5§.§^!'§.addEventListener(§?!i§.§]`§,this.onPhysicsEnabled);
         this.§`5§.§^!'§.addEventListener(§?!i§.§@!+§,this.§5C§);
         this.§`5§.§!A§.addEventListener(§?!i§.PLAY,this.onPlay);
         this.§`5§.§!A§.addEventListener(KeyboardEvent.KEY_DOWN,this.§<7§);
      }
      
      public function activate() : void
      {
         §@#§.§7!?§.§<?§(this.§<"$§,§@#§.SAVE);
         §@#§.§7!?§.§<?§(this.§#!^§,§@#§.CONTINUE);
         §@#§.§7!?§.§<?§(this.§>!<§,§@#§.MODIFY);
         §@#§.§7!?§.§<?§(this.§"!F§,§@#§.ADD);
         §@#§.§7!?§.§<?§(this.§5!,§,§@#§.DELETE);
         §@#§.§7!?§.§<?§(this.§-!9§,§@#§.CATEGORY);
         §@#§.§7!?§.§<?§(this.§6,§,§@#§.GRAVITY);
         §@#§.§7!?§.§<?§(this.§[!k§,§@#§.CREATE_UNDO);
         if(!this.§%!o§)
         {
            this.§]V§();
         }
         this.§!"6§.init(this.§%!o§);
         if(this.§8d§ == Quest.§#R§ && StateLevelEditorTestPlay.§#"?§)
         {
            this.§6i§();
         }
         else
         {
            this.§`5§.§!A§.§2!o§().§9G§();
            if(this.§@Y§())
            {
               this.§`5§.§!A§.§2!o§().getItemByName("Categories").setVisibility(false);
               this.§`5§.§!A§.§2!o§().getItemByName("Categories2").setVisibility(true);
               this.§`5§.§!A§.§2!o§().§^J§("Birds");
            }
            this.§&!o§();
         }
      }
      
      private function §<7§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == "f".charCodeAt())
         {
            StateLevelEditorTestPlay.§#"?§ = true;
            this.§6i§();
            this.§`5§.§!A§.§2!o§().§2r§();
         }
         if(this.§8d§ != Quest.§@!Z§)
         {
            return;
         }
         if(param1.charCode == "w".charCodeAt())
         {
            this.§%!o§.§9R§();
            this.§`5§.§6%§.§9!r§();
            this.§`5§.§!A§.§2!o§().§^J§("Blocks");
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§&!P§)
         {
            if(!this.§11§)
            {
               this.§&!P§ = false;
               this.play();
               return;
            }
         }
         else if(this.§%!o§)
         {
            if(!this.§`5§.§^!'§.§7Y§() || this.§8d§ == Quest.§5e§ || this.§8d§ == Quest.§,"'§)
            {
               this.§%!o§.update(param1);
            }
            this.§3!P§(this.§%!o§.getHUDs());
            this.§>"4§();
         }
         this.§!"6§.update(param1);
      }
      
      private function §3!P§(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.§]T§)
         {
            if(param1.indexOf(_loc2_) == -1)
            {
               this.§`5§.§!A§.§3?§.movieClip.removeChild(_loc2_);
            }
         }
         this.§]T§ = param1;
         for each(_loc2_ in this.§]T§)
         {
            if(_loc2_.parent != this.§`5§.§!A§.§3?§.movieClip)
            {
               this.§`5§.§!A§.§3?§.movieClip.addChildAt(_loc2_,0);
            }
         }
      }
      
      public function §>"4§() : void
      {
         var _loc1_:DisplayObject = this.§%!o§.getNextInstruction();
         if(this.§[">§ && this.§[">§ != _loc1_ && this.§[">§.parent)
         {
            this.§[">§.parent.removeChild(this.§[">§);
         }
         this.§[">§ = _loc1_;
         if(this.§[">§)
         {
            if(!this.§[">§.parent)
            {
               this.§`5§.§!A§.§3?§.movieClip.addChild(this.§[">§);
            }
            this.§[">§.visible = !this.§`5§.§^!'§.§7Y§();
            this.§[">§.visible = this.§[">§.visible && !this.§11§;
         }
         if(!this.§;T§.parent && !this.§%!o§.§5z§)
         {
            this.§`5§.§!A§.§3?§.movieClip.addChild(this.§;T§);
         }
      }
      
      public function §[!U§() : int
      {
         if(this.§%!o§)
         {
            return this.§%!o§.§[!U§();
         }
         return 0;
      }
      
      private function §!§(param1:Event) : void
      {
         this.update(0);
         StateLevelEditorTestPlay.§#"?§ = false;
         if(this.§%!o§ && !this.§@Y§())
         {
            this.§%!o§.§9!r§();
         }
      }
      
      private function §8=§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         this.§%!o§.onPhysicsEnabled();
         if(this.§>'§.§[<§().length > 0)
         {
            _loc2_ = this.§`5§.§6%§.§5]§();
            if(!_loc2_.valid)
            {
               _loc2_ = new Object();
            }
            else
            {
               _loc3_ = StateLevelEditorTestPlay.§9!t§();
               if(_loc3_ == null)
               {
                  _loc3_ = new BitmapData(100,100);
               }
               _loc4_ = §99§.encode(_loc3_);
               _loc2_.screen = Base64.§6!A§(_loc4_);
               _loc2_.name = this.§>'§.§[<§();
            }
            this.§9p§ = JSON.stringify(_loc2_);
            this.§>'§.§3e§();
            §<V§.§7!?§.completeQuest(this.§9p§);
         }
      }
      
      private function §&!o§() : void
      {
         var _loc2_:§<"§ = null;
         if(this.§11§)
         {
            return;
         }
         var _loc1_:§&"'§ = this.§%!o§.§[",§();
         if(_loc1_)
         {
            _loc2_ = §]!^§.§%;§(_loc1_);
            _loc2_.§!"'§ = this.§,X§;
            this.§11§ = true;
            this.§;T§.visible = false;
         }
      }
      
      private function §,X§() : void
      {
         this.§11§ = false;
         this.§;T§.visible = true;
         this.§&!o§();
      }
      
      private function §6i§() : void
      {
         this.§>'§ = new §]!j§(§,!h§.§`C§.Views.PopupView_PrePublish[0],this.§`5§.§!A§.§2!o§(),this.§%!o§);
         this.§>'§.open();
         this.§!"6§.hide();
      }
      
      public function get §^!I§() : String
      {
         if(this.§%!o§)
         {
            return this.§%!o§.§^!I§;
         }
         return "";
      }
      
      public function §>!<§(param1:§<A§ = null) : Boolean
      {
         if(!this.§%!o§)
         {
            return true;
         }
         if(this.§%!o§.§^!I§ == Quest.§,"'§ || this.§%!o§.§^!I§ == Quest.§@<§)
         {
            return false;
         }
         if(param1 && !param1.§%!E§())
         {
            return false;
         }
         if(param1 && param1.isTexture() && !this.§1!D§)
         {
            return false;
         }
         if(param1 && this.§@Y§() && !param1.§^!u§())
         {
            return false;
         }
         if(!this.§%!o§.§>!<§(param1))
         {
            return false;
         }
         return true;
      }
      
      private function §@Y§() : Boolean
      {
         return this.§%"'§ != null;
      }
      
      public function §"!F§(param1:String = null) : Boolean
      {
         if(!this.§%!o§)
         {
            return true;
         }
         if(this.§%!o§.§^!I§ == Quest.§,"'§ || this.§%!o§.§^!I§ == Quest.§@<§)
         {
            return false;
         }
         if(!this.§%!o§.§0Z§)
         {
            return false;
         }
         if(param1 && this.§@Y§() && param1.indexOf("BIRD") == -1)
         {
            return false;
         }
         return true;
      }
      
      public function §5!,§(param1:§<A§ = null) : Boolean
      {
         §§push(Boolean(this.§>!<§(param1)));
         if(Boolean(this.§>!<§(param1)))
         {
            §§pop();
            return !this.§%!o§ || !this.§%!o§.isObjectNeeded(param1);
         }
         §§goto(addr23);
      }
      
      public function §#!^§() : Boolean
      {
         if(!this.§%!o§)
         {
            return true;
         }
         if(this.§%!o§.§^!I§ == Quest.§#R§ && this.§`5§.§6%§.getBirdCount() < 1)
         {
            return false;
         }
         return this.§%!o§.§^!I§ == Quest.§#!O§ || this.§%!o§.§^!I§ == Quest.§#R§;
      }
      
      public function §-!9§(param1:String) : Boolean
      {
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(this.§%!o§ && !this.§%!o§.§5z§ && _loc2_.indexOf(param1) != -1)
         {
            return false;
         }
         return true;
      }
      
      public function §[!k§() : Boolean
      {
         if(this.§%!o§.§^!I§ != Quest.§,"'§ && this.§%!o§.§^!I§ != Quest.§@<§)
         {
            return true;
         }
         return false;
      }
      
      public function §["<§() : void
      {
         if(this.§%!o§)
         {
            this.§`5§.§8j§.§8!'§();
            this.§%!o§.removeEventListener(§<]§.§+!n§,this.§"!Q§);
            this.§%!o§.removeEventListener(§<]§.§ j§,this.§4R§);
            this.§%!o§.removeEventListener(§<]§.§9e§,this.§4R§);
            this.§%!o§.dispose();
            if(this.§[">§ && this.§[">§.parent)
            {
               this.§[">§.parent.removeChild(this.§[">§);
            }
            this.§[">§ = null;
            if(this.§;T§.parent)
            {
               this.§;T§.parent.removeChild(this.§;T§);
            }
            this.§;T§ = null;
            this.§%!o§ = null;
         }
      }
      
      private function §]"+§(param1:§<]§) : void
      {
         this.§&!o§();
      }
      
      private function §"!Q§(param1:§<]§ = null) : void
      {
         this.§&!o§();
         var _loc2_:String = this.§%!o§.§^!I§;
         if(_loc2_ == Quest.§@<§)
         {
            this.§!"6§.hide();
         }
         else if(param1 && param1.§>O§ == Quest.§`!0§)
         {
            this.§`5§.§6%§.§9!r§();
            this.§5C§();
         }
         else if(_loc2_ == Quest.§,"'§)
         {
            this.§`5§.§^!'§.§<"+§(true);
         }
         else if(param1 && param1.§>O§ == Quest.§,"'§)
         {
            this.§!"6§.show();
            this.§`5§.§!A§.§2!o§().§^J§("Wood");
            this.§`5§.§^!'§.§<"+§(false);
            this.§`5§.§8j§.§8q§();
            this.§`5§.§8j§.§=V§(false);
            this.§`5§.§[c§.§4",§(this.§%!o§.§%!&§());
         }
         else if(param1 && param1.§>O§ == Quest.§5e§)
         {
            this.§`5§.§^!'§.§<"+§(false);
            if(param1.§6a§ == Quest.§#R§)
            {
               this.§?2§();
            }
         }
         else if(param1 && param1.§>O§ == Quest.§#R§)
         {
            this.§@!_§();
         }
         else if(_loc2_ == Quest.§5e§)
         {
            this.§`5§.§[c§.goToCastleView();
         }
      }
      
      private function §?2§() : void
      {
         if(§7!<§.§7!?§.§1"-§())
         {
            this.§%"'§ = this.§`5§.§!A§.§2!o§().§@!T§();
            this.§`5§.§!A§.§2!o§().getItemByName("Categories").setVisibility(false);
            this.§`5§.§!A§.§2!o§().getItemByName("Categories2").setVisibility(true);
            this.§`5§.§!A§.§2!o§().§^J§("Birds");
         }
         else
         {
            this.§&!P§ = true;
         }
      }
      
      private function §@!_§() : void
      {
         this.§`5§.§!A§.§2!o§().getItemByName("Categories").setVisibility(true);
         this.§`5§.§!A§.§2!o§().getItemByName("Categories2").setVisibility(false);
         if(this.§%"'§ != null)
         {
            this.§`5§.§!A§.§2!o§().§^J§(this.§%"'§);
            this.§%"'§ = null;
         }
      }
      
      private function get §8d§() : String
      {
         if(this.§%!o§)
         {
            return this.§%!o§.§^!I§;
         }
         return Quest.§@<§;
      }
      
      private function §0!7§(param1:Event) : void
      {
         this.§["<§();
      }
      
      private function §`_§() : void
      {
         this.§`5§.§^!'§.§<"+§(true);
         this.§%!o§.§@!"§();
         this.§%!o§.update(0);
         this.§`5§.§!A§.§2!o§().getItemByName("ButtonCheck").setVisibility(false);
         this.§`5§.§!A§.§2!o§().getItemByName("ButtonGravity").setVisibility(false);
         this.§`5§.§!A§.§2!o§().getItemByName("Button_Cancel").setVisibility(true);
      }
      
      private function §4R§(param1:§<]§) : void
      {
         this.§`5§.§!A§.§2!o§().getItemByName("ButtonCheck").setVisibility(true);
         this.§`5§.§!A§.§2!o§().getItemByName("ButtonGravity").setVisibility(true);
         this.§`5§.§!A§.§2!o§().getItemByName("Button_Cancel").setVisibility(false);
         this.§`5§.§^!'§.§<"+§(false);
      }
      
      private function §#!P§() : String
      {
         if(this.§%!o§.§1E§())
         {
            return this.§%!o§.§1E§().description;
         }
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         try
         {
            this.§>'§.close();
            this.§>'§ = null;
            this.§`5§.§!A§.§2!o§().§2r§();
            this.§`5§.§8j§.§8!'§();
            this.§#S§ = new §^C§(§,!h§.§`C§.Views.PopupView_Rewards[0],this.§`5§.§!A§.§2!o§(),this.§%!o§.§4" §().length + 1);
            this.§#S§.open();
            timer = new Timer(this.§&!s§,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,!#§);
            timer.start();
            §!U§.§"!@§(§!U§.§'!"§);
         }
         catch(e:Error)
         {
            §7L§.log("Error parsing response");
         }
         this.§["<§();
      }
      
      protected function §,!#§(param1:TimerEvent) : void
      {
         if(this.§#S§)
         {
            this.§#S§.close();
            this.§#S§ = null;
         }
         if((AngryBirdsFP11.§"!c§ as §0!]§).§5!d§)
         {
            this.§^!Z§ = new §7!P§(§,!h§.§`C§.Views.PopupView_LevelUp[0],this.§`5§.§!A§.§2!o§());
            this.§^!Z§.open();
            this.§^!Z§.mClip.addEventListener(§8>§.§2!$§,this.§"F§);
         }
         else
         {
            this.§"F§(null);
         }
      }
      
      protected function §"F§(param1:Event) : void
      {
         this.§8!J§ = new §8!`§(§,!h§.§`C§.Views.PopupView_FinishLevel[0],this.§`5§.§!A§.§2!o§());
         this.§8!J§.open();
      }
      
      private function § !E§(param1:Event) : void
      {
         if(this.§%!o§)
         {
            this.§%!o§.refresh(this.§`5§.§6%§.§9"&§);
         }
      }
      
      private function §^"$§(param1:Event) : void
      {
         if(!this.§%!o§)
         {
            return;
         }
         if(this.§8d§ != Quest.§@<§ && this.§8d§ != Quest.§#R§)
         {
            if(this.§8d§ != Quest.§5e§)
            {
               if(this.§`5§.§^!'§.§7Y§())
               {
                  this.§`5§.§^!'§.§<"+§(false);
               }
               this.§`_§();
            }
         }
         if(this.§8d§ == Quest.§#R§)
         {
            if(!this.§@Y§())
            {
               this.§?2§();
            }
            else
            {
               this.play();
            }
         }
      }
      
      private function play() : void
      {
         this.§`5§.§!A§.§+3§();
      }
      
      private function onPlay(param1:§?!i§) : void
      {
         this.§%!o§.onPhysicsEnabled();
      }
      
      private function § J§(param1:Event) : void
      {
         if(this.§%!o§ && this.§%!o§.§^!I§ == Quest.§5e§)
         {
            this.§%!o§.§8!0§();
         }
         else if(this.§>'§ != null)
         {
            this.§>'§.close();
            this.§>'§ = null;
            this.§`5§.§!A§.§2!o§().§9G§();
         }
         else if(this.§8!J§ != null)
         {
            this.§8!J§.close();
            this.§8!J§ = null;
            this.§`5§.§!A§.mNextState = StateMap.§>H§;
            §!!6§.§7d§ = true;
         }
         else if(this.§%!o§ && this.§%!o§.§^!I§ == Quest.§#R§)
         {
            this.§@!_§();
         }
      }
      
      private function §]V§() : void
      {
         var _loc2_:XML = null;
         var _loc1_:XML = §^P§.§6!Y§;
         §7!<§.§7!?§.§>!!§();
         if(_loc1_)
         {
            this.§1!D§ = false;
            this.§%!o§ = new Quest(this.§`5§.§6%§.§9"&§);
            this.§;T§ = new §6$§(this.§%!o§);
            this.§%!o§.addEventListener(§<]§.§7"2§,this.§]"+§);
            this.§%!o§.addEventListener(§<]§.§+!n§,this.§"!Q§);
            this.§%!o§.addEventListener(§<]§.§ j§,this.§4R§);
            this.§%!o§.addEventListener(§<]§.§9e§,this.§4R§);
            this.§%!o§.§0!2§(_loc1_);
            if(_loc1_.availableItems != undefined)
            {
               for each(_loc2_ in _loc1_.availableItems[0].item)
               {
                  §7!<§.§7!?§.§#x§(_loc2_.toString());
               }
               §7!<§.§7!?§.§!!2§ = _loc1_.availableItems.@count;
            }
            else
            {
               §7!<§.§7!?§.§8!Y§();
               §7!<§.§7!?§.§!!2§ = 100;
            }
         }
         else
         {
            this.§1!D§ = true;
            this.§%!o§ = Quest.§1A§(this.§`5§.§6%§.§9"&§);
            this.§;T§ = new §6$§(this.§%!o§);
         }
         this.§"!Q§();
         §!U§.§"!@§(§!U§.§ T§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§%!o§.onPhysicsEnabled();
         this.§`5§.§[c§.goToCastleView();
      }
      
      private function §5C§(param1:Event = null) : void
      {
         this.§`5§.§[c§.§4",§(this.§%!o§.§%!&§());
      }
      
      public function §=9§() : Boolean
      {
         return this.§8d§ != Quest.§@!Z§;
      }
      
      public function §<"$§() : Boolean
      {
         if(!this.§%!o§)
         {
            return true;
         }
         return this.§%!o§.§0Z§;
      }
      
      public function §6,§() : Boolean
      {
         if(!this.§%!o§)
         {
            return true;
         }
         return this.§%!o§.§0Z§;
      }
      
      public function §do§() : Boolean
      {
         return this.§%!o§ != null;
      }
   }
}
