package §@w§
{
   import § v§.§!!^§;
   import §"%§.§+!&§;
   import §'a§.§0U§;
   import §'a§.§^N§;
   import §+-§.§3!5§;
   import §-Y§.§-!V§;
   import §-Y§.§?r§;
   import §9!W§.§=!@§;
   import §>G§.§]!W§;
   import §>G§.§]f§;
   import §@`§.§>!S§;
   import §^!V§.§%K§;
   import §^!V§.§^!h§;
   import §^!V§.§^!j§;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §7!]§
   {
      
      protected static var §^9§:Array = ["POWERUP1","POWERUP2","POWERUP3","POWERUP4","POWERUP5"];
      
      public static var §'m§:Boolean = false;
      
      public static var §,h§:Boolean = true;
       
      
      protected var mUIView:§>!S§;
      
      private var §@!k§:Number = 0;
      
      private var §9d§:Number = 0;
      
      private var §1!T§:Number;
      
      private var §[!;§:Number;
      
      private var §;!`§:Timer;
      
      private var §92§:Boolean;
      
      public function §7!]§(param1:§>!S§)
      {
         super();
         this.mUIView = param1;
         this.init();
      }
      
      private function init() : void
      {
         this.§[!;§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as §]f§).width - 25;
         this.§1!T§ = (this.mUIView.getItemByName("Container_PowerUpButtons") as §]f§).x;
         this.§;!`§ = new Timer(1000,1);
         this.§;!`§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§`]§);
      }
      
      public function activate() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 5)
         {
            this.mUIView.getItemByName("Button_PowerUp" + _loc1_.toString()).setEnabled(true);
            _loc1_++;
         }
         this.§[H§();
         this.§ A§(0);
         this.mUIView.setText(§'!#§.§'!S§.§2v§(§`H§.MIGHTY_EAGLE).toString(),"TextField_PowerUpCountME");
         §'!#§.§'!S§.addEventListener(Event.CHANGE,this.§[!c§);
         this.mUIView.getItemByName("Container_PowerUpButtons").mClip.cacheAsBitmap = true;
      }
      
      public function deActivate() : void
      {
         if(this.§;!`§)
         {
            this.§;!`§.stop();
         }
         §'!#§.§'!S§.removeEventListener(Event.CHANGE,this.§[!c§);
         §,h§ = §'m§;
      }
      
      public function run(param1:Number) : void
      {
         if(§=!@§.§>!T§.slingshot.mSlingShotState == §0U§.§>!1§)
         {
            this.§;!`§.reset();
            this.§;!`§.start();
         }
         this.§ A§(param1);
      }
      
      public function §?$§() : void
      {
         if(§'m§)
         {
            §'m§ = false;
         }
         else
         {
            §'m§ = true;
         }
      }
      
      public function §6!a§() : void
      {
         if(!§'m§)
         {
            this.§;!`§.reset();
            this.§;!`§.start();
            §'m§ = false;
         }
      }
      
      public function §1W§() : void
      {
         if(§'m§)
         {
            this.§;!`§.reset();
            this.§;!`§.start();
            §'m§ = false;
         }
      }
      
      private function §`]§(param1:TimerEvent) : void
      {
         §'m§ = false;
      }
      
      public function get § u§() : Boolean
      {
         return §'m§;
      }
      
      public function set § u§(param1:Boolean) : void
      {
         §'m§ = param1;
      }
      
      public function §%!e§() : void
      {
         var _loc1_:int = §'!#§.§'!S§.§2v§(§`H§.MIGHTY_EAGLE);
         var _loc2_:String = this.§!!a§(_loc1_);
         this.mUIView.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      protected function §>t§(param1:String) : String
      {
         return {
            "POWERUP1":§`H§.§43§,
            "POWERUP2":§`H§.§=^§,
            "POWERUP3":§`H§.§1!h§,
            "POWERUP4":§`H§.§9!a§,
            "POWERUP5":§`H§.§ Y§
         }[param1];
      }
      
      public function §4-§(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         _loc2_ = §^9§.indexOf(param1);
         if(_loc2_ == -1)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §'!#§.§'!S§.§2v§(this.§>t§(param1));
         if(_loc3_ <= 0 && !§!!^§.§use§(§3!5§.§-!2§))
         {
            §^!j§.§-&§(this.mUIView);
            return true;
         }
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).setEnabled(false);
         this.mUIView.getItemByName("Button_PowerUp" + (_loc2_ + 1).toString()).mClip.alpha = 0.4;
         this.mUIView.getItemByName("PowerUpCount" + (_loc2_ + 1).toString() + "_BG").mClip.alpha = 0.4;
         var _loc4_:String;
         if((_loc4_ = this.§>t§(param1)) == §`H§.§43§ || _loc4_ == §`H§.§=^§ || _loc4_ == §`H§.§1!h§)
         {
            if((§=!@§.§>!T§.slingshot as §?r§).§^!@§.length <= 0)
            {
               return true;
            }
         }
         if(_loc3_ > 0 || §!!^§.§use§(§3!5§.§-!2§))
         {
            §%K§.§1!J§(this.mUIView,param1,false,true);
            §^!h§.§=D§(this.mUIView);
            (§=!@§.§>!T§ as §-!V§).§!s§.§4-§(_loc4_);
         }
         var _loc5_:Boolean = true;
         if((§=!@§.§>!T§ as §-!V§).§&A§() >= §^N§.§9U§)
         {
            this.§;!`§.reset();
            this.§;!`§.start();
            _loc5_ = false;
         }
         this.§[H§();
         return _loc5_;
      }
      
      private function §=5§(param1:Number) : Boolean
      {
         if(§'m§)
         {
            if(this.§9d§ < 360)
            {
               this.§9d§ += 0.6 * param1;
               if(this.§9d§ > 360)
               {
                  this.§9d§ = 360;
               }
               return true;
            }
            if(this.§9d§ > 360)
            {
               this.§9d§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§9d§ > 0)
            {
               this.§9d§ -= 0.6 * param1;
               if(this.§9d§ < 0)
               {
                  this.§9d§ = 0;
               }
               return true;
            }
            if(this.§9d§ < 0)
            {
               this.§9d§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §#!E§(param1:Number) : Boolean
      {
         if(§'m§)
         {
            this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(true);
            if(this.§@!k§ < this.§[!;§ - 20)
            {
               this.§@!k§ += 0.5 * param1;
               if(this.§@!k§ > this.§[!;§ - 20)
               {
                  this.§@!k§ = this.§[!;§ - 20;
               }
               return true;
            }
            if(this.§@!k§ > this.§[!;§ - 20)
            {
               this.§@!k§ = this.§[!;§ - 20;
               if(this.§@!k§ < this.§[!;§ - 20)
               {
                  this.§@!k§ = this.§[!;§ - 20;
               }
               return true;
            }
         }
         else if(this.§@!k§ > 0)
         {
            this.§@!k§ -= 0.5 * param1;
            if(this.§@!k§ <= 0)
            {
               this.§@!k§ = 0;
               this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
               if((§=!@§.§>!T§ as §-!V§).§&A§() >= §^N§.§9U§)
               {
                  this.mUIView.getItemByName("Container_PowerUpButtons").setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function § A§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§=5§(param1);
         var _loc3_:Boolean = this.§#!E§(param1);
         if(_loc2_)
         {
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStar.rotation = this.§9d§;
            this.mUIView.getItemByName("Button_PowerUpMenuOpenWhole").mClip.MovieClip_PowerUpStarShadow.rotation = this.§9d§;
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§[!;§ - this.§@!k§ - 20,0,this.§[!;§ + 30,this.mUIView.getItemByName("Container_PowerUpButtons").height);
            this.mUIView.getItemByName("Container_PowerUpButtons").mClip.scrollRect = _loc4_;
         }
      }
      
      private function §[H§() : void
      {
         var _loc1_:* = !§!!^§.§use§(§3!5§.§-!2§);
         this.mUIView.getItemByName("TextField_PowerUpCount1").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount1_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount2").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount2_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount3").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount3_BG").setVisibility(_loc1_);
         this.mUIView.getItemByName("TextField_PowerUpCount4").setVisibility(_loc1_);
         this.mUIView.getItemByName("PowerUpCount4_BG").setVisibility(_loc1_);
         this.§0X§("TextField_PowerUpCount1",§`H§.§43§,0);
         this.§0X§("TextField_PowerUpCount2",§`H§.§=^§,1);
         this.§0X§("TextField_PowerUpCount3",§`H§.§1!h§,2);
         this.§0X§("TextField_PowerUpCount4",§`H§.§9!a§,3);
         this.§%!e§();
      }
      
      public function §0X§(param1:String, param2:String, param3:int) : void
      {
         var _loc4_:int = §'!#§.§'!S§.§2v§(param2);
         var _loc5_:String = this.§!!a§(_loc4_);
         this.mUIView.setText(_loc5_,param1);
         var _loc6_:§+!&§;
         var _loc7_:int = (_loc6_ = this.mUIView.getItemByName("PowerUpCount" + (param3 + 1).toString() + "_BG") as §+!&§).mClip.width;
         _loc6_.mClip.scaleX = 1 + (_loc5_.length - 1) / 7;
         var _loc8_:§]!W§ = this.mUIView.getItemByName("TextField_PowerUpCount" + (param3 + 1).toString()) as §]!W§;
         _loc6_.mClip.x = _loc8_.x + _loc8_.width / 2 - _loc6_.mClip.width / 2;
         var _loc9_:Boolean = true;
         if((§=!@§.§>!T§ as §-!V§).§&A§() >= §^N§.§9U§)
         {
            _loc9_ = false;
         }
         if((§=!@§.§>!T§ as §-!V§).§&h§(param2))
         {
            _loc9_ = false;
         }
         this.§?y§("POWERUP" + (param3 + 1),_loc9_);
      }
      
      private function §!!a§(param1:Number) : String
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
      
      private function §[!c§(param1:Event) : void
      {
         this.§[H§();
      }
      
      public function §?y§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:int = §^9§.indexOf(param1);
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
      
      public function get §;o§() : Boolean
      {
         return this.§92§;
      }
      
      public function set §;o§(param1:Boolean) : void
      {
         this.§92§ = param1;
      }
   }
}
