package §1g§
{
   import § J§.StateLevelEditorTestPlay;
   import §#V§.§7b§;
   import §&!!§.Popup;
   import §+!d§.§"r§;
   import §+%§.§+"%§;
   import §1z§.Quest;
   import §2i§.§%!+§;
   import §3"0§.§'&§;
   import §3"0§.§0"7§;
   import §9!l§.§7"5§;
   import §9!l§.§`!d§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §^N§ extends Popup
   {
      
      private static const §+"!§:int = 4000;
       
      
      private var § !C§:§8!K§;
      
      private var §"!f§:Number = 1;
      
      private var §&!r§:§%!`§;
      
      private var §=3§:§0"7§;
      
      private var §1!g§:Vector.<§0"7§>;
      
      private var §`i§:Timer;
      
      private var §>A§:int;
      
      private var §>&§:int = 0;
      
      private var §%4§:§%!`§;
      
      private var §'!`§:§8!K§;
      
      private var §24§:§7b§;
      
      private var §%!p§:§`5§;
      
      private var §#"'§:§2v§;
      
      private var §`w§:§2v§;
      
      private var §!A§:§2v§;
      
      private var §&N§:§;!u§;
      
      private var §-"'§:§;!u§;
      
      private var §]T§:§ !F§;
      
      private var §]!+§:§ !F§;
      
      public var mNewScoreCounter:int;
      
      private var §4!i§:§%!+§;
      
      private var §7!v§:Timer;
      
      private var §7!l§:§8!K§;
      
      private var §2y§:§;!u§;
      
      private var §;!N§:§;!u§;
      
      private var §%!B§:§;!u§;
      
      private var §case §:§ !F§;
      
      private const §+o§:String = "Name";
      
      private var §6!_§:§7"5§;
      
      public function §^N§(param1:XML, param2:§`5§, param3:Quest)
      {
         this.§4!i§ = new §%!+§();
         super(param1,param2);
         this.§1!g§ = new Vector.<§0"7§>();
         this.§24§ = new §7b§(param2 as §`!d§,§8!O§.§'!J§.Views.View_QuestMenu[0],param2.container);
         this.§24§.init(param3);
         this.§24§.§5!c§();
         param2.container.§&!W§(this.§24§);
         goToFrame(1,false);
         this.§%!B§ = getItemByName("Container_Block") as §;!u§;
         this.§2y§ = getItemByName("Container_LevelEnd") as §;!u§;
         this.§;!N§ = getItemByName("Container_Publish") as §;!u§;
         this.§;!N§.mClip.gotoAndStop(1);
         this.§&N§ = getItemByName("MovieClip_Score") as §;!u§;
         this.§]T§ = this.§&N§.getItemByName("Textfield_Score") as § !F§;
         this.§]!+§ = getItemByName("Textfield_HighScore_Small") as § !F§;
         this.§7!v§ = new Timer(1000,1);
         this.§7!v§.addEventListener(TimerEvent.TIMER,this.§!<§);
         this.§7!v§.start();
         this.§6!_§ = new §7"5§(param2);
         this.§-"'§ = getItemByName("HighscoreContainer") as §;!u§;
         this.§#"'§ = getItemByName("Button_Stars") as §2v§;
         this.§#"'§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§6!l§);
         this.§`w§ = getItemByName("Button_Check") as §2v§;
         this.§`w§.mClip.addEventListener(MouseEvent.MOUSE_UP,this.§-Z§);
         var _loc4_:BitmapData = StateLevelEditorTestPlay.§;h§();
         var _loc5_:Bitmap;
         (_loc5_ = new Bitmap(_loc4_)).height = 189;
         _loc5_.scaleX = _loc5_.scaleY;
         if(_loc5_.width < 189)
         {
            _loc5_.width = 189;
            _loc5_.scaleY = _loc5_.scaleX;
         }
         getItemByName("MovieClip_Thumbnail").mClip.removeChildAt(1);
         getItemByName("MovieClip_Thumbnail").mClip.addChild(_loc5_);
         _loc5_.x = _loc5_.x + 1 - _loc5_.width / 2;
         _loc5_.y -= _loc5_.height / 2;
         this.§case § = getItemByName("TextField_InputLevelName") as § !F§;
         this.§case §.setText(this.§+o§);
         this.§case §.mClip.addEventListener(MouseEvent.CLICK,this.§+!K§);
         this.§case §.mClip.addEventListener(Event.CHANGE,this.§;+§);
         goToFrame(1,false);
         this.§!A§ = getItemByName("Button_Finish") as §2v§;
         this.§!A§.§1!U§ = §"r§.§=!Z§;
         this.§!A§.goToFrame(2,false);
         this.§;+§();
         this.§&!r§ = getItemByName("MovieClip_Glow") as §%!`§;
         this.§%4§ = getItemByName("MovieClip_MoustachePig") as §%!`§;
         §7S§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc6_:§2v§ = getItemByName("Button_ChallengeFriends") as §2v§;
         var _loc7_:§2v§;
         (_loc7_ = getItemByName("Button_NoThanks") as §2v§).mClip.addEventListener(MouseEvent.MOUSE_UP,this.§4h§);
         var _loc8_:Array = new Array();
         var _loc9_:§8!K§ = §%!Z§.§if §.§"U§(§%!Z§.§if §.§"<§(this.§%4§.mClip,{
            "scaleX":this.§"!f§,
            "scaleY":this.§"!f§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§%!Z§.§,!%§),§%!Z§.§if §.§"<§(this.§&!r§.mClip,{
            "scaleX":this.§"!f§,
            "scaleY":this.§"!f§
         },{
            "scaleX":0,
            "scaleY":0
         },0.6,§%!Z§.§,!%§),§%!Z§.§if §.§"<§(_loc6_.mClip,{
            "scaleX":this.§"!f§,
            "scaleY":this.§"!f§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§%!Z§.§,!%§),§%!Z§.§if §.§"<§(_loc7_.mClip,{
            "scaleX":this.§"!f§,
            "scaleY":this.§"!f§
         },{
            "scaleX":0,
            "scaleY":0
         },0.8,§%!Z§.§,!%§));
         _loc8_.push(_loc9_);
         if(_loc8_.length > 0)
         {
            this.§"!§();
            this.§ !C§ = §%!Z§.§if §.§9y§.apply(§%!Z§.§if §,_loc8_);
            this.§ !C§.onComplete = this.§5t§;
            this.§ !C§.play();
         }
         this.§]!+§.setText(AngryBirdsFP11.§8!I§.§`!K§(§+"%§.§9!'§).toString());
         this.§6!_§.update();
      }
      
      protected function §4h§(param1:MouseEvent) : void
      {
         this.§2y§.setVisibility(false);
         this.§;!N§.setVisibility(true);
      }
      
      protected function §!<§(param1:TimerEvent) : void
      {
         this.mNewScoreCounter = 0;
         this.§4!i§.§`H§(AngryBirdsFP11.§8!I§.§`!K§(§+"%§.§9!'§));
         this.§7!l§ = §%!Z§.§if §.§"<§(this,{"mNewScoreCounter":this.§4!i§.getValue()},{"mNewScoreCounter":0},1);
         this.§7!l§.onComplete = this.§>!k§;
         this.§7!l§.play();
      }
      
      private function §>!k§() : void
      {
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
      }
      
      protected function §7_§(param1:TimerEvent) : void
      {
         this.close();
      }
      
      private function §5t§() : void
      {
         this.§'!`§ = §%!Z§.§if §.§"<§(this.§&!r§.mClip,{"rotation":360},{"rotation":0},§+"!§ / 1000);
         this.§'!`§.onComplete = this.§5t§;
         this.§'!`§.play();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§0"7§ = null;
         var _loc2_:int = getTimer() - this.§>&§;
         this.§>&§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§1!g§)
         {
            _loc3_.update(_loc2_);
         }
         this.§24§.update(_loc2_);
         this.§]T§.setText(this.mNewScoreCounter.toString());
         this.§6!_§.update();
      }
      
      private function §5"0§() : void
      {
         var splash:§0"7§ = null;
         if(this.§`i§)
         {
            this.§`i§.stop();
            try
            {
               this.§`i§.removeEventListener(TimerEvent.TIMER,this.§8R§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1!g§)
         {
            if(§7S§.contains(splash))
            {
               §7S§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1!g§ = new Vector.<§0"7§>();
      }
      
      private function §8!&§(param1:Number, param2:Number) : void
      {
         this.§=3§ = new §0"7§(§'N§.§ !q§,§'N§.§%"2§,param1,param2,§0"7§.§?!C§,80,0,§'&§.§=V§);
         §7S§.addChild(this.§=3§);
         this.§1!g§.push(this.§=3§);
      }
      
      private function §"!§() : void
      {
         this.§`i§ = new Timer(200);
         this.§>A§ = 0;
         this.§`i§.addEventListener(TimerEvent.TIMER,this.§8R§);
         this.§`i§.start();
      }
      
      override public function close() : void
      {
         super.close();
         §7S§.removeEventListener(Event.ENTER_FRAME,this.update);
         §7S§.container.removeComponent(this.§24§);
         this.§24§.hide();
         this.§24§ = null;
         this.§5"0§();
         this.§6!_§.dispose();
         this.§6!_§ = null;
      }
      
      private function §8R§(param1:TimerEvent) : void
      {
         if(this.§>A§ == 0)
         {
            this.§8!&§(this.§%4§.mClip.parent.parent.x + this.§%4§.mClip.parent.x + this.§%4§.mClip.x,this.§%4§.mClip.parent.parent.y + this.§%4§.mClip.parent.y + this.§%4§.mClip.y);
         }
         else
         {
            this.§`i§.stop();
         }
         ++this.§>A§;
      }
      
      private function §-Z§(param1:MouseEvent) : void
      {
         this.§`w§.visible = false;
         this.§#"'§.visible = true;
         this.§-"'§.setVisibility(true);
         this.§6!_§.§+0§();
         this.§6!_§.§!k§();
      }
      
      private function §6!l§(param1:MouseEvent) : void
      {
         this.§#"'§.visible = false;
         this.§`w§.visible = true;
         this.§-"'§.setVisibility(false);
         this.§6!_§.§-<§();
      }
      
      private function §+!K§(param1:MouseEvent) : void
      {
         if(this.§case §.§5!§() == this.§+o§)
         {
            this.§case §.setText("");
         }
      }
      
      private function §;+§(param1:Event = null) : void
      {
         if(this.§@;§())
         {
            this.§!A§.§1!U§ = §"r§.COMPONENT_STATE_ACTIVE_DEFAULT;
            this.§!A§.goToFrame(1,false);
         }
         else
         {
            this.§!A§.§1!U§ = §"r§.§=!Z§;
            this.§!A§.goToFrame(2,false);
         }
      }
      
      private function §@;§() : Boolean
      {
         if(this.§case § != null && this.§case §.§5!§() != null && this.§case §.§5!§().length > 3)
         {
            return true;
         }
         return false;
      }
      
      public function § -§() : String
      {
         return this.§case §.§5!§();
      }
      
      public function §4!G§() : void
      {
         this.mClip.gotoAndStop(2);
      }
   }
}
