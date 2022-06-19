package §+"§
{
   import §"",§.§+§;
   import §"",§.§<+§;
   import §+I§.§9!%§;
   import §1"2§.§#z§;
   import §3,§.§,!;§;
   import §3,§.§4";§;
   import §3,§.§>M§;
   import §3,§.§`a§;
   import §7N§.§43§;
   import §7N§.§>9§;
   import §]!F§.§"!j§;
   import §`"5§.§?Q§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class § q§
   {
      
      protected static var §>![§:Array = ["POWERUP1","POWERUP2","POWERUP3","POWERUP4","POWERUP5"];
      
      public static var §;#§:Boolean = false;
      
      public static var §>g§:Boolean = true;
       
      
      protected var §2"-§:§"!j§;
      
      private var §4"8§:Number = 0;
      
      private var §"l§:Number = 0;
      
      private var §,i§:Number;
      
      private var §!!j§:Number;
      
      private var §5!m§:Timer;
      
      private var §5i§:Boolean;
      
      public function § q§(param1:§"!j§)
      {
         super();
         this.§2"-§ = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§!!j§ = (this.§2"-§.getItemByName("Container_PowerUpButtons") as §<+§).width - 25;
         this.§,i§ = (this.§2"-§.getItemByName("Container_PowerUpButtons") as §<+§).x;
         this.§5!m§ = new Timer(1000,1);
         this.§5!m§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§4!u§);
      }
      
      public function activate() : void
      {
         this.§6!1§();
         this.§88§(0);
         this.§2"-§.setText(§'!0§.§8c§.§9+§(§<!A§.MIGHTY_EAGLE).toString(),"TextField_PowerUpCountME");
         var _loc1_:int = 1;
         while(_loc1_ < 6)
         {
            this.§2"-§.getItemByName("Button_PowerUp" + _loc1_.toString()).setEnabled(true);
            _loc1_++;
         }
         §'!0§.§8c§.addEventListener(Event.CHANGE,this.§[>§);
         this.§2"-§.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§5!m§)
         {
            this.§5!m§.stop();
         }
         §'!0§.§8c§.removeEventListener(Event.CHANGE,this.§[>§);
         §>g§ = §;#§;
      }
      
      public function run(param1:Number) : void
      {
         if(§9!%§.§!!M§.slingshot.mSlingShotState == §,!;§.§'!!§)
         {
            this.§5!m§.reset();
            this.§5!m§.start();
         }
         this.§88§(param1);
      }
      
      public function §&!C§() : void
      {
         if(§;#§)
         {
            §;#§ = false;
         }
         else
         {
            §;#§ = true;
         }
      }
      
      public function §9$§() : void
      {
         if(!§;#§)
         {
            this.§5!m§.reset();
            this.§5!m§.start();
            §;#§ = false;
         }
      }
      
      public function §8! §() : void
      {
         if(§;#§)
         {
            this.§5!m§.reset();
            this.§5!m§.start();
            §;#§ = false;
         }
      }
      
      private function §4!u§(param1:TimerEvent) : void
      {
         §;#§ = false;
      }
      
      public function get §1">§() : Boolean
      {
         return §;#§;
      }
      
      public function set §1">§(param1:Boolean) : void
      {
         §;#§ = param1;
      }
      
      public function §!!L§() : void
      {
         var _loc1_:int = §'!0§.§8c§.§9+§(§<!A§.MIGHTY_EAGLE);
         var _loc2_:String = this.§]!d§(_loc1_);
         this.§2"-§.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      protected function §4!a§(param1:String) : String
      {
         return {
            "POWERUP1":§<!A§.§;!;§,
            "POWERUP2":§<!A§.§7X§,
            "POWERUP3":§<!A§.§[;§,
            "POWERUP4":§<!A§.§2!4§,
            "POWERUP5":§<!A§.§=!5§
         }[param1];
      }
      
      public function §4!#§(param1:String) : Boolean
      {
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc2_:int = §>![§.indexOf(param1);
         if(_loc2_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §'!0§.§8c§.§9+§(this.§4!a§(param1));
         if(_loc3_ <= 0)
         {
            switch(param1)
            {
               case "POWERUP1":
                  _loc6_ = §?Q§.§?a§;
                  break;
               case "POWERUP2":
                  _loc6_ = §?Q§.§^=§;
                  break;
               case "POWERUP3":
                  _loc6_ = §?Q§.§;"1§;
                  break;
               case "POWERUP4":
                  _loc6_ = §?Q§.§'!O§;
                  break;
               case "POWERUP5":
                  _loc6_ = §?Q§.§7C§;
            }
            if(!§?Q§.§+!&§)
            {
               §?Q§.§ ,§(_loc6_);
            }
            else
            {
               for each(_loc7_ in §?Q§.§+!&§)
               {
                  if(_loc7_.id == _loc6_)
                  {
                     §43§.§!!A§(_loc7_);
                  }
               }
            }
            return true;
         }
         §>9§.§[z§(this.§2"-§,param1);
         §>9§.§+L§(this.§2"-§);
         this.§1u§(param1,false);
         var _loc4_:String;
         if((_loc4_ = this.§4!a§(param1)) == §<!A§.§;!;§ || _loc4_ == §<!A§.§7X§ || _loc4_ == §<!A§.§[;§)
         {
            if((§9!%§.§!!M§.slingshot as §4";§).§&!L§.length <= 0)
            {
               return true;
            }
         }
         (§9!%§.§!!M§ as §>M§).§+r§.§4!#§(_loc4_);
         var _loc5_:Boolean = true;
         if((§9!%§.§!!M§ as §>M§).§;H§() >= §`a§.§ &§)
         {
            this.§5!m§.reset();
            this.§5!m§.start();
            _loc5_ = false;
         }
         this.§6!1§();
         return _loc5_;
      }
      
      private function §4[§(param1:Number) : Boolean
      {
         if(§;#§)
         {
            if(this.§"l§ < 360)
            {
               this.§"l§ += 0.6 * param1;
               if(this.§"l§ > 360)
               {
                  this.§"l§ = 360;
               }
               return true;
            }
            if(this.§"l§ > 360)
            {
               this.§"l§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§"l§ > 0)
            {
               this.§"l§ -= 0.6 * param1;
               if(this.§"l§ < 0)
               {
                  this.§"l§ = 0;
               }
               return true;
            }
            if(this.§"l§ < 0)
            {
               this.§"l§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §,!w§(param1:Number) : Boolean
      {
         if(§;#§)
         {
            this.§2"-§.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§4"8§ < this.§!!j§ - 20)
            {
               this.§4"8§ += 0.5 * param1;
               if(this.§4"8§ > this.§!!j§ - 20)
               {
                  this.§4"8§ = this.§!!j§ - 20;
               }
               return true;
            }
            if(this.§4"8§ > this.§!!j§ - 20)
            {
               this.§4"8§ = this.§!!j§ - 20;
               if(this.§4"8§ < this.§!!j§ - 20)
               {
                  this.§4"8§ = this.§!!j§ - 20;
               }
               return true;
            }
         }
         else if(this.§4"8§ > 0)
         {
            this.§4"8§ -= 0.5 * param1;
            if(this.§4"8§ <= 0)
            {
               this.§4"8§ = 0;
               this.§2"-§.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.§2"-§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§9!%§.§!!M§ as §>M§).§;H§() >= §`a§.§ &§)
               {
                  this.§2"-§.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §88§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§4[§(param1);
         var _loc3_:Boolean = this.§,!w§(param1);
         if(_loc2_)
         {
            this.§2"-§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§"l§;
            this.§2"-§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§"l§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§!!j§ - this.§4"8§ - 20,0,this.§!!j§ + 30,this.§2"-§.getItemByName("Container_PowerUpButtons").height);
            this.§2"-§.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
      }
      
      private function §6!1§() : void
      {
         this.§`!_§("TextField_PowerUpCount1",§<!A§.§;!;§,0);
         this.§`!_§("TextField_PowerUpCount2",§<!A§.§7X§,1);
         this.§`!_§("TextField_PowerUpCount3",§<!A§.§[;§,2);
         this.§`!_§("TextField_PowerUpCount4",§<!A§.§2!4§,3);
         this.§`!_§("TextField_PowerUpCount5",§<!A§.§=!5§,4);
         this.§!!L§();
      }
      
      public function §`!_§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = §'!0§.§8c§.§9+§(param2);
         var _loc5_:String = this.§]!d§(_loc4_);
         this.§2"-§.setText(_loc5_,param1);
         var _loc6_:§#z§;
         var _loc7_:int = (_loc6_ = this.§2"-§.getItemByName("PowerUpCount" + (param3 + 1).toString() + "_BG") as §#z§).mClip.width;
         _loc6_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
         var _loc8_:§+§ = this.§2"-§.getItemByName("TextField_PowerUpCount" + (param3 + 1).toString()) as §+§;
         _loc6_.mClip.x = _loc8_.x + _loc8_.width / 2 - _loc6_.mClip.width / 2;
         var _loc9_:Boolean = true;
         if(_loc4_ <= 0)
         {
            _loc9_ = true;
         }
         if((§9!%§.§!!M§ as §>M§).§;H§() >= §`a§.§ &§)
         {
            _loc9_ = false;
         }
         if((§9!%§.§!!M§ as §>M§).§66§(param2))
         {
            _loc9_ = false;
         }
         this.§1u§("POWERUP" + (param3 + 1),_loc9_);
      }
      
      private function §]!d§(param1:Number) : String
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
      
      private function §[>§(param1:Event) : void
      {
         this.§6!1§();
      }
      
      public function §1u§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:int = §>![§.indexOf(param1);
         if(_loc3_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         if(param2)
         {
            this.§2"-§.getItemByName("Button_PowerUp" + (_loc3_ + 1).toString()).setEnabled(true);
            this.§2"-§.getItemByName("Button_PowerUp" + (_loc3_ + 1).toString()).mClip.alpha = 1;
            this.§2"-§.getItemByName("PowerUpCount" + (_loc3_ + 1).toString() + "_BG").mClip.alpha = 1;
         }
         else
         {
            this.§2"-§.getItemByName("Button_PowerUp" + (_loc3_ + 1).toString()).setEnabled(false);
            this.§2"-§.getItemByName("Button_PowerUp" + (_loc3_ + 1).toString()).mClip.alpha = 0.4;
            this.§2"-§.getItemByName("PowerUpCount" + (_loc3_ + 1).toString() + "_BG").mClip.alpha = 0.4;
         }
      }
      
      public function get §+!d§() : Boolean
      {
         return this.§5i§;
      }
      
      public function set §+!d§(param1:Boolean) : void
      {
         this.§5i§ = param1;
      }
   }
}
