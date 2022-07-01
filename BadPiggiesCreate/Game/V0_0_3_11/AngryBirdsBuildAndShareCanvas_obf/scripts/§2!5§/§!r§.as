package §2!5§
{
   import § !i§.§>!H§;
   import § J§.StateLevelEditorTestPlay;
   import §""6§.§1f§;
   import §""6§.§<a§;
   import §#V§.§7b§;
   import §&!!§.§%!]§;
   import §0",§.§'!H§;
   import §1g§.;
   import §1g§.§+^§;
   import §1g§.§>!$§;
   import §1g§.§],§;
   import §1g§.§^N§;
   import §1z§.§2!J§;
   import §1z§.Quest;
   import §2i§.§,,§;
   import §5"'§.§&!]§;
   import §9!l§.§`!d§;
   import §;!§.§8V§;
   import §;"$§.§8!O§;
   import §;X§.§ do§;
   import §;X§.Base64;
   import §<!p§.§"P§;
   import §?h§.§8!K§;
   import §@!P§.§?"%§;
   import §]X§.§<!-§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §!r§ implements §4!]§
   {
       
      
      private var §81§:Quest;
      
      private var §24§:§7b§;
      
      private var §!^§:§0!X§;
      
      private var §?"!§:Vector.<DisplayObject>;
      
      private var §#!v§:Boolean = false;
      
      private var §+H§:§],§;
      
      private var §9#§:§+^§;
      
      private var §^>§:§>!$§;
      
      private var §>5§:§^N§;
      
      private var §=Z§:String;
      
      private var §"-§:String;
      
      private var §1!-§:DisplayObject;
      
      private var §#",§:§8!K§;
      
      private var §%!q§:Boolean = false;
      
      private var §@C§:§'!H§;
      
      private var §'=§:Boolean = false;
      
      private const §]@§:int = 4000;
      
      public function §!r§(param1:§0!X§)
      {
         this.§?"!§ = new Vector.<DisplayObject>();
         super();
         this.§!^§ = param1;
         this.§24§ = new §7b§(this.§!^§.§!e§.§%""§ as §`!d§,§8!O§.§'!J§.Views.View_QuestMenu[0],this.§!^§.§!e§.§%""§.container);
         this.§24§.addEventListener(Event.SELECT,this.§<!_§);
         §2!J§.§if §.addEventListener(ErrorEvent.ERROR,this.onError);
         §2!J§.§if §.addEventListener(§>!H§.§4l§,this.onQuestCompleted);
      }
      
      public function initialize() : void
      {
         this.§!^§.§!e§.addEventListener(§8V§.CONTINUE,this.§&!z§,false,1);
         this.§!^§.§!e§.addEventListener(§8V§.CANCEL,this.§,!V§);
         this.§!^§.§!e§.addEventListener(§8V§.PUBLISH,this.§9A§);
         this.§!^§.§@s§.addEventListener(§8V§.§["0§,this.§^!_§);
         this.§!^§.§@s§.addEventListener(§8V§.CHANGE,this.§[k§);
         this.§!^§.§;d§.addEventListener(§8V§.§<!,§,this.§[k§);
         this.§!^§.§0!y§.addEventListener(§8V§.§#!u§,this.onPhysicsEnabled);
         this.§!^§.§0!y§.addEventListener(§8V§.§[!F§,this.§9!,§);
         this.§!^§.§!e§.addEventListener(KeyboardEvent.KEY_DOWN,this.§1!r§);
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         this.§!^§.§>!0§.showError(param1.text);
      }
      
      private function §1!r§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == "f".charCodeAt())
         {
            §<a§.§!%§ = true;
            this.§8!y§();
            this.§!^§.§!e§.§<8§().§+0§();
         }
         if(this.§ each§ != Quest.§@0§)
         {
            return;
         }
         if(param1.charCode == "w".charCodeAt())
         {
            this.§81§.§,!>§();
            this.§!^§.§@s§.§3!%§();
            this.§!^§.§!e§.§<8§().§<^§("Blocks");
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§'=§)
         {
            if(!this.§%!q§)
            {
               this.§'=§ = false;
               this.play();
               return;
            }
         }
         else if(this.§81§)
         {
            if(!this.§!^§.§0!y§.§4"0§() || this.§ each§ == Quest.§99§ || this.§ each§ == Quest.§;E§)
            {
               this.§81§.update(param1);
            }
            this.§>r§(this.§81§.getHUDs());
            this.§%L§();
         }
         this.§24§.update(param1);
      }
      
      private function §>r§(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.§?"!§)
         {
            if(param1.indexOf(_loc2_) == -1)
            {
               this.§!^§.§!e§.§%""§.movieClip.removeChild(_loc2_);
            }
         }
         this.§?"!§ = param1;
         for each(_loc2_ in this.§?"!§)
         {
            if(_loc2_.parent != this.§!^§.§!e§.§%""§.movieClip)
            {
               this.§!^§.§!e§.§%""§.movieClip.addChildAt(_loc2_,0);
            }
         }
      }
      
      public function §%L§() : void
      {
         var _loc1_:DisplayObject = this.§81§.getNextInstruction();
         if(this.§1!-§ && this.§1!-§ != _loc1_ && this.§1!-§.parent)
         {
            this.§1!-§.parent.removeChild(this.§1!-§);
         }
         this.§1!-§ = _loc1_;
         if(this.§1!-§)
         {
            if(!this.§1!-§.parent)
            {
               this.§!^§.§!e§.§%""§.movieClip.addChild(this.§1!-§);
            }
            this.§1!-§.visible = !this.§!^§.§0!y§.§4"0§();
            this.§1!-§.visible = this.§1!-§.visible && !this.§%!q§;
         }
         if(!this.§@C§.parent && !this.§81§.§7!p§)
         {
            this.§!^§.§!e§.§%""§.movieClip.addChild(this.§@C§);
         }
      }
      
      public function §@!v§() : int
      {
         return this.§81§.§@!v§();
      }
      
      private function §[k§(param1:Event) : void
      {
         this.update(0);
         §<a§.§!%§ = false;
         if(this.§81§ && !this.§ !5§())
         {
            this.§81§.§3!%§();
         }
      }
      
      private function §9A§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         if(this.§>5§.§ -§().length > 0)
         {
            _loc2_ = this.§!^§.§@s§.§1_§();
            if(!_loc2_.valid)
            {
               _loc2_ = new Object();
            }
            else
            {
               _loc3_ = StateLevelEditorTestPlay.§;h§();
               if(_loc3_ == null)
               {
                  _loc3_ = new BitmapData(100,100);
               }
               _loc4_ = §&!]§.encode(_loc3_);
               _loc2_.screen = Base64.§^!n§(_loc4_);
               _loc2_.name = this.§>5§.§ -§();
            }
            this.§=Z§ = JSON.stringify(_loc2_);
            this.§>5§.§4!G§();
            §2!J§.§if §.completeQuest(this.§=Z§);
         }
      }
      
      public function activate() : void
      {
         §=,§.§if §.§,!M§(this.§9q§,§=,§.SAVE);
         §=,§.§if §.§,!M§(this.§^a§,§=,§.CONTINUE);
         §=,§.§if §.§,!M§(this.§#!A§,§=,§.MODIFY);
         §=,§.§if §.§,!M§(this.§ try§,§=,§.ADD);
         §=,§.§if §.§,!M§(this.§-!+§,§=,§.DELETE);
         §=,§.§if §.§,!M§(this.§9§,§=,§.CATEGORY);
         §=,§.§if §.§,!M§(this.§"!-§,§=,§.GRAVITY);
         §=,§.§if §.§,!M§(this.§>!6§,§=,§.CREATE_UNDO);
         if(!this.§81§)
         {
            this.§2!<§();
         }
         this.§24§.init(this.§81§);
         if(this.§ each§ == Quest.§2q§ && §<a§.§!%§)
         {
            this.§8!y§();
         }
         else
         {
            this.§!^§.§!e§.§<8§().§-<§();
            if(this.§ !5§())
            {
               this.§!^§.§!e§.§<8§().getItemByName("Categories").setVisibility(false);
               this.§!^§.§!e§.§<8§().getItemByName("Categories2").setVisibility(true);
               this.§!^§.§!e§.§<8§().§<^§("Birds");
            }
            this.§!^§.§;d§.§"!1§(false);
            this.§!!M§();
         }
      }
      
      private function §!!M§() : void
      {
         var _loc2_:§#6§ = null;
         if(this.§%!q§)
         {
            return;
         }
         var _loc1_:String = this.§81§.§[t§();
         if(_loc1_)
         {
            _loc2_ = new §#6§(§8!O§.§'!J§.Views.PopupView_Prompt[0],this.§!^§.§!e§.§<8§(),_loc1_);
            _loc2_.open();
            _loc2_.§5f§ = this.§?!h§;
            this.§%!q§ = true;
            this.§@C§.visible = false;
         }
      }
      
      private function §?!h§() : void
      {
         this.§%!q§ = false;
         this.§@C§.visible = true;
         this.§!!M§();
      }
      
      private function §8!y§() : void
      {
         this.§>5§ = new §^N§(§8!O§.§'!J§.Views.PopupView_PrePublish[0],this.§!^§.§!e§.§<8§(),this.§81§);
         this.§>5§.open();
         this.§24§.hide();
      }
      
      public function get §?!N§() : String
      {
         if(this.§81§)
         {
            return this.§81§.§?!N§;
         }
         return "";
      }
      
      public function §#!A§(param1:§?"%§ = null) : Boolean
      {
         if(!this.§81§)
         {
            return true;
         }
         if(this.§81§.§?!N§ == Quest.§;E§ || this.§81§.§?!N§ == Quest.§0!_§)
         {
            return false;
         }
         if(param1 && !param1.§2!t§())
         {
            return false;
         }
         if(param1 && param1.isTexture() && !this.§#!v§)
         {
            return false;
         }
         if(param1 && this.§ !5§() && !param1.§^!!§())
         {
            return false;
         }
         if(!this.§81§.§#!A§(param1))
         {
            return false;
         }
         return true;
      }
      
      private function § !5§() : Boolean
      {
         return this.§"-§ != null;
      }
      
      public function § try§(param1:String = null) : Boolean
      {
         if(!this.§81§)
         {
            return true;
         }
         if(this.§81§.§?!N§ == Quest.§;E§ || this.§81§.§?!N§ == Quest.§0!_§)
         {
            return false;
         }
         if(!this.§81§.§[H§)
         {
            return false;
         }
         if(param1 && this.§ !5§() && param1.indexOf("BIRD") == -1)
         {
            return false;
         }
         return true;
      }
      
      public function §-!+§(param1:§?"%§ = null) : Boolean
      {
         return this.§#!A§(param1) && (!this.§81§ || !this.§81§.isObjectNeeded(param1));
      }
      
      public function §^a§() : Boolean
      {
         if(!this.§81§)
         {
            return true;
         }
         if(this.§81§.§?!N§ == Quest.§2q§ && this.§!^§.§@s§.getBirdCount() < 1)
         {
            return false;
         }
         return this.§81§.§?!N§ == Quest.§=!V§ || this.§81§.§?!N§ == Quest.§2q§;
      }
      
      public function §9§(param1:String) : Boolean
      {
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(this.§81§ && !this.§81§.§7!p§ && _loc2_.indexOf(param1) != -1)
         {
            return false;
         }
         return true;
      }
      
      public function §>!6§() : Boolean
      {
         if(this.§81§.§?!N§ != Quest.§;E§ && this.§81§.§?!N§ != Quest.§0!_§)
         {
            return true;
         }
         return false;
      }
      
      private function §#"!§() : void
      {
         this.§81§.removeEventListener(§>!H§.§'§,this.§class§);
         this.§81§.removeEventListener(§>!H§.§-!§,this.§-n§);
         this.§81§.removeEventListener(§>!H§.§^%§,this.§-n§);
         this.§81§.dispose();
         if(this.§1!-§ && this.§1!-§.parent)
         {
            this.§1!-§.parent.removeChild(this.§1!-§);
         }
         this.§1!-§ = null;
         if(this.§@C§.parent)
         {
            this.§@C§.parent.removeChild(this.§@C§);
         }
         this.§@C§ = null;
         this.§81§ = null;
      }
      
      private function §`!W§(param1:§>!H§) : void
      {
         this.§!!M§();
      }
      
      private function §class§(param1:§>!H§ = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:§#6§ = null;
         this.§!!M§();
         var _loc2_:String = this.§81§.§?!N§;
         if(_loc2_ == Quest.§0!_§)
         {
            this.§24§.hide();
         }
         else if(param1 && param1.§@!5§ == Quest.§;"8§)
         {
            this.§!^§.§@s§.§3!%§();
            this.§9!,§();
         }
         else if(_loc2_ == Quest.§;E§)
         {
            this.§!^§.§0!y§.§2"§(true);
         }
         else if(param1 && param1.§@!5§ == Quest.§;E§)
         {
            _loc3_ = "Let\'s fix this. Put the blocks back in place.";
            _loc4_ = new §#6§(§8!O§.§'!J§.Views.PopupView_Prompt[0],this.§!^§.§!e§.§<8§(),_loc3_);
            this.§24§.show();
            this.§!^§.§!e§.§<8§().§<^§("Wood");
            this.§!^§.§0!y§.§2"§(false);
            this.§!^§.§;d§.§^3§();
            this.§!^§.§;d§.§"!1§(false);
            this.§!^§.§,A§.§2"$§(this.§81§.§!!w§());
         }
         else if(param1 && param1.§@!5§ == Quest.§99§)
         {
            this.§!^§.§0!y§.§2"§(false);
            if(param1.§%!u§ == Quest.§2q§)
            {
               this.§8"4§();
            }
         }
         else if(param1 && param1.§@!5§ == Quest.§2q§)
         {
            this.§&!D§();
         }
         else if(_loc2_ == Quest.§99§)
         {
            this.§!^§.§,A§.goToCastleView();
         }
      }
      
      private function §8"4§() : void
      {
         if(§"P§.§if §.§@b§())
         {
            this.§"-§ = this.§!^§.§!e§.§<8§().§5",§();
            this.§!^§.§!e§.§<8§().getItemByName("Categories").setVisibility(false);
            this.§!^§.§!e§.§<8§().getItemByName("Categories2").setVisibility(true);
            this.§!^§.§!e§.§<8§().§<^§("Birds");
         }
         else
         {
            this.§'=§ = true;
         }
      }
      
      private function §&!D§() : void
      {
         this.§!^§.§!e§.§<8§().getItemByName("Categories").setVisibility(true);
         this.§!^§.§!e§.§<8§().getItemByName("Categories2").setVisibility(false);
         if(this.§"-§ != null)
         {
            this.§!^§.§!e§.§<8§().§<^§(this.§"-§);
            this.§"-§ = null;
         }
      }
      
      private function get § each§() : String
      {
         if(this.§81§)
         {
            return this.§81§.§?!N§;
         }
         return Quest.§0!_§;
      }
      
      private function §<!_§(param1:Event) : void
      {
         this.§#"!§();
      }
      
      private function §5!6§() : void
      {
         this.§!^§.§0!y§.§2"§(true);
         this.§81§.§-!C§();
         this.§81§.update(0);
         this.§!^§.§!e§.§<8§().getItemByName("ButtonCheck").setVisibility(false);
         this.§!^§.§!e§.§<8§().getItemByName("ButtonGravity").setVisibility(false);
         this.§!^§.§!e§.§<8§().getItemByName("Button_Cancel").setVisibility(true);
      }
      
      private function §-n§(param1:§>!H§) : void
      {
         this.§!^§.§!e§.§<8§().getItemByName("ButtonCheck").setVisibility(true);
         this.§!^§.§!e§.§<8§().getItemByName("ButtonGravity").setVisibility(true);
         this.§!^§.§!e§.§<8§().getItemByName("Button_Cancel").setVisibility(false);
         this.§!^§.§0!y§.§2"§(false);
      }
      
      private function §'M§() : String
      {
         if(this.§81§.§`0§())
         {
            return this.§81§.§`0§().description;
         }
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         try
         {
            this.§>5§.close();
            this.§>5§ = null;
            this.§!^§.§!e§.§<8§().§+0§();
            this.§!^§.§;d§.§1"7§();
            this.§9#§ = new §+^§(§8!O§.§'!J§.Views.PopupView_Rewards[0],this.§!^§.§!e§.§<8§(),this.§81§.§3,§().length + 1);
            this.§9#§.open();
            timer = new Timer(this.§]@§,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§^'§);
            timer.start();
            §,,§.§<Q§(§,,§.§3q§);
         }
         catch(e:Error)
         {
            § do§.log("Error parsing response");
         }
         this.§#"!§();
      }
      
      protected function §^'§(param1:TimerEvent) : void
      {
         if(this.§9#§)
         {
            this.§9#§.close();
            this.§9#§ = null;
         }
         this.§^>§ = new §>!$§(§8!O§.§'!J§.Views.PopupView_LevelUp[0],this.§!^§.§!e§.§<8§());
         this.§^>§.open();
         this.§^>§.mClip.addEventListener(§%!]§.§["3§,this.§,!s§);
      }
      
      protected function §,!s§(param1:Event) : void
      {
         this.§+H§ = new §],§(§8!O§.§'!J§.Views.PopupView_FinishLevel[0],this.§!^§.§!e§.§<8§());
         this.§+H§.open();
      }
      
      private function §^!_§(param1:Event) : void
      {
         if(this.§81§)
         {
            this.§81§.refresh(this.§!^§.§@s§.§'4§);
         }
      }
      
      private function §&!z§(param1:Event) : void
      {
         if(!this.§81§)
         {
            return;
         }
         if(this.§ each§ != Quest.§0!_§ && this.§ each§ != Quest.§2q§)
         {
            if(this.§ each§ != Quest.§99§)
            {
               if(this.§!^§.§0!y§.§4"0§())
               {
                  this.§!^§.§0!y§.§2"§(false);
               }
               this.§5!6§();
            }
         }
         if(this.§ each§ == Quest.§2q§)
         {
            if(!this.§ !5§())
            {
               this.§8"4§();
            }
            else
            {
               this.play();
            }
         }
      }
      
      private function play() : void
      {
         this.§!^§.§;d§.§^3§();
         this.§81§.onPhysicsEnabled();
         this.§!^§.§!e§.§ S§();
      }
      
      private function §,!V§(param1:Event) : void
      {
         if(this.§81§ && this.§81§.§?!N§ == Quest.§99§)
         {
            this.§81§.§<!n§();
         }
         else if(this.§>5§ != null)
         {
            this.§>5§.close();
            this.§>5§ = null;
            this.§!^§.§!e§.§<8§().§-<§();
         }
         else if(this.§+H§ != null)
         {
            this.§+H§.close();
            this.§+H§ = null;
            this.§!^§.§!e§.mNextState = §1f§.§^z§;
            §1f§.§;!b§ = true;
         }
         else if(this.§81§ && this.§81§.§?!N§ == Quest.§2q§)
         {
            this.§&!D§();
         }
      }
      
      private function §2!<§() : void
      {
         var _loc2_:XML = null;
         var _loc1_:XML = §<!-§.§@-§;
         §"P§.§if §.§>",§();
         if(_loc1_)
         {
            this.§#!v§ = false;
            this.§81§ = new Quest(this.§!^§.§@s§.§'4§);
            this.§@C§ = new §'!H§(this.§81§);
            this.§81§.addEventListener(§>!H§.§"!L§,this.§`!W§);
            this.§81§.addEventListener(§>!H§.§'§,this.§class§);
            this.§81§.addEventListener(§>!H§.§-!§,this.§-n§);
            this.§81§.addEventListener(§>!H§.§^%§,this.§-n§);
            this.§81§.§3!0§(_loc1_);
            if(_loc1_.availableItems != undefined)
            {
               for each(_loc2_ in _loc1_.availableItems[0].item)
               {
                  §"P§.§if §.§;I§(_loc2_.toString());
               }
               §"P§.§if §.§#!G§ = _loc1_.availableItems.@count;
            }
            else
            {
               §"P§.§if §.§98§();
               §"P§.§if §.§#!G§ = 100;
            }
         }
         else
         {
            this.§#!v§ = true;
            this.§81§ = Quest.§'"3§(this.§!^§.§@s§.§'4§);
            this.§@C§ = new §'!H§(this.§81§);
         }
         this.§class§();
         §,,§.§<Q§(§,,§.§9`§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§81§.onPhysicsEnabled();
         this.§!^§.§,A§.goToCastleView();
      }
      
      private function §9!,§(param1:Event = null) : void
      {
         this.§!^§.§,A§.§2"$§(this.§81§.§!!w§());
      }
      
      public function §=o§() : Boolean
      {
         return this.§ each§ != Quest.§@0§;
      }
      
      public function §9q§() : Boolean
      {
         if(!this.§81§)
         {
            return true;
         }
         return this.§81§.§[H§;
      }
      
      public function §"!-§() : Boolean
      {
         if(!this.§81§)
         {
            return true;
         }
         return this.§81§.§[H§;
      }
   }
}
