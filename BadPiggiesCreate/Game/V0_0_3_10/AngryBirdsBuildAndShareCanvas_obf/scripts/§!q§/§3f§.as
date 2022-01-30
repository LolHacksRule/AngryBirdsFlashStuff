package §!q§
{
   import §!!+§.StateLevelEditorTestPlay;
   import §#L§.§!!Q§;
   import §%!Z§.§!!]§;
   import §%!Z§.§"<§;
   import §%!Z§.§0j§;
   import §%!Z§.§7q§;
   import §%!Z§.§`L§;
   import §%!k§.§&^§;
   import §&!&§.§8F§;
   import §+!v§.§`!t§;
   import §,"$§.§8!x§;
   import §,i§.§4!q§;
   import §,i§.§8!0§;
   import §3;§.§#!C§;
   import §4!t§.§1!=§;
   import §6`§.§`!e§;
   import §7!&§.§=!h§;
   import §9!G§.Base64;
   import §9!G§.§]!e§;
   import §9!z§.§'Y§;
   import §="$§.§?3§;
   import §="$§.Quest;
   import §>"2§.§^F§;
   import §?^§.§0Q§;
   import §`J§.§-!_§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §3f§ implements §2j§
   {
       
      
      private var §@_§:Quest;
      
      private var §=,§:§`!e§;
      
      private var §5!V§:§84§;
      
      private var §1E§:Vector.<DisplayObject>;
      
      private var §,!,§:Boolean = false;
      
      private var §%!7§:§"<§;
      
      private var §]!E§:§0j§;
      
      private var §&!b§:§!!]§;
      
      private var §;!&§:§7q§;
      
      private var §]!&§:String;
      
      private var §[W§:String;
      
      private var §<!`§:DisplayObject;
      
      private var §-3§:§^F§;
      
      private var §%@§:Boolean = false;
      
      private var §=!3§:§-!_§;
      
      private var §'B§:Boolean = false;
      
      private const § f§:int = 4000;
      
      public function §3f§(param1:§84§)
      {
         this.§1E§ = new Vector.<DisplayObject>();
         super();
         this.§5!V§ = param1;
         this.§=,§ = new §`!e§(this.§5!V§.§<B§.§'K§ as §'Y§,§1!=§.§8X§.Views.View_QuestMenu[0],this.§5!V§.§<B§.§'K§.container);
         this.§=,§.addEventListener(Event.SELECT,this.§8_§);
         §?3§.§,l§.addEventListener(ErrorEvent.ERROR,this.onError);
         §?3§.§,l§.addEventListener(§!!Q§.§=§,this.onQuestCompleted);
      }
      
      public function initialize() : void
      {
         this.§5!V§.§<B§.addEventListener(§#!C§.CONTINUE,this.§#!@§,false,1);
         this.§5!V§.§<B§.addEventListener(§#!C§.CANCEL,this.§'-§);
         this.§5!V§.§<B§.addEventListener(§#!C§.PUBLISH,this.§1<§);
         this.§5!V§.§"j§.addEventListener(§#!C§.§&!J§,this.§2!]§);
         this.§5!V§.§"j§.addEventListener(§#!C§.CHANGE,this.§>!7§);
         this.§5!V§.§05§.addEventListener(§#!C§.§"" §,this.§>!7§);
         this.§5!V§.§4!v§.addEventListener(§#!C§.§""2§,this.onPhysicsEnabled);
         this.§5!V§.§4!v§.addEventListener(§#!C§.§+q§,this.§>!$§);
         this.§5!V§.§<B§.addEventListener(KeyboardEvent.KEY_DOWN,this.§^"5§);
      }
      
      protected function onError(param1:ErrorEvent) : void
      {
         this.§5!V§.§'_§.showError(param1.text);
      }
      
      private function §^"5§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == "f".charCodeAt())
         {
            §4!q§.§;!3§ = true;
            this.§2<§();
            this.§5!V§.§<B§.§#Y§().§&_§();
         }
         if(this.§0<§ != Quest.§`!q§)
         {
            return;
         }
         if(param1.charCode == "w".charCodeAt())
         {
            this.§@_§.§=""§();
            this.§5!V§.§"j§.§=Q§();
            this.§5!V§.§<B§.§#Y§().§7!%§("Blocks");
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§'B§)
         {
            if(!this.§%@§)
            {
               this.§'B§ = false;
               this.play();
               return;
            }
         }
         else if(this.§@_§)
         {
            if(!this.§5!V§.§4!v§.§@&§() || this.§0<§ == Quest.§;!;§ || this.§0<§ == Quest.§!!r§)
            {
               this.§@_§.update(param1);
            }
            this.§&!3§(this.§@_§.getHUDs());
            this.§;!m§();
         }
         this.§=,§.update(param1);
      }
      
      private function §&!3§(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.§1E§)
         {
            if(param1.indexOf(_loc2_) == -1)
            {
               this.§5!V§.§<B§.§'K§.movieClip.removeChild(_loc2_);
            }
         }
         this.§1E§ = param1;
         for each(_loc2_ in this.§1E§)
         {
            if(_loc2_.parent != this.§5!V§.§<B§.§'K§.movieClip)
            {
               this.§5!V§.§<B§.§'K§.movieClip.addChildAt(_loc2_,0);
            }
         }
      }
      
      public function §;!m§() : void
      {
         var _loc1_:DisplayObject = this.§@_§.getNextInstruction();
         if(this.§<!`§ && this.§<!`§ != _loc1_ && this.§<!`§.parent)
         {
            this.§<!`§.parent.removeChild(this.§<!`§);
         }
         this.§<!`§ = _loc1_;
         if(this.§<!`§)
         {
            if(!this.§<!`§.parent)
            {
               this.§5!V§.§<B§.§'K§.movieClip.addChild(this.§<!`§);
            }
            this.§<!`§.visible = !this.§5!V§.§4!v§.§@&§();
            this.§<!`§.visible = this.§<!`§.visible && !this.§%@§;
         }
         if(!this.§=!3§.parent && !this.§@_§.§+!"§)
         {
            this.§5!V§.§<B§.§'K§.movieClip.addChild(this.§=!3§);
         }
      }
      
      public function §3!`§() : int
      {
         return this.§@_§.§3!`§();
      }
      
      private function §>!7§(param1:Event) : void
      {
         this.update(0);
         §4!q§.§;!3§ = false;
         if(this.§@_§ && !this.§=!§())
         {
            this.§@_§.§=Q§();
         }
      }
      
      private function §1<§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         if(this.§;!&§.§[!V§().length > 0)
         {
            _loc2_ = this.§5!V§.§"j§.§<3§();
            if(!_loc2_.valid)
            {
               _loc2_ = new Object();
            }
            else
            {
               _loc3_ = StateLevelEditorTestPlay.§#5§();
               if(_loc3_ == null)
               {
                  _loc3_ = new BitmapData(100,100);
               }
               _loc4_ = §&^§.encode(_loc3_);
               _loc2_.screen = Base64.§,!8§(_loc4_);
               _loc2_.name = this.§;!&§.§[!V§();
            }
            this.§]!&§ = JSON.stringify(_loc2_);
            this.§;!&§.§^Q§();
            §?3§.§,l§.completeQuest(this.§]!&§);
         }
      }
      
      public function activate() : void
      {
         § %§.§,l§.§]!0§(this.§#G§,§ %§.SAVE);
         § %§.§,l§.§]!0§(this.§^l§,§ %§.CONTINUE);
         § %§.§,l§.§]!0§(this.§@4§,§ %§.MODIFY);
         § %§.§,l§.§]!0§(this.§]A§,§ %§.ADD);
         § %§.§,l§.§]!0§(this.§76§,§ %§.DELETE);
         § %§.§,l§.§]!0§(this.§-S§,§ %§.CATEGORY);
         § %§.§,l§.§]!0§(this.§1!s§,§ %§.GRAVITY);
         § %§.§,l§.§]!0§(this.§8!9§,§ %§.CREATE_UNDO);
         if(!this.§@_§)
         {
            this.§40§();
         }
         this.§=,§.init(this.§@_§);
         if(this.§0<§ == Quest.§#=§ && §4!q§.§;!3§)
         {
            this.§2<§();
         }
         else
         {
            this.§5!V§.§<B§.§#Y§().§%!e§();
            if(this.§=!§())
            {
               this.§5!V§.§<B§.§#Y§().getItemByName("Categories").setVisibility(false);
               this.§5!V§.§<B§.§#Y§().getItemByName("Categories2").setVisibility(true);
               this.§5!V§.§<B§.§#Y§().§7!%§("Birds");
            }
            this.§5!V§.§05§.§%!=§(false);
            this.§5"&§();
         }
      }
      
      private function §5"&§() : void
      {
         var _loc2_:§`L§ = null;
         if(this.§%@§)
         {
            return;
         }
         var _loc1_:String = this.§@_§.§9!t§();
         if(_loc1_)
         {
            _loc2_ = new §`L§(§1!=§.§8X§.Views.PopupView_Prompt[0],this.§5!V§.§<B§.§#Y§(),_loc1_);
            _loc2_.open();
            _loc2_.§?u§ = this.§6!Y§;
            this.§%@§ = true;
            this.§=!3§.visible = false;
         }
      }
      
      private function §6!Y§() : void
      {
         this.§%@§ = false;
         this.§=!3§.visible = true;
         this.§5"&§();
      }
      
      private function §2<§() : void
      {
         this.§;!&§ = new §7q§(§1!=§.§8X§.Views.PopupView_PrePublish[0],this.§5!V§.§<B§.§#Y§(),this.§@_§);
         this.§;!&§.open();
         this.§=,§.hide();
      }
      
      public function get §3"§() : String
      {
         if(this.§@_§)
         {
            return this.§@_§.§3"§;
         }
         return "";
      }
      
      public function §@4§(param1:§0Q§ = null) : Boolean
      {
         if(!this.§@_§)
         {
            return true;
         }
         if(this.§@_§.§3"§ == Quest.§!!r§ || this.§@_§.§3"§ == Quest.§;!Q§)
         {
            return false;
         }
         if(param1 && !param1.§""4§())
         {
            return false;
         }
         if(param1 && param1.isTexture() && !this.§,!,§)
         {
            return false;
         }
         if(param1 && this.§=!§() && !param1.§>R§())
         {
            return false;
         }
         if(!this.§@_§.§@4§(param1))
         {
            return false;
         }
         return true;
      }
      
      private function §=!§() : Boolean
      {
         return this.§[W§ != null;
      }
      
      public function §]A§(param1:String = null) : Boolean
      {
         if(!this.§@_§)
         {
            return true;
         }
         if(this.§@_§.§3"§ == Quest.§!!r§ || this.§@_§.§3"§ == Quest.§;!Q§)
         {
            return false;
         }
         if(!this.§@_§.§=e§)
         {
            return false;
         }
         if(param1 && this.§=!§() && param1.indexOf("BIRD") == -1)
         {
            return false;
         }
         return true;
      }
      
      public function §76§(param1:§0Q§ = null) : Boolean
      {
         return this.§@4§(param1) && (!this.§@_§ || !this.§@_§.isObjectNeeded(param1));
      }
      
      public function §^l§() : Boolean
      {
         if(!this.§@_§)
         {
            return true;
         }
         if(this.§@_§.§3"§ == Quest.§#=§ && this.§5!V§.§"j§.getBirdCount() < 1)
         {
            return false;
         }
         return this.§@_§.§3"§ == Quest.§`!k§ || this.§@_§.§3"§ == Quest.§#=§;
      }
      
      public function §-S§(param1:String) : Boolean
      {
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(this.§@_§ && !this.§@_§.§+!"§ && _loc2_.indexOf(param1) != -1)
         {
            return false;
         }
         return true;
      }
      
      public function §8!9§() : Boolean
      {
         if(this.§@_§.§3"§ != Quest.§!!r§ && this.§@_§.§3"§ != Quest.§;!Q§)
         {
            return true;
         }
         return false;
      }
      
      private function §;!]§() : void
      {
         this.§@_§.removeEventListener(§!!Q§.§%g§,this.§[c§);
         this.§@_§.removeEventListener(§!!Q§.§`!o§,this.§9§);
         this.§@_§.removeEventListener(§!!Q§.§&F§,this.§9§);
         this.§@_§.dispose();
         if(this.§<!`§ && this.§<!`§.parent)
         {
            this.§<!`§.parent.removeChild(this.§<!`§);
         }
         this.§<!`§ = null;
         if(this.§=!3§.parent)
         {
            this.§=!3§.parent.removeChild(this.§=!3§);
         }
         this.§=!3§ = null;
         this.§@_§ = null;
      }
      
      private function §'!C§(param1:§!!Q§) : void
      {
         this.§5"&§();
      }
      
      private function §[c§(param1:§!!Q§ = null) : void
      {
         var _loc3_:String = null;
         var _loc4_:§`L§ = null;
         this.§5"&§();
         var _loc2_:String = this.§@_§.§3"§;
         if(_loc2_ == Quest.§;!Q§)
         {
            this.§=,§.hide();
         }
         else if(param1 && param1.§<!n§ == Quest.§2!Q§)
         {
            this.§5!V§.§"j§.§=Q§();
            this.§>!$§();
         }
         else if(_loc2_ == Quest.§!!r§)
         {
            this.§5!V§.§4!v§.§^!n§(true);
         }
         else if(param1 && param1.§<!n§ == Quest.§!!r§)
         {
            _loc3_ = "Let\'s fix this. Put the blocks back in place.";
            _loc4_ = new §`L§(§1!=§.§8X§.Views.PopupView_Prompt[0],this.§5!V§.§<B§.§#Y§(),_loc3_);
            this.§=,§.show();
            this.§5!V§.§<B§.§#Y§().§7!%§("Wood");
            this.§5!V§.§4!v§.§^!n§(false);
            this.§5!V§.§05§.§#l§();
            this.§5!V§.§05§.§%!=§(false);
            this.§5!V§.§9"3§.§5!'§(this.§@_§.§=!6§());
         }
         else if(param1 && param1.§<!n§ == Quest.§;!;§)
         {
            this.§5!V§.§4!v§.§^!n§(false);
            if(param1.§[!e§ == Quest.§#=§)
            {
               this.§^c§();
            }
         }
         else if(param1 && param1.§<!n§ == Quest.§#=§)
         {
            this.§9",§();
         }
         else if(_loc2_ == Quest.§;!;§)
         {
            this.§5!V§.§9"3§.goToCastleView();
         }
      }
      
      private function §^c§() : void
      {
         if(§=!h§.§,l§.§^"#§())
         {
            this.§[W§ = this.§5!V§.§<B§.§#Y§().§^K§();
            this.§5!V§.§<B§.§#Y§().getItemByName("Categories").setVisibility(false);
            this.§5!V§.§<B§.§#Y§().getItemByName("Categories2").setVisibility(true);
            this.§5!V§.§<B§.§#Y§().§7!%§("Birds");
         }
         else
         {
            this.§'B§ = true;
         }
      }
      
      private function §9",§() : void
      {
         this.§5!V§.§<B§.§#Y§().getItemByName("Categories").setVisibility(true);
         this.§5!V§.§<B§.§#Y§().getItemByName("Categories2").setVisibility(false);
         if(this.§[W§ != null)
         {
            this.§5!V§.§<B§.§#Y§().§7!%§(this.§[W§);
            this.§[W§ = null;
         }
      }
      
      private function get §0<§() : String
      {
         if(this.§@_§)
         {
            return this.§@_§.§3"§;
         }
         return Quest.§;!Q§;
      }
      
      private function §8_§(param1:Event) : void
      {
         this.§;!]§();
      }
      
      private function §'!?§() : void
      {
         this.§5!V§.§4!v§.§^!n§(true);
         this.§@_§.§+!m§();
         this.§@_§.update(0);
         this.§5!V§.§<B§.§#Y§().getItemByName("ButtonCheck").setVisibility(false);
         this.§5!V§.§<B§.§#Y§().getItemByName("ButtonGravity").setVisibility(false);
         this.§5!V§.§<B§.§#Y§().getItemByName("Button_Cancel").setVisibility(true);
      }
      
      private function §9§(param1:§!!Q§) : void
      {
         this.§5!V§.§<B§.§#Y§().getItemByName("ButtonCheck").setVisibility(true);
         this.§5!V§.§<B§.§#Y§().getItemByName("ButtonGravity").setVisibility(true);
         this.§5!V§.§<B§.§#Y§().getItemByName("Button_Cancel").setVisibility(false);
         this.§5!V§.§4!v§.§^!n§(false);
      }
      
      private function §var§() : String
      {
         if(this.§@_§.§8v§())
         {
            return this.§@_§.§8v§().description;
         }
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         try
         {
            this.§;!&§.close();
            this.§;!&§ = null;
            this.§5!V§.§<B§.§#Y§().§&_§();
            this.§5!V§.§05§.§<q§();
            this.§]!E§ = new §0j§(§1!=§.§8X§.Views.PopupView_Rewards[0],this.§5!V§.§<B§.§#Y§(),this.§@_§.§@"5§().length + 1);
            this.§]!E§.open();
            timer = new Timer(this.§ f§,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§!!0§);
            timer.start();
            §8F§.§1p§(§8F§.§#0§);
         }
         catch(e:Error)
         {
            §]!e§.log("Error parsing response");
         }
         this.§;!]§();
      }
      
      protected function §!!0§(param1:TimerEvent) : void
      {
         if(this.§]!E§)
         {
            this.§]!E§.close();
            this.§]!E§ = null;
         }
         this.§&!b§ = new §!!]§(§1!=§.§8X§.Views.PopupView_LevelUp[0],this.§5!V§.§<B§.§#Y§());
         this.§&!b§.open();
         this.§&!b§.mClip.addEventListener(§8!x§.§=!#§,this.§3"4§);
      }
      
      protected function §3"4§(param1:Event) : void
      {
         this.§%!7§ = new §"<§(§1!=§.§8X§.Views.PopupView_FinishLevel[0],this.§5!V§.§<B§.§#Y§());
         this.§%!7§.open();
      }
      
      private function §2!]§(param1:Event) : void
      {
         if(this.§@_§)
         {
            this.§@_§.refresh(this.§5!V§.§"j§.§^"'§);
         }
      }
      
      private function §#!@§(param1:Event) : void
      {
         if(!this.§@_§)
         {
            return;
         }
         if(this.§0<§ != Quest.§;!Q§ && this.§0<§ != Quest.§#=§)
         {
            if(this.§0<§ != Quest.§;!;§)
            {
               if(this.§5!V§.§4!v§.§@&§())
               {
                  this.§5!V§.§4!v§.§^!n§(false);
               }
               this.§'!?§();
            }
         }
         if(this.§0<§ == Quest.§#=§)
         {
            if(!this.§=!§())
            {
               this.§^c§();
            }
            else
            {
               this.play();
            }
         }
      }
      
      private function play() : void
      {
         this.§5!V§.§05§.§#l§();
         this.§@_§.onPhysicsEnabled();
         this.§5!V§.§<B§.§4l§();
      }
      
      private function §'-§(param1:Event) : void
      {
         if(this.§@_§ && this.§@_§.§3"§ == Quest.§;!;§)
         {
            this.§@_§.§&!o§();
         }
         else if(this.§;!&§ != null)
         {
            this.§;!&§.close();
            this.§;!&§ = null;
            this.§5!V§.§<B§.§#Y§().§%!e§();
         }
         else if(this.§%!7§ != null)
         {
            this.§%!7§.close();
            this.§%!7§ = null;
            this.§5!V§.§<B§.mNextState = §8!0§.§]"2§;
            §8!0§.§9!O§ = true;
         }
         else if(this.§@_§ && this.§@_§.§3"§ == Quest.§#=§)
         {
            this.§9",§();
         }
      }
      
      private function §40§() : void
      {
         var _loc2_:XML = null;
         var _loc1_:XML = §`!t§.§6!y§;
         §=!h§.§,l§.§8!S§();
         if(_loc1_)
         {
            this.§,!,§ = false;
            this.§@_§ = new Quest(this.§5!V§.§"j§.§^"'§);
            this.§=!3§ = new §-!_§(this.§@_§);
            this.§@_§.addEventListener(§!!Q§.§?!;§,this.§'!C§);
            this.§@_§.addEventListener(§!!Q§.§%g§,this.§[c§);
            this.§@_§.addEventListener(§!!Q§.§`!o§,this.§9§);
            this.§@_§.addEventListener(§!!Q§.§&F§,this.§9§);
            this.§@_§.§5@§(_loc1_);
            if(_loc1_.availableItems != undefined)
            {
               for each(_loc2_ in _loc1_.availableItems[0].item)
               {
                  §=!h§.§,l§.§-Q§(_loc2_.toString());
               }
               §=!h§.§,l§.§[q§ = _loc1_.availableItems.@count;
            }
            else
            {
               §=!h§.§,l§.§!g§();
               §=!h§.§,l§.§[q§ = 100;
            }
         }
         else
         {
            this.§,!,§ = true;
            this.§@_§ = Quest.§5!C§(this.§5!V§.§"j§.§^"'§);
            this.§=!3§ = new §-!_§(this.§@_§);
         }
         this.§[c§();
         §8F§.§1p§(§8F§.§`!O§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§@_§.onPhysicsEnabled();
         this.§5!V§.§9"3§.goToCastleView();
      }
      
      private function §>!$§(param1:Event = null) : void
      {
         this.§5!V§.§9"3§.§5!'§(this.§@_§.§=!6§());
      }
      
      public function §@i§() : Boolean
      {
         return this.§0<§ != Quest.§`!q§;
      }
      
      public function §#G§() : Boolean
      {
         if(!this.§@_§)
         {
            return true;
         }
         return this.§@_§.§=e§;
      }
      
      public function §1!s§() : Boolean
      {
         if(!this.§@_§)
         {
            return true;
         }
         return this.§@_§.§=e§;
      }
   }
}
