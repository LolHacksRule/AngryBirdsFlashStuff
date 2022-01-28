package §'i§
{
   import § "@§.StateLevelEditorTestPlay;
   import §#R§.§4!+§;
   import §&"'§.§3^§;
   import §'@§.§4&§;
   import §+h§.§+1§;
   import §+h§.§^!]§;
   import §,B§.StateMap;
   import §0![§.§^! §;
   import §1"2§.§`7§;
   import §2H§.§,5§;
   import §2H§.§0Q§;
   import §2H§.§7q§;
   import §2H§.§<j§;
   import §2H§.§]>§;
   import §3!t§.include;
   import §6" §.§2y§;
   import §62§.§0!t§;
   import §7r§.§=q§;
   import §8" §.§,!q§;
   import §8" §.§2J§;
   import §8" §.Quest;
   import §=!M§.§9!P§;
   import §=!M§.Base64;
   import §="6§.§^"8§;
   import §@"5§.§1k§;
   import §]!+§.§ 1§;
   import §^!y§.§'"#§;
   import §^[§.§'!K§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   
   public class §6y§ implements §8p§
   {
       
      
      private var §'r§:Quest;
      
      private var §<"9§:§ 1§;
      
      private var §6!^§:§'!;§;
      
      private var §8!C§:Vector.<DisplayObject>;
      
      private var §=j§:Boolean = false;
      
      private var §&!P§:§0Q§;
      
      private var §;C§:§]>§;
      
      private var §,!@§:§7q§;
      
      private var §7-§:§,5§;
      
      private var §9!u§:String;
      
      private var §"m§:String;
      
      private var §'1§:DisplayObject;
      
      private var §8!g§:§3^§;
      
      private var §="$§:Boolean = false;
      
      private var §^q§:§4!+§;
      
      private var §7Q§:Boolean = false;
      
      private const §8"3§:int = 4000;
      
      public function §6y§(param1:§'!;§)
      {
         this.§8!C§ = new Vector.<DisplayObject>();
         super();
         this.§6!^§ = param1;
         this.§<"9§ = new § 1§(this.§6!^§.§+"2§.§?E§ as §'!K§,§`7§.§>"?§.Views.View_QuestMenu[0],this.§6!^§.§+"2§.§?E§.container);
         this.§<"9§.addEventListener(Event.SELECT,this.§+<§);
         §,!q§.§2=§.addEventListener(§1k§.§-V§,this.onQuestCompleted);
      }
      
      public function initialize() : void
      {
         this.§6!^§.§+"2§.addEventListener(§0!t§.CONTINUE,this.§=!w§,false,1);
         this.§6!^§.§+"2§.addEventListener(§0!t§.CANCEL,this.§&<§);
         this.§6!^§.§+"2§.addEventListener(§0!t§.PUBLISH,this.§'6§);
         this.§6!^§.§8#§.addEventListener(§0!t§.§4T§,this.§]d§);
         this.§6!^§.§8#§.addEventListener(§0!t§.CHANGE,this.§#<§);
         this.§6!^§.§4p§.addEventListener(§0!t§.§6!D§,this.§#<§);
         this.§6!^§.§1?§.addEventListener(§0!t§.§1y§,this.onPhysicsEnabled);
         this.§6!^§.§1?§.addEventListener(§0!t§.§0!_§,this.§0!h§);
         this.§6!^§.§+"2§.addEventListener(§0!t§.PLAY,this.onPlay);
         this.§6!^§.§+"2§.addEventListener(KeyboardEvent.KEY_DOWN,this.§8!l§);
      }
      
      public function activate() : void
      {
         §,!1§.§2=§.§8!5§(this.§-!Q§,§,!1§.SAVE);
         §,!1§.§2=§.§8!5§(this.§ b§,§,!1§.CONTINUE);
         §,!1§.§2=§.§8!5§(this.§?K§,§,!1§.MODIFY);
         §,!1§.§2=§.§8!5§(this.§^U§,§,!1§.ADD);
         §,!1§.§2=§.§8!5§(this.§5;§,§,!1§.DELETE);
         §,!1§.§2=§.§8!5§(this.§"H§,§,!1§.CATEGORY);
         §,!1§.§2=§.§8!5§(this.§"";§,§,!1§.GRAVITY);
         §,!1§.§2=§.§8!5§(this.§8§,§,!1§.CREATE_UNDO);
         if(!this.§'r§)
         {
            this.§%$§();
         }
         this.§<"9§.init(this.§'r§);
         if(this.§8!-§ == Quest.§9!h§ && StateLevelEditorTestPlay.§^!M§)
         {
            this.§6%§();
         }
         else
         {
            this.§6!^§.§+"2§.§9B§().§"!U§();
            if(this.§6!9§())
            {
               this.§6!^§.§+"2§.§9B§().getItemByName("Categories").setVisibility(false);
               this.§6!^§.§+"2§.§9B§().getItemByName("Categories2").setVisibility(true);
               this.§6!^§.§+"2§.§9B§().§%w§("Birds");
            }
            this.§=G§();
         }
      }
      
      private function §8!l§(param1:KeyboardEvent) : void
      {
         if(param1.charCode == "f".charCodeAt())
         {
            StateLevelEditorTestPlay.§^!M§ = true;
            this.§6%§();
            this.§6!^§.§+"2§.§9B§().§=!^§();
         }
         if(this.§8!-§ != Quest.§1! §)
         {
            return;
         }
         if(param1.charCode == "w".charCodeAt())
         {
            this.§'r§.§8D§();
            this.§6!^§.§8#§.§ f§();
            this.§6!^§.§+"2§.§9B§().§%w§("Blocks");
         }
      }
      
      public function update(param1:Number) : void
      {
         if(this.§7Q§)
         {
            if(!this.§="$§)
            {
               this.§7Q§ = false;
               this.play();
               return;
            }
         }
         else if(this.§'r§)
         {
            if(!this.§6!^§.§1?§.§7"4§() || this.§8!-§ == Quest.§&P§ || this.§8!-§ == Quest.§;!y§)
            {
               this.§'r§.update(param1);
            }
            this.§7!F§(this.§'r§.getHUDs());
            this.§;!m§();
         }
         this.§<"9§.update(param1);
      }
      
      private function §7!F§(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in this.§8!C§)
         {
            if(param1.indexOf(_loc2_) == -1)
            {
               this.§6!^§.§+"2§.§?E§.movieClip.removeChild(_loc2_);
            }
         }
         this.§8!C§ = param1;
         for each(_loc2_ in this.§8!C§)
         {
            if(_loc2_.parent != this.§6!^§.§+"2§.§?E§.movieClip)
            {
               this.§6!^§.§+"2§.§?E§.movieClip.addChildAt(_loc2_,0);
            }
         }
      }
      
      public function §;!m§() : void
      {
         var _loc1_:DisplayObject = this.§'r§.getNextInstruction();
         if(this.§'1§ && this.§'1§ != _loc1_ && this.§'1§.parent)
         {
            this.§'1§.parent.removeChild(this.§'1§);
         }
         this.§'1§ = _loc1_;
         if(this.§'1§)
         {
            if(!this.§'1§.parent)
            {
               this.§6!^§.§+"2§.§?E§.movieClip.addChild(this.§'1§);
            }
            this.§'1§.visible = !this.§6!^§.§1?§.§7"4§();
            this.§'1§.visible = this.§'1§.visible && !this.§="$§;
         }
         if(!this.§^q§.parent && !this.§'r§.§&i§)
         {
            this.§6!^§.§+"2§.§?E§.movieClip.addChild(this.§^q§);
         }
      }
      
      public function §;!J§() : int
      {
         if(this.§'r§)
         {
            return this.§'r§.§;!J§();
         }
         return 0;
      }
      
      private function §#<§(param1:Event) : void
      {
         this.update(0);
         StateLevelEditorTestPlay.§^!M§ = false;
         if(this.§'r§ && !this.§6!9§())
         {
            this.§'r§.§ f§();
         }
      }
      
      private function §'6§(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:BitmapData = null;
         var _loc4_:ByteArray = null;
         this.§'r§.onPhysicsEnabled();
         if(this.§7-§.§"T§().length > 0)
         {
            _loc2_ = this.§6!^§.§8#§.§`!U§();
            if(!_loc2_.valid)
            {
               _loc2_ = new Object();
            }
            else
            {
               _loc3_ = StateLevelEditorTestPlay.§%P§();
               if(_loc3_ == null)
               {
                  _loc3_ = new BitmapData(100,100);
               }
               _loc4_ = include.encode(_loc3_);
               _loc2_.screen = Base64.§<_§(_loc4_);
               _loc2_.name = this.§7-§.§"T§();
            }
            this.§9!u§ = JSON.stringify(_loc2_);
            this.§7-§.§?D§();
            §,!q§.§2=§.completeQuest(this.§9!u§);
         }
      }
      
      private function §=G§() : void
      {
         var _loc2_:§<j§ = null;
         if(this.§="$§)
         {
            return;
         }
         var _loc1_:§2J§ = this.§'r§.§=!"§();
         if(_loc1_)
         {
            _loc2_ = §^!]§.§&I§(_loc1_);
            _loc2_.§3!N§ = this.§,!?§;
            this.§="$§ = true;
            this.§^q§.visible = false;
         }
      }
      
      private function §,!?§() : void
      {
         this.§="$§ = false;
         this.§^q§.visible = true;
         this.§=G§();
      }
      
      private function §6%§() : void
      {
         this.§7-§ = new §,5§(§`7§.§>"?§.Views.PopupView_PrePublish[0],this.§6!^§.§+"2§.§9B§(),this.§'r§);
         this.§7-§.open();
         this.§<"9§.hide();
      }
      
      public function get §-!$§() : String
      {
         if(this.§'r§)
         {
            return this.§'r§.§-!$§;
         }
         return "";
      }
      
      public function §?K§(param1:§=q§ = null) : Boolean
      {
         if(!this.§'r§)
         {
            return true;
         }
         if(this.§'r§.§-!$§ == Quest.§;!y§ || this.§'r§.§-!$§ == Quest.§@!?§)
         {
            return false;
         }
         if(param1 && !param1.§%!0§())
         {
            return false;
         }
         if(param1 && param1.isTexture() && !this.§=j§)
         {
            return false;
         }
         if(param1 && this.§6!9§() && !param1.§9!^§())
         {
            return false;
         }
         if(!this.§'r§.§?K§(param1))
         {
            return false;
         }
         return true;
      }
      
      private function §6!9§() : Boolean
      {
         return this.§"m§ != null;
      }
      
      public function §^U§(param1:String = null) : Boolean
      {
         if(!this.§'r§)
         {
            return true;
         }
         if(this.§'r§.§-!$§ == Quest.§;!y§ || this.§'r§.§-!$§ == Quest.§@!?§)
         {
            return false;
         }
         if(!this.§'r§.§0" §)
         {
            return false;
         }
         if(param1 && this.§6!9§() && param1.indexOf("BIRD") == -1)
         {
            return false;
         }
         return true;
      }
      
      public function §5;§(param1:§=q§ = null) : Boolean
      {
         §§push(Boolean(this.§?K§(param1)));
         if(Boolean(this.§?K§(param1)))
         {
            §§pop();
            return !this.§'r§ || !this.§'r§.isObjectNeeded(param1);
         }
         §§goto(addr23);
      }
      
      public function § b§() : Boolean
      {
         if(!this.§'r§)
         {
            return true;
         }
         if(this.§'r§.§-!$§ == Quest.§9!h§ && this.§6!^§.§8#§.getBirdCount() < 1)
         {
            return false;
         }
         return this.§'r§.§-!$§ == Quest.§-!z§ || this.§'r§.§-!$§ == Quest.§9!h§;
      }
      
      public function §"H§(param1:String) : Boolean
      {
         var _loc2_:Array = ["Static","Snow","Backgrounds"];
         if(this.§'r§ && !this.§'r§.§&i§ && _loc2_.indexOf(param1) != -1)
         {
            return false;
         }
         return true;
      }
      
      public function §8§() : Boolean
      {
         if(this.§'r§.§-!$§ != Quest.§;!y§ && this.§'r§.§-!$§ != Quest.§@!?§)
         {
            return true;
         }
         return false;
      }
      
      public function §2x§() : void
      {
         if(this.§'r§)
         {
            this.§6!^§.§4p§.§4!G§();
            this.§'r§.removeEventListener(§1k§.§1g§,this.§^!§);
            this.§'r§.removeEventListener(§1k§.§7p§,this.§&!`§);
            this.§'r§.removeEventListener(§1k§.§?s§,this.§&!`§);
            this.§'r§.dispose();
            if(this.§'1§ && this.§'1§.parent)
            {
               this.§'1§.parent.removeChild(this.§'1§);
            }
            this.§'1§ = null;
            if(this.§^q§.parent)
            {
               this.§^q§.parent.removeChild(this.§^q§);
            }
            this.§^q§ = null;
            this.§'r§ = null;
         }
      }
      
      private function §]!'§(param1:§1k§) : void
      {
         this.§=G§();
      }
      
      private function §^!§(param1:§1k§ = null) : void
      {
         this.§=G§();
         var _loc2_:String = this.§'r§.§-!$§;
         if(_loc2_ == Quest.§@!?§)
         {
            this.§<"9§.hide();
         }
         else if(param1 && param1.§-",§ == Quest.§"!!§)
         {
            this.§6!^§.§8#§.§ f§();
            this.§0!h§();
         }
         else if(_loc2_ == Quest.§;!y§)
         {
            this.§6!^§.§1?§.§ !v§(true);
         }
         else if(param1 && param1.§-",§ == Quest.§;!y§)
         {
            this.§<"9§.show();
            this.§6!^§.§+"2§.§9B§().§%w§("Wood");
            this.§6!^§.§1?§.§ !v§(false);
            this.§6!^§.§4p§.§5R§();
            this.§6!^§.§4p§.§`!c§(false);
            this.§6!^§.§>k§.§!"1§(this.§'r§.§2"0§());
         }
         else if(param1 && param1.§-",§ == Quest.§&P§)
         {
            this.§6!^§.§1?§.§ !v§(false);
            if(param1.§'4§ == Quest.§9!h§)
            {
               this.§1!D§();
            }
         }
         else if(param1 && param1.§-",§ == Quest.§9!h§)
         {
            this.§+"0§();
         }
         else if(_loc2_ == Quest.§&P§)
         {
            this.§6!^§.§>k§.goToCastleView();
         }
      }
      
      private function §1!D§() : void
      {
         if(§2y§.§2=§.§-!=§())
         {
            this.§"m§ = this.§6!^§.§+"2§.§9B§().§[G§();
            this.§6!^§.§+"2§.§9B§().getItemByName("Categories").setVisibility(false);
            this.§6!^§.§+"2§.§9B§().getItemByName("Categories2").setVisibility(true);
            this.§6!^§.§+"2§.§9B§().§%w§("Birds");
         }
         else
         {
            this.§7Q§ = true;
         }
      }
      
      private function §+"0§() : void
      {
         this.§6!^§.§+"2§.§9B§().getItemByName("Categories").setVisibility(true);
         this.§6!^§.§+"2§.§9B§().getItemByName("Categories2").setVisibility(false);
         if(this.§"m§ != null)
         {
            this.§6!^§.§+"2§.§9B§().§%w§(this.§"m§);
            this.§"m§ = null;
         }
      }
      
      private function get §8!-§() : String
      {
         if(this.§'r§)
         {
            return this.§'r§.§-!$§;
         }
         return Quest.§@!?§;
      }
      
      private function §+<§(param1:Event) : void
      {
         this.§2x§();
      }
      
      private function §%@§() : void
      {
         this.§6!^§.§1?§.§ !v§(true);
         this.§'r§.§8!K§();
         this.§'r§.update(0);
         this.§6!^§.§+"2§.§9B§().getItemByName("ButtonCheck").setVisibility(false);
         this.§6!^§.§+"2§.§9B§().getItemByName("ButtonGravity").setVisibility(false);
         this.§6!^§.§+"2§.§9B§().getItemByName("Button_Cancel").setVisibility(true);
      }
      
      private function §&!`§(param1:§1k§) : void
      {
         this.§6!^§.§+"2§.§9B§().getItemByName("ButtonCheck").setVisibility(true);
         this.§6!^§.§+"2§.§9B§().getItemByName("ButtonGravity").setVisibility(true);
         this.§6!^§.§+"2§.§9B§().getItemByName("Button_Cancel").setVisibility(false);
         this.§6!^§.§1?§.§ !v§(false);
      }
      
      private function §?Y§() : String
      {
         if(this.§'r§.§#D§())
         {
            return this.§'r§.§#D§().description;
         }
         return "";
      }
      
      private function onQuestCompleted(param1:Event) : void
      {
         var timer:Timer = null;
         var event:Event = param1;
         try
         {
            this.§7-§.close();
            this.§7-§ = null;
            this.§6!^§.§+"2§.§9B§().§=!^§();
            this.§6!^§.§4p§.§4!G§();
            this.§;C§ = new §]>§(§`7§.§>"?§.Views.PopupView_Rewards[0],this.§6!^§.§+"2§.§9B§(),this.§'r§.§+!d§().length + 1);
            this.§;C§.open();
            timer = new Timer(this.§8"3§,1);
            timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.§`I§);
            timer.start();
            §4&§.§@!Q§(§4&§.§^!X§);
         }
         catch(e:Error)
         {
            §9!P§.log("Error parsing response");
         }
         this.§2x§();
      }
      
      protected function §`I§(param1:TimerEvent) : void
      {
         if(this.§;C§)
         {
            this.§;C§.close();
            this.§;C§ = null;
         }
         if((AngryBirdsFP11.§>" § as §'"#§).§[!W§)
         {
            this.§,!@§ = new §7q§(§`7§.§>"?§.Views.PopupView_LevelUp[0],this.§6!^§.§+"2§.§9B§());
            this.§,!@§.open();
            this.§,!@§.mClip.addEventListener(§+1§.§9!R§,this.§'R§);
         }
         else
         {
            this.§'R§(null);
         }
      }
      
      protected function §'R§(param1:Event) : void
      {
         this.§&!P§ = new §0Q§(§`7§.§>"?§.Views.PopupView_FinishLevel[0],this.§6!^§.§+"2§.§9B§());
         this.§&!P§.open();
      }
      
      private function §]d§(param1:Event) : void
      {
         if(this.§'r§)
         {
            this.§'r§.refresh(this.§6!^§.§8#§.§4+§);
         }
      }
      
      private function §=!w§(param1:Event) : void
      {
         if(!this.§'r§)
         {
            return;
         }
         if(this.§8!-§ != Quest.§@!?§ && this.§8!-§ != Quest.§9!h§)
         {
            if(this.§8!-§ != Quest.§&P§)
            {
               if(this.§6!^§.§1?§.§7"4§())
               {
                  this.§6!^§.§1?§.§ !v§(false);
               }
               this.§%@§();
            }
         }
         if(this.§8!-§ == Quest.§9!h§)
         {
            if(!this.§6!9§())
            {
               this.§1!D§();
            }
            else
            {
               this.play();
            }
         }
      }
      
      private function play() : void
      {
         this.§6!^§.§+"2§.§^"!§();
      }
      
      private function onPlay(param1:§0!t§) : void
      {
         this.§'r§.onPhysicsEnabled();
      }
      
      private function §&<§(param1:Event) : void
      {
         if(this.§'r§ && this.§'r§.§-!$§ == Quest.§&P§)
         {
            this.§'r§.§4L§();
         }
         else if(this.§7-§ != null)
         {
            this.§7-§.close();
            this.§7-§ = null;
            this.§6!^§.§+"2§.§9B§().§"!U§();
         }
         else if(this.§&!P§ != null)
         {
            this.§&!P§.close();
            this.§&!P§ = null;
            this.§6!^§.§+"2§.mNextState = StateMap.§'=§;
            §^! §.§#3§ = true;
         }
         else if(this.§'r§ && this.§'r§.§-!$§ == Quest.§9!h§)
         {
            this.§+"0§();
         }
      }
      
      private function §%$§() : void
      {
         var _loc2_:XML = null;
         var _loc1_:XML = §^"8§.§@!k§;
         §2y§.§2=§.§ "5§();
         if(_loc1_)
         {
            this.§=j§ = false;
            this.§'r§ = new Quest(this.§6!^§.§8#§.§4+§);
            this.§^q§ = new §4!+§(this.§'r§);
            this.§'r§.addEventListener(§1k§.§3!u§,this.§]!'§);
            this.§'r§.addEventListener(§1k§.§1g§,this.§^!§);
            this.§'r§.addEventListener(§1k§.§7p§,this.§&!`§);
            this.§'r§.addEventListener(§1k§.§?s§,this.§&!`§);
            this.§'r§.§?j§(_loc1_);
            if(_loc1_.availableItems != undefined)
            {
               for each(_loc2_ in _loc1_.availableItems[0].item)
               {
                  §2y§.§2=§.§@E§(_loc2_.toString());
               }
               §2y§.§2=§.§@"§ = _loc1_.availableItems.@count;
            }
            else
            {
               §2y§.§2=§.§[!y§();
               §2y§.§2=§.§@"§ = 100;
            }
         }
         else
         {
            this.§=j§ = true;
            this.§'r§ = Quest.§+!#§(this.§6!^§.§8#§.§4+§);
            this.§^q§ = new §4!+§(this.§'r§);
         }
         this.§^!§();
         §4&§.§@!Q§(§4&§.§`E§);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§'r§.onPhysicsEnabled();
         this.§6!^§.§>k§.goToCastleView();
      }
      
      private function §0!h§(param1:Event = null) : void
      {
         this.§6!^§.§>k§.§!"1§(this.§'r§.§2"0§());
      }
      
      public function §1!?§() : Boolean
      {
         return this.§8!-§ != Quest.§1! §;
      }
      
      public function §-!Q§() : Boolean
      {
         if(!this.§'r§)
         {
            return true;
         }
         return this.§'r§.§0" §;
      }
      
      public function §"";§() : Boolean
      {
         if(!this.§'r§)
         {
            return true;
         }
         return this.§'r§.§0" §;
      }
      
      public function §3l§() : Boolean
      {
         return this.§'r§ != null;
      }
   }
}
