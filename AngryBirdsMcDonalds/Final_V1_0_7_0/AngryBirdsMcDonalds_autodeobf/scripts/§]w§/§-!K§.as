package §]w§
{
   import §%!5§.§7;§;
   import §+$§.§5"§;
   import §-!F§.§2[§;
   import §37§.§!!c§;
   import §37§.§&!;§;
   import §37§.§8!`§;
   import §3<§.§-2§;
   import §3j§.§;9§;
   import §3j§.§[8§;
   import §55§.§"!P§;
   import §55§.§7!k§;
   import §7!N§.§0-§;
   import §[h§.§ !&§;
   import §[h§.§ set§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §-!K§
   {
      
      protected static var §^2§:Array = ["POWERUP1","POWERUP2","POWERUP3","POWERUP4","POWERUP5"];
      
      public static var §;?§:Boolean = false;
      
      public static var §5,§:Boolean = true;
       
      
      protected var mUIView:§-2§;
      
      private var §&!K§:Number = 0;
      
      private var §@!,§:Number = 0;
      
      private var §&b§:Number;
      
      private var §6!!§:Number;
      
      private var §94§:Timer;
      
      private var §]J§:Boolean;
      
      public function §-!K§(param1:§-2§)
      {
         super();
         this.mUIView = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§6!!§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as § !&§).width - 25;
         this.§&b§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as § !&§).x;
         this.§94§ = new Timer(1000,1);
         this.§94§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§'1§);
      }
      
      public function activate() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 5)
         {
            this.mUIView.getItemByName("Button_PowerUp" + _loc1_.toString()).setEnabled(true);
            _loc1_++;
         }
         this.§2!;§();
         this.§ !W§(0);
         this.mUIView.setText(§8!L§.§9$§.§1!G§(§-K§.MIGHTY_EAGLE).toString(),"TextField_PowerUpCountME");
         §8!L§.§9$§.addEventListener(Event.CHANGE,this.§6g§);
         this.mUIView.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§94§)
         {
            this.§94§.stop();
         }
         §8!L§.§9$§.removeEventListener(Event.CHANGE,this.§6g§);
         §5,§ = §;?§;
      }
      
      public function run(param1:Number) : void
      {
         if(§7;§.§1h§.slingshot.mSlingShotState == §"!P§.§;!L§)
         {
            this.§94§.reset();
            this.§94§.start();
         }
         this.§ !W§(param1);
      }
      
      public function §0Y§() : void
      {
         if(§;?§)
         {
            §;?§ = false;
         }
         else
         {
            §;?§ = true;
         }
      }
      
      public function §+m§() : void
      {
         if(!§;?§)
         {
            this.§94§.reset();
            this.§94§.start();
            §;?§ = false;
         }
      }
      
      public function §#!@§() : void
      {
         if(§;?§)
         {
            this.§94§.reset();
            this.§94§.start();
            §;?§ = false;
         }
      }
      
      private function §'1§(param1:TimerEvent) : void
      {
         §;?§ = false;
      }
      
      public function get §6Y§() : Boolean
      {
         return §;?§;
      }
      
      public function set §6Y§(param1:Boolean) : void
      {
         §;?§ = param1;
      }
      
      public function §@e§() : void
      {
         var _loc1_:int = §8!L§.§9$§.§1!G§(§-K§.MIGHTY_EAGLE);
         var _loc2_:String = this.§2y§(_loc1_);
         this.mUIView.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      protected function §4X§(param1:String) : String
      {
         return {
            "POWERUP1":§-K§.§2!8§,
            "POWERUP2":§-K§.§-T§,
            "POWERUP3":§-K§.§=Q§,
            "POWERUP4":§-K§.§"!l§,
            "POWERUP5":§-K§.§9S§
         }[param1];
      }
      
      public function §,D§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = §^2§.indexOf(param1);
         if(_loc2_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §8!L§.§9$§.§1!G§(this.§4X§(param1));
         if(_loc3_ <= 0 && !§0-§.§-5§(§2[§.§^N§))
         {
            §&!;§.§+!Q§(this.mUIView);
            return true;
         }
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).setEnabled(false);
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).mClip.alpha = 0.4;
         this.mUIView.getItemByName("PowerUpCount" + (_loc2_ + 1).toString() + "_BG").mClip.alpha = 0.4;
         var _loc4_:String;
         if((_loc4_ = this.§4X§(param1)) == §-K§.§2!8§ || _loc4_ == §-K§.§-T§ || _loc4_ == §-K§.§=Q§)
         {
            if((§7;§.§1h§.slingshot as §;9§).§!!e§.length <= 0)
            {
               return true;
            }
         }
         if(_loc3_ > 0 || §0-§.§-5§(§2[§.§^N§))
         {
            §!!c§.§?C§(this.mUIView,param1,false,true);
            §8!`§.§<Z§(this.mUIView);
            (§7;§.§1h§ as §[8§).§2Y§.§,D§(_loc4_);
         }
         var _loc5_:Boolean = true;
         if((§7;§.§1h§ as §[8§).§+!^§() >= §7!k§.§#?§)
         {
            this.§94§.reset();
            this.§94§.start();
            _loc5_ = false;
         }
         this.§2!;§();
         return _loc5_;
      }
      
      private function §8c§(param1:Number) : Boolean
      {
         if(§;?§)
         {
            if(this.§@!,§ < 360)
            {
               this.§@!,§ += 0.6 * param1;
               if(this.§@!,§ > 360)
               {
                  this.§@!,§ = 360;
               }
               return true;
            }
            if(this.§@!,§ > 360)
            {
               this.§@!,§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§@!,§ > 0)
            {
               this.§@!,§ -= 0.6 * param1;
               if(this.§@!,§ < 0)
               {
                  this.§@!,§ = 0;
               }
               return true;
            }
            if(this.§@!,§ < 0)
            {
               this.§@!,§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §"'§(param1:Number) : Boolean
      {
         if(§;?§)
         {
            this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§&!K§ < this.§6!!§ - 20)
            {
               this.§&!K§ += 0.5 * param1;
               if(this.§&!K§ > this.§6!!§ - 20)
               {
                  this.§&!K§ = this.§6!!§ - 20;
               }
               return true;
            }
            if(this.§&!K§ > this.§6!!§ - 20)
            {
               this.§&!K§ = this.§6!!§ - 20;
               if(this.§&!K§ < this.§6!!§ - 20)
               {
                  this.§&!K§ = this.§6!!§ - 20;
               }
               return true;
            }
         }
         else if(this.§&!K§ > 0)
         {
            this.§&!K§ -= 0.5 * param1;
            if(this.§&!K§ <= 0)
            {
               this.§&!K§ = 0;
               this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§7;§.§1h§ as §[8§).§+!^§() >= §7!k§.§#?§)
               {
                  this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function § !W§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§8c§(param1);
         var _loc3_:Boolean = this.§"'§(param1);
         if(_loc2_)
         {
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§@!,§;
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§@!,§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§6!!§ - this.§&!K§ - 20,0,this.§6!!§ + 30,this.mUIView.getItemByName("Container_PowerUpButtons").height);
            this.mUIView.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
      }
      
      private function §2!;§() : void
      {
         var _loc1_:* = !§0-§.§-5§(§2[§.§^N§);
         this.mUIView.getItemByName("TextField_PowerUpCount1").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount1_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount2").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount2_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount3").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount3_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount4").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount4_BG").setVisibility(_loc1_);
         this.§`#§("TextField_PowerUpCount1",§-K§.§2!8§,0);
         this.§`#§("TextField_PowerUpCount2",§-K§.§-T§,1);
         this.§`#§("TextField_PowerUpCount3",§-K§.§=Q§,2);
         this.§`#§("TextField_PowerUpCount4",§-K§.§"!l§,3);
         this.§@e§();
      }
      
      public function §`#§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = §8!L§.§9$§.§1!G§(param2);
         var _loc5_:String = this.§2y§(_loc4_);
         this.mUIView.setText(_loc5_,param1);
         var _loc6_:§5"§;
         var _loc7_:int = (_loc6_ = this.mUIView.getItemByName("PowerUpCount" + (param3 + 1).toString() + "_BG") as §5"§).mClip.width;
         _loc6_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
         var _loc8_:§ set§ = this.mUIView.getItemByName("TextField_PowerUpCount" + (param3 + 1).toString()) as § set§;
         _loc6_.mClip.x = _loc8_.x + _loc8_.width / 2 - _loc6_.mClip.width / 2;
         var _loc9_:Boolean = true;
         if((§7;§.§1h§ as §[8§).§+!^§() >= §7!k§.§#?§)
         {
            _loc9_ = false;
         }
         if((§7;§.§1h§ as §[8§).§@!d§(param2))
         {
            _loc9_ = false;
         }
         this.§-d§("POWERUP" + (param3 + 1),_loc9_);
      }
      
      private function §2y§(param1:Number) : String
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
      
      private function §6g§(param1:Event) : void
      {
         this.§2!;§();
      }
      
      public function §-d§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:int = §^2§.indexOf(param1);
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
      
      public function get §]W§() : Boolean
      {
         return this.§]J§;
      }
      
      public function set §]W§(param1:Boolean) : void
      {
         this.§]J§ = param1;
      }
   }
}
