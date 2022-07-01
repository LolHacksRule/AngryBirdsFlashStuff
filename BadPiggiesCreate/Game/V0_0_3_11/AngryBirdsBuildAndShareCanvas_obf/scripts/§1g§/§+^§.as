package §1g§
{
   import §"!2§.§>9§;
   import §&!!§.Popup;
   import §3"0§.§'&§;
   import §3"0§.§0"7§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§;!u§;
   import §;"$§.§`5§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import com.rovio.assets.§]!S§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §+^§ extends Popup
   {
       
      
      private var §#",§:§8!K§;
      
      private var §8!f§:§8!K§;
      
      private var §"!f§:Number = 1;
      
      private var §=3§:§0"7§;
      
      private var §1!g§:Vector.<§0"7§>;
      
      private var §`i§:Timer;
      
      private var §>A§:int;
      
      private var §^t§:Array;
      
      private var §>&§:int = 0;
      
      private var §0!u§:int = 0;
      
      public function §+^§(param1:XML, param2:§`5§, param3:int)
      {
         var _loc16_:MovieClip = null;
         var _loc24_:§8!K§ = null;
         this.§^t§ = new Array();
         super(param1,param2);
         this.§1!g§ = new Vector.<§0"7§>();
         this.§0!u§ = param3;
         var _loc4_:Number = (getItemByName("ContainerLevelUp") as §;!u§).width;
         var _loc5_:Number = (getItemByName("ContainerLevelUp") as §;!u§).height;
         var _loc6_:Number = (getItemByName("ContainerLevelUp") as §;!u§).x;
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = (getItemByName("ContainerLevelUp") as §;!u§).y) + _loc5_ / 2;
         var _loc9_:Number = _loc6_ + _loc4_ / 2;
         var _loc10_:Class;
         var _loc11_:MovieClip = new (_loc10_ = §]!S§.§?! §("SurprisePigIcon"))();
         var _loc12_:MovieClip = new _loc10_();
         var _loc13_:MovieClip = new _loc10_();
         this.§^t§.push(_loc11_);
         this.§^t§.push(_loc12_);
         this.§^t§.push(_loc13_);
         var _loc14_:Array = new Array();
         §7S§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc15_:Number = 1;
         for each(_loc16_ in this.§^t§)
         {
            _loc16_.stop();
            mClip.addChild(_loc16_);
            _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
            _loc16_.y = _loc8_;
            if(_loc15_ <= this.§0!u§)
            {
               _loc16_.gotoAndStop("filled");
               _loc24_ = §%!Z§.§if §.§"<§(_loc16_,{
                  "scaleX":this.§"!f§,
                  "scaleY":this.§"!f§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§%!Z§.§,!%§);
               _loc14_.push(_loc24_);
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§8!f§ = §%!Z§.§if §.§9y§.apply(§%!Z§.§if §,_loc14_);
            _loc24_.onComplete = this.§ s§;
         }
         this.§8!f§.play();
         var _loc17_:§;!u§ = getItemByName("ContainerXP") as §;!u§;
         (getItemByName("TextField_Progress_Level") as § !F§).setText((AngryBirdsFP11.§8!I§ as §>9§).oldXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as § !F§).setVisibility(true);
         var _loc18_:§%!`§;
         var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §%!`§).mClip.width;
         var _loc20_:Number = _loc18_.mClip.x;
         var _loc21_:Number = (AngryBirdsFP11.§8!I§ as §>9§).maxXp;
         var _loc22_:Number = (AngryBirdsFP11.§8!I§ as §>9§).oldXp / _loc21_;
         var _loc23_:Number = (AngryBirdsFP11.§8!I§ as §>9§).newXp / _loc21_;
         _loc18_.mClip.width = _loc22_;
         if(this.§#",§ != null)
         {
            this.§#",§.stop();
         }
         this.§#",§ = §%!Z§.§if §.§"<§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§%!Z§.§,!%§);
         this.§#",§.play();
      }
      
      private function § s§() : void
      {
         this.§"!§();
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
         this.§=3§ = new §0"7§(§'N§.§ !q§,§'N§.§%"2§,param1,param2,§0"7§.§?!C§,40,0,§'&§.§=V§);
         §7S§.addChild(this.§=3§);
         this.§1!g§.push(this.§=3§);
      }
      
      private function §"!§() : void
      {
         this.§`i§ = new Timer(250);
         this.§>A§ = 0;
         this.§`i§.addEventListener(TimerEvent.TIMER,this.§8R§);
         this.§`i§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§5"0§();
      }
      
      private function §8R§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§ !F§ = null;
         if(this.§>A§ == 0)
         {
            for each(_loc2_ in this.§^t§)
            {
               if(_loc2_.currentLabel == "filled")
               {
                  _loc2_.gotoAndStop("empty");
                  (getItemByName("TextField_XPBar") as § !F§).setVisibility(true);
                  _loc3_ = getItemByName("TextField_XPBar") as § !F§;
                  _loc3_.setVisibility(true);
                  _loc3_.setText("+020");
                  _loc3_.x = -_loc3_.width / 2;
                  _loc3_.y = -_loc3_.height / 2 + 8;
                  _loc2_.addChild(_loc3_.mClip);
                  this.§8!&§(_loc2_.x + _loc2_.parent.x,_loc2_.y);
               }
            }
         }
         else
         {
            this.§`i§.stop();
         }
         ++this.§>A§;
      }
   }
}
