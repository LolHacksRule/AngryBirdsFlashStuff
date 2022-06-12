package §2!6§
{
   import §#M§.§^0§;
   import §&!"§.§8D§;
   import §&!"§.§`B§;
   import §'x§.§=!R§;
   import §-B§.§#p§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §-B§.§]!<§;
   import §0!2§.§,!W§;
   import §0!2§.§3`§;
   import §0!2§.§3t§;
   import §0!2§.§9!F§;
   import §2X§.§[!@§;
   import §5!G§.§&2§;
   import §70§.§^!>§;
   import §;n§.§&G§;
   import §<9§.§ ">§;
   import §^!o§.§=1§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §3$§
   {
      
      public static var §7"I§:Boolean = false;
      
      public static var §5!^§:Boolean = true;
       
      
      private const §%!i§:Number = -125;
      
      protected var §2!K§:§^0§;
      
      private var §2z§:Number = 0;
      
      private var §7l§:Number = 0;
      
      private var §+"E§:Number;
      
      private var §4<§:Number;
      
      private var §!!r§:Timer;
      
      private var §=!%§:Boolean;
      
      private var §!!`§:MovieClip;
      
      public function §3$§(param1:§^0§)
      {
         super();
         this.§2!K§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:MovieClip = null;
         this.§4<§ = (this.§2!K§.getItemByName("Container_PowerUpButtons") as §?!j§).width - 25;
         this.§+"E§ = (this.§2!K§.getItemByName("Container_PowerUpButtons") as §?!j§).x;
         this.§!!r§ = new Timer(1000,1);
         this.§!!r§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§0o§);
         if(this.§<!<§() > 2)
         {
            _loc1_ = (this.§2!K§.getItemByName("Container_PowerUpButtons") as §?!j§).mClip;
            this.§!!`§ = (this.§2!K§.getItemByName("Movieclip_FrenzyAlert") as §?!j§).mClip;
            this.§!!`§.y = _loc1_.y;
            _loc2_ = (this.§2!K§.getItemByName("Button_PowerUpMenuOpenWhole") as §]!<§).mClip;
            this.§!!`§.visible = false;
         }
      }
      
      protected function §"!7§(param1:§=!R§) : void
      {
         if(param1.state == §^!>§.§'%§)
         {
            if((§&2§.§],§ as §9!F§).§'9§() < this.§<!<§() && this.§<!<§() > 2)
            {
               this.§!!`§.gotoAndPlay("start");
            }
         }
      }
      
      protected function §""B§(param1:Event) : void
      {
         if(this.§!!`§ && this.§!!`§.currentFrameLabel == "end")
         {
            this.§!!`§.stop();
         }
      }
      
      public function activate() : void
      {
         var _loc1_:§&G§ = null;
         var _loc2_:§?G§ = null;
         this.§-a§();
         this.§^""§(0);
         this.§3!U§();
         this.§2!K§.setText(§`"J§.§1[§.§'>§(§ !h§.§]W§.§5"5§).toString(),"TextField_PowerUpCountME");
         (§&2§.§],§ as §9!F§).§"#§.§;!U§();
         if(this.§!!`§)
         {
            this.§!!`§.visible = false;
         }
         ((§&2§.§],§ as §9!F§).§@4§() as §[!@§).addEventListener(§=!R§.STATE_CHANGED,this.§"!7§);
         if(this.§!!`§)
         {
            this.§!!`§.addEventListener(Event.ENTER_FRAME,this.§""B§);
         }
         for each(_loc2_ in § !h§.§]e§)
         {
            _loc1_ = this.§2!K§.getItemByName(_loc2_.§7!4§);
            if(_loc1_)
            {
               _loc1_.setEnabled(true);
            }
         }
         §`"J§.§1[§.addEventListener(Event.CHANGE,this.§+!'§);
         this.§2!K§.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§!!r§)
         {
            this.§!!r§.stop();
         }
         ((§&2§.§],§ as §9!F§).§@4§() as §[!@§).removeEventListener(§=!R§.STATE_CHANGED,this.§"!7§);
         §`"J§.§1[§.removeEventListener(Event.CHANGE,this.§+!'§);
         if(this.§!!`§)
         {
            this.§!!`§.removeEventListener(Event.ENTER_FRAME,this.§""B§);
         }
         §5!^§ = §7"I§;
      }
      
      public function run(param1:Number) : void
      {
         if(§&2§.§],§.slingshot.mSlingShotState == §,!W§.§4!T§)
         {
            this.§!!r§.reset();
            this.§!!r§.start();
            this.§"o§(§ !h§.§36§.§4W§,false);
         }
         this.§^""§(param1);
      }
      
      public function §1!@§() : void
      {
         if(§7"I§)
         {
            §7"I§ = false;
         }
         else
         {
            §7"I§ = true;
         }
      }
      
      public function §6!Q§() : void
      {
         if(!§7"I§)
         {
            this.§!!r§.reset();
            this.§!!r§.start();
            §7"I§ = false;
         }
      }
      
      public function §6!e§() : void
      {
         if(§7"I§)
         {
            this.§!!r§.reset();
            this.§!!r§.start();
            §7"I§ = false;
         }
      }
      
      private function §0o§(param1:TimerEvent) : void
      {
         §7"I§ = false;
      }
      
      public function get §7Z§() : Boolean
      {
         return §7"I§;
      }
      
      public function set §7Z§(param1:Boolean) : void
      {
         §7"I§ = param1;
      }
      
      public function § !4§() : void
      {
         var _loc1_:int = §`"J§.§1[§.§'>§(§ !h§.§]W§.§5"5§);
         var _loc2_:String = this.§9!Q§(_loc1_);
         this.§2!K§.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      public function §2'§(param1:String) : Boolean
      {
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc2_:§?G§ = § !h§.§;"6§(param1);
         if(_loc2_ == null)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §`"J§.§1[§.§'>§(_loc2_.§5"5§);
         if(_loc3_ <= 0)
         {
            if((_loc6_ = _loc2_.§5"5§) == § !h§.§36§.§5"5§)
            {
               §`B§.§29§(§=1§.§1[§.§,!X§.§6!§,"extrabird0");
            }
            else if(!§ ">§.§%!b§)
            {
               § ">§.§[k§(_loc6_);
            }
            else
            {
               for each(_loc7_ in § ">§.§%!b§)
               {
                  if(_loc7_.id == _loc6_)
                  {
                     §`B§.§[D§(_loc7_);
                  }
               }
            }
            return true;
         }
         §8D§.§@!I§(this.§2!K§,param1);
         §8D§.§1p§(this.§2!K§);
         this.§"o§(param1,false);
         var _loc4_:String;
         if((_loc4_ = _loc2_.§5"5§) == § !h§.§+!<§.§5"5§ || _loc4_ == § !h§.§]!^§.§5"5§ || _loc4_ == § !h§.§="'§.§5"5§)
         {
            if((§&2§.§],§.slingshot as §3t§).§1"&§.length <= 0)
            {
               return true;
            }
         }
         (§&2§.§],§ as §9!F§).§"#§.§2'§(_loc4_);
         var _loc5_:Boolean = true;
         if((§&2§.§],§ as §9!F§).§'9§() >= this.§<!<§())
         {
            this.§!!r§.reset();
            this.§!!r§.start();
            _loc5_ = false;
         }
         this.§-a§();
         this.§3!U§();
         return _loc5_;
      }
      
      public function §["%§(param1:String) : void
      {
         this.§7!F§();
         var _loc2_:String = "";
         switch(param1)
         {
            case § !h§.§+!<§.§5"5§:
               _loc2_ = "MovieClip_PowerUp_SuperSeeds";
               break;
            case § !h§.§]!^§.§5"5§:
               _loc2_ = "MovieClip_PowerUp_KingSling";
               break;
            case § !h§.§="'§.§5"5§:
               _loc2_ = "MovieClip_PowerUp_SlingScope";
               break;
            case § !h§.§@"<§.§5"5§:
               _loc2_ = "MovieClip_PowerUp_Birdquake";
               break;
            case § !h§.§+6§.§5"5§:
               _loc2_ = "MovieClip_PowerUp_TNTDRop";
               break;
            case § !h§.§36§.§5"5§:
               _loc2_ = "MovieClip_PowerUp_ExtraBird";
               break;
            default:
               return;
         }
         var _loc3_:§?!j§ = this.§2!K§.getItemByName("Container_PowerUp_Intro2") as §?!j§;
         _loc3_.visible = true;
         var _loc4_:§="0§;
         (_loc4_ = _loc3_.getItemByName(_loc2_) as §="0§).visible = true;
         _loc4_.mClip.gotoAndPlay(0);
         _loc4_.mClip.addEventListener(Event.ENTER_FRAME,this.§8U§);
      }
      
      private function §8U§(param1:Event) : void
      {
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(_loc2_.currentFrame == _loc2_.totalFrames)
         {
            this.§7!F§();
         }
      }
      
      private function §7!F§() : void
      {
         var _loc2_:§&G§ = null;
         var _loc1_:§?!j§ = this.§2!K§.getItemByName("Container_PowerUp_Intro2") as §?!j§;
         for each(_loc2_ in _loc1_.§!!&§)
         {
            _loc2_.mClip.stop();
            _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§8U§);
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function § !?§(param1:Number) : Boolean
      {
         if(§7"I§)
         {
            if(this.§7l§ < 360)
            {
               this.§7l§ += 0.6 * param1;
               if(this.§7l§ > 360)
               {
                  this.§7l§ = 360;
               }
               return true;
            }
            if(this.§7l§ > 360)
            {
               this.§7l§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§7l§ > 0)
            {
               this.§7l§ -= 0.6 * param1;
               if(this.§7l§ < 0)
               {
                  this.§7l§ = 0;
               }
               return true;
            }
            if(this.§7l§ < 0)
            {
               this.§7l§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §&!]§(param1:Number) : Boolean
      {
         if(§7"I§)
         {
            this.§2!K§.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§2z§ < this.§4<§ - 20)
            {
               this.§2z§ += 0.5 * param1;
               if(this.§2z§ > this.§4<§ - 20)
               {
                  this.§2z§ = this.§4<§ - 20;
               }
               return true;
            }
            if(this.§2z§ > this.§4<§ - 20)
            {
               this.§2z§ = this.§4<§ - 20;
               if(this.§2z§ < this.§4<§ - 20)
               {
                  this.§2z§ = this.§4<§ - 20;
               }
               return true;
            }
         }
         else if(this.§2z§ > 0)
         {
            this.§2z§ -= 0.5 * param1;
            if(this.§2z§ <= 0)
            {
               this.§2z§ = 0;
               this.§2!K§.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.§2!K§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§&2§.§],§ as §9!F§).§'9§() >= this.§<!<§())
               {
                  this.§2!K§.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §^""§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§ !?§(param1);
         var _loc3_:Boolean = this.§&!]§(param1);
         if(_loc2_)
         {
            this.§2!K§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§7l§;
            this.§2!K§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§7l§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§4<§ - this.§2z§ - 20,0,this.§4<§ + 30,this.§2!K§.getItemByName("Container_PowerUpButtons").height);
            this.§2!K§.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
         this.§!!Q§();
      }
      
      private function §!!Q§() : void
      {
         var _loc1_:Rectangle = null;
         var _loc2_:Number = NaN;
         if(this.§!!`§)
         {
            if(this.§2!K§.getItemByName("Container_PowerUpButtons").mClip.scrollRect != null)
            {
               _loc1_ = this.§2!K§.getItemByName("Container_PowerUpButtons").mClip.scrollRect;
               _loc2_ = _loc1_.width - _loc1_.x + this.§%!i§;
               if(this.§2!K§.getItemByName("Button_PowerUp5").visible)
               {
                  _loc2_ += 70;
               }
               if(_loc2_ < 0)
               {
                  _loc2_ = 0;
               }
               this.§!!`§.x = this.§2!K§.getItemByName("Container_PowerUpButtons").mClip.x + _loc2_;
               this.§!!`§.visible = true;
            }
            else
            {
               this.§!!`§.visible = false;
            }
         }
      }
      
      private function §-a§() : void
      {
         this.§%!E§("TextField_PowerUpCount1",§ !h§.§+!<§);
         this.§%!E§("TextField_PowerUpCount2",§ !h§.§]!^§);
         this.§%!E§("TextField_PowerUpCount3",§ !h§.§="'§);
         this.§%!E§("TextField_PowerUpCount4",§ !h§.§@"<§);
         this.§ !4§();
      }
      
      public function §%!E§(param1:String, param2:§?G§, param3:Boolean = true) : void
      {
         var _loc11_:§&G§ = null;
         var _loc12_:int = 0;
         var _loc4_:int = §`"J§.§1[§.§'>§(param2.§5"5§);
         var _loc5_:String = this.§9!Q§(_loc4_);
         var _loc6_:§#p§ = this.§2!K§.getItemByName("TextField_" + param2.§"!a§) as §#p§;
         var _loc7_:§&G§ = this.§2!K§.getItemByName("Infinite_" + param2.§"!a§);
         if(!param2.§&F§)
         {
            _loc6_.setVisibility(false);
            if(_loc7_)
            {
               _loc7_.setVisibility(false);
            }
            return;
         }
         var _loc8_:Number;
         if((_loc8_ = §`"J§.§1[§.§]"B§(param2.§5"5§)) > 0 || §`"J§.§;i§())
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
         this.§2!K§.setText(_loc5_,param1);
         if(param3)
         {
            _loc12_ = (_loc11_ = this.§2!K§.getItemByName(param2.§"!a§ + "_BG") as §&G§).mClip.width;
            _loc11_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
            _loc11_.mClip.x = _loc6_.x + _loc6_.width / 2 - _loc11_.mClip.width / 2;
         }
         var _loc9_:Boolean = true;
         if(_loc4_ <= 0)
         {
            _loc9_ = true;
         }
         var _loc10_:int;
         if((_loc10_ = (§&2§.§],§ as §9!F§).§'9§()) >= this.§<!<§() && param2.§7!4§ != § !h§.§36§.§7!4§)
         {
            _loc9_ = false;
         }
         if((§&2§.§],§ as §9!F§).§2W§(param2.§5"5§))
         {
            _loc9_ = false;
         }
         this.§"o§(param2.§4W§,_loc9_);
      }
      
      public function §<!<§() : int
      {
         if(§,"I§.§&q§.§;!b§().indexOf("Tournament") != -1 && §=1§.§1[§.§,!X§ && §=1§.§1[§.§,!X§.§<f§)
         {
            §3`§.§-",§ = 4;
         }
         else
         {
            §3`§.§-",§ = 2;
         }
         return §3`§.§-",§;
      }
      
      private function §9!Q§(param1:Number) : String
      {
         var _loc2_:* = null;
         param1 = Math.min(param1,99000000);
         if(param1 >= 100000)
         {
            param1 /= 1000000;
            _loc2_ = param1.toPrecision(2).slice(0,3) + "M";
         }
         else if(param1 >= 1000)
         {
            param1 /= 1000;
            _loc2_ = param1.toPrecision(2) + "k";
         }
         else
         {
            _loc2_ = param1.toString();
         }
         return _loc2_;
      }
      
      private function §+!'§(param1:Event) : void
      {
         this.§-a§();
         this.§3!U§();
      }
      
      private function §3!U§() : void
      {
      }
      
      public function §"o§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:Number = !!param2 ? Number(1) : Number(0.4);
         var _loc4_:§?G§ = § !h§.§;"6§(param1);
         var _loc5_:§&G§;
         if(_loc5_ = this.§2!K§.getItemByName(_loc4_.§7!4§))
         {
            _loc5_.setEnabled(param2);
            _loc5_.mClip.alpha = _loc3_;
         }
         var _loc6_:§&G§;
         if(_loc6_ = this.§2!K§.getItemByName(_loc4_.§"!a§ + "_BG"))
         {
            _loc6_.mClip.alpha = _loc3_;
         }
      }
      
      public function get §"!k§() : Boolean
      {
         return this.§=!%§;
      }
      
      public function set §"!k§(param1:Boolean) : void
      {
         this.§=!%§ = param1;
      }
   }
}
