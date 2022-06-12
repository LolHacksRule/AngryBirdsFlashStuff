package §7"2§
{
   import §!!A§.§ "!§;
   import §%!n§.§,;§;
   import §%!n§.§>!s§;
   import §%!n§.§>^§;
   import §%%§.§7!O§;
   import §&!P§.§ !A§;
   import §&!P§.§#!=§;
   import §&!P§.§'!%§;
   import §&!P§.§0N§;
   import §&!P§.§;y§;
   import §&"8§.Quest;
   import §&"8§.§[`§;
   import §5!k§.§6"6§;
   import §8!7§.§&%§;
   import §9!#§.§4X§;
   import §9!#§.§?w§;
   import §9[§.§["§;
   import §;!A§.§9!U§;
   import §<Z§.§"!f§;
   import §=;§.StateLevelEditorTestPlay;
   import §>!J§.§^!#§;
   import §?""§.§^!K§;
   import §@!;§.§&F§;
   import §@!;§.Base64;
   import §]!]§.§5]§;
   import §]'§.§0r§;
   import §]J§.§]!m§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import §try§.§6>§;
   
   public class §;!2§ extends EventDispatcher implements §!"1§, §,;§, §>^§, §>!s§
   {
       
      
      private var §<!f§:Quest;
      
      private var §!+§:§6>§;
      
      private var §"Z§:§;!5§;
      
      private var §;"4§:Vector.<DisplayObject>;
      
      private var §0!v§:Boolean = false;
      
      private var §]j§:§ !A§;
      
      private var §@A§:§0N§;
      
      private var §,Y§:§;y§;
      
      private var §^!0§:§'!%§;
      
      private var §0!7§:String;
      
      private var §4k§:String;
      
      private var §5!V§:DisplayObject;
      
      private var §2y§:§^!#§;
      
      private var §6U§:§5]§;
      
      private const §,!u§:int = 4000;
      
      public function §;!2§(param1:§;!5§)
      {
         this.§;"4§ = new Vector.<DisplayObject>();
         super();
         this.§"Z§ = param1;
         this.§!+§ = new §6>§(this.§"Z§.§[U§.§;i§ as §&%§,§"!f§.§%!1§.Views.View_QuestMenu[0],this.§"Z§.§[U§.§;i§.container);
         this.§!+§.addEventListener(Event.SELECT,this.§]!k§);
         §[`§.§'!o§.addEventListener(ErrorEvent.ERROR,this.onError);
         §[`§.§'!o§.addEventListener(§9!U§.§`!_§,this.onQuestCompleted);
      }
      
      public function initialize() : void
      {
         this.§"Z§.§[U§.addEventListener(§6"6§.CONTINUE,this.§3C§,false,1);
         this.§"Z§.§[U§.addEventListener(§6"6§.CANCEL,this.§5!f§);
         this.§"Z§.§[U§.addEventListener(§6"6§.PUBLISH,this.§!!Y§);
         this.§"Z§.§94§.addEventListener(§6"6§.§9"+§,this.§ !_§);
         this.§"Z§.§94§.addEventListener(§6"6§.CHANGE,this.§;;§);
         this.§"Z§.§=$§.addEventListener(§6"6§.§]>§,this.§;;§);
         this.§"Z§.§!!7§.addEventListener(§6"6§.§#§,this.onPhysicsEnabled);
         this.§"Z§.§!!7§.addEventListener(§6"6§.§]!'§,this.§?!o§);
         this.§"Z§.§[U§.addEventListener(KeyboardEvent.KEY_DOWN,this.§`$§);
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         this.§"Z§.§@=§.showError(param1.text);
      }
      
      private function §`$§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == "f".charCodeAt())
         {
            §4X§.§ !o§ = true;
            this.§`Q§();
            this.§"Z§.§[U§.§^A§().§!9§();
         }
         if(this.§!!#§ != Quest.§1!$§)
         {
            return;
         }
         if(param1.charCode == "w".charCodeAt())
         {
            this.§<!f§.§+!1§();
            this.§"Z§.§94§.§"§();
            this.§"Z§.§[U§.§^A§().§]!e§("Blocks");
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§<!f§)
         {
            if(this.§!!#§ == Quest.§??§ || this.§!!#§ == Quest.§,h§ || !this.§"Z§.§!!7§.§9-§())
            {
               this.§<!f§.update(param1);
            }
            this.§#&§(this.§<!f§.getHUDs());
            this.§5!s§();
         }
         this.§!+§.update(param1);
      }
      
      private function §#&§(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.§;"4§)
         {
            if(param1.indexOf(_loc2_) == -1)
            {
               this.§"Z§.§[U§.§;i§.movieClip.removeChild(_loc2_);
            }
         }
         this.§;"4§ = param1;
         for each(_loc2_ in this.§;"4§)
         {
            if(_loc2_.parent != this.§"Z§.§[U§.§;i§.movieClip)
            {
               this.§"Z§.§[U§.§;i§.movieClip.addChildAt(_loc2_,0);
            }
         }
      }
      
      public function §5!s§() : void
      {
         var _loc1_:DisplayObject = this.§<!f§.getNextInstruction();
         if(this.§5!V§ && this.§5!V§ != _loc1_)
         {
            this.§5!V§.parent.removeChild(this.§5!V§);
         }
         this.§5!V§ = _loc1_;
         if(this.§5!V§)
         {
            if(!this.§5!V§.parent)
            {
               this.§"Z§.§[U§.§;i§.movieClip.addChild(this.§5!V§);
            }
            this.§5!V§.visible = !this.§"Z§.§!!7§.§9-§();
         }
         if(!this.§6U§.parent)
         {
            this.§"Z§.§[U§.§;i§.movieClip.addChild(this.§6U§);
         }
      }
      
      public function §>w§() : int
      {
         return this.§<!f§.§>w§();
      }
      
      private function §;;§(param1:Event) : void
      {
         this.update(0);
         §4X§.§ !o§ = false;
         if(this.§<!f§ && !this.§class§())
         {
            this.§<!f§.§"§();
         }
      }
      
      private function §!!Y§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         if(this.§^!0§.§,-§().length > 0)
         {
            _loc2_ = this.§"Z§.§94§.§[!S§();
            if(!_loc2_.valid)
            {
               _loc2_ = new Object();
            }
            else
            {
               _loc3_ = StateLevelEditorTestPlay.§>M§();
               if(_loc3_ == null)
               {
                  _loc3_ = new BitmapData(100,100);
               }
               _loc4_ = §["§.encode(_loc3_);
               _loc2_.screen = Base64.§?"3§(_loc4_);
               _loc2_.name = this.§^!0§.§,-§();
            }
            this.§0!7§ = JSON.stringify(_loc2_);
            this.§^!0§.§6""§();
            §[`§.§'!o§.completeQuest(this.§0!7§);
         }
      }
      
      public function activate() : void
      {
         var _loc1_:§#!=§ = null;
         if(!this.§<!f§)
         {
            this.§+"2§();
         }
         this.§!+§.init(this.§<!f§);
         if(this.§!!#§ == Quest.§-9§ && §4X§.§ !o§)
         {
            this.§`Q§();
         }
         else
         {
            this.§"Z§.§[U§.§^A§().§>!Y§();
            if(this.§class§())
            {
               this.§"Z§.§[U§.§^A§().getItemByName("Categories").setVisibility(false);
               this.§"Z§.§[U§.§^A§().getItemByName("Categories2").setVisibility(true);
               this.§"Z§.§[U§.§^A§().§]!e§("Birds");
            }
            this.§"Z§.§=$§.§3!x§(false);
            _loc1_ = new §#!=§(§"!f§.§%!1§.Views.PopupView_Prompt[0],this.§"Z§.§[U§.§^A§(),"Whew, made it! No more Angry Birds in sight.");
         }
      }
      
      private function §`Q§() : void
      {
         this.§^!0§ = new §'!%§(§"!f§.§%!1§.Views.PopupView_PrePublish[0],this.§"Z§.§[U§.§^A§(),this.§<!f§);
         this.§^!0§.open();
         this.§^!0§.mClip.addEventListener(§]!m§.§+&§,this.§>!-§);
         this.§!+§.hide();
      }
      
      protected function §>!-§(param1:Event) : void
      {
      }
      
      protected function §5!L§(param1:Event) : void
      {
      }
      
      public function get §"K§() : String
      {
         if(this.§<!f§)
         {
            return this.§<!f§.§"K§;
         }
         return "";
      }
      
      public function canObjectBeModified(param1:§7!O§ = null) : Boolean
      {
         if(!this.§<!f§)
         {
            return true;
         }
         if(this.§<!f§.§"K§ == Quest.§,h§ || this.§<!f§.§"K§ == Quest.§return§)
         {
            return false;
         }
         if(param1 && !param1.§;m§())
         {
            return false;
         }
         if(param1 && param1.isTexture() && !this.§0!v§)
         {
            return false;
         }
         if(param1 && this.§class§() && !param1.§@!j§())
         {
            return false;
         }
         if(!this.§<!f§.canObjectBeModified(param1))
         {
            return false;
         }
         return true;
      }
      
      private function §class§() : Boolean
      {
         return this.§4k§ != null;
      }
      
      public function canObjectBeAdded(param1:String = null) : Boolean
      {
         if(!this.§<!f§)
         {
            return true;
         }
         if(this.§<!f§.§"K§ == Quest.§,h§ || this.§<!f§.§"K§ == Quest.§return§)
         {
            return false;
         }
         if(!this.§<!f§.§%" §)
         {
            return false;
         }
         if(param1 && this.§class§() && param1.indexOf("BIRD") == -1)
         {
            return false;
         }
         return true;
      }
      
      public function canObjectBeDeleted(param1:§7!O§ = null) : Boolean
      {
         return this.canObjectBeModified(param1) && (!this.§<!f§ || !this.§<!f§.isObjectNeeded(param1));
      }
      
      public function canContinue() : Boolean
      {
         if(!this.§<!f§)
         {
            return true;
         }
         if(this.§<!f§.§"K§ == Quest.§-9§ && this.§"Z§.§94§.getBirdCount() < 1)
         {
            return false;
         }
         return this.§<!f§.§"K§ == Quest.§]g§ || this.§<!f§.§"K§ == Quest.§-9§;
      }
      
      public function isCategoryAvailable(param1:String) : Boolean
      {
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(this.§<!f§ && !this.§<!f§.§+!u§ && _loc2_.indexOf(param1) != -1)
         {
            return false;
         }
         return true;
      }
      
      public function canCreateUndoPoint() : Boolean
      {
         if(this.§<!f§.§"K§ != Quest.§,h§ && this.§<!f§.§"K§ != Quest.§return§)
         {
            return true;
         }
         return false;
      }
      
      private function §2!A§() : void
      {
         this.§<!f§.removeEventListener(§9!U§.§!R§,this.§+!@§);
         this.§<!f§.removeEventListener(§9!U§.§=!u§,this.§;&§);
         this.§<!f§.removeEventListener(§9!U§.§2!x§,this.§;&§);
         this.§<!f§.dispose();
         this.§<!f§ = null;
      }
      
      private function §+!@§(param1:§9!U§ = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:§#!=§ = null;
         var _loc2_:String = this.§<!f§.§"K§;
         if(param1)
         {
            dispatchEvent(new §9!U§(param1.type));
         }
         if(_loc2_ == Quest.§return§)
         {
            this.§!+§.hide();
         }
         if(param1 && param1.§5!o§ == Quest.§2!U§)
         {
            this.§"Z§.§94§.§"§();
            this.§?!o§();
         }
         if(_loc2_ == Quest.§,h§)
         {
            this.§"Z§.§!!7§.§!&§(true);
         }
         else if(param1 && param1.§5!o§ == Quest.§,h§)
         {
            _loc3_ = "Let\'s fix this. Put the blocks back in place.";
            _loc4_ = new §#!=§(§"!f§.§%!1§.Views.PopupView_Prompt[0],this.§"Z§.§[U§.§^A§(),_loc3_);
            this.§"Z§.§94§.§"§();
            this.§!+§.show();
            this.§"Z§.§[U§.§^A§().§]!e§("Wood");
            this.§"Z§.§!!7§.§!&§(false);
            this.§"Z§.§=$§.§?"-§();
            this.§"Z§.§=$§.§3!x§(false);
            this.§"Z§.§#9§.§%c§(this.§<!f§.§?"6§());
         }
         if(param1 && param1.§5!o§ == Quest.§??§)
         {
            this.§"Z§.§!!7§.§!&§(false);
            if(param1.§#K§ == Quest.§-9§)
            {
               this.§5!O§();
            }
            return;
         }
         if(param1 && param1.§5!o§ == Quest.§-9§)
         {
            this.§?!2§();
         }
         if(_loc2_ == Quest.§??§)
         {
            this.§"Z§.§#9§.goToCastleView();
         }
      }
      
      private function §5!O§() : void
      {
         if(§^!K§.§'!o§.§`"&§())
         {
            this.§4k§ = this.§"Z§.§[U§.§^A§().§4"!§();
            this.§"Z§.§[U§.§^A§().getItemByName("Categories").setVisibility(false);
            this.§"Z§.§[U§.§^A§().getItemByName("Categories2").setVisibility(true);
            this.§"Z§.§[U§.§^A§().§]!e§("Birds");
         }
         else
         {
            this.play();
         }
      }
      
      private function §?!2§() : void
      {
         this.§"Z§.§[U§.§^A§().getItemByName("Categories").setVisibility(true);
         this.§"Z§.§[U§.§^A§().getItemByName("Categories2").setVisibility(false);
         if(this.§4k§ != null)
         {
            this.§"Z§.§[U§.§^A§().§]!e§(this.§4k§);
            this.§4k§ = null;
         }
      }
      
      private function get §!!#§() : String
      {
         if(this.§<!f§)
         {
            return this.§<!f§.§"K§;
         }
         return Quest.§return§;
      }
      
      private function §]!k§(param1:Event) : void
      {
         this.§2!A§();
      }
      
      private function §>!l§() : void
      {
         this.§"Z§.§!!7§.§!&§(true);
         this.§<!f§.§8!w§();
         this.§<!f§.update(0);
         this.§"Z§.§[U§.§^A§().getItemByName("ButtonCheck").setVisibility(false);
         this.§"Z§.§[U§.§^A§().getItemByName("ButtonGravity").setVisibility(false);
         this.§"Z§.§[U§.§^A§().getItemByName("Button_Cancel").setVisibility(true);
      }
      
      private function §;&§(param1:§9!U§) : void
      {
         this.§"Z§.§[U§.§^A§().getItemByName("ButtonCheck").setVisibility(true);
         this.§"Z§.§[U§.§^A§().getItemByName("ButtonGravity").setVisibility(true);
         this.§"Z§.§[U§.§^A§().getItemByName("Button_Cancel").setVisibility(false);
         this.§"Z§.§!!7§.§!&§(false);
      }
      
      private function §3![§() : String
      {
         if(this.§<!f§.§>!n§())
         {
            return this.§<!f§.§>!n§().description;
         }
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         try
         {
            this.§^!0§.close();
            this.§^!0§ = null;
            this.§"Z§.§[U§.§^A§().§!9§();
            this.§"Z§.§=$§.§"6§();
            this.§@A§ = new §0N§(§"!f§.§%!1§.Views.PopupView_Rewards[0],this.§"Z§.§[U§.§^A§(),this.§<!f§.§?",§().length + 1);
            this.§@A§.open();
            timer = new Timer(this.§,!u§,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§31§);
            timer.start();
            § "!§.static(§ "!§.§?"+§);
         }
         catch(e:Error)
         {
            §&F§.log("Error parsing response");
         }
         this.§2!A§();
      }
      
      protected function §31§(param1:TimerEvent) : void
      {
         if(this.§@A§)
         {
            this.§@A§.close();
            this.§@A§ = null;
         }
         this.§,Y§ = new §;y§(§"!f§.§%!1§.Views.PopupView_LevelUp[0],this.§"Z§.§[U§.§^A§());
         this.§,Y§.open();
         this.§,Y§.mClip.addEventListener(§]!m§.§+&§,this.§@!d§);
      }
      
      protected function §@!d§(param1:Event) : void
      {
         this.§]j§ = new § !A§(§"!f§.§%!1§.Views.PopupView_FinishLevel[0],this.§"Z§.§[U§.§^A§());
         this.§]j§.open();
      }
      
      private function § !_§(param1:Event) : void
      {
         if(this.§<!f§)
         {
            this.§<!f§.refresh(this.§"Z§.§94§.§'!E§);
         }
      }
      
      private function §3C§(param1:Event) : void
      {
         if(!this.§<!f§)
         {
            return;
         }
         if(this.§!!#§ != Quest.§return§ && this.§!!#§ != Quest.§-9§)
         {
            if(this.§!!#§ != Quest.§??§)
            {
               if(this.§"Z§.§!!7§.§9-§())
               {
                  this.§"Z§.§!!7§.§!&§(false);
               }
               this.§>!l§();
            }
         }
         if(this.§!!#§ == Quest.§-9§)
         {
            if(!this.§class§())
            {
               this.§5!O§();
            }
            else
            {
               this.play();
            }
         }
      }
      
      private function play() : void
      {
         this.§"Z§.§=$§.§?"-§();
         this.§<!f§.onPhysicsEnabled();
         this.§"Z§.§[U§.§+!B§();
      }
      
      private function §5!f§(param1:Event) : void
      {
         if(this.§<!f§ && this.§<!f§.§"K§ == Quest.§??§)
         {
            this.§<!f§.§,!I§();
         }
         else if(this.§^!0§ != null)
         {
            this.§^!0§.close();
            this.§^!0§ = null;
            this.§"Z§.§[U§.§^A§().§>!Y§();
         }
         else if(this.§]j§ != null)
         {
            this.§]j§.close();
            this.§]j§ = null;
            this.§"Z§.§[U§.mNextState = §?w§.§8G§;
            §?w§.§8!j§ = true;
         }
         else if(this.§<!f§ && this.§<!f§.§"K§ == Quest.§-9§)
         {
            this.§?!2§();
         }
      }
      
      private function §+"2§() : void
      {
         var _loc2_:XML = null;
         var _loc1_:XML = §0r§.§1n§;
         §^!K§.§'!o§.§[!8§();
         if(_loc1_)
         {
            this.§0!v§ = false;
            this.§<!f§ = new Quest(this.§"Z§.§94§.§'!E§);
            this.§<!f§.addEventListener(§9!U§.§!R§,this.§+!@§);
            this.§<!f§.addEventListener(§9!U§.§=!u§,this.§;&§);
            this.§<!f§.addEventListener(§9!U§.§2!x§,this.§;&§);
            this.§<!f§.§^!<§(_loc1_);
            if(_loc1_.availableItems != undefined)
            {
               for each(_loc2_ in _loc1_.availableItems[0].item)
               {
                  §^!K§.§'!o§.§2!n§(_loc2_.toString());
               }
               §^!K§.§'!o§.§&!U§ = _loc1_.availableItems.@count;
            }
            else
            {
               §^!K§.§'!o§.§9e§();
               §^!K§.§'!o§.§&!U§ = 100;
            }
         }
         else
         {
            this.§0!v§ = true;
            this.§<!f§ = Quest.§>!=§(this.§"Z§.§94§.§'!E§);
         }
         this.§6U§ = new §5]§(this.§<!f§);
         this.§+!@§();
         § "!§.static(§ "!§.§7U§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§<!f§.onPhysicsEnabled();
         this.§"Z§.§#9§.goToCastleView();
      }
      
      private function §?!o§(param1:Event = null) : void
      {
         this.§"Z§.§#9§.§%c§(this.§<!f§.§?"6§());
      }
      
      public function §?`§() : Boolean
      {
         return this.§!!#§ != Quest.§1!$§;
      }
      
      public function canSave() : Boolean
      {
         if(!this.§<!f§)
         {
            return true;
         }
         return this.§<!f§.§%" §;
      }
      
      public function isGravityAvailable() : Boolean
      {
         if(!this.§<!f§)
         {
            return true;
         }
         return this.§<!f§.§%" §;
      }
   }
}
