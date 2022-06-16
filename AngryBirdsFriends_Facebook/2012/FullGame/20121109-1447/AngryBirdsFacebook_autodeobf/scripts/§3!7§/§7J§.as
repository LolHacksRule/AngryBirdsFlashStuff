package §3!7§
{
   import § each§.§>v§;
   import §#^§.§7!A§;
   import §'!s§.§!'§;
   import §'!s§.§%?§;
   import §2!i§.§7'§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §7-§.§,!C§;
   import §9"!§.§2K§;
   import §9"!§.§2a§;
   import §9"!§.§4"F§;
   import §9"!§.§>"7§;
   import §]!A§.;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §7J§
   {
      
      public static var §function§:Boolean = false;
      
      public static var §^"B§:Boolean = true;
       
      
      private const §-b§:Number = -100;
      
      protected var §6w§:§7!A§;
      
      private var §3!s§:Number = 0;
      
      private var §3!P§:Number = 0;
      
      private var §^Y§:Number;
      
      private var §#!J§:Number;
      
      private var §#S§:Timer;
      
      private var §4!2§:Boolean;
      
      private var § "!§:Sprite;
      
      public function §7J§(param1:§7!A§)
      {
         super();
         this.§6w§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:MovieClip = null;
         this.§#!J§ = (this.§6w§.getItemByName("Container_PowerUpButtons") as §08§).width - 25;
         this.§^Y§ = (this.§6w§.getItemByName("Container_PowerUpButtons") as §08§).x;
         this.§#S§ = new Timer(1000,1);
         this.§#S§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ !_§);
         if(this.§"!%§() > 2)
         {
            _loc1_ = (this.§6w§.getItemByName("Container_PowerUpButtons") as §08§).mClip;
            this.§ "!§ = (this.§6w§.getItemByName("Movieclip_FrenzyAlert") as §7"-§).mClip;
            this.§ "!§.y = _loc1_.y;
            _loc2_ = (this.§6w§.getItemByName("Button_PowerUpMenuOpenWhole") as §^!D§).mClip;
            this.§ "!§.visible = false;
         }
      }
      
      public function activate() : void
      {
         var _loc1_:§2G§ = null;
         this.§'!H§();
         this.§8J§(0);
         this.§6w§.setText(§?!F§.§;"§.§!!y§(§>,§.§^t§.§]6§).toString(),"TextField_PowerUpCountME");
         if(this.§ "!§)
         {
            this.§ "!§.visible = false;
         }
         for each(_loc1_ in §>,§.§%!#§)
         {
            this.§6w§.getItemByName(_loc1_.§&!y§).setEnabled(true);
         }
         §?!F§.§;"§.addEventListener(Event.CHANGE,this.§8z§);
         this.§6w§.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§#S§)
         {
            this.§#S§.stop();
         }
         §?!F§.§;"§.removeEventListener(Event.CHANGE,this.§8z§);
         §^"B§ = §function§;
      }
      
      public function run(param1:Number) : void
      {
         if(§#6§.§6!z§.slingshot.mSlingShotState == §2a§.§0T§)
         {
            this.§#S§.reset();
            this.§#S§.start();
         }
         this.§8J§(param1);
      }
      
      public function §-!X§() : void
      {
         if(§function§)
         {
            §function§ = false;
         }
         else
         {
            §function§ = true;
         }
      }
      
      public function §""7§() : void
      {
         if(!§function§)
         {
            this.§#S§.reset();
            this.§#S§.start();
            §function§ = false;
         }
      }
      
      public function § "&§() : void
      {
         if(§function§)
         {
            this.§#S§.reset();
            this.§#S§.start();
            §function§ = false;
         }
      }
      
      private function § !_§(param1:TimerEvent) : void
      {
         §function§ = false;
      }
      
      public function get §`b§() : Boolean
      {
         return §function§;
      }
      
      public function set §`b§(param1:Boolean) : void
      {
         §function§ = param1;
      }
      
      public function §4g§() : void
      {
         var _loc1_:int = §?!F§.§;"§.§!!y§(§>,§.§^t§.§]6§);
         var _loc2_:String = this.§<w§(_loc1_);
         this.§6w§.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      public function § !2§(param1:String) : Boolean
      {
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc2_:§2G§ = §>,§.§4!x§(param1);
         if(_loc2_ == null)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §?!F§.§;"§.§!!y§(_loc2_.§]6§);
         if(_loc3_ > 0)
         {
            §!'§.§0!J§(this.§6w§,param1);
            §!'§.showTutorials(this.§6w§);
            this.setPowerupActive(param1,false);
            var _loc4_:String;
            if((_loc4_ = _loc2_.§]6§) == §>,§.§^Q§.§]6§ || _loc4_ == §>,§.§7!C§.§]6§ || _loc4_ == §>,§.§%!X§.§]6§)
            {
               if((§#6§.§6!z§.slingshot as §>"7§).§ L§.length <= 0)
               {
                  return true;
               }
            }
            (§#6§.§6!z§ as §2K§).§-"#§.§ !2§(_loc4_);
            var _loc5_:Boolean = true;
            if((§#6§.§6!z§ as §2K§).§[^§() >= this.§"!%§())
            {
               this.§#S§.reset();
               this.§#S§.start();
               _loc5_ = false;
            }
            this.§'!H§();
            return _loc5_;
         }
         _loc6_ = _loc2_.§]6§;
         switch(_loc6_)
         {
            case §>,§.§," §.§]6§:
               §%?§.§ ]§("extrabird0");
               return true;
            default:
               if(!§>v§.§@",§)
               {
                  §>v§.§ !y§(_loc6_);
               }
               else
               {
                  for each(_loc7_ in §>v§.§@",§)
                  {
                     if(_loc7_.id == _loc6_)
                     {
                        §%?§.§6!x§(_loc7_);
                     }
                  }
               }
               return true;
         }
      }
      
      private function §+i§(param1:Number) : Boolean
      {
         if(§function§)
         {
            if(this.§3!P§ < 360)
            {
               this.§3!P§ += 0.6 * param1;
               if(this.§3!P§ > 360)
               {
                  this.§3!P§ = 360;
               }
               return true;
            }
            if(this.§3!P§ > 360)
            {
               this.§3!P§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§3!P§ > 0)
            {
               this.§3!P§ -= 0.6 * param1;
               if(this.§3!P§ < 0)
               {
                  this.§3!P§ = 0;
               }
               return true;
            }
            if(this.§3!P§ < 0)
            {
               this.§3!P§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §`f§(param1:Number) : Boolean
      {
         if(§function§)
         {
            this.§6w§.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§3!s§ < this.§#!J§ - 20)
            {
               this.§3!s§ += 0.5 * param1;
               if(this.§3!s§ > this.§#!J§ - 20)
               {
                  this.§3!s§ = this.§#!J§ - 20;
               }
               return true;
            }
            if(this.§3!s§ > this.§#!J§ - 20)
            {
               this.§3!s§ = this.§#!J§ - 20;
               if(this.§3!s§ < this.§#!J§ - 20)
               {
                  this.§3!s§ = this.§#!J§ - 20;
               }
               return true;
            }
         }
         else if(this.§3!s§ > 0)
         {
            this.§3!s§ -= 0.5 * param1;
            if(this.§3!s§ <= 0)
            {
               this.§3!s§ = 0;
               this.§6w§.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.§6w§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§#6§.§6!z§ as §2K§).§[^§() >= this.§"!%§())
               {
                  this.§6w§.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §8J§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§+i§(param1);
         var _loc3_:Boolean = this.§`f§(param1);
         if(_loc2_)
         {
            this.§6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§3!P§;
            this.§6w§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§3!P§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§#!J§ - this.§3!s§ - 20,0,this.§#!J§ + 30,this.§6w§.getItemByName("Container_PowerUpButtons").height);
            this.§6w§.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
         this.§2"E§();
      }
      
      private function §2"E§() : void
      {
         var _loc1_:Rectangle = null;
         var _loc2_:Number = NaN;
         if(this.§ "!§)
         {
            if(this.§6w§.getItemByName("Container_PowerUpButtons").mClip.scrollRect != null)
            {
               _loc1_ = this.§6w§.getItemByName("Container_PowerUpButtons").mClip.scrollRect;
               _loc2_ = _loc1_.width - _loc1_.x + this.§-b§;
               if(_loc2_ < 0)
               {
                  _loc2_ = 0;
               }
               this.§ "!§.x = this.§6w§.getItemByName("Container_PowerUpButtons").mClip.x + _loc2_;
               this.§ "!§.visible = true;
            }
            else
            {
               this.§ "!§.visible = false;
            }
         }
      }
      
      private function §'!H§() : void
      {
         this.§>_§("TextField_PowerUpCount1",§>,§.§^Q§);
         this.§>_§("TextField_PowerUpCount2",§>,§.§7!C§);
         this.§>_§("TextField_PowerUpCount3",§>,§.§%!X§);
         this.§>_§("TextField_PowerUpCount4",§>,§.§&m§);
         this.§>_§("TextField_PowerUpCountVH",§>,§.§," §,false);
         this.§4g§();
      }
      
      public function §>_§(param1:String, param2:§2G§, param3:Boolean = true) : void
      {
         var _loc11_:§7'§ = null;
         var _loc12_:int = 0;
         var _loc4_:int = §?!F§.§;"§.§!!y§(param2.§]6§);
         var _loc5_:String = this.§<w§(_loc4_);
         var _loc6_:§-"E§ = this.§6w§.getItemByName("TextField_" + param2.§6!+§) as §-"E§;
         var _loc7_:§7'§ = this.§6w§.getItemByName("Infinite_" + param2.§6!+§);
         var _loc8_:Number;
         if((_loc8_ = §?!F§.§;"§.§9K§(param2.§]6§)) > 0)
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
         this.§6w§.setText(_loc5_,param1);
         if(param3)
         {
            _loc12_ = (_loc11_ = this.§6w§.getItemByName(param2.§6!+§ + "_BG") as §7'§).mClip.width;
            _loc11_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
            _loc11_.mClip.x = _loc6_.x + _loc6_.width / 2 - _loc11_.mClip.width / 2;
         }
         var _loc9_:Boolean = true;
         if(_loc4_ <= 0)
         {
            _loc9_ = true;
         }
         var _loc10_:int;
         if((_loc10_ = (§#6§.§6!z§ as §2K§).§[^§()) >= this.§"!%§() && param2.§&!y§ != §>,§.§," §.§&!y§)
         {
            _loc9_ = false;
         }
         if((§#6§.§6!z§ as §2K§).§6!f§(param2.§]6§))
         {
            _loc9_ = false;
         }
         this.setPowerupActive(param2.§[2§,_loc9_);
      }
      
      public function §"!%§() : int
      {
         if(§3T§.§67§.§<!W§().indexOf("Tournament") != -1 && String(§,!C§.§;"§.§0!&§).toUpperCase() == "LOTUS_BLACK")
         {
            §4"F§.§6">§ = 4;
         }
         else
         {
            §4"F§.§6">§ = 2;
         }
         return §4"F§.§6">§;
      }
      
      private function §<w§(param1:Number) : String
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
      
      private function §8z§(param1:Event) : void
      {
         this.§'!H§();
      }
      
      public function setPowerupActive(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§2G§ = §>,§.§4!x§(param1);
         if(param2)
         {
            this.§6w§.getItemByName(_loc3_.§&!y§).setEnabled(true);
            this.§6w§.getItemByName(_loc3_.§&!y§).mClip.alpha = 1;
            if(this.§6w§.getItemByName(_loc3_.§6!+§ + "_BG"))
            {
               this.§6w§.getItemByName(_loc3_.§6!+§ + "_BG").mClip.alpha = 1;
            }
         }
         else
         {
            this.§6w§.getItemByName(_loc3_.§&!y§).setEnabled(false);
            this.§6w§.getItemByName(_loc3_.§&!y§).mClip.alpha = 0.4;
            if(this.§6w§.getItemByName(_loc3_.§6!+§ + "_BG"))
            {
               this.§6w§.getItemByName(_loc3_.§6!+§ + "_BG").mClip.alpha = 0.4;
            }
         }
      }
      
      public function get §;!7§() : Boolean
      {
         return this.§4!2§;
      }
      
      public function set §;!7§(param1:Boolean) : void
      {
         this.§4!2§ = param1;
      }
   }
}
