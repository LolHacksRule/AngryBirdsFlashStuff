package §1" §
{
   import §"_§.§!"8§;
   import §#";§.§0"#§;
   import §&!<§.§]!M§;
   import §'V§.§=!r§;
   import §+V§.§-!g§;
   import §-"'§.§1d§;
   import §-"'§.§8!5§;
   import §-"'§.§<`§;
   import §-"'§.§<q§;
   import §-"'§.§]!_§;
   import §50§.StateMap;
   import §5u§.§-"#§;
   import §6!A§.§4!1§;
   import §6U§.§="4§;
   import §6]§.§,"0§;
   import §6]§.Base64;
   import §7!@§.§+`§;
   import §7t§.§7a§;
   import §;" §.§5L§;
   import §;" §.§>"0§;
   import §;" §.Quest;
   import §;b§.StateLevelEditor;
   import §;b§.StateLevelEditorTestPlay;
   import §<!1§.§0W§;
   import §?!'§.§]!]§;
   import §?!'§.§`![§;
   import §]" §.§?"-§;
   import §^!k§.§return§;
   import §^U§.§&y§;
   import §`!,§.§[!&§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §4"?§ implements §4!x§
   {
       
      
      private var §[o§:Quest;
      
      private var §3?§:§?"-§;
      
      private var §9J§:§#!j§;
      
      private var §?W§:Vector.<DisplayObject>;
      
      private var §3!W§:Boolean = false;
      
      private var §0!&§:§<q§;
      
      private var §%">§:§]!_§;
      
      private var §!![§:§<`§;
      
      private var §,"&§:§1d§;
      
      private var §=1§:String;
      
      private var §[§:DisplayObject;
      
      private var §,!c§:§=!r§;
      
      private var §#t§:Boolean = false;
      
      private var §3!V§:§-!g§;
      
      private var §0!!§:Boolean = false;
      
      private const §&!z§:int = 4000;
      
      public function §4"?§(param1:§#!j§)
      {
         this.§?W§ = new Vector.<DisplayObject>();
         super();
         this.§9J§ = param1;
         this.§3?§ = new §?"-§(this.§9J§.§<!_§.§`!v§ as §return§,§]!M§.§"!V§.Views.View_QuestMenu[0],this.§9J§.§<!_§.§`!v§.container);
         this.§3?§.addEventListener(Event.SELECT,this.§<=§);
         §5L§.§[E§.addEventListener(§[!&§.§#"5§,this.onQuestCompleted);
      }
      
      public function initialize() : void
      {
         this.§9J§.§<!_§.addEventListener(§!"8§.CONTINUE,this.§4! §,false,1);
         this.§9J§.§<!_§.addEventListener(§!"8§.CANCEL,this.§]!$§);
         this.§9J§.§<!_§.addEventListener(§!"8§.PUBLISH,this.§2!>§);
         this.§9J§.§0"!§.addEventListener(§!"8§.§"`§,this.§?!&§);
         this.§9J§.§0"!§.addEventListener(§!"8§.CHANGE,this.§,§);
         this.§9J§.§&!F§.addEventListener(§!"8§.§"!I§,this.§,§);
         this.§9J§.§%8§.addEventListener(§!"8§.§4]§,this.onPhysicsEnabled);
         this.§9J§.§%8§.addEventListener(§!"8§.§3!?§,this.§@<§);
         this.§9J§.§<!_§.addEventListener(§!"8§.PLAY,this.onPlay);
         this.§9J§.§<!_§.addEventListener(KeyboardEvent.KEY_DOWN,this.§[H§);
      }
      
      public function activate() : void
      {
         §!!2§.§[E§.§[j§(this.§?!p§,§!!2§.SAVE);
         §!!2§.§[E§.§[j§(this.§+6§,§!!2§.CONTINUE);
         §!!2§.§[E§.§[j§(this.§[?§,§!!2§.MODIFY);
         §!!2§.§[E§.§[j§(this.§+'§,§!!2§.ADD);
         §!!2§.§[E§.§[j§(this.§[Q§,§!!2§.DELETE);
         §!!2§.§[E§.§[j§(this.§&f§,§!!2§.CATEGORY);
         §!!2§.§[E§.§[j§(this.§["&§,§!!2§.GRAVITY);
         §!!2§.§[E§.§[j§(this.§^"#§,§!!2§.CREATE_UNDO);
         if(!this.§[o§)
         {
            this.§'"§();
         }
         this.§3?§.init(this.§[o§);
         if(this.§,"#§ == Quest.§0"?§ && StateLevelEditorTestPlay.§3!%§)
         {
            §0"#§.§<"0§(StateLevelEditor.§&!d§);
            this.§?!P§();
         }
         else
         {
            this.§9J§.§<!_§.§"p§().§<!k§();
            if(this.§`c§())
            {
               this.§9J§.§<!_§.§"p§().getItemByName("Categories").setVisibility(false);
               this.§9J§.§<!_§.§"p§().getItemByName("Categories2").setVisibility(true);
               this.§9J§.§<!_§.§"p§().§ !c§("Birds");
            }
            this.§4b§();
         }
      }
      
      private function §[H§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == "f".charCodeAt())
         {
            StateLevelEditorTestPlay.§3!%§ = true;
            this.§?!P§();
            this.§9J§.§<!_§.§"p§().§5!Q§();
         }
         if(this.§,"#§ != Quest.§'!X§)
         {
            return;
         }
         if(param1.charCode == "w".charCodeAt())
         {
            this.§[o§.§#!"§();
            this.§,§();
            this.§9J§.§<!_§.§"p§().§ !c§("Blocks");
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§0!!§)
         {
            if(!this.§#t§)
            {
               this.§0!!§ = false;
               this.play();
               return;
            }
         }
         else if(this.§[o§)
         {
            if(!this.§9J§.§%8§.§'[§() || this.§,"#§ == Quest.§;!b§ || this.§,"#§ == Quest.§`!$§)
            {
               this.§[o§.update(param1);
            }
            this.§2!B§(this.§[o§.getHUDs());
            this.§ §();
         }
         this.§3?§.update(param1);
      }
      
      private function §2!B§(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.§?W§)
         {
            if(param1.indexOf(_loc2_) == -1)
            {
               this.§9J§.§<!_§.§`!v§.movieClip.removeChild(_loc2_);
            }
         }
         this.§?W§ = param1;
         for each(_loc2_ in this.§?W§)
         {
            if(_loc2_.parent != this.§9J§.§<!_§.§`!v§.movieClip)
            {
               this.§9J§.§<!_§.§`!v§.movieClip.addChildAt(_loc2_,0);
            }
         }
      }
      
      public function § §() : void
      {
         var _loc1_:DisplayObject = this.§[o§.getNextInstruction();
         if(this.§[§ && this.§[§ != _loc1_ && this.§[§.parent)
         {
            this.§[§.parent.removeChild(this.§[§);
         }
         this.§[§ = _loc1_;
         if(this.§[§)
         {
            if(!this.§[§.parent)
            {
               this.§9J§.§<!_§.§`!v§.movieClip.addChild(this.§[§);
            }
            this.§[§.visible = !this.§9J§.§%8§.§'[§();
            this.§[§.visible = this.§[§.visible && !this.§#t§;
         }
         if(!this.§3!V§.parent && !this.§[o§.§+!N§)
         {
            this.§9J§.§<!_§.§`!v§.movieClip.addChild(this.§3!V§);
         }
      }
      
      public function §[i§() : int
      {
         if(this.§[o§)
         {
            return this.§[o§.§[i§();
         }
         return 0;
      }
      
      private function §,§(param1:Event = null) : void
      {
         this.update(0);
         StateLevelEditorTestPlay.§3!%§ = false;
         if(this.§[o§ && !this.§`c§())
         {
            this.§[o§.§-v§();
         }
      }
      
      private function §2!>§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         this.§[o§.onPhysicsEnabled();
         if(this.§,"&§.§3"8§().length > 0)
         {
            _loc2_ = this.§9J§.§0"!§.§9!h§();
            if(!_loc2_.valid)
            {
               _loc2_ = new Object();
            }
            else
            {
               _loc3_ = StateLevelEditorTestPlay.§5"+§();
               if(_loc3_ == null)
               {
                  _loc3_ = new BitmapData(100,100);
               }
               _loc4_ = §="4§.encode(_loc3_);
               _loc2_.screen = Base64.§7o§(_loc4_);
               _loc2_.name = this.§,"&§.§3"8§();
            }
            this.§,"&§.§2g§();
            if(this.§[o§.§+!N§)
            {
               §5L§.§[E§.publishSandbox(_loc2_);
            }
            else
            {
               §5L§.§[E§.completeQuest(_loc2_);
            }
         }
      }
      
      private function §4b§() : void
      {
         var _loc2_:§8!5§ = null;
         if(this.§#t§)
         {
            return;
         }
         var _loc1_:§>"0§ = this.§[o§.§-!a§();
         if(_loc1_)
         {
            _loc2_ = §]!]§.§04§(_loc1_);
            _loc2_.§2"&§ = this.§?"§;
            this.§#t§ = true;
            this.§3!V§.visible = false;
         }
      }
      
      private function §?"§() : void
      {
         this.§#t§ = false;
         this.§3!V§.visible = true;
         this.§4b§();
      }
      
      private function §?!P§() : void
      {
         this.§,"&§ = new §1d§(§]!M§.§"!V§.Views.PopupView_PrePublish[0],this.§9J§.§<!_§.§"p§(),this.§[o§);
         this.§,"&§.open();
         this.§3?§.hide();
      }
      
      public function get §;!1§() : String
      {
         if(this.§[o§)
         {
            return this.§[o§.§;!1§;
         }
         return "";
      }
      
      public function §[?§(param1:§7a§ = null) : Boolean
      {
         if(!this.§[o§)
         {
            return true;
         }
         if(this.§[o§.§;!1§ == Quest.§`!$§ || this.§[o§.§;!1§ == Quest.§[R§)
         {
            return false;
         }
         if(param1 && !param1.§!9§())
         {
            return false;
         }
         if(param1 && param1.isTexture() && !this.§3!W§)
         {
            return false;
         }
         if(param1 && this.§`c§() && !param1.§'5§())
         {
            return false;
         }
         if(!this.§[o§.§[?§(param1))
         {
            return false;
         }
         return true;
      }
      
      private function §`c§() : Boolean
      {
         return this.§=1§ != null;
      }
      
      public function §+'§(param1:String = null) : Boolean
      {
         if(!this.§[o§)
         {
            return true;
         }
         if(this.§[o§.§;!1§ == Quest.§`!$§ || this.§[o§.§;!1§ == Quest.§[R§)
         {
            return false;
         }
         if(!this.§[o§.§6!p§)
         {
            return false;
         }
         if(param1 && this.§`c§() && param1.indexOf("BIRD") == -1)
         {
            return false;
         }
         return true;
      }
      
      public function §[Q§(param1:§7a§ = null) : Boolean
      {
         return this.§[?§(param1) && (!this.§[o§ || !this.§[o§.isObjectNeeded(param1));
      }
      
      public function §+6§() : Boolean
      {
         if(!this.§[o§)
         {
            return true;
         }
         if(this.§[o§.§;!1§ == Quest.§0"?§ && this.§9J§.§0"!§.getBirdCount() < 1)
         {
            return false;
         }
         return this.§[o§.§;!1§ == Quest.§""0§ || this.§[o§.§;!1§ == Quest.§0"?§;
      }
      
      public function §&f§(param1:String) : Boolean
      {
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(this.§[o§ && !this.§[o§.§+!N§ && _loc2_.indexOf(param1) != -1)
         {
            return false;
         }
         return true;
      }
      
      public function §^"#§() : Boolean
      {
         if(this.§[o§.§;!1§ != Quest.§`!$§ && this.§[o§.§;!1§ != Quest.§[R§)
         {
            return true;
         }
         return false;
      }
      
      public function §=D§() : void
      {
         if(this.§[o§)
         {
            this.§9J§.§&!F§.§&",§();
            this.§9J§.§^!b§.camera.§6"5§();
            this.§[o§.removeEventListener(§[!&§.§#+§,this.§[!t§);
            this.§[o§.removeEventListener(§[!&§.§-@§,this.§=!+§);
            this.§[o§.removeEventListener(§[!&§.§6B§,this.§=!+§);
            this.§[o§.dispose();
            if(this.§[§ && this.§[§.parent)
            {
               this.§[§.parent.removeChild(this.§[§);
            }
            this.§[§ = null;
            if(this.§3!V§.parent)
            {
               this.§3!V§.parent.removeChild(this.§3!V§);
            }
            this.§3!V§ = null;
            this.§[o§ = null;
         }
      }
      
      private function §@!n§(param1:§[!&§) : void
      {
         this.§4b§();
      }
      
      private function §[!t§(param1:§[!&§ = null) : void
      {
         this.§4b§();
         var _loc2_:String = this.§[o§.§;!1§;
         if(param1 && param1.§"!x§)
         {
         }
         if(param1 && param1.§"!x§ == Quest.§;!b§ && _loc2_ == Quest.§0"?§)
         {
            §0"#§.§<"0§(StateLevelEditor.§&!d§);
            §0"#§.§9"2§("BadPiggies_Building",StateLevelEditor.§&!d§,1000);
         }
         if(_loc2_ == Quest.§[R§)
         {
            this.§3?§.hide();
         }
         else if(param1 && param1.§"!x§ == Quest.§4Z§)
         {
            this.§9J§.§0"!§.§-v§();
            this.§@<§();
         }
         else if(_loc2_ == Quest.§`!$§)
         {
            this.§9J§.§%8§.§9!G§(true);
         }
         else if(param1 && param1.§"!x§ == Quest.§`!$§)
         {
            this.§3?§.show();
            this.§9J§.§<!_§.§"p§().§ !c§("Wood");
            this.§9J§.§%8§.§9!G§(false);
            this.§9J§.§&!F§.§1!E§();
            this.§9J§.§&!F§.§,!<§(false);
            this.§9J§.§^!b§.§?!<§(this.§[o§.§%!f§());
         }
         else if(param1 && param1.§"!x§ == Quest.§;!b§)
         {
            this.§9J§.§%8§.§9!G§(false);
            if(param1.§4!2§ == Quest.§0"?§)
            {
               this.§9!!§();
            }
         }
         else if(param1 && param1.§"!x§ == Quest.§0"?§)
         {
            this.§6t§();
         }
         else if(_loc2_ == Quest.§;!b§)
         {
            this.§9J§.§^!b§.goToCastleView();
         }
      }
      
      private function §9!!§() : void
      {
         if(this.§9J§.§0!;§.§'-§("Birds"))
         {
            this.§=1§ = this.§9J§.§<!_§.§"p§().§8!9§();
            this.§9J§.§<!_§.§"p§().getItemByName("Categories").setVisibility(false);
            this.§9J§.§<!_§.§"p§().getItemByName("Categories2").setVisibility(true);
            this.§9J§.§<!_§.§"p§().§ !c§("Birds");
         }
         else
         {
            this.§0!!§ = true;
         }
      }
      
      private function §6t§() : void
      {
         this.§9J§.§<!_§.§"p§().getItemByName("Categories").setVisibility(true);
         this.§9J§.§<!_§.§"p§().getItemByName("Categories2").setVisibility(false);
         if(this.§=1§ != null)
         {
            this.§9J§.§<!_§.§"p§().§ !c§(this.§=1§);
            this.§=1§ = null;
         }
      }
      
      private function get §,"#§() : String
      {
         if(this.§[o§)
         {
            return this.§[o§.§;!1§;
         }
         return Quest.§[R§;
      }
      
      private function §<=§(param1:Event) : void
      {
         this.§=D§();
      }
      
      private function §#N§() : void
      {
         this.§9J§.§%8§.§9!G§(true);
         this.§[o§.§ !E§();
         this.§[o§.update(0);
         this.§9J§.§<!_§.§"p§().getItemByName("ButtonCheck").setVisibility(false);
         this.§9J§.§<!_§.§"p§().getItemByName("ButtonGravity").setVisibility(false);
         this.§9J§.§<!_§.§"p§().getItemByName("Button_Cancel").setVisibility(true);
      }
      
      private function §=!+§(param1:§[!&§) : void
      {
         this.§9J§.§<!_§.§"p§().getItemByName("ButtonCheck").setVisibility(true);
         this.§9J§.§<!_§.§"p§().getItemByName("ButtonGravity").setVisibility(true);
         this.§9J§.§<!_§.§"p§().getItemByName("Button_Cancel").setVisibility(false);
         this.§9J§.§%8§.§9!G§(false);
      }
      
      private function §6!g§() : String
      {
         if(this.§[o§.§-!t§())
         {
            return this.§[o§.§-!t§().description;
         }
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         try
         {
            this.§,"&§.close();
            this.§,"&§ = null;
            this.§9J§.§<!_§.§"p§().§5!Q§();
            this.§9J§.§&!F§.§&",§();
            this.§%">§ = new §]!_§(§]!M§.§"!V§.Views.PopupView_Rewards[0],this.§9J§.§<!_§.§"p§(),this.§[o§.§[" §().length + 1);
            this.§%">§.open();
            timer = new Timer(this.§&!z§,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§["=§);
            timer.start();
            §0W§.§#W§(§0W§.§;K§);
         }
         catch(e:Error)
         {
            §,"0§.log("Error parsing response");
         }
         this.§=D§();
      }
      
      protected function §["=§(param1:TimerEvent) : void
      {
         if(this.§%">§)
         {
            this.§%">§.close();
            this.§%">§ = null;
         }
         if((AngryBirdsFP11.§>!7§ as §+`§).§&3§)
         {
            this.§!![§ = new §<`§(§]!M§.§"!V§.Views.PopupView_LevelUp[0],this.§9J§.§<!_§.§"p§());
            this.§!![§.open();
            this.§!![§.mClip.addEventListener(§`![§.§;!U§,this.§5a§);
         }
         else
         {
            this.§5a§(null);
         }
      }
      
      protected function §5a§(param1:Event) : void
      {
         this.§0!&§ = new §<q§(§]!M§.§"!V§.Views.PopupView_FinishLevel[0],this.§9J§.§<!_§.§"p§());
         this.§0!&§.open();
      }
      
      private function §?!&§(param1:Event) : void
      {
         if(this.§[o§)
         {
            this.§[o§.refresh(this.§9J§.§0"!§.§0z§);
         }
      }
      
      private function §4! §(param1:Event) : void
      {
         if(!this.§[o§)
         {
            return;
         }
         if(this.§,"#§ != Quest.§[R§ && this.§,"#§ != Quest.§0"?§)
         {
            if(this.§,"#§ != Quest.§;!b§)
            {
               if(this.§9J§.§%8§.§'[§())
               {
                  this.§9J§.§%8§.§9!G§(false);
               }
               this.§#N§();
            }
         }
         if(this.§,"#§ == Quest.§0"?§)
         {
            if(!this.§`c§())
            {
               this.§9!!§();
            }
            else
            {
               this.play();
            }
         }
      }
      
      private function play() : void
      {
         this.§9J§.§<!_§.§#!t§();
      }
      
      private function onPlay(param1:§!"8§) : void
      {
         this.§[o§.onPhysicsEnabled();
      }
      
      private function §]!$§(param1:Event) : void
      {
         if(this.§[o§ && this.§[o§.§;!1§ == Quest.§;!b§)
         {
            this.§[o§.§ !R§();
         }
         else if(this.§,"&§ != null)
         {
            this.§,"&§.close();
            this.§,"&§ = null;
            this.§9J§.§<!_§.§"p§().§<!k§();
         }
         else if(this.§0!&§ != null)
         {
            this.§0!&§.close();
            this.§0!&§ = null;
            this.§9J§.§<!_§.mNextState = StateMap.§%!Q§;
            §&y§.§0>§ = true;
         }
         else if(this.§[o§ && this.§[o§.§;!1§ == Quest.§0"?§)
         {
            this.§6t§();
         }
      }
      
      private function §'"§() : void
      {
         var _loc1_:XML = §-"#§.§0o§;
         §4!1§.§[E§.§^?§();
         if(_loc1_)
         {
            this.§3!W§ = false;
            this.§[o§ = new Quest(this.§9J§.§0"!§.§0z§);
            this.§3!V§ = new §-!g§(this.§[o§);
         }
         else
         {
            this.§3!W§ = true;
            this.§[o§ = Quest.§8"2§(this.§9J§.§0"!§.§0z§);
            this.§3!V§ = new §-!g§(this.§[o§);
         }
         this.§[o§.addEventListener(§[!&§.§-@§,this.§=!+§);
         this.§[o§.addEventListener(§[!&§.§^[§,this.§@!n§);
         this.§[o§.addEventListener(§[!&§.§#+§,this.§[!t§);
         this.§[o§.addEventListener(§[!&§.§6B§,this.§=!+§);
         if(_loc1_)
         {
            this.§[o§.§["%§(_loc1_);
         }
         this.§[!t§();
         §0W§.§#W§(§0W§.§,!G§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§[o§.onPhysicsEnabled();
         this.§9J§.§^!b§.goToCastleView();
      }
      
      private function §@<§(param1:Event = null) : void
      {
         this.§9J§.§^!b§.§?!<§(this.§[o§.§%!f§());
      }
      
      public function §-"6§() : Boolean
      {
         return this.§,"#§ != Quest.§'!X§;
      }
      
      public function §?!p§() : Boolean
      {
         if(!this.§[o§)
         {
            return false;
         }
         return this.§[o§.§6!p§;
      }
      
      public function §["&§() : Boolean
      {
         if(!this.§[o§)
         {
            return true;
         }
         return this.§[o§.§6!p§;
      }
      
      public function §5"0§() : Boolean
      {
         return this.§[o§ != null;
      }
   }
}
