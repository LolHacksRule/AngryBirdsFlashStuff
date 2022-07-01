package §%!Z§
{
   import §,"$§.Popup;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§`G§;
   import §1!p§.§`!#§;
   import §4!t§.§=p§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import §@""§.§&S§;
   import §@""§.§'!R§;
   import com.rovio.assets.§5!+§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §0j§ extends Popup
   {
       
      
      private var §-3§:§^F§;
      
      private var §`"%§:§^F§;
      
      private var §5N§:Number = 1;
      
      private var §3!Y§:§&S§;
      
      private var §1F§:Vector.<§&S§>;
      
      private var §!f§:Timer;
      
      private var §3q§:int;
      
      private var §#!w§:Array;
      
      private var §"!?§:int = 0;
      
      private var § !O§:int = 0;
      
      public function §0j§(param1:XML, param2:§=p§, param3:int)
      {
         var _loc16_:MovieClip = null;
         var _loc24_:§^F§ = null;
         this.§#!w§ = new Array();
         super(param1,param2);
         this.§1F§ = new Vector.<§&S§>();
         this.§ !O§ = param3;
         var _loc4_:Number = (getItemByName("ContainerLevelUp") as §7!a§).width;
         var _loc5_:Number = (getItemByName("ContainerLevelUp") as §7!a§).height;
         var _loc6_:Number = (getItemByName("ContainerLevelUp") as §7!a§).x;
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = (getItemByName("ContainerLevelUp") as §7!a§).y) + _loc5_ / 2;
         var _loc9_:Number = _loc6_ + _loc4_ / 2;
         var _loc10_:Class;
         var _loc11_:MovieClip = new (_loc10_ = §5!+§.§,]§("SurprisePigIcon"))();
         var _loc12_:MovieClip = new _loc10_();
         var _loc13_:MovieClip = new _loc10_();
         this.§#!w§.push(_loc11_);
         this.§#!w§.push(_loc12_);
         this.§#!w§.push(_loc13_);
         var _loc14_:Array = new Array();
         §?>§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc15_:Number = 1;
         for each(_loc16_ in this.§#!w§)
         {
            _loc16_.stop();
            mClip.addChild(_loc16_);
            _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
            _loc16_.y = _loc8_;
            if(_loc15_ <= this.§ !O§)
            {
               _loc16_.gotoAndStop("filled");
               _loc24_ = §<y§.§,l§.§]!C§(_loc16_,{
                  "scaleX":this.§5N§,
                  "scaleY":this.§5N§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§<y§.§9!=§);
               _loc14_.push(_loc24_);
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§`"%§ = §<y§.§,l§.§=!D§.apply(§<y§.§,l§,_loc14_);
            _loc24_.onComplete = this.§?!Y§;
         }
         this.§`"%§.play();
         var _loc17_:§7!a§ = getItemByName("ContainerXP") as §7!a§;
         (getItemByName("TextField_Progress_Level") as §`G§).setText((AngryBirdsFP11.§<U§ as §`!#§).oldXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §`G§).setVisibility(true);
         var _loc18_:§%!9§;
         var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §%!9§).mClip.width;
         var _loc20_:Number = _loc18_.mClip.x;
         var _loc21_:Number = (AngryBirdsFP11.§<U§ as §`!#§).maxXp;
         var _loc22_:Number = (AngryBirdsFP11.§<U§ as §`!#§).oldXp / _loc21_;
         var _loc23_:Number = (AngryBirdsFP11.§<U§ as §`!#§).newXp / _loc21_;
         _loc18_.mClip.width = _loc22_;
         if(this.§-3§ != null)
         {
            this.§-3§.stop();
         }
         this.§-3§ = §<y§.§,l§.§]!C§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§<y§.§9!=§);
         this.§-3§.play();
      }
      
      private function §?!Y§() : void
      {
         this.§ !7§();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§&S§ = null;
         var _loc2_:int = getTimer() - this.§"!?§;
         this.§"!?§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§1F§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §?!<§() : void
      {
         var splash:§&S§ = null;
         if(this.§!f§)
         {
            this.§!f§.stop();
            try
            {
               this.§!f§.removeEventListener(TimerEvent.TIMER,this.§3r§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1F§)
         {
            if(§?>§.contains(splash))
            {
               §?>§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1F§ = new Vector.<§&S§>();
      }
      
      private function §'J§(param1:Number, param2:Number) : void
      {
         this.§3!Y§ = new §&S§(§7"$§.§<!8§,§7"$§.§[V§,param1,param2,§&S§.§>A§,40,0,§'!R§.§?-§);
         §?>§.addChild(this.§3!Y§);
         this.§1F§.push(this.§3!Y§);
      }
      
      private function § !7§() : void
      {
         this.§!f§ = new Timer(250);
         this.§3q§ = 0;
         this.§!f§.addEventListener(TimerEvent.TIMER,this.§3r§);
         this.§!f§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§?!<§();
      }
      
      private function §3r§(param1:TimerEvent) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:§`G§ = null;
         if(this.§3q§ == 0)
         {
            for each(_loc2_ in this.§#!w§)
            {
               if(_loc2_.currentLabel == "filled")
               {
                  _loc2_.gotoAndStop("empty");
                  (getItemByName("TextField_XPBar") as §`G§).setVisibility(true);
                  _loc3_ = getItemByName("TextField_XPBar") as §`G§;
                  _loc3_.setVisibility(true);
                  _loc3_.setText("+020");
                  _loc3_.x = -_loc3_.width / 2;
                  _loc3_.y = -_loc3_.height / 2 + 8;
                  _loc2_.addChild(_loc3_.mClip);
                  this.§'J§(_loc2_.x + _loc2_.parent.x,_loc2_.y);
               }
            }
         }
         else
         {
            this.§!f§.stop();
         }
         ++this.§3q§;
      }
   }
}
