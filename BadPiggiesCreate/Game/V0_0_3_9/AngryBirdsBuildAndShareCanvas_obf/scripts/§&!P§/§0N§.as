package §&!P§
{
   import § !%§.§^2§;
   import §3!O§.§6w§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§>"-§;
   import §<Z§.§7!!§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import §]J§.Popup;
   import com.rovio.assets.§8!q§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §0N§ extends Popup
   {
       
      
      private var §2y§:§^!#§;
      
      private var §9!c§:§^!#§;
      
      private var §`"§:Number = 1;
      
      private var §[j§:§6w§;
      
      private var §>h§:Vector.<§6w§>;
      
      private var §6C§:Timer;
      
      private var §4_§:int;
      
      private var §'"+§:Array;
      
      private var §[<§:int = 0;
      
      private var §1H§:int = 0;
      
      public function §0N§(param1:XML, param2:§7!!§, param3:int)
      {
         var _loc16_:MovieClip = null;
         var _loc24_:§^!#§ = null;
         this.§'"+§ = new Array();
         super(param1,param2);
         this.§>h§ = new Vector.<§6w§>();
         this.§1H§ = param3;
         var _loc4_:Number = (getItemByName("ContainerLevelUp") as §>"-§).width;
         var _loc5_:Number = (getItemByName("ContainerLevelUp") as §>"-§).height;
         var _loc6_:Number = (getItemByName("ContainerLevelUp") as §>"-§).x;
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = (getItemByName("ContainerLevelUp") as §>"-§).y) + _loc5_ / 2;
         var _loc9_:Number = _loc6_ + _loc4_ / 2;
         var _loc10_:Class;
         var _loc11_:MovieClip = new (_loc10_ = §8!q§.§2^§("SurprisePigIcon"))();
         var _loc12_:MovieClip = new _loc10_();
         var _loc13_:MovieClip = new _loc10_();
         this.§'"+§.push(_loc11_);
         this.§'"+§.push(_loc12_);
         this.§'"+§.push(_loc13_);
         var _loc14_:Array = new Array();
         §%!a§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc15_:Number = 1;
         for each(_loc16_ in this.§'"+§)
         {
            _loc16_.stop();
            mClip.addChild(_loc16_);
            _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
            _loc16_.y = _loc8_;
            if(_loc15_ <= this.§1H§)
            {
               _loc16_.gotoAndStop("filled");
               _loc24_ = §"g§.§'!o§.§while§(_loc16_,{
                  "scaleX":this.§`"§,
                  "scaleY":this.§`"§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§"g§.§'!9§);
               _loc14_.push(_loc24_);
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§9!c§ = §"g§.§'!o§.§%l§.apply(§"g§.§'!o§,_loc14_);
            _loc24_.onComplete = this.§&!Y§;
         }
         this.§9!c§.play();
         var _loc17_:§>"-§ = getItemByName("ContainerXP") as §>"-§;
         (getItemByName("TextField_Progress_Level") as §7!N§).setText((AngryBirdsFP11.§5!c§ as §^2§).oldXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §7!N§).setVisibility(true);
         var _loc18_:§&5§;
         var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §&5§).mClip.width;
         var _loc20_:Number = _loc18_.mClip.x;
         var _loc21_:Number = (AngryBirdsFP11.§5!c§ as §^2§).maxXp;
         var _loc22_:Number = (AngryBirdsFP11.§5!c§ as §^2§).oldXp / _loc21_;
         var _loc23_:Number = (AngryBirdsFP11.§5!c§ as §^2§).newXp / _loc21_;
         _loc18_.mClip.width = _loc22_;
         if(this.§2y§ != null)
         {
            this.§2y§.stop();
         }
         this.§2y§ = §"g§.§'!o§.§while§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§"g§.§'!9§);
         this.§2y§.play();
      }
      
      private function §&!Y§() : void
      {
         this.§=!6§();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§6w§ = null;
         var _loc2_:int = getTimer() - this.§[<§;
         this.§[<§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§>h§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §'c§() : void
      {
         var splash:§6w§ = null;
         if(this.§6C§)
         {
            this.§6C§.stop();
            try
            {
               this.§6C§.removeEventListener(TimerEvent.TIMER,this.§5;§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§>h§)
         {
            if(§%!a§.contains(splash))
            {
               §%!a§.removeChild(splash);
            }
            splash.clean();
         }
         this.§>h§ = new Vector.<§6w§>();
      }
      
      private function §]"0§(param1:Number, param2:Number) : void
      {
         this.§[j§ = new §6w§(§1+§.§"<§,§1+§.§9%§,param1,param2,§6w§.§=j§,40);
         §%!a§.addChild(this.§[j§);
         this.§>h§.push(this.§[j§);
      }
      
      private function §=!6§() : void
      {
         this.§6C§ = new Timer(250);
         this.§4_§ = 0;
         this.§6C§.addEventListener(TimerEvent.TIMER,this.§5;§);
         this.§6C§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§'c§();
      }
      
      private function §5;§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§7!N§ = null;
         if(this.§4_§ == 0)
         {
            for each(_loc2_ in this.§'"+§)
            {
               if(_loc2_.currentLabel == "filled")
               {
                  _loc2_.gotoAndStop("empty");
                  (getItemByName("TextField_XPBar") as §7!N§).setVisibility(true);
                  _loc3_ = getItemByName("TextField_XPBar") as §7!N§;
                  _loc3_.setVisibility(true);
                  _loc3_.setText("+020");
                  _loc3_.x = -_loc3_.width / 2;
                  _loc3_.y = -_loc3_.height / 2 + 8;
                  _loc2_.addChild(_loc3_.mClip);
                  this.§]"0§(_loc2_.x + _loc2_.parent.x,_loc2_.y);
               }
            }
         }
         else
         {
            this.§6C§.stop();
         }
         ++this.§4_§;
      }
   }
}
