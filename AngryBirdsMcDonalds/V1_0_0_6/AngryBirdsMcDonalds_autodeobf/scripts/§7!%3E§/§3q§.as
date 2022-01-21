package §7!>§
{
   import §"2§.§9-§;
   import §"2§.§>!G§;
   import §#M§.§+!Z§;
   import §0;§.§3=§;
   import §31§.§ !A§;
   import §31§.§?![§;
   import §6@§.§'!F§;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §<L§.§6H§;
   import §<L§.§7!4§;
   import §]q§.§+$§;
   import §]q§.§6l§;
   import §]q§.§<;§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §3q§
   {
      
      protected static var §0!W§:Array = ["POWERUP1","POWERUP2","POWERUP3","POWERUP4","POWERUP5"];
      
      public static var §@!g§:Boolean = false;
      
      public static var §=!0§:Boolean = true;
       
      
      protected var mUIView:§3=§;
      
      private var §?o§:Number = 0;
      
      private var §"U§:Number = 0;
      
      private var §4I§:Number;
      
      private var §>"§:Number;
      
      private var §6O§:Timer;
      
      private var §3%§:Boolean;
      
      public function §3q§(param1:§3=§)
      {
         super();
         this.mUIView = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§>"§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as § !A§).width - 25;
         this.§4I§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as § !A§).x;
         this.§6O§ = new Timer(1000,1);
         this.§6O§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§@t§);
      }
      
      public function activate() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 5)
         {
            this.mUIView.getItemByName("Button_PowerUp" + _loc1_.toString()).setEnabled(true);
            _loc1_++;
         }
         this.§[!b§();
         this.§^D§(0);
         this.mUIView.setText(§0!_§.§+j§.§^!R§(§4y§.MIGHTY_EAGLE).toString(),"TextField_PowerUpCountME");
         §0!_§.§+j§.addEventListener(Event.CHANGE,this.§'!a§);
         this.mUIView.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§6O§)
         {
            this.§6O§.stop();
         }
         §0!_§.§+j§.removeEventListener(Event.CHANGE,this.§'!a§);
         §=!0§ = §@!g§;
      }
      
      public function run(param1:Number) : void
      {
         if(§+!Z§.§?!<§.slingshot.mSlingShotState == §7!4§.§1f§)
         {
            this.§6O§.reset();
            this.§6O§.start();
         }
         this.§^D§(param1);
      }
      
      public function §-!d§() : void
      {
         if(§@!g§)
         {
            §@!g§ = false;
         }
         else
         {
            §@!g§ = true;
         }
      }
      
      public function § 3§() : void
      {
         if(!§@!g§)
         {
            this.§6O§.reset();
            this.§6O§.start();
            §@!g§ = false;
         }
      }
      
      public function §@!d§() : void
      {
         if(§@!g§)
         {
            this.§6O§.reset();
            this.§6O§.start();
            §@!g§ = false;
         }
      }
      
      private function §@t§(param1:TimerEvent) : void
      {
         §@!g§ = false;
      }
      
      public function get §7z§() : Boolean
      {
         return §@!g§;
      }
      
      public function set §7z§(param1:Boolean) : void
      {
         §@!g§ = param1;
      }
      
      public function §+Q§() : void
      {
         var _loc1_:int = §0!_§.§+j§.§^!R§(§4y§.MIGHTY_EAGLE);
         var _loc2_:String = this.§<6§(_loc1_);
         this.mUIView.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      protected function §>?§(param1:String) : String
      {
         return {
            "POWERUP1":§4y§.§`]§,
            "POWERUP2":§4y§.§9K§,
            "POWERUP3":§4y§.§%C§,
            "POWERUP4":§4y§.§+&§,
            "POWERUP5":§4y§.§-!m§
         }[param1];
      }
      
      public function §,<§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = §0!W§.indexOf(param1);
         if(_loc2_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §0!_§.§+j§.§^!R§(this.§>?§(param1));
         if(_loc3_ <= 0 && !§[!5§.§1G§(§^d§.§@P§))
         {
            §6l§.§0!P§(this.mUIView);
            return true;
         }
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).setEnabled(false);
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).mClip.alpha = 0.4;
         this.mUIView.getItemByName("PowerUpCount" + (_loc2_ + 1).toString() + "_BG").mClip.alpha = 0.4;
         var _loc4_:String;
         if((_loc4_ = this.§>?§(param1)) == §4y§.§`]§ || _loc4_ == §4y§.§9K§ || _loc4_ == §4y§.§%C§)
         {
            if((§+!Z§.§?!<§.slingshot as §>!G§).§ &§.length <= 0)
            {
               return true;
            }
         }
         if(_loc3_ > 0 || §[!5§.§1G§(§^d§.§@P§))
         {
            §<;§.§7!m§(this.mUIView,param1,false,true);
            §+$§.§9Q§(this.mUIView);
            (§+!Z§.§?!<§ as §9-§).§?Q§.§,<§(_loc4_);
         }
         var _loc5_:Boolean = true;
         if((§+!Z§.§?!<§ as §9-§).§8"§() >= §6H§.§2w§)
         {
            this.§6O§.reset();
            this.§6O§.start();
            _loc5_ = false;
         }
         this.§[!b§();
         return _loc5_;
      }
      
      private function §1R§(param1:Number) : Boolean
      {
         if(§@!g§)
         {
            if(this.§"U§ < 360)
            {
               this.§"U§ += 0.6 * param1;
               if(this.§"U§ > 360)
               {
                  this.§"U§ = 360;
               }
               return true;
            }
            if(this.§"U§ > 360)
            {
               this.§"U§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§"U§ > 0)
            {
               this.§"U§ -= 0.6 * param1;
               if(this.§"U§ < 0)
               {
                  this.§"U§ = 0;
               }
               return true;
            }
            if(this.§"U§ < 0)
            {
               this.§"U§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §`!6§(param1:Number) : Boolean
      {
         if(§@!g§)
         {
            this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§?o§ < this.§>"§ - 20)
            {
               this.§?o§ += 0.5 * param1;
               if(this.§?o§ > this.§>"§ - 20)
               {
                  this.§?o§ = this.§>"§ - 20;
               }
               return true;
            }
            if(this.§?o§ > this.§>"§ - 20)
            {
               this.§?o§ = this.§>"§ - 20;
               if(this.§?o§ < this.§>"§ - 20)
               {
                  this.§?o§ = this.§>"§ - 20;
               }
               return true;
            }
         }
         else if(this.§?o§ > 0)
         {
            this.§?o§ -= 0.5 * param1;
            if(this.§?o§ <= 0)
            {
               this.§?o§ = 0;
               this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§+!Z§.§?!<§ as §9-§).§8"§() >= §6H§.§2w§)
               {
                  this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §^D§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§1R§(param1);
         var _loc3_:Boolean = this.§`!6§(param1);
         if(_loc2_)
         {
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§"U§;
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§"U§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§>"§ - this.§?o§ - 20,0,this.§>"§ + 30,this.mUIView.getItemByName("Container_PowerUpButtons").height);
            this.mUIView.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
      }
      
      private function §[!b§() : void
      {
         var _loc1_:* = !§[!5§.§1G§(§^d§.§@P§);
         this.mUIView.getItemByName("TextField_PowerUpCount1").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount1_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount2").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount2_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount3").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount3_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount4").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount4_BG").setVisibility(_loc1_);
         this.§9!5§("TextField_PowerUpCount1",§4y§.§`]§,0);
         this.§9!5§("TextField_PowerUpCount2",§4y§.§9K§,1);
         this.§9!5§("TextField_PowerUpCount3",§4y§.§%C§,2);
         this.§9!5§("TextField_PowerUpCount4",§4y§.§+&§,3);
         this.§+Q§();
      }
      
      public function §9!5§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = §0!_§.§+j§.§^!R§(param2);
         var _loc5_:String = this.§<6§(_loc4_);
         this.mUIView.setText(_loc5_,param1);
         var _loc6_:§'!F§;
         var _loc7_:int = (_loc6_ = this.mUIView.getItemByName("PowerUpCount" + (param3 + 1).toString() + "_BG") as §'!F§).mClip.width;
         _loc6_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
         var _loc8_:§?![§ = this.mUIView.getItemByName("TextField_PowerUpCount" + (param3 + 1).toString()) as §?![§;
         _loc6_.mClip.x = _loc8_.x + _loc8_.width / 2 - _loc6_.mClip.width / 2;
         var _loc9_:Boolean = true;
         if((§+!Z§.§?!<§ as §9-§).§8"§() >= §6H§.§2w§)
         {
            _loc9_ = false;
         }
         if((§+!Z§.§?!<§ as §9-§).§[5§(param2))
         {
            _loc9_ = false;
         }
         this.§&<§("POWERUP" + (param3 + 1),_loc9_);
      }
      
      private function §<6§(param1:Number) : String
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
      
      private function §'!a§(param1:Event) : void
      {
         this.§[!b§();
      }
      
      public function §&<§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:int = §0!W§.indexOf(param1);
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
      
      public function get §=!d§() : Boolean
      {
         return this.§3%§;
      }
      
      public function set §=!d§(param1:Boolean) : void
      {
         this.§3%§ = param1;
      }
   }
}
