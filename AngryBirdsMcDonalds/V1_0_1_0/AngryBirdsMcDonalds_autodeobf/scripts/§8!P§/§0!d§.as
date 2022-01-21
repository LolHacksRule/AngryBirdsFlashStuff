package §8!P§
{
   import §,![§.§'!S§;
   import §,![§.§[!S§;
   import §-1§.§3!%§;
   import §2o§.§<H§;
   import §9!8§.§0!7§;
   import §;!-§.§#Y§;
   import §;!-§.§++§;
   import §=T§.§0!%§;
   import §=T§.§0O§;
   import §=T§.§=W§;
   import §?H§.§>!!§;
   import §@!b§.§%!'§;
   import §@!b§.§0]§;
   import §`!d§.§7!§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §0!d§
   {
      
      protected static var §4a§:Array = ["POWERUP1","POWERUP2","POWERUP3","POWERUP4","POWERUP5"];
      
      public static var §"!]§:Boolean = false;
      
      public static var §%`§:Boolean = true;
       
      
      protected var mUIView:§0!7§;
      
      private var §[F§:Number = 0;
      
      private var §[!d§:Number = 0;
      
      private var §1M§:Number;
      
      private var §'!b§:Number;
      
      private var §[>§:Timer;
      
      private var §&!F§:Boolean;
      
      public function §0!d§(param1:§0!7§)
      {
         super();
         this.mUIView = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§'!b§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as §[!S§).width - 25;
         this.§1M§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as §[!S§).x;
         this.§[>§ = new Timer(1000,1);
         this.§[>§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ &§);
      }
      
      public function activate() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 5)
         {
            this.mUIView.getItemByName("Button_PowerUp" + _loc1_.toString()).setEnabled(true);
            _loc1_++;
         }
         this.§1U§();
         this.§8!^§(0);
         this.mUIView.setText(§5e§.§>E§.§!!O§(§;S§.MIGHTY_EAGLE).toString(),"TextField_PowerUpCountME");
         §5e§.§>E§.addEventListener(Event.CHANGE,this.§6E§);
         this.mUIView.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§[>§)
         {
            this.§[>§.stop();
         }
         §5e§.§>E§.removeEventListener(Event.CHANGE,this.§6E§);
         §%`§ = §"!]§;
      }
      
      public function run(param1:Number) : void
      {
         if(§<H§.§=3§.slingshot.mSlingShotState == §%!'§.§"-§)
         {
            this.§[>§.reset();
            this.§[>§.start();
         }
         this.§8!^§(param1);
      }
      
      public function §`A§() : void
      {
         if(§"!]§)
         {
            §"!]§ = false;
         }
         else
         {
            §"!]§ = true;
         }
      }
      
      public function §>@§() : void
      {
         if(!§"!]§)
         {
            this.§[>§.reset();
            this.§[>§.start();
            §"!]§ = false;
         }
      }
      
      public function §!!Q§() : void
      {
         if(§"!]§)
         {
            this.§[>§.reset();
            this.§[>§.start();
            §"!]§ = false;
         }
      }
      
      private function § &§(param1:TimerEvent) : void
      {
         §"!]§ = false;
      }
      
      public function get §[!8§() : Boolean
      {
         return §"!]§;
      }
      
      public function set §[!8§(param1:Boolean) : void
      {
         §"!]§ = param1;
      }
      
      public function §>!#§() : void
      {
         var _loc1_:int = §5e§.§>E§.§!!O§(§;S§.MIGHTY_EAGLE);
         var _loc2_:String = this.§?5§(_loc1_);
         this.mUIView.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      protected function §4!6§(param1:String) : String
      {
         return {
            "POWERUP1":§;S§.§4I§,
            "POWERUP2":§;S§.§2!_§,
            "POWERUP3":§;S§.§1?§,
            "POWERUP4":§;S§.§<I§,
            "POWERUP5":§;S§.§',§
         }[param1];
      }
      
      public function §9H§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = §4a§.indexOf(param1);
         if(_loc2_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §5e§.§>E§.§!!O§(this.§4!6§(param1));
         if(_loc3_ <= 0 && !§>!!§.§8S§(§7!§.§+e§))
         {
            §0!%§.§7!^§(this.mUIView);
            return true;
         }
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).setEnabled(false);
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).mClip.alpha = 0.4;
         this.mUIView.getItemByName("PowerUpCount" + (_loc2_ + 1).toString() + "_BG").mClip.alpha = 0.4;
         var _loc4_:String;
         if((_loc4_ = this.§4!6§(param1)) == §;S§.§4I§ || _loc4_ == §;S§.§2!_§ || _loc4_ == §;S§.§1?§)
         {
            if((§<H§.§=3§.slingshot as §#Y§).§ N§.length <= 0)
            {
               return true;
            }
         }
         if(_loc3_ > 0 || §>!!§.§8S§(§7!§.§+e§))
         {
            §0O§.§!!;§(this.mUIView,param1,false,true);
            §=W§.§'I§(this.mUIView);
            (§<H§.§=3§ as §++§).§2%§.§9H§(_loc4_);
         }
         var _loc5_:Boolean = true;
         if((§<H§.§=3§ as §++§).§ !S§() >= §0]§.§=Q§)
         {
            this.§[>§.reset();
            this.§[>§.start();
            _loc5_ = false;
         }
         this.§1U§();
         return _loc5_;
      }
      
      private function §;6§(param1:Number) : Boolean
      {
         if(§"!]§)
         {
            if(this.§[!d§ < 360)
            {
               this.§[!d§ += 0.6 * param1;
               if(this.§[!d§ > 360)
               {
                  this.§[!d§ = 360;
               }
               return true;
            }
            if(this.§[!d§ > 360)
            {
               this.§[!d§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§[!d§ > 0)
            {
               this.§[!d§ -= 0.6 * param1;
               if(this.§[!d§ < 0)
               {
                  this.§[!d§ = 0;
               }
               return true;
            }
            if(this.§[!d§ < 0)
            {
               this.§[!d§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §2[§(param1:Number) : Boolean
      {
         if(§"!]§)
         {
            this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§[F§ < this.§'!b§ - 20)
            {
               this.§[F§ += 0.5 * param1;
               if(this.§[F§ > this.§'!b§ - 20)
               {
                  this.§[F§ = this.§'!b§ - 20;
               }
               return true;
            }
            if(this.§[F§ > this.§'!b§ - 20)
            {
               this.§[F§ = this.§'!b§ - 20;
               if(this.§[F§ < this.§'!b§ - 20)
               {
                  this.§[F§ = this.§'!b§ - 20;
               }
               return true;
            }
         }
         else if(this.§[F§ > 0)
         {
            this.§[F§ -= 0.5 * param1;
            if(this.§[F§ <= 0)
            {
               this.§[F§ = 0;
               this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§<H§.§=3§ as §++§).§ !S§() >= §0]§.§=Q§)
               {
                  this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §8!^§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§;6§(param1);
         var _loc3_:Boolean = this.§2[§(param1);
         if(_loc2_)
         {
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§[!d§;
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§[!d§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§'!b§ - this.§[F§ - 20,0,this.§'!b§ + 30,this.mUIView.getItemByName("Container_PowerUpButtons").height);
            this.mUIView.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
      }
      
      private function §1U§() : void
      {
         var _loc1_:* = !§>!!§.§8S§(§7!§.§+e§);
         this.mUIView.getItemByName("TextField_PowerUpCount1").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount1_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount2").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount2_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount3").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount3_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount4").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount4_BG").setVisibility(_loc1_);
         this.§7!U§("TextField_PowerUpCount1",§;S§.§4I§,0);
         this.§7!U§("TextField_PowerUpCount2",§;S§.§2!_§,1);
         this.§7!U§("TextField_PowerUpCount3",§;S§.§1?§,2);
         this.§7!U§("TextField_PowerUpCount4",§;S§.§<I§,3);
         this.§>!#§();
      }
      
      public function §7!U§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = §5e§.§>E§.§!!O§(param2);
         var _loc5_:String = this.§?5§(_loc4_);
         this.mUIView.setText(_loc5_,param1);
         var _loc6_:§3!%§;
         var _loc7_:int = (_loc6_ = this.mUIView.getItemByName("PowerUpCount" + (param3 + 1).toString() + "_BG") as §3!%§).mClip.width;
         _loc6_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
         var _loc8_:§'!S§ = this.mUIView.getItemByName("TextField_PowerUpCount" + (param3 + 1).toString()) as §'!S§;
         _loc6_.mClip.x = _loc8_.x + _loc8_.width / 2 - _loc6_.mClip.width / 2;
         var _loc9_:Boolean = true;
         if((§<H§.§=3§ as §++§).§ !S§() >= §0]§.§=Q§)
         {
            _loc9_ = false;
         }
         if((§<H§.§=3§ as §++§).§%!V§(param2))
         {
            _loc9_ = false;
         }
         this.§-!&§("POWERUP" + (param3 + 1),_loc9_);
      }
      
      private function §?5§(param1:Number) : String
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
      
      private function §6E§(param1:Event) : void
      {
         this.§1U§();
      }
      
      public function §-!&§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:int = §4a§.indexOf(param1);
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
      
      public function get §%!,§() : Boolean
      {
         return this.§&!F§;
      }
      
      public function set §%!,§(param1:Boolean) : void
      {
         this.§&!F§ = param1;
      }
   }
}
