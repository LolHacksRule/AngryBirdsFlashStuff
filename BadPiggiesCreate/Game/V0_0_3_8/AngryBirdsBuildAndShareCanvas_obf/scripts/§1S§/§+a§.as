package §1S§
{
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§<!5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §-D§.Popup;
   import §9e§.§"!e§;
   import §>'§.§2z§;
   import §?!V§.§ T§;
   import com.rovio.assets.§%"4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §+a§ extends Popup
   {
       
      
      private var §@!N§:§;!5§;
      
      private var §'T§:§;!5§;
      
      private var §?V§:Number = 1;
      
      private var §#y§:§2z§;
      
      private var §<!k§:Vector.<§2z§>;
      
      private var §>!D§:Timer;
      
      private var §]!j§:int;
      
      private var §[!S§:Array;
      
      private var §[7§:int = 0;
      
      private var §"[§:int = 0;
      
      public function §+a§(param1:XML, param2:§ T§, param3:int)
      {
         var _loc16_:MovieClip = null;
         var _loc24_:§;!5§ = null;
         this.§[!S§ = new Array();
         super(param1,param2);
         this.§<!k§ = new Vector.<§2z§>();
         this.§"[§ = param3;
         var _loc4_:Number = (getItemByName("ContainerLevelUp") as § use§).width;
         var _loc5_:Number = (getItemByName("ContainerLevelUp") as § use§).height;
         var _loc6_:Number = (getItemByName("ContainerLevelUp") as § use§).x;
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = (getItemByName("ContainerLevelUp") as § use§).y) + _loc5_ / 2;
         var _loc9_:Number = _loc6_ + _loc4_ / 2;
         var _loc10_:Class;
         var _loc11_:MovieClip = new (_loc10_ = §%"4§.§>!v§("SurprisePigIcon"))();
         var _loc12_:MovieClip = new _loc10_();
         var _loc13_:MovieClip = new _loc10_();
         this.§[!S§.push(_loc11_);
         this.§[!S§.push(_loc12_);
         this.§[!S§.push(_loc13_);
         var _loc14_:Array = new Array();
         §5!q§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc15_:Number = 1;
         for each(_loc16_ in this.§[!S§)
         {
            _loc16_.stop();
            mClip.addChild(_loc16_);
            _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
            _loc16_.y = _loc8_;
            if(_loc15_ <= this.§"[§)
            {
               _loc16_.gotoAndStop("filled");
               _loc24_ = §"!5§.§9j§.§4!p§(_loc16_,{
                  "scaleX":this.§?V§,
                  "scaleY":this.§?V§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§"!5§.§1a§);
               _loc14_.push(_loc24_);
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§'T§ = §"!5§.§9j§.§["!§.apply(§"!5§.§9j§,_loc14_);
            _loc24_.onComplete = this.§4"0§;
         }
         this.§'T§.play();
         var _loc17_:§ use§ = getItemByName("ContainerXP") as § use§;
         (getItemByName("TextField_Progress_Level") as §%c§).setText((AngryBirdsFP11.§8!v§ as §"!e§).oldXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §%c§).setVisibility(true);
         var _loc18_:§<!5§;
         var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §<!5§).mClip.width;
         var _loc20_:Number = _loc18_.mClip.x;
         var _loc21_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).maxXp;
         var _loc22_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).oldXp / _loc21_;
         var _loc23_:Number = (AngryBirdsFP11.§8!v§ as §"!e§).newXp / _loc21_;
         _loc18_.mClip.width = _loc22_;
         if(this.§@!N§ != null)
         {
            this.§@!N§.stop();
         }
         this.§@!N§ = §"!5§.§9j§.§4!p§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§"!5§.§1a§);
         this.§@!N§.play();
      }
      
      private function §4"0§() : void
      {
         this.§1A§();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§2z§ = null;
         var _loc2_:int = getTimer() - this.§[7§;
         this.§[7§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§<!k§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §=!Z§() : void
      {
         var splash:§2z§ = null;
         if(this.§>!D§)
         {
            this.§>!D§.stop();
            try
            {
               this.§>!D§.removeEventListener(TimerEvent.TIMER,this.§,Y§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§<!k§)
         {
            if(§5!q§.contains(splash))
            {
               §5!q§.removeChild(splash);
            }
            splash.clean();
         }
         this.§<!k§ = new Vector.<§2z§>();
      }
      
      private function §+?§(param1:Number, param2:Number) : void
      {
         this.§#y§ = new §2z§(§3!P§.§;"#§,§3!P§.§3g§,param1,param2,§2z§.§&!;§,40);
         §5!q§.addChild(this.§#y§);
         this.§<!k§.push(this.§#y§);
      }
      
      private function §1A§() : void
      {
         this.§>!D§ = new Timer(250);
         this.§]!j§ = 0;
         this.§>!D§.addEventListener(TimerEvent.TIMER,this.§,Y§);
         this.§>!D§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§=!Z§();
      }
      
      private function §,Y§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§%c§ = null;
         if(this.§]!j§ == 0)
         {
            for each(_loc2_ in this.§[!S§)
            {
               if(_loc2_.currentLabel == "filled")
               {
                  _loc2_.gotoAndStop("empty");
                  (getItemByName("TextField_XPBar") as §%c§).setVisibility(true);
                  _loc3_ = getItemByName("TextField_XPBar") as §%c§;
                  _loc3_.setVisibility(true);
                  _loc3_.setText("+020");
                  _loc3_.x = -_loc3_.width / 2;
                  _loc3_.y = -_loc3_.height / 2 + 8;
                  _loc2_.addChild(_loc3_.mClip);
                  this.§+?§(_loc2_.x + _loc2_.parent.x,_loc2_.y);
               }
            }
         }
         else
         {
            this.§>!D§.stop();
         }
         ++this.§]!j§;
      }
   }
}
