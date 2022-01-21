package §?7§
{
   import § !Y§.§2#§;
   import §+F§.§ !J§;
   import §+F§.§<!g§;
   import §+F§.§^!Y§;
   import §2y§.§?`§;
   import §2y§.§]`§;
   import §3!@§.§'!0§;
   import §3!@§.§49§;
   import §3!R§.§0!R§;
   import §3g§.§"!n§;
   import §=b§.§,!G§;
   import §`R§.§8#§;
   import §`R§.§^!,§;
   import §finally§.§8k§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §1!+§
   {
      
      protected static var §73§:Array = ["POWERUP1","POWERUP2","POWERUP3","POWERUP4","POWERUP5"];
      
      public static var §9&§:Boolean = false;
      
      public static var §@i§:Boolean = true;
       
      
      protected var mUIView:§"!n§;
      
      private var §3h§:Number = 0;
      
      private var §<g§:Number = 0;
      
      private var §;Y§:Number;
      
      private var §6q§:Number;
      
      private var §=!`§:Timer;
      
      private var §#=§:Boolean;
      
      public function §1!+§(param1:§"!n§)
      {
         super();
         this.mUIView = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§6q§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as §]`§).width - 25;
         this.§;Y§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as §]`§).x;
         this.§=!`§ = new Timer(1000,1);
         this.§=!`§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§"`§);
      }
      
      public function activate() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 5)
         {
            this.mUIView.getItemByName("Button_PowerUp" + _loc1_.toString()).setEnabled(true);
            _loc1_++;
         }
         this.§0H§();
         this.§=![§(0);
         this.mUIView.setText(§87§.§@!7§.§?!e§(§ 0§.MIGHTY_EAGLE).toString(),"TextField_PowerUpCountME");
         §87§.§@!7§.addEventListener(Event.CHANGE,this.§"q§);
         this.mUIView.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§=!`§)
         {
            this.§=!`§.stop();
         }
         §87§.§@!7§.removeEventListener(Event.CHANGE,this.§"q§);
         §@i§ = §9&§;
      }
      
      public function run(param1:Number) : void
      {
         if(§2#§.§"@§.slingshot.mSlingShotState == §49§.§9-§)
         {
            this.§=!`§.reset();
            this.§=!`§.start();
         }
         this.§=![§(param1);
      }
      
      public function §&!Q§() : void
      {
         if(§9&§)
         {
            §9&§ = false;
         }
         else
         {
            §9&§ = true;
         }
      }
      
      public function §<I§() : void
      {
         if(!§9&§)
         {
            this.§=!`§.reset();
            this.§=!`§.start();
            §9&§ = false;
         }
      }
      
      public function §"![§() : void
      {
         if(§9&§)
         {
            this.§=!`§.reset();
            this.§=!`§.start();
            §9&§ = false;
         }
      }
      
      private function §"`§(param1:TimerEvent) : void
      {
         §9&§ = false;
      }
      
      public function get §7!<§() : Boolean
      {
         return §9&§;
      }
      
      public function set §7!<§(param1:Boolean) : void
      {
         §9&§ = param1;
      }
      
      public function §>!-§() : void
      {
         var _loc1_:int = §87§.§@!7§.§?!e§(§ 0§.MIGHTY_EAGLE);
         var _loc2_:String = this.§1!H§(_loc1_);
         this.mUIView.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      protected function §?! §(param1:String) : String
      {
         return {
            "POWERUP1":§ 0§.§-H§,
            "POWERUP2":§ 0§.§#9§,
            "POWERUP3":§ 0§.§#!T§,
            "POWERUP4":§ 0§.§&$§,
            "POWERUP5":§ 0§.§#!K§
         }[param1];
      }
      
      public function §1![§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = §73§.indexOf(param1);
         if(_loc2_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §87§.§@!7§.§?!e§(this.§?! §(param1));
         if(_loc3_ <= 0 && !§,!G§.§0g§(§8k§.§8h§))
         {
            § !J§.§3!>§(this.mUIView);
            return true;
         }
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).setEnabled(false);
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).mClip.alpha = 0.4;
         this.mUIView.getItemByName("PowerUpCount" + (_loc2_ + 1).toString() + "_BG").mClip.alpha = 0.4;
         var _loc4_:String;
         if((_loc4_ = this.§?! §(param1)) == § 0§.§-H§ || _loc4_ == § 0§.§#9§ || _loc4_ == § 0§.§#!T§)
         {
            if((§2#§.§"@§.slingshot as §^!,§).§0n§.length <= 0)
            {
               return true;
            }
         }
         if(_loc3_ > 0 || §,!G§.§0g§(§8k§.§8h§))
         {
            §<!g§.§9!J§(this.mUIView,param1,false,true);
            §^!Y§.§'!h§(this.mUIView);
            (§2#§.§"@§ as §8#§).§0S§.§1![§(_loc4_);
         }
         var _loc5_:Boolean = true;
         if((§2#§.§"@§ as §8#§).§@!D§() >= §'!0§.§;!2§)
         {
            this.§=!`§.reset();
            this.§=!`§.start();
            _loc5_ = false;
         }
         this.§0H§();
         return _loc5_;
      }
      
      private function §6!T§(param1:Number) : Boolean
      {
         if(§9&§)
         {
            if(this.§<g§ < 360)
            {
               this.§<g§ += 0.6 * param1;
               if(this.§<g§ > 360)
               {
                  this.§<g§ = 360;
               }
               return true;
            }
            if(this.§<g§ > 360)
            {
               this.§<g§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§<g§ > 0)
            {
               this.§<g§ -= 0.6 * param1;
               if(this.§<g§ < 0)
               {
                  this.§<g§ = 0;
               }
               return true;
            }
            if(this.§<g§ < 0)
            {
               this.§<g§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §5!#§(param1:Number) : Boolean
      {
         if(§9&§)
         {
            this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§3h§ < this.§6q§ - 20)
            {
               this.§3h§ += 0.5 * param1;
               if(this.§3h§ > this.§6q§ - 20)
               {
                  this.§3h§ = this.§6q§ - 20;
               }
               return true;
            }
            if(this.§3h§ > this.§6q§ - 20)
            {
               this.§3h§ = this.§6q§ - 20;
               if(this.§3h§ < this.§6q§ - 20)
               {
                  this.§3h§ = this.§6q§ - 20;
               }
               return true;
            }
         }
         else if(this.§3h§ > 0)
         {
            this.§3h§ -= 0.5 * param1;
            if(this.§3h§ <= 0)
            {
               this.§3h§ = 0;
               this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§2#§.§"@§ as §8#§).§@!D§() >= §'!0§.§;!2§)
               {
                  this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §=![§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§6!T§(param1);
         var _loc3_:Boolean = this.§5!#§(param1);
         if(_loc2_)
         {
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§<g§;
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§<g§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§6q§ - this.§3h§ - 20,0,this.§6q§ + 30,this.mUIView.getItemByName("Container_PowerUpButtons").height);
            this.mUIView.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
      }
      
      private function §0H§() : void
      {
         var _loc1_:* = !§,!G§.§0g§(§8k§.§8h§);
         this.mUIView.getItemByName("TextField_PowerUpCount1").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount1_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount2").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount2_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount3").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount3_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount4").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount4_BG").setVisibility(_loc1_);
         this.§3;§("TextField_PowerUpCount1",§ 0§.§-H§,0);
         this.§3;§("TextField_PowerUpCount2",§ 0§.§#9§,1);
         this.§3;§("TextField_PowerUpCount3",§ 0§.§#!T§,2);
         this.§3;§("TextField_PowerUpCount4",§ 0§.§&$§,3);
         this.§>!-§();
      }
      
      public function §3;§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = §87§.§@!7§.§?!e§(param2);
         var _loc5_:String = this.§1!H§(_loc4_);
         this.mUIView.setText(_loc5_,param1);
         var _loc6_:§0!R§;
         var _loc7_:int = (_loc6_ = this.mUIView.getItemByName("PowerUpCount" + (param3 + 1).toString() + "_BG") as §0!R§).mClip.width;
         _loc6_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
         var _loc8_:§?`§ = this.mUIView.getItemByName("TextField_PowerUpCount" + (param3 + 1).toString()) as §?`§;
         _loc6_.mClip.x = _loc8_.x + _loc8_.width / 2 - _loc6_.mClip.width / 2;
         var _loc9_:Boolean = true;
         if((§2#§.§"@§ as §8#§).§@!D§() >= §'!0§.§;!2§)
         {
            _loc9_ = false;
         }
         if((§2#§.§"@§ as §8#§).§3i§(param2))
         {
            _loc9_ = false;
         }
         this.§+H§("POWERUP" + (param3 + 1),_loc9_);
      }
      
      private function §1!H§(param1:Number) : String
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
      
      private function §"q§(param1:Event) : void
      {
         this.§0H§();
      }
      
      public function §+H§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:int = §73§.indexOf(param1);
         if(_loc3_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         if(param2)
         {
            this.mUIView.getItemByName("Button_PowerUp" + (_loc3_ + 1).toString()).setEnabled(true);
            this.mUIView.getItemByName("Button_PowerUp" + (_loc3_ + 1).toString()).mClip.alpha = 1;
            this.mUIView.getItemByName("PowerUpCount" + (_loc3_ + 1).toString() + "_BG").mClip.alpha = 1;
         }
         else
         {
            this.mUIView.getItemByName("Button_PowerUp" + (_loc3_ + 1).toString()).setEnabled(false);
            this.mUIView.getItemByName("Button_PowerUp" + (_loc3_ + 1).toString()).mClip.alpha = 0.4;
            this.mUIView.getItemByName("PowerUpCount" + (_loc3_ + 1).toString() + "_BG").mClip.alpha = 0.4;
         }
      }
      
      public function get §!!k§() : Boolean
      {
         return this.§#=§;
      }
      
      public function set §!!k§(param1:Boolean) : void
      {
         this.§#=§ = param1;
      }
   }
}
