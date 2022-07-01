package §7!%§
{
   import §%B§.§^k§;
   import §-!@§.Popup;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §9!y§.§+'§;
   import §9!y§.§0-§;
   import §>";§.§#§;
   import §@">§.§%!u§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §3f§ extends Popup
   {
       
      
      private var §2,§:§+I§;
      
      private var §5q§:§+I§;
      
      private var §2"§:Number = 1;
      
      private var §&!D§:§0-§;
      
      private var §'v§:Vector.<§0-§>;
      
      private var §;h§:Timer;
      
      private var §1!#§:int;
      
      private var § set§:Array;
      
      private var §@!g§:int = 0;
      
      private var §5+§:int = 0;
      
      public function §3f§(param1:XML, param2:§%!u§, param3:int)
      {
         var _loc16_:MovieClip = null;
         var _loc24_:§+I§ = null;
         this.§ set§ = new Array();
         super(param1,param2);
         this.§'v§ = new Vector.<§0-§>();
         this.§5+§ = param3;
         var _loc4_:Number = (getItemByName("ContainerLevelUp") as §+!?§).width;
         var _loc5_:Number = (getItemByName("ContainerLevelUp") as §+!?§).height;
         var _loc6_:Number = (getItemByName("ContainerLevelUp") as §+!?§).x;
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = (getItemByName("ContainerLevelUp") as §+!?§).y) + _loc5_ / 2;
         var _loc9_:Number = _loc6_ + _loc4_ / 2;
         var _loc10_:Class;
         var _loc11_:MovieClip = new (_loc10_ = §!"'§.§%!Q§("SurprisePigIcon"))();
         var _loc12_:MovieClip = new _loc10_();
         var _loc13_:MovieClip = new _loc10_();
         this.§ set§.push(_loc11_);
         this.§ set§.push(_loc12_);
         this.§ set§.push(_loc13_);
         var _loc14_:Array = new Array();
         §&?§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc15_:Number = 1;
         for each(_loc16_ in this.§ set§)
         {
            _loc16_.stop();
            mClip.addChild(_loc16_);
            _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
            _loc16_.y = _loc8_;
            if(_loc15_ <= this.§5+§)
            {
               _loc16_.gotoAndStop("filled");
               _loc24_ = §-!M§.§ "!§.§+d§(_loc16_,{
                  "scaleX":this.§2"§,
                  "scaleY":this.§2"§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§-!M§.§ §);
               _loc14_.push(_loc24_);
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§5q§ = §-!M§.§ "!§.§=!1§.apply(§-!M§.§ "!§,_loc14_);
            _loc24_.onComplete = this.§8![§;
         }
         this.§5q§.play();
         var _loc17_:§+!?§ = getItemByName("ContainerXP") as §+!?§;
         (getItemByName("TextField_Progress_Level") as §6m§).setText((AngryBirdsFP11.§`!j§ as §#§).oldXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §6m§).setVisibility(true);
         var _loc18_:§;!P§;
         var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §;!P§).mClip.width;
         var _loc20_:Number = _loc18_.mClip.x;
         var _loc21_:Number = (AngryBirdsFP11.§`!j§ as §#§).maxXp;
         var _loc22_:Number = (AngryBirdsFP11.§`!j§ as §#§).oldXp / _loc21_;
         var _loc23_:Number = (AngryBirdsFP11.§`!j§ as §#§).newXp / _loc21_;
         if((AngryBirdsFP11.§`!j§ as §#§).§^!B§)
         {
            _loc22_ = (AngryBirdsFP11.§`!j§ as §#§).oldXp / (AngryBirdsFP11.§`!j§ as §#§).minXp;
            _loc23_ = 1;
         }
         _loc18_.mClip.width = _loc22_;
         if(this.§2,§ != null)
         {
            this.§2,§.stop();
         }
         this.§2,§ = §-!M§.§ "!§.§+d§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§-!M§.§ §);
         this.§2,§.play();
      }
      
      private function §8![§() : void
      {
         this.§%!y§();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§0-§ = null;
         var _loc2_:int = getTimer() - this.§@!g§;
         this.§@!g§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§'v§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §9Q§() : void
      {
         var splash:§0-§ = null;
         if(this.§;h§)
         {
            this.§;h§.stop();
            try
            {
               this.§;h§.removeEventListener(TimerEvent.TIMER,this.§`"1§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§'v§)
         {
            if(§&?§.contains(splash))
            {
               §&?§.removeChild(splash);
            }
            splash.clean();
         }
         this.§'v§ = new Vector.<§0-§>();
      }
      
      private function §'x§(param1:Number, param2:Number) : void
      {
         this.§&!D§ = new §0-§(§%"$§.§0<§,§%"$§.§-!'§,param1,param2,§0-§.§-W§,40,0,§+'§.§<y§);
         §&?§.addChild(this.§&!D§);
         this.§'v§.push(this.§&!D§);
      }
      
      private function §%!y§() : void
      {
         this.§;h§ = new Timer(250);
         this.§1!#§ = 0;
         this.§;h§.addEventListener(TimerEvent.TIMER,this.§`"1§);
         this.§;h§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§9Q§();
      }
      
      private function §`"1§(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:§6m§ = null;
         if(this.§1!#§ == 0)
         {
            _loc2_ = 1;
            for each(_loc3_ in this.§ set§)
            {
               if(_loc3_.currentLabel == "filled")
               {
                  _loc3_.gotoAndStop("empty");
                  (getItemByName("TextField_XPBar") as §6m§).setVisibility(true);
                  (_loc4_ = getItemByName("TextField_XPBar") as §6m§).setVisibility(true);
                  _loc4_.setText("+020");
                  _loc4_.x = -_loc4_.width / 2;
                  _loc4_.y = -_loc4_.height / 2 + 8;
                  _loc3_.addChild(_loc4_.mClip);
                  §^k§.playSound("Sound_Editor_Unlock");
                  §^k§.playSound("Sound_Star_Pig");
                  this.§'x§(_loc3_.x + _loc3_.parent.x,_loc3_.y + _loc3_.parent.y);
                  _loc2_++;
               }
            }
         }
         else
         {
            this.§;h§.stop();
         }
         ++this.§1!#§;
      }
   }
}
