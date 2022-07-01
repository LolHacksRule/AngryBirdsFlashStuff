package §1!5§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§<"-§;
   import §""§.Popup;
   import §-!H§.§0!]§;
   import §0!C§.§=!]§;
   import §1"1§.§;]§;
   import §1"1§.§`&§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §^C§ extends Popup
   {
       
      
      private var §^m§:§-!m§;
      
      private var §&R§:§-!m§;
      
      private var §#"0§:Number = 1;
      
      private var §=!j§:§;]§;
      
      private var §!""§:Vector.<§;]§>;
      
      private var §5c§:Timer;
      
      private var §!X§:int;
      
      private var §5Q§:Array;
      
      private var §?"+§:int = 0;
      
      private var §8P§:int = 0;
      
      public function §^C§(param1:XML, param2:§=!]§, param3:int)
      {
         var _loc16_:MovieClip = null;
         var _loc24_:§-!m§ = null;
         this.§5Q§ = new Array();
         super(param1,param2);
         this.§!""§ = new Vector.<§;]§>();
         this.§8P§ = param3;
         var _loc4_:Number = (getItemByName("ContainerLevelUp") as §1H§).width;
         var _loc5_:Number = (getItemByName("ContainerLevelUp") as §1H§).height;
         var _loc6_:Number = (getItemByName("ContainerLevelUp") as §1H§).x;
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = (getItemByName("ContainerLevelUp") as §1H§).y) + _loc5_ / 2;
         var _loc9_:Number = _loc6_ + _loc4_ / 2;
         var _loc10_:Class;
         var _loc11_:MovieClip = new (_loc10_ = §=#§.§1v§("SurprisePigIcon"))();
         var _loc12_:MovieClip = new _loc10_();
         var _loc13_:MovieClip = new _loc10_();
         this.§5Q§.push(_loc11_);
         this.§5Q§.push(_loc12_);
         this.§5Q§.push(_loc13_);
         var _loc14_:Array = new Array();
         §4!+§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc15_:Number = 1;
         for each(_loc16_ in this.§5Q§)
         {
            _loc16_.stop();
            mClip.addChild(_loc16_);
            _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
            _loc16_.y = _loc8_;
            if(_loc15_ <= this.§8P§)
            {
               _loc16_.gotoAndStop("filled");
               _loc24_ = §"L§.§7!?§.§4!P§(_loc16_,{
                  "scaleX":this.§#"0§,
                  "scaleY":this.§#"0§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§"L§.§@v§);
               _loc14_.push(_loc24_);
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§&R§ = §"L§.§7!?§.§@!H§.apply(§"L§.§7!?§,_loc14_);
            _loc24_.onComplete = this.§@!z§;
         }
         this.§&R§.play();
         var _loc17_:§1H§ = getItemByName("ContainerXP") as §1H§;
         (getItemByName("TextField_Progress_Level") as §<"-§).setText((AngryBirdsFP11.§"!c§ as §0!]§).oldXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §<"-§).setVisibility(true);
         var _loc18_:§%!7§;
         var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §%!7§).mClip.width;
         var _loc20_:Number = _loc18_.mClip.x;
         var _loc21_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).maxXp;
         var _loc22_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).oldXp / _loc21_;
         var _loc23_:Number = (AngryBirdsFP11.§"!c§ as §0!]§).newXp / _loc21_;
         if((AngryBirdsFP11.§"!c§ as §0!]§).§5!d§)
         {
            _loc22_ = (AngryBirdsFP11.§"!c§ as §0!]§).oldXp / (AngryBirdsFP11.§"!c§ as §0!]§).minXp;
            _loc23_ = 1;
         }
         _loc18_.mClip.width = _loc22_;
         if(this.§^m§ != null)
         {
            this.§^m§.stop();
         }
         this.§^m§ = §"L§.§7!?§.§4!P§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§"L§.§@v§);
         this.§^m§.play();
      }
      
      private function §@!z§() : void
      {
         this.§^E§();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§;]§ = null;
         var _loc2_:int = getTimer() - this.§?"+§;
         this.§?"+§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§!""§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §4!-§() : void
      {
         var splash:§;]§ = null;
         if(this.§5c§)
         {
            this.§5c§.stop();
            try
            {
               this.§5c§.removeEventListener(TimerEvent.TIMER,this.§8!%§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!""§)
         {
            if(§4!+§.contains(splash))
            {
               §4!+§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!""§ = new Vector.<§;]§>();
      }
      
      private function §#N§(param1:Number, param2:Number) : void
      {
         this.§=!j§ = new §;]§(§@=§.§`!_§,§@=§.§?_§,param1,param2,§;]§.§3!1§,40,0,§`&§.§0"7§);
         §4!+§.addChild(this.§=!j§);
         this.§!""§.push(this.§=!j§);
      }
      
      private function §^E§() : void
      {
         this.§5c§ = new Timer(250);
         this.§!X§ = 0;
         this.§5c§.addEventListener(TimerEvent.TIMER,this.§8!%§);
         this.§5c§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§4!-§();
      }
      
      private function §8!%§(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:§<"-§ = null;
         if(this.§!X§ == 0)
         {
            _loc2_ = 1;
            for each(_loc3_ in this.§5Q§)
            {
               if(_loc3_.currentLabel == "filled")
               {
                  _loc3_.gotoAndStop("empty");
                  (getItemByName("TextField_XPBar") as §<"-§).setVisibility(true);
                  (_loc4_ = getItemByName("TextField_XPBar") as §<"-§).setVisibility(true);
                  _loc4_.setText("+020");
                  _loc4_.x = -_loc4_.width / 2;
                  _loc4_.y = -_loc4_.height / 2 + 8;
                  _loc3_.addChild(_loc4_.mClip);
                  §5;§.playSound("Sound_Editor_Unlock");
                  §5;§.playSound("Sound_Star_Pig");
                  this.§#N§(_loc3_.x + _loc3_.parent.x,_loc3_.y + _loc3_.parent.y);
                  _loc2_++;
               }
            }
         }
         else
         {
            this.§5c§.stop();
         }
         ++this.§!X§;
      }
   }
}
