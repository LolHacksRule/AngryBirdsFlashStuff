package §2H§
{
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'p§.§%+§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §+h§.Popup;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §>X§.§;!&§;
   import §>X§.§@!I§;
   import §^!y§.§'"#§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §]>§ extends Popup
   {
       
      
      private var §8!g§:§3^§;
      
      private var §?!_§:§3^§;
      
      private var §?a§:Number = 1;
      
      private var §7d§:§@!I§;
      
      private var § !Q§:Vector.<§@!I§>;
      
      private var §^K§:Timer;
      
      private var §@!6§:int;
      
      private var §%"3§:Array;
      
      private var §7!3§:int = 0;
      
      private var §=!d§:int = 0;
      
      public function §]>§(param1:XML, param2:§'s§, param3:int)
      {
         var _loc16_:MovieClip = null;
         var _loc24_:§3^§ = null;
         this.§%"3§ = new Array();
         super(param1,param2);
         this.§ !Q§ = new Vector.<§@!I§>();
         this.§=!d§ = param3;
         var _loc4_:Number = (getItemByName("ContainerLevelUp") as §`!T§).width;
         var _loc5_:Number = (getItemByName("ContainerLevelUp") as §`!T§).height;
         var _loc6_:Number = (getItemByName("ContainerLevelUp") as §`!T§).x;
         var _loc7_:Number;
         var _loc8_:Number = (_loc7_ = (getItemByName("ContainerLevelUp") as §`!T§).y) + _loc5_ / 2;
         var _loc9_:Number = _loc6_ + _loc4_ / 2;
         var _loc10_:Class;
         var _loc11_:MovieClip = new (_loc10_ = §>!]§.§1!8§("SurprisePigIcon"))();
         var _loc12_:MovieClip = new _loc10_();
         var _loc13_:MovieClip = new _loc10_();
         this.§%"3§.push(_loc11_);
         this.§%"3§.push(_loc12_);
         this.§%"3§.push(_loc13_);
         var _loc14_:Array = new Array();
         §&!D§.addEventListener(Event.ENTER_FRAME,this.update);
         var _loc15_:Number = 1;
         for each(_loc16_ in this.§%"3§)
         {
            _loc16_.stop();
            mClip.addChild(_loc16_);
            _loc16_.x = _loc6_ + _loc4_ / 3 * _loc15_ + 24;
            _loc16_.y = _loc8_;
            if(_loc15_ <= this.§=!d§)
            {
               _loc16_.gotoAndStop("filled");
               _loc24_ = §7!E§.§2=§.§<!C§(_loc16_,{
                  "scaleX":this.§?a§,
                  "scaleY":this.§?a§
               },{
                  "scaleX":0,
                  "scaleY":0
               },0.4,§7!E§.§8""§);
               _loc14_.push(_loc24_);
            }
            _loc15_++;
         }
         if(_loc14_.length > 0)
         {
            this.§?!_§ = §7!E§.§2=§.§2!u§.apply(§7!E§.§2=§,_loc14_);
            _loc24_.onComplete = this.§,!X§;
         }
         this.§?!_§.play();
         var _loc17_:§`!T§ = getItemByName("ContainerXP") as §`!T§;
         (getItemByName("TextField_Progress_Level") as §`!<§).setText((AngryBirdsFP11.§>" § as §'"#§).oldXpLevel.toString());
         (getItemByName("TextField_Progress_Level") as §`!<§).setVisibility(true);
         var _loc18_:§%+§;
         var _loc19_:Number = (_loc18_ = _loc17_.getItemByName("MovieClip_XPBar_Progress") as §%+§).mClip.width;
         var _loc20_:Number = _loc18_.mClip.x;
         var _loc21_:Number = (AngryBirdsFP11.§>" § as §'"#§).maxXp;
         var _loc22_:Number = (AngryBirdsFP11.§>" § as §'"#§).oldXp / _loc21_;
         var _loc23_:Number = (AngryBirdsFP11.§>" § as §'"#§).newXp / _loc21_;
         if((AngryBirdsFP11.§>" § as §'"#§).§[!W§)
         {
            _loc22_ = (AngryBirdsFP11.§>" § as §'"#§).oldXp / (AngryBirdsFP11.§>" § as §'"#§).minXp;
            _loc23_ = 1;
         }
         _loc18_.mClip.width = _loc22_;
         if(this.§8!g§ != null)
         {
            this.§8!g§.stop();
         }
         this.§8!g§ = §7!E§.§2=§.§<!C§(_loc18_.mClip,{"scaleX":_loc23_},{"scaleX":_loc22_},0.8,§7!E§.§8""§);
         this.§8!g§.play();
      }
      
      private function §,!X§() : void
      {
         this.§!_§();
      }
      
      public function update(param1:Event) : void
      {
         var _loc3_:§@!I§ = null;
         var _loc2_:int = getTimer() - this.§7!3§;
         this.§7!3§ = getTimer();
         if(_loc2_ > 100)
         {
            return;
         }
         for each(_loc3_ in this.§ !Q§)
         {
            _loc3_.update(_loc2_);
         }
      }
      
      private function §#!x§() : void
      {
         var splash:§@!I§ = null;
         if(this.§^K§)
         {
            this.§^K§.stop();
            try
            {
               this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§ !Q§)
         {
            if(§&!D§.contains(splash))
            {
               §&!D§.removeChild(splash);
            }
            splash.clean();
         }
         this.§ !Q§ = new Vector.<§@!I§>();
      }
      
      private function §0,§(param1:Number, param2:Number) : void
      {
         this.§7d§ = new §@!I§(§>"§.§^!N§,§>"§.§5!P§,param1,param2,§@!I§.§4"5§,40,0,§;!&§.§3!O§);
         §&!D§.addChild(this.§7d§);
         this.§ !Q§.push(this.§7d§);
      }
      
      private function §!_§() : void
      {
         this.§^K§ = new Timer(250);
         this.§@!6§ = 0;
         this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
         this.§^K§.start();
      }
      
      override public function close() : void
      {
         super.close();
         this.§#!x§();
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:MovieClip = null;
         var _loc4_:§`!<§ = null;
         if(this.§@!6§ == 0)
         {
            _loc2_ = 1;
            for each(_loc3_ in this.§%"3§)
            {
               if(_loc3_.currentLabel == "filled")
               {
                  _loc3_.gotoAndStop("empty");
                  (getItemByName("TextField_XPBar") as §`!<§).setVisibility(true);
                  (_loc4_ = getItemByName("TextField_XPBar") as §`!<§).setVisibility(true);
                  _loc4_.setText("+020");
                  _loc4_.x = -_loc4_.width / 2;
                  _loc4_.y = -_loc4_.height / 2 + 8;
                  _loc3_.addChild(_loc4_.mClip);
                  §5!U§.playSound("Sound_Editor_Unlock");
                  §5!U§.playSound("Sound_Star_Pig");
                  this.§0,§(_loc3_.x + _loc3_.parent.x,_loc3_.y + _loc3_.parent.y);
                  _loc2_++;
               }
            }
         }
         else
         {
            this.§^K§.stop();
         }
         ++this.§@!6§;
      }
   }
}
