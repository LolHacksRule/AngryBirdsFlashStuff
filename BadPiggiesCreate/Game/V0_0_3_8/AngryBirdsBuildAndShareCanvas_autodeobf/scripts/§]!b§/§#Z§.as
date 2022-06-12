package §]!b§
{
   import §!",§.StateLevelEditorTestPlay;
   import §"!0§.§;!5§;
   import §,!$§.§`!z§;
   import §,E§.§,!Z§;
   import §,m§.§?"%§;
   import §-P§.§1""§;
   import §-P§.§1Z§;
   import §1S§.§'!6§;
   import §1S§.§+a§;
   import §1S§.§>$§;
   import §4!7§.§ <§;
   import §4!7§.§3k§;
   import §4!7§.§^!a§;
   import §4u§.§<!L§;
   import §4u§.Base64;
   import §9u§.§"![§;
   import §;!+§.§`!#§;
   import §?!V§.§"a§;
   import §@!H§.§,!a§;
   import §]!l§.§<3§;
   import §`!O§.§]!F§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import §true§.§>"-§;
   import §var§.§,"1§;
   import §var§.Quest;
   
   public class §#Z§ extends EventDispatcher implements §9h§, §^!a§, § <§, §3k§
   {
       
      
      private var §%"3§:Quest;
      
      private var §'3§:§"![§;
      
      private var §8O§:§]?§;
      
      private var §8!a§:Vector.<DisplayObject>;
      
      private var §-[§:Boolean = false;
      
      private var §=%§:§>$§;
      
      private var §3y§:§'!6§;
      
      private var §;!i§:§+a§;
      
      private var §4!"§:String;
      
      private var §%>§:String;
      
      private var §8d§:DisplayObject;
      
      private var §@!N§:§;!5§;
      
      private const §<!X§:int = 4000;
      
      public function §#Z§(param1:§]?§)
      {
         this.§8!a§ = new Vector.<DisplayObject>();
         super();
         this.§8O§ = param1;
         this.§'3§ = new §"![§(this.§8O§.§%H§.§1!j§ as §,!a§,§"a§.§-!g§.Views.View_QuestMenu[0],this.§8O§.§%H§.§1!j§.container);
         this.§'3§.addEventListener(Event.SELECT,this.§+f§);
         §,"1§.§9j§.addEventListener(ErrorEvent.ERROR,this.onError);
         §,"1§.§9j§.addEventListener(§`!z§.§^n§,this.onQuestCompleted);
      }
      
      public function initialize() : void
      {
         this.§8O§.§%H§.addEventListener(§?"%§.CONTINUE,this.§]!6§,false,1);
         this.§8O§.§%H§.addEventListener(§?"%§.CANCEL,this.§ true§);
         this.§8O§.§%H§.addEventListener(§?"%§.PUBLISH,this.§@!K§);
         this.§8O§.§4+§.addEventListener(§?"%§.§]"-§,this.§ !d§);
         this.§8O§.§4+§.addEventListener(§?"%§.CHANGE,this.§+L§);
         this.§8O§.§&!m§.addEventListener(§?"%§.§"M§,this.§+L§);
         this.§8O§.§5;§.addEventListener(§?"%§.§['§,this.onPhysicsEnabled);
         this.§8O§.§%H§.addEventListener(KeyboardEvent.KEY_DOWN,this.§6!c§);
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         this.§8O§.§"!#§.showError(param1.text);
      }
      
      private function §6!c§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == "f".charCodeAt())
         {
            §1""§.§[3§ = true;
            this.§=%§ = new §>$§(§"a§.§-!g§.Views.PopupView_PublishLevel[0],this.§8O§.§%H§.§<!9§());
            this.§=%§.open();
            this.§'3§.hide();
            this.§8O§.§%H§.§<!9§().§7"%§();
         }
         if(this.§?;§ != Quest.§<!y§)
         {
            return;
         }
         if(param1.charCode == "w".charCodeAt())
         {
            this.§%"3§.§,O§();
            this.§8O§.§4+§.§#u§();
            this.§8O§.§%H§.§<!9§().§'p§("Blocks");
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§%"3§)
         {
            if(this.§?;§ == Quest.§;!X§ || this.§?;§ == Quest.§?!W§ || !this.§8O§.§5;§.§+!G§())
            {
               this.§%"3§.update(param1);
            }
            this.§4!D§(this.§%"3§.getHUDs());
            this.§'k§();
         }
         this.§'3§.update(param1);
      }
      
      private function §4!D§(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.§8!a§)
         {
            if(param1.indexOf(_loc2_) == -1)
            {
               this.§8O§.§%H§.§1!j§.movieClip.removeChild(_loc2_);
            }
         }
         this.§8!a§ = param1;
         for each(_loc2_ in this.§8!a§)
         {
            if(_loc2_.parent != this.§8O§.§%H§.§1!j§.movieClip)
            {
               this.§8O§.§%H§.§1!j§.movieClip.addChildAt(_loc2_,0);
            }
         }
      }
      
      public function §'k§() : void
      {
         var _loc1_:DisplayObject = this.§%"3§.getNextInstruction();
         if(this.§8d§ && this.§8d§ != _loc1_)
         {
            this.§8d§.parent.removeChild(this.§8d§);
         }
         this.§8d§ = _loc1_;
         if(this.§8d§)
         {
            if(!this.§8d§.parent)
            {
               this.§8O§.§%H§.§1!j§.movieClip.addChild(this.§8d§);
            }
            this.§8d§.visible = !this.§8O§.§5;§.§+!G§();
         }
      }
      
      public function § _§() : int
      {
         return this.§%"3§.§ _§();
      }
      
      private function §+L§(param1:Event) : void
      {
         this.update(0);
         §1""§.§[3§ = false;
         if(this.§%"3§ && !this.§`v§())
         {
            this.§%"3§.§#u§();
         }
      }
      
      private function §@!K§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         if(this.§=%§.§@"#§().length > 0)
         {
            _loc2_ = this.§8O§.§4+§.§3!g§();
            if(!_loc2_.valid)
            {
               _loc2_ = new Object();
            }
            else
            {
               _loc3_ = StateLevelEditorTestPlay.§+!T§();
               if(_loc3_ == null)
               {
                  _loc3_ = new BitmapData(100,100);
               }
               _loc4_ = §]!F§.encode(_loc3_);
               _loc2_.screen = Base64.§%"!§(_loc4_);
               _loc2_.name = this.§=%§.§@"#§();
            }
            this.§4!"§ = JSON.stringify(_loc2_);
            this.§=%§.§7n§();
            §,"1§.§9j§.completeQuest(this.§4!"§);
         }
      }
      
      public function activate() : void
      {
         if(!this.§%"3§)
         {
            this.§88§();
         }
         this.§'3§.init(this.§%"3§);
         if(this.§?;§ == Quest.§=!M§ && §1""§.§[3§)
         {
            this.§+!E§();
         }
         else
         {
            this.§8O§.§%H§.§<!9§().§;!%§();
            if(this.§`v§())
            {
               this.§8O§.§%H§.§<!9§().getItemByName("Categories").setVisibility(false);
               this.§8O§.§%H§.§<!9§().getItemByName("Categories2").setVisibility(true);
               this.§8O§.§%H§.§<!9§().§'p§("Birds");
            }
            this.§8O§.§&!m§.§3"2§(false);
         }
      }
      
      protected function §<!I§(param1:Event) : void
      {
      }
      
      private function §+!E§() : void
      {
         this.§=%§ = new §>$§(§"a§.§-!g§.Views.PopupView_PublishLevel[0],this.§8O§.§%H§.§<!9§());
         this.§=%§.open();
         this.§'3§.hide();
      }
      
      public function get §=H§() : String
      {
         if(this.§%"3§)
         {
            return this.§%"3§.§=H§;
         }
         return "";
      }
      
      public function canObjectBeModified(param1:§>"-§ = null) : Boolean
      {
         if(!this.§%"3§)
         {
            return true;
         }
         if(this.§%"3§.§=H§ == Quest.§?!W§ || this.§%"3§.§=H§ == Quest.§+"0§)
         {
            return false;
         }
         if(param1 && !param1.§7@§())
         {
            return false;
         }
         if(param1 && param1.isTexture() && !this.§-[§)
         {
            return false;
         }
         if(param1 && this.§`v§() && !param1.§6!p§())
         {
            return false;
         }
         if(!this.§%"3§.canObjectBeModified(param1))
         {
            return false;
         }
         return true;
      }
      
      private function §`v§() : Boolean
      {
         return this.§%>§ != null;
      }
      
      public function canObjectBeAdded(param1:String = null) : Boolean
      {
         if(!this.§%"3§)
         {
            return true;
         }
         if(this.§%"3§.§=H§ == Quest.§?!W§ || this.§%"3§.§=H§ == Quest.§+"0§)
         {
            return false;
         }
         if(!this.§%"3§.§`+§)
         {
            return false;
         }
         if(param1 && this.§`v§() && param1.indexOf("BIRD") == -1)
         {
            return false;
         }
         return true;
      }
      
      public function canObjectBeDeleted(param1:§>"-§ = null) : Boolean
      {
         return this.canObjectBeModified(param1) && (!this.§%"3§ || !this.§%"3§.isObjectNeeded(param1));
      }
      
      public function canContinue() : Boolean
      {
         if(!this.§%"3§)
         {
            return true;
         }
         if(this.§%"3§.§=H§ == Quest.§=!M§ && this.§8O§.§4+§.getBirdCount() < 1)
         {
            return false;
         }
         return this.§%"3§.§=H§ == Quest.§ "%§ || this.§%"3§.§=H§ == Quest.§=!M§;
      }
      
      public function isCategoryAvailable(param1:String) : Boolean
      {
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(this.§%"3§ && !this.§%"3§.§]!x§ && _loc2_.indexOf(param1) != -1)
         {
            return false;
         }
         return true;
      }
      
      public function canCreateUndoPoint() : Boolean
      {
         if(this.§%"3§.§=H§ != Quest.§?!W§ && this.§%"3§.§=H§ != Quest.§+"0§)
         {
            return true;
         }
         return false;
      }
      
      private function §5-§() : void
      {
         this.§%"3§.removeEventListener(§`!z§.§'! §,this.§+r§);
         this.§%"3§.removeEventListener(§`!z§.§6"-§,this.§[e§);
         this.§%"3§.removeEventListener(§`!z§.§;!9§,this.§[e§);
         this.§%"3§.dispose();
         this.§%"3§ = null;
      }
      
      private function §+r§(param1:§`!z§ = null) : void
      {
         var _loc2_:String = this.§%"3§.§=H§;
         if(param1)
         {
            dispatchEvent(new §`!z§(param1.type));
         }
         if(_loc2_ == Quest.§+"0§)
         {
            this.§'3§.hide();
         }
         if(param1 && param1.§!!R§ == Quest.§5q§)
         {
            this.§8O§.§4+§.§#u§();
            §<!L§.log("Notify change!");
         }
         if(_loc2_ == Quest.§?!W§)
         {
            this.§8O§.§5;§.§9!V§(true);
         }
         else if(param1 && param1.§!!R§ == Quest.§?!W§)
         {
            this.§8O§.§4+§.§#u§();
            this.§'3§.show();
            this.§8O§.§%H§.§<!9§().§'p§("Wood");
            this.§8O§.§5;§.§9!V§(false);
            this.§8O§.§&!m§.§^!=§();
            this.§8O§.§&!m§.§3"2§(false);
         }
         if(param1 && param1.§!!R§ == Quest.§;!X§)
         {
            this.§8O§.§5;§.§9!V§(false);
            if(param1.§0^§ == Quest.§=!M§)
            {
               this.§=!§();
            }
            return;
         }
         if(param1 && param1.§!!R§ == Quest.§=!M§)
         {
            this.§?!+§();
         }
         if(_loc2_ == Quest.§;!X§)
         {
            this.§8O§.§6!A§.goToCastleView();
         }
      }
      
      private function §=!§() : void
      {
         if(§<3§.§9j§.§2F§())
         {
            this.§%>§ = this.§8O§.§%H§.§<!9§().§<!]§();
            this.§8O§.§%H§.§<!9§().getItemByName("Categories").setVisibility(false);
            this.§8O§.§%H§.§<!9§().getItemByName("Categories2").setVisibility(true);
            this.§8O§.§%H§.§<!9§().§'p§("Birds");
         }
         else
         {
            this.play();
         }
      }
      
      private function §?!+§() : void
      {
         this.§8O§.§%H§.§<!9§().getItemByName("Categories").setVisibility(true);
         this.§8O§.§%H§.§<!9§().getItemByName("Categories2").setVisibility(false);
         if(this.§%>§ != null)
         {
            this.§8O§.§%H§.§<!9§().§'p§(this.§%>§);
            this.§%>§ = null;
         }
      }
      
      private function get §?;§() : String
      {
         if(this.§%"3§)
         {
            return this.§%"3§.§=H§;
         }
         return Quest.§+"0§;
      }
      
      private function §+f§(param1:Event) : void
      {
         this.§5-§();
      }
      
      private function §`""§() : void
      {
         this.§8O§.§5;§.§9!V§(true);
         this.§%"3§.§'!9§();
         this.§%"3§.update(0);
         this.§8O§.§%H§.§<!9§().getItemByName("ButtonCheck").setVisibility(false);
         this.§8O§.§%H§.§<!9§().getItemByName("ButtonGravity").setVisibility(false);
         this.§8O§.§%H§.§<!9§().getItemByName("Button_Cancel").setVisibility(true);
      }
      
      private function §[e§(param1:§`!z§) : void
      {
         this.§8O§.§%H§.§<!9§().getItemByName("ButtonCheck").setVisibility(true);
         this.§8O§.§%H§.§<!9§().getItemByName("ButtonGravity").setVisibility(true);
         this.§8O§.§%H§.§<!9§().getItemByName("Button_Cancel").setVisibility(false);
         this.§8O§.§5;§.§9!V§(false);
      }
      
      private function §7%§() : String
      {
         if(this.§%"3§.§?F§())
         {
            return this.§%"3§.§?F§().description;
         }
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         try
         {
            this.§=%§.close();
            this.§=%§ = null;
            this.§8O§.§%H§.§<!9§().§7"%§();
            this.§8O§.§&!m§.§7"0§();
            this.§;!i§ = new §+a§(§"a§.§-!g§.Views.PopupView_Rewards[0],this.§8O§.§%H§.§<!9§(),this.§%"3§.§<",§().length + 1);
            this.§;!i§.open();
            timer = new Timer(this.§<!X§,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§4!v§);
            timer.start();
            §,!Z§.§8"0§(§,!Z§.§4I§);
         }
         catch(e:Error)
         {
            §<!L§.log("Error parsing response");
         }
         this.§5-§();
      }
      
      protected function §4!v§(param1:TimerEvent) : void
      {
         if(this.§;!i§)
         {
            this.§;!i§.close();
            this.§;!i§ = null;
         }
         this.§3y§ = new §'!6§(§"a§.§-!g§.Views.PopupView_FinishLevel[0],this.§8O§.§%H§.§<!9§());
         this.§3y§.open();
      }
      
      private function § !d§(param1:Event) : void
      {
         if(this.§%"3§)
         {
            this.§%"3§.refresh(this.§8O§.§4+§.§]!D§);
         }
      }
      
      private function §]!6§(param1:Event) : void
      {
         if(!this.§%"3§)
         {
            return;
         }
         if(this.§?;§ != Quest.§+"0§ && this.§?;§ != Quest.§=!M§)
         {
            if(this.§?;§ != Quest.§;!X§)
            {
               if(this.§8O§.§5;§.§+!G§())
               {
                  this.§8O§.§5;§.§9!V§(false);
               }
               this.§`""§();
            }
         }
         if(this.§?;§ == Quest.§=!M§)
         {
            if(!this.§`v§())
            {
               this.§=!§();
            }
            else
            {
               this.play();
            }
         }
      }
      
      private function play() : void
      {
         this.§8O§.§&!m§.§^!=§();
         this.§%"3§.onPhysicsEnabled();
         this.§8O§.§%H§.§ g§();
      }
      
      private function § true§(param1:Event) : void
      {
         if(this.§%"3§ && this.§%"3§.§=H§ == Quest.§;!X§)
         {
            this.§%"3§.§&!v§();
         }
         else if(this.§%"3§ && this.§%"3§.§=H§ == Quest.§=!M§)
         {
            this.§?!+§();
         }
         else if(this.§=%§ != null)
         {
            this.§=%§.close();
            this.§=%§ = null;
            this.§8O§.§%H§.§<!9§().§;!%§();
         }
         else if(this.§3y§ != null)
         {
            this.§3y§.close();
            this.§3y§ = null;
            this.§8O§.§%H§.mNextState = §1Z§.§#!w§;
            §1Z§.§&s§ = true;
         }
      }
      
      private function §88§() : void
      {
         var _loc2_:XML = null;
         var _loc1_:XML = §`!#§.§@"4§;
         §<3§.§9j§.§-b§();
         if(_loc1_)
         {
            this.§-[§ = false;
            this.§%"3§ = new Quest(this.§8O§.§4+§.§]!D§);
            this.§%"3§.addEventListener(§`!z§.§'! §,this.§+r§);
            this.§%"3§.addEventListener(§`!z§.§6"-§,this.§[e§);
            this.§%"3§.addEventListener(§`!z§.§;!9§,this.§[e§);
            this.§%"3§.§`-§(_loc1_);
            if(_loc1_.availableItems != undefined)
            {
               for each(_loc2_ in _loc1_.availableItems[0].item)
               {
                  §<3§.§9j§.§`x§(_loc2_.toString());
               }
               §<3§.§9j§.§7!=§ = _loc1_.availableItems.@count;
            }
            else
            {
               §<3§.§9j§.§'O§();
               §<3§.§9j§.§7!=§ = 100;
            }
         }
         else
         {
            this.§-[§ = true;
            this.§%"3§ = Quest.§?Y§(this.§8O§.§4+§.§]!D§);
         }
         this.§+r§();
         §,!Z§.§8"0§(§,!Z§.§]u§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§%"3§.onPhysicsEnabled();
      }
      
      public function canPan() : Boolean
      {
         return true;
      }
      
      public function canSave() : Boolean
      {
         if(!this.§%"3§)
         {
            return true;
         }
         return this.§%"3§.§`+§;
      }
      
      public function isGravityAvailable() : Boolean
      {
         if(!this.§%"3§)
         {
            return true;
         }
         return this.§%"3§.§`+§;
      }
   }
}
