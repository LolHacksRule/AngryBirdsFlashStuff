package §2S§
{
   import § !J§.§,![§;
   import § !J§.§`+§;
   import §,!C§.§-6§;
   import §,!C§.§3!&§;
   import §,4§.§;_§;
   import §0$§.§!t§;
   import §2!G§.§!!5§;
   import §2!G§.§-!3§;
   import §2!G§.§[!M§;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §@-§.§-m§;
   import §^!I§.§"r§;
   import §^!I§.§6!%§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §37§
   {
      
      protected static var §@!Q§:Array = ["POWERUP1","POWERUP2","POWERUP3","POWERUP4","POWERUP5"];
      
      public static var §7!>§:Boolean = false;
      
      public static var §=R§:Boolean = true;
       
      
      protected var mUIView:§%g§;
      
      private var §'!k§:Number = 0;
      
      private var § M§:Number = 0;
      
      private var §=!i§:Number;
      
      private var §91§:Number;
      
      private var §`!F§:Timer;
      
      private var §3<§:Boolean;
      
      public function §37§(param1:§%g§)
      {
         super();
         this.mUIView = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§91§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as §-6§).width - 25;
         this.§=!i§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as §-6§).x;
         this.§`!F§ = new Timer(1000,1);
         this.§`!F§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§!X§);
      }
      
      public function activate() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 5)
         {
            this.mUIView.getItemByName("Button_PowerUp" + _loc1_.toString()).setEnabled(true);
            _loc1_++;
         }
         this.§`!G§();
         this.§<6§(0);
         this.mUIView.setText(§6!P§.§5!!§.§>!h§(§9!A§.MIGHTY_EAGLE).toString(),"TextField_PowerUpCountME");
         §6!P§.§5!!§.addEventListener(Event.CHANGE,this.§,`§);
         this.mUIView.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§`!F§)
         {
            this.§`!F§.stop();
         }
         §6!P§.§5!!§.removeEventListener(Event.CHANGE,this.§,`§);
         §=R§ = §7!>§;
      }
      
      public function run(param1:Number) : void
      {
         if(§2M§.§1?§.slingshot.mSlingShotState == §`+§.§0!I§)
         {
            this.§`!F§.reset();
            this.§`!F§.start();
         }
         this.§<6§(param1);
      }
      
      public function §[!G§() : void
      {
         if(§7!>§)
         {
            §7!>§ = false;
         }
         else
         {
            §7!>§ = true;
         }
      }
      
      public function §+!F§() : void
      {
         if(!§7!>§)
         {
            this.§`!F§.reset();
            this.§`!F§.start();
            §7!>§ = false;
         }
      }
      
      public function §?d§() : void
      {
         if(§7!>§)
         {
            this.§`!F§.reset();
            this.§`!F§.start();
            §7!>§ = false;
         }
      }
      
      private function §!X§(param1:TimerEvent) : void
      {
         §7!>§ = false;
      }
      
      public function get §=!?§() : Boolean
      {
         return §7!>§;
      }
      
      public function set §=!?§(param1:Boolean) : void
      {
         §7!>§ = param1;
      }
      
      public function §9!9§() : void
      {
         var _loc1_:int = §6!P§.§5!!§.§>!h§(§9!A§.MIGHTY_EAGLE);
         var _loc2_:String = this.§`@§(_loc1_);
         this.mUIView.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      protected function §]d§(param1:String) : String
      {
         return {
            "POWERUP1":§9!A§.§4r§,
            "POWERUP2":§9!A§.§!b§,
            "POWERUP3":§9!A§.§ !q§,
            "POWERUP4":§9!A§.§"S§,
            "POWERUP5":§9!A§.§<W§
         }[param1];
      }
      
      public function §[!c§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = §@!Q§.indexOf(param1);
         if(_loc2_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §6!P§.§5!!§.§>!h§(this.§]d§(param1));
         if(_loc3_ <= 0 && !§!t§.§0P§(§;_§.§2!Q§))
         {
            §-!3§.§=!2§(this.mUIView);
            return true;
         }
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).setEnabled(false);
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).mClip.alpha = 0.4;
         this.mUIView.getItemByName("PowerUpCount" + (_loc2_ + 1).toString() + "_BG").mClip.alpha = 0.4;
         var _loc4_:String;
         if((_loc4_ = this.§]d§(param1)) == §9!A§.§4r§ || _loc4_ == §9!A§.§!b§ || _loc4_ == §9!A§.§ !q§)
         {
            if((§2M§.§1?§.slingshot as §6!%§).§<!f§.length <= 0)
            {
               return true;
            }
         }
         if(_loc3_ > 0 || §!t§.§0P§(§;_§.§2!Q§))
         {
            §!!5§.§^=§(this.mUIView,param1,false,true);
            §[!M§.§!!g§(this.mUIView);
            (§2M§.§1?§ as §"r§).§36§.§[!c§(_loc4_);
         }
         var _loc5_:Boolean = true;
         if((§2M§.§1?§ as §"r§).§6#§() >= §,![§.§!J§)
         {
            this.§`!F§.reset();
            this.§`!F§.start();
            _loc5_ = false;
         }
         this.§`!G§();
         return _loc5_;
      }
      
      private function §[!"§(param1:Number) : Boolean
      {
         if(§7!>§)
         {
            if(this.§ M§ < 360)
            {
               this.§ M§ += 0.6 * param1;
               if(this.§ M§ > 360)
               {
                  this.§ M§ = 360;
               }
               return true;
            }
            if(this.§ M§ > 360)
            {
               this.§ M§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§ M§ > 0)
            {
               this.§ M§ -= 0.6 * param1;
               if(this.§ M§ < 0)
               {
                  this.§ M§ = 0;
               }
               return true;
            }
            if(this.§ M§ < 0)
            {
               this.§ M§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §2!o§(param1:Number) : Boolean
      {
         if(§7!>§)
         {
            this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§'!k§ < this.§91§ - 20)
            {
               this.§'!k§ += 0.5 * param1;
               if(this.§'!k§ > this.§91§ - 20)
               {
                  this.§'!k§ = this.§91§ - 20;
               }
               return true;
            }
            if(this.§'!k§ > this.§91§ - 20)
            {
               this.§'!k§ = this.§91§ - 20;
               if(this.§'!k§ < this.§91§ - 20)
               {
                  this.§'!k§ = this.§91§ - 20;
               }
               return true;
            }
         }
         else if(this.§'!k§ > 0)
         {
            this.§'!k§ -= 0.5 * param1;
            if(this.§'!k§ <= 0)
            {
               this.§'!k§ = 0;
               this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§2M§.§1?§ as §"r§).§6#§() >= §,![§.§!J§)
               {
                  this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §<6§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§[!"§(param1);
         var _loc3_:Boolean = this.§2!o§(param1);
         if(_loc2_)
         {
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§ M§;
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§ M§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§91§ - this.§'!k§ - 20,0,this.§91§ + 30,this.mUIView.getItemByName("Container_PowerUpButtons").height);
            this.mUIView.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
      }
      
      private function §`!G§() : void
      {
         var _loc1_:* = !§!t§.§0P§(§;_§.§2!Q§);
         this.mUIView.getItemByName("TextField_PowerUpCount1").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount1_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount2").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount2_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount3").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount3_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount4").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount4_BG").setVisibility(_loc1_);
         this.§&!,§("TextField_PowerUpCount1",§9!A§.§4r§,0);
         this.§&!,§("TextField_PowerUpCount2",§9!A§.§!b§,1);
         this.§&!,§("TextField_PowerUpCount3",§9!A§.§ !q§,2);
         this.§&!,§("TextField_PowerUpCount4",§9!A§.§"S§,3);
         this.§9!9§();
      }
      
      public function §&!,§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = §6!P§.§5!!§.§>!h§(param2);
         var _loc5_:String = this.§`@§(_loc4_);
         this.mUIView.setText(_loc5_,param1);
         var _loc6_:§-m§;
         var _loc7_:int = (_loc6_ = this.mUIView.getItemByName("PowerUpCount" + (param3 + 1).toString() + "_BG") as §-m§).mClip.width;
         _loc6_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
         var _loc8_:§3!&§ = this.mUIView.getItemByName("TextField_PowerUpCount" + (param3 + 1).toString()) as §3!&§;
         _loc6_.mClip.x = _loc8_.x + _loc8_.width / 2 - _loc6_.mClip.width / 2;
         var _loc9_:Boolean = true;
         if((§2M§.§1?§ as §"r§).§6#§() >= §,![§.§!J§)
         {
            _loc9_ = false;
         }
         if((§2M§.§1?§ as §"r§).§ !6§(param2))
         {
            _loc9_ = false;
         }
         this.§#M§("POWERUP" + (param3 + 1),_loc9_);
      }
      
      private function §`@§(param1:Number) : String
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
      
      private function §,`§(param1:Event) : void
      {
         this.§`!G§();
      }
      
      public function §#M§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:int = §@!Q§.indexOf(param1);
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
      
      public function get § !r§() : Boolean
      {
         return this.§3<§;
      }
      
      public function set § !r§(param1:Boolean) : void
      {
         this.§3<§ = param1;
      }
   }
}
