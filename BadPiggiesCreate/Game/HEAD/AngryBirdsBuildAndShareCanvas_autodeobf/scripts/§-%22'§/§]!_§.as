package §-"'§
{
   import §!N§.§2U§;
   import §!N§.§@!3§;
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §7!@§.§+`§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§@u§;
   import §?!'§.Popup;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §]!_§ extends Popup
   {
      
      private static const §4!P§:String = "EndScreenEffectChannel";
       
      
      private var §,!c§:§=!r§;
      
      private var §7!B§:§=!r§;
      
      private var §=9§:Number = 1;
      
      private var §@"#§:§2U§;
      
      private var §!!N§:Vector.<§2U§>;
      
      private var §1!"§:Timer;
      
      private var §7!S§:int;
      
      private var §;w§:Array;
      
      private var §1"6§:int = 0;
      
      private var §3A§:int = 0;
      
      private var § X§:Array;
      
      private var §6;§:int = 1;
      
      public function §]!_§(param1:XML, param2:§>!V§, param3:int)
      {
         var _loc16_:MovieClip = null;
         var _loc24_:§=!r§ = null;
         this.§;w§ = new Array();
         this.§ X§ = new Array();
         super(param1,param2);
         this.§!!N§ = new Vector.<§2U§>();
         this.§3A§ = param3;
         §0"#§.§4!m§(§4!P§,8,1);
         var _loc4_:Number = (getItemByName("ContainerLevelUp") as §6W§).width;
         var _loc5_:Number = (getItemByName("ContainerLevelUp") as §6W§).height;
         var _loc6_:Number = (getItemByName("ContainerLevelUp") as §6W§).x;
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = (getItemByName("ContainerLevelUp") as §6W§).y) + _loc5_ / 2;
         var _loc9_:Number = _loc6_ + _loc4_ / 2;
         var _loc10_:Class;
         var _loc11_:MovieClip = new (_loc10_ = §69§.§ 0§("SurprisePigIcon"))();
         var _loc12_:MovieClip = new _loc10_();
         var _loc13_:MovieClip = new _loc10_();
         this.§;w§.push(_loc11_);
         this.§;w§.push(_loc12_);
         this.§;w§.push(_loc13_);
         var _loc14_:Array = new Array();
         §-^§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc15_:Number = 1;
         for each(_loc16_ in this.§;w§)
         {
            _loc16_.stop();
            mClip.addChild(_loc16_);
            _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
            _loc16_.y = _loc8_;
            if(_loc15_ <= this.§3A§)
            {
               this.§ X§[_loc15_] = new Timer(100,1);
               this.§ X§[_loc15_].addEventListener(TimerEvent.TIMER_COMPLETE,this.§&!3§);
               this.§ X§[_loc15_].start();
               _loc16_.gotoAndStop("filled");
               _loc24_ = §7I§.§[E§.§ ";§(_loc16_,{
                  "scaleX":this.§=9§,
                  "scaleY":this.§=9§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§7I§.§;!C§);
               _loc14_.push(_loc24_);
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§7!B§ = §7I§.§[E§.§5!@§.apply(§7I§.§[E§,_loc14_);
            this.§7!B§.onComplete = this.§;s§;
         }
         this.§7!B§.play();
         var _loc17_:§6W§ = getItemByName("ContainerXP") as §6W§;
         (getItemByName("TextField_Progress_Level") as §!!]§).setText((AngryBirdsFP11.§>!7§ as §+`§).oldXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §!!]§).setVisibility(true);
         var _loc18_:§@u§;
         var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §@u§).mClip.width;
         var _loc20_:Number = _loc18_.mClip.x;
         var _loc21_:Number = (AngryBirdsFP11.§>!7§ as §+`§).maxXp;
         var _loc22_:Number = (AngryBirdsFP11.§>!7§ as §+`§).oldXp / _loc21_;
         var _loc23_:Number = (AngryBirdsFP11.§>!7§ as §+`§).newXp / _loc21_;
         if((AngryBirdsFP11.§>!7§ as §+`§).§&3§)
         {
            _loc22_ = (AngryBirdsFP11.§>!7§ as §+`§).oldXp / (AngryBirdsFP11.§>!7§ as §+`§).minXp;
            _loc23_ = 1;
         }
         _loc18_.mClip.width = _loc22_;
         if(this.§,!c§ != null)
         {
            this.§,!c§.stop();
         }
         this.§,!c§ = §7I§.§[E§.§ ";§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§7I§.§;!C§);
         this.§,!c§.play();
      }
      
      protected function §&!3§(param1:TimerEvent) : void
      {
         §0"#§.§9"2§("Sound_Editor_Star_" + this.§6;§.toString(),§4!P§);
         ++this.§6;§;
      }
      
      private function §;s§() : void
      {
         this.§&D§();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§2U§ = null;
         var _loc2_:int = getTimer() - this.§1"6§;
         this.§1"6§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§!!N§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §&V§() : void
      {
         var splash:§2U§ = null;
         if(this.§1!"§)
         {
            this.§1!"§.stop();
            try
            {
               this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!!N§)
         {
            if(§-^§.contains(splash))
            {
               §-^§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!!N§ = new Vector.<§2U§>();
      }
      
      private function §[S§(param1:Number, param2:Number) : void
      {
         this.§@"#§ = new §2U§(§[!^§.§["3§,§[!^§.§7$§,param1,param2,§2U§.§^9§,40,0,§@!3§.§?H§);
         §-^§.addChild(this.§@"#§);
         this.§!!N§.push(this.§@"#§);
      }
      
      private function §&D§() : void
      {
         this.§1!"§ = new Timer(250);
         this.§7!S§ = 0;
         this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
         this.§1!"§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§&V§();
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:§!!]§ = null;
         if(this.§7!S§ == 0)
         {
            _loc2_ = 1;
            for each(_loc3_ in this.§;w§)
            {
               if(_loc3_.currentLabel == "filled")
               {
                  _loc3_.gotoAndStop("empty");
                  (getItemByName("TextField_XPBar") as §!!]§).setVisibility(true);
                  (_loc4_ = getItemByName("TextField_XPBar") as §!!]§).setVisibility(true);
                  _loc4_.setText("+020");
                  _loc4_.x = -_loc4_.width / 2;
                  _loc4_.y = -_loc4_.height / 2 + 8;
                  _loc3_.addChild(_loc4_.mClip);
                  §0"#§.§9"2§("Sound_Star_Pig");
                  this.§[S§(_loc3_.x + _loc3_.parent.x,_loc3_.y + _loc3_.parent.y);
                  _loc2_++;
               }
            }
         }
         else
         {
            this.§1!"§.stop();
         }
         ++this.§7!S§;
      }
   }
}
