package §^"F§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §,l§.§#!,§;
   import §-p§.§4!`§;
   import §-r§.§!"M§;
   import §0D§.§3!R§;
   import §1!t§.§!>§;
   import §4!<§.§%6§;
   import §4!<§.§&=§;
   import §4!<§.§3+§;
   import §4!<§.§^!Z§;
   import §5!Y§.§8y§;
   import §5!Y§.§9"6§;
   import §7"G§.§7!n§;
   import §9!n§.LevelManager;
   import §9@§.§`!=§;
   import §>!G§.§20§;
   import §@!"§.§?l§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §!!I§ extends EventDispatcher
   {
      
      public static var §["@§:Boolean = false;
      
      public static var §&P§:Boolean = true;
       
      
      private const §]"E§:Number = -125;
      
      protected var §2"@§:§`_§;
      
      private var §""J§:Number = 0;
      
      private var §0t§:Number = 0;
      
      private var §,"#§:Number;
      
      private var §1m§:Number;
      
      private var §4"6§:Timer;
      
      private var §,!j§:Boolean;
      
      private var §<!b§:MovieClip;
      
      public function §!!I§(param1:§`_§)
      {
         super();
         this.§2"@§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:MovieClip = null;
         this.§1m§ = (this.§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).width - 25;
         this.§,"#§ = (this.§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).x;
         this.§4"6§ = new Timer(1000,1);
         this.§4"6§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§?Q§);
         if(this.getMaxPowerupsToUse() > 2)
         {
            _loc1_ = (this.§2"@§.getItemByName("Container_PowerUpButtons") as §0!Y§).mClip;
            this.§<!b§ = (this.§2"@§.getItemByName("Movieclip_FrenzyAlert") as §0!Y§).mClip;
            this.§<!b§.y = _loc1_.y;
            _loc2_ = (this.§2"@§.getItemByName("Button_PowerUpMenuOpenWhole") as §7"0§).mClip;
            this.§<!b§.visible = false;
         }
      }
      
      protected function §!!+§(param1:§20§) : void
      {
         if(param1.state == §4!`§.§6!Y§)
         {
            if((§?l§.§'h§ as §%6§).§4!]§() < this.getMaxPowerupsToUse() && this.getMaxPowerupsToUse() > 2)
            {
               this.§<!b§.gotoAndPlay("start");
            }
         }
      }
      
      protected function §%O§(param1:Event) : void
      {
         if(this.§<!b§ && this.§<!b§.currentFrameLabel == "end")
         {
            this.§<!b§.stop();
         }
      }
      
      public function activate() : void
      {
         var _loc1_:§!>§ = null;
         var _loc2_:§^"K§ = null;
         this.§#!p§();
         this.§]n§(0);
         this.§;=§();
         this.§2"@§.setText(§#!,§.§&"5§.§]![§(§4!2§.§6"O§.§1!#§).toString(),"TextField_PowerUpCountME");
         (§?l§.§'h§ as §%6§).§+"3§.§'k§();
         if(this.§<!b§)
         {
            this.§<!b§.visible = false;
         }
         (§?l§.§'h§.getController() as §!"M§).addEventListener(§20§.STATE_CHANGED,this.§!!+§);
         if(this.§<!b§)
         {
            this.§<!b§.addEventListener(Event.ENTER_FRAME,this.§%O§);
         }
         for each(_loc2_ in §4!2§.§1!V§)
         {
            _loc1_ = this.§2"@§.getItemByName(_loc2_.§#;§);
            if(_loc1_)
            {
               _loc1_.setEnabled(true);
            }
         }
         §#!,§.§&"5§.addEventListener(Event.CHANGE,this.§+r§);
         this.§2"@§.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§4"6§)
         {
            this.§4"6§.stop();
         }
         §#!,§.§&"5§.removeEventListener(Event.CHANGE,this.§+r§);
         (§?l§.§'h§.getController() as §!"M§).removeEventListener(§20§.STATE_CHANGED,this.§!!+§);
         if(this.§<!b§)
         {
            this.§<!b§.removeEventListener(Event.ENTER_FRAME,this.§%O§);
         }
         §&P§ = §["@§;
      }
      
      public function run(param1:Number) : void
      {
         if(§?l§.§'h§.slingshot.mSlingShotState == §&=§.§+!`§)
         {
            this.§4"6§.reset();
            this.§4"6§.start();
            this.setPowerupActive(§4!2§.§-Y§.§,§,false);
         }
         this.§]n§(param1);
      }
      
      public function §"" §() : void
      {
         if(§["@§)
         {
            §["@§ = false;
         }
         else
         {
            §["@§ = true;
         }
      }
      
      public function §&Q§() : void
      {
         if(!§["@§)
         {
            this.§4"6§.reset();
            this.§4"6§.start();
            §["@§ = false;
         }
      }
      
      public function §9!P§() : void
      {
         if(§["@§)
         {
            this.§4"6§.reset();
            this.§4"6§.start();
            §["@§ = false;
         }
      }
      
      private function §?Q§(param1:TimerEvent) : void
      {
         §["@§ = false;
      }
      
      public function get §@3§() : Boolean
      {
         return §["@§;
      }
      
      public function set §@3§(param1:Boolean) : void
      {
         §["@§ = param1;
      }
      
      public function §-!T§() : void
      {
         var _loc1_:int = §#!,§.§&"5§.§]![§(§4!2§.§6"O§.§1!#§);
         var _loc2_:String = §`!=§.§;"D§(_loc1_);
         this.§2"@§.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      public function usePowerup(param1:String) : Boolean
      {
         var _loc2_:§^"K§ = §4!2§.§7=§(param1);
         if(_loc2_ == null)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §#!,§.§&"5§.§]![§(_loc2_.§1!#§);
         if(_loc3_ <= 0)
         {
            §9"6§.§;!w§(_loc2_.§1!#§);
            return true;
         }
         §8y§.§7"?§(this.§2"@§,param1);
         §8y§.showTutorials(this.§2"@§);
         this.setPowerupActive(param1,false);
         var _loc4_:String;
         if((_loc4_ = _loc2_.§1!#§) == §4!2§.§`!4§.§1!#§ || _loc4_ == §4!2§.§<"O§.§1!#§ || _loc4_ == §4!2§.§3"$§.§1!#§)
         {
            if((§?l§.§'h§.slingshot as §3+§).§9!L§.length <= 0)
            {
               return true;
            }
         }
         (§?l§.§'h§ as §%6§).§+"3§.usePowerup(_loc4_);
         var _loc5_:Boolean = true;
         if((§?l§.§'h§ as §%6§).§4!]§() >= this.getMaxPowerupsToUse())
         {
            this.§4"6§.reset();
            this.§4"6§.start();
            _loc5_ = false;
         }
         this.§#!p§();
         this.§;=§();
         return _loc5_;
      }
      
      public function § A§(param1:String) : void
      {
         this.§,j§();
         var _loc2_:String = "";
         switch(param1)
         {
            case §4!2§.§`!4§.§1!#§:
               _loc2_ = "MovieClip_PowerUp_SuperSeeds";
               break;
            case §4!2§.§<"O§.§1!#§:
               _loc2_ = "MovieClip_PowerUp_KingSling";
               break;
            case §4!2§.§3"$§.§1!#§:
               _loc2_ = "MovieClip_PowerUp_SlingScope";
               break;
            case §4!2§.§8"1§.§1!#§:
               _loc2_ = "MovieClip_PowerUp_Birdquake";
               break;
            case §4!2§.§%!U§.§1!#§:
               _loc2_ = "MovieClip_PowerUp_TNTDRop";
               break;
            case §4!2§.§-Y§.§1!#§:
               _loc2_ = "MovieClip_PowerUp_Wingman";
               break;
            case §4!2§.§!! §.§1!#§:
               _loc2_ = "MovieClip_PowerUp_Mushroom";
               break;
            default:
               return;
         }
         var _loc3_:§0!Y§ = this.§2"@§.getItemByName("Container_PowerUp_Intro2") as §0!Y§;
         _loc3_.visible = true;
         var _loc4_:§^n§;
         (_loc4_ = _loc3_.getItemByName(_loc2_) as §^n§).visible = true;
         _loc4_.mClip.gotoAndPlay(0);
         _loc4_.mClip.addEventListener(Event.ENTER_FRAME,this.§`"#§);
         dispatchEvent(new §7!n§(§7!n§.§?"?§,_loc4_.mClip));
      }
      
      private function §`"#§(param1:Event) : void
      {
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(_loc2_.currentFrame == _loc2_.totalFrames)
         {
            this.§,j§();
            dispatchEvent(new §7!n§(§7!n§.§+F§,_loc2_));
         }
      }
      
      private function §,j§() : void
      {
         var _loc2_:§!>§ = null;
         var _loc1_:§0!Y§ = this.§2"@§.getItemByName("Container_PowerUp_Intro2") as §0!Y§;
         for each(_loc2_ in _loc1_.§+?§)
         {
            _loc2_.mClip.stop();
            _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§`"#§);
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §3i§(param1:Number) : Boolean
      {
         if(§["@§)
         {
            if(this.§0t§ < 360)
            {
               this.§0t§ += 0.6 * param1;
               if(this.§0t§ > 360)
               {
                  this.§0t§ = 360;
               }
               return true;
            }
            if(this.§0t§ > 360)
            {
               this.§0t§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§0t§ > 0)
            {
               this.§0t§ -= 0.6 * param1;
               if(this.§0t§ < 0)
               {
                  this.§0t§ = 0;
               }
               return true;
            }
            if(this.§0t§ < 0)
            {
               this.§0t§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §9&§(param1:Number) : Boolean
      {
         if(§["@§)
         {
            this.§2"@§.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§""J§ < this.§1m§ - 20)
            {
               this.§""J§ += 0.5 * param1;
               if(this.§""J§ > this.§1m§ - 20)
               {
                  this.§""J§ = this.§1m§ - 20;
               }
               return true;
            }
            if(this.§""J§ > this.§1m§ - 20)
            {
               this.§""J§ = this.§1m§ - 20;
               if(this.§""J§ < this.§1m§ - 20)
               {
                  this.§""J§ = this.§1m§ - 20;
               }
               return true;
            }
         }
         else if(this.§""J§ > 0)
         {
            this.§""J§ -= 0.5 * param1;
            if(this.§""J§ <= 0)
            {
               this.§""J§ = 0;
               this.§2"@§.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.§2"@§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§?l§.§'h§ as §%6§).§4!]§() >= this.getMaxPowerupsToUse())
               {
                  this.§2"@§.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §]n§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§3i§(param1);
         var _loc3_:Boolean = this.§9&§(param1);
         if(_loc2_)
         {
            this.§2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§0t§;
            this.§2"@§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§0t§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§1m§ - this.§""J§ - 20,0,this.§1m§ + 30,this.§2"@§.getItemByName("Container_PowerUpButtons").height);
            this.§2"@§.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
         this.§2[§();
      }
      
      private function §2[§() : void
      {
         var _loc1_:Rectangle = null;
         var _loc2_:Number = NaN;
         if(this.§<!b§)
         {
            if(this.§2"@§.getItemByName("Container_PowerUpButtons").mClip.scrollRect != null)
            {
               _loc1_ = this.§2"@§.getItemByName("Container_PowerUpButtons").mClip.scrollRect;
               _loc2_ = _loc1_.width - _loc1_.x + this.§]"E§;
               if(this.§2"@§.getItemByName("Button_PowerUp5").visible)
               {
                  _loc2_ += 70;
               }
               if(_loc2_ < 0)
               {
                  _loc2_ = 0;
               }
               this.§<!b§.x = this.§2"@§.getItemByName("Container_PowerUpButtons").mClip.x + _loc2_;
               this.§<!b§.visible = true;
            }
            else
            {
               this.§<!b§.visible = false;
            }
         }
      }
      
      private function §#!p§() : void
      {
         this.§6"U§("TextField_PowerUpCount1",§4!2§.§`!4§);
         this.§6"U§("TextField_PowerUpCount2",§4!2§.§<"O§);
         this.§6"U§("TextField_PowerUpCount3",§4!2§.§3"$§);
         this.§6"U§("TextField_PowerUpCount4",§4!2§.§8"1§);
         this.§6"U§("TextField_PowerUpCountWM",§4!2§.§-Y§);
         if(LevelManager.§,m§ == 6)
         {
            this.§6"U§("TextField_PowerUpCount6",§4!2§.§!! §);
         }
         this.§-!T§();
      }
      
      public function §6"U§(param1:String, param2:§^"K§, param3:Boolean = true) : void
      {
         var _loc11_:§!>§ = null;
         var _loc12_:int = 0;
         var _loc4_:int = §#!,§.§&"5§.§]![§(param2.§1!#§);
         var _loc5_:String = §`!=§.§;"D§(_loc4_);
         var _loc6_:§4"9§ = this.§2"@§.getItemByName("TextField_" + param2.§0"0§) as §4"9§;
         var _loc7_:§!>§ = this.§2"@§.getItemByName("Infinite_" + param2.§0"0§);
         if(!param2.§ !T§)
         {
            _loc6_.setVisibility(false);
            if(_loc7_)
            {
               _loc7_.setVisibility(false);
            }
            return;
         }
         var _loc8_:Number;
         if((_loc8_ = §#!,§.§&"5§.§1!r§(param2.§1!#§)) > 0 || §#!,§.§[!f§())
         {
            _loc6_.setVisibility(false);
            if(_loc7_)
            {
               _loc7_.setVisibility(true);
            }
         }
         else
         {
            _loc6_.setVisibility(true);
            if(_loc7_)
            {
               _loc7_.setVisibility(false);
            }
         }
         this.§2"@§.setText(_loc5_,param1);
         if(param3)
         {
            _loc12_ = (_loc11_ = this.§2"@§.getItemByName(param2.§0"0§ + "_BG") as §!>§).mClip.width;
            _loc11_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
            _loc11_.mClip.x = _loc6_.x + _loc6_.width / 2 - _loc11_.mClip.width / 2;
         }
         var _loc9_:Boolean = true;
         if(_loc4_ <= 0)
         {
            _loc9_ = true;
         }
         var _loc10_:int;
         if((_loc10_ = (§?l§.§'h§ as §%6§).§4!]§()) >= this.getMaxPowerupsToUse() && param2.§#;§ != §4!2§.§-Y§.§#;§)
         {
            _loc9_ = false;
         }
         if((§?l§.§'h§ as §%6§).§"!A§(param2.§1!#§))
         {
            _loc9_ = false;
         }
         this.setPowerupActive(param2.§,§,_loc9_);
      }
      
      public function getMaxPowerupsToUse() : int
      {
         if(§%"S§.§!C§.§%^§().indexOf("Tournament") != -1 && §3!R§.§&"5§.§%!^§ && §3!R§.§&"5§.§%!^§.§=l§)
         {
            §^!Z§.§;"=§ = 4;
         }
         else
         {
            §^!Z§.§;"=§ = 2;
         }
         return §^!Z§.§;"=§;
      }
      
      private function §+r§(param1:Event) : void
      {
         this.§#!p§();
         this.§;=§();
      }
      
      private function §;=§() : void
      {
      }
      
      public function setPowerupActive(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Number = !!param2 ? Number(1) : Number(0.4);
         var _loc4_:§^"K§ = §4!2§.§7=§(param1);
         var _loc5_:§!>§;
         if(_loc5_ = this.§2"@§.getItemByName(_loc4_.§#;§))
         {
            _loc5_.setEnabled(param2);
            _loc5_.mClip.alpha = _loc3_;
         }
         var _loc6_:§!>§;
         if(_loc6_ = this.§2"@§.getItemByName(_loc4_.§0"0§ + "_BG"))
         {
            _loc6_.mClip.alpha = _loc3_;
         }
      }
      
      public function get powerUpsUsable() : Boolean
      {
         return this.§,!j§;
      }
      
      public function set powerUpsUsable(param1:Boolean) : void
      {
         this.§,!j§ = param1;
      }
   }
}
