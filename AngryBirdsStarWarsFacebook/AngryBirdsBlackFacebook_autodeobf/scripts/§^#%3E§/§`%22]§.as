package §^#>§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §2"Y§.§"t§;
   import §2"Y§.§'§;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §5t§.§""K§;
   import §7!F§.§>"G§;
   import §7P§.§&#=§;
   import §[R§.b2Vec2;
   
   public class §`"]§
   {
      
      public static const §4"k§:String = "ChannelSlingshot";
      
      public static const §6t§:Number = 900;
      
      public static const §0!p§:Number = 200;
      
      public static const §][§:Number = 200;
      
      public static const §=!n§:Number = 1500;
      
      public static const §<]§:Number = 5000;
      
      public static const §+!I§:Number = 1000;
      
      public static const §-3§:Number = 1000;
      
      public static const §8!M§:Number = 46.25;
      
      public static const §6#a§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §8!+§:Number;
      
      protected var §=!Z§:Number;
      
      protected var §%"D§:Number;
      
      protected var §?T§:Number;
      
      protected var §!0§:Number;
      
      protected var §3`§:Number;
      
      private var §@! §:§'#2§;
      
      protected var §<#W§:Number;
      
      protected var §=![§:Number = 1;
      
      private var §%G§:Sprite;
      
      protected var §]!`§:§>"G§;
      
      private var §,!d§:DisplayObject;
      
      protected var §8"y§:§;x§;
      
      private var §0#J§:Number;
      
      protected var §?!%§:Boolean = false;
      
      private var §="h§:Boolean = false;
      
      protected var §#"=§:Boolean = false;
      
      private var §3!N§:Number;
      
      private var §;#4§:Number = 0;
      
      private var §+P§:Number = 0;
      
      private var §="$§:Number = 0;
      
      private var §%"s§:Number = 1000;
      
      private var §`v§:Number;
      
      private var §`!x§:Number;
      
      private var §>"O§:int;
      
      private var §?"X§:Number = 0;
      
      protected var §@§:Number;
      
      protected var §5"r§:Number;
      
      private var §<",§:Number = 1;
      
      private var §@!V§:Number = 0;
      
      private var §1<§:b2Vec2;
      
      private var §8"2§:Number = 1;
      
      private var §8"!§:§?#^§;
      
      protected var §;B§:§"t§;
      
      protected var §&#O§:Boolean = true;
      
      private var §<#5§:int;
      
      public function §`"]§(param1:§;x§, param2:Sprite, param3:String, param4:§"t§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§;B§ = param4;
         this.§<#5§ = param8;
         this.§8"y§ = param1;
         this.§%G§ = param2;
         this.mName = param3;
         this.§8"!§ = param4.shape;
         this.§@! § = param4.soundResource;
         this.§8!+§ = param5;
         this.§=!Z§ = param6;
         this.§%"D§ = param7 / Math.PI * 180;
         this.§3`§ = this.§%"D§;
         this.§?T§ = param5;
         this.§!0§ = param6;
         this.§?!%§ = false;
         this.§="h§ = false;
         this.§<#W§ = 0;
         this.§;#4§ = 0;
         this.§@§ = 0;
         this.§9!H§();
         this.§"!$§();
      }
      
      public function get §""J§() : int
      {
         return this.§<#5§;
      }
      
      public function dispose() : void
      {
         if(this.§%G§)
         {
            this.§%G§.dispose();
            this.§%G§ = null;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§,!d§)
         {
            this.§,!d§.color = param1;
         }
      }
      
      public function get levelItem() : §"t§
      {
         return this.§;B§;
      }
      
      public function setOnSlingshot(param1:Boolean) : void
      {
         this.§?!%§ = param1;
         if(!this.§8#M§)
         {
            this.§8!+§ = this.§?T§;
            this.§=!Z§ = this.§!0§;
            this.§<#W§ = this.§%"D§;
            this.updateRenderer();
         }
      }
      
      public function set §6<§(param1:Boolean) : void
      {
         this.§&#O§ = param1;
      }
      
      public function get §^"+§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §6#a§;
         }
         return §8!M§;
      }
      
      public function §,!`§(param1:Number) : void
      {
         if(!this.§="h§ || this.§?!%§)
         {
            return;
         }
         if(this.§=![§ != 0)
         {
            this.§="$§ = 0;
            this.§?"X§ = 0;
            this.§<#W§ = 0;
            this.§`!x§ = 0;
            this.§=![§ = 0;
         }
         param1 = Math.min(param1,this.§3!N§);
         this.§8!+§ += param1 * (this.§8"y§.x - this.§8!+§) / this.§3!N§;
         this.§=!Z§ += param1 * (this.§8"y§.y - this.§=!Z§) / this.§3!N§;
         this.§=!Z§ -= param1 / 50 * (this.§3!N§ / §6t§);
         this.§<#W§ += param1 * (360 - this.§<#W§) / this.§3!N§;
         this.§3!N§ -= param1;
         if(this.§3!N§ <= 0)
         {
            this.§8!+§ = this.§8"y§.x;
            this.§=!Z§ = this.§8"y§.y;
            this.§="h§ = false;
            this.setOnSlingshot(true);
            this.§<#W§ = 0;
            this.§%"D§ = this.§8"y§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §,!R§() : void
      {
         this.§="h§ = true;
         this.§3!N§ = §6t§;
         this.§7"7§(§'#2§.§"!>§);
         if(this.§?"X§ != 0)
         {
            this.§=!Z§ += this.§?"X§;
            this.§?"X§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§&#=§ = null;
         if(!this.§?!%§ && this.§@§ >= 0)
         {
            if(this.§5"r§ > this.§8"y§.§-"Z§.§""?§.ground)
            {
               this.applyGravity(this.§8"y§.§-"Z§.§""?§.ground - this.§5"r§);
               this.§@§ = -1;
            }
            this.§@§ -= param1;
            if(this.§@§ <= 0)
            {
               if(this.§="$§ > 0)
               {
                  this.§@§ = this.§="$§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§5"r§))
               {
                  _loc2_ = this.§8"y§.§-"Z§.objects.§4#7§(this.§8!+§,this.§5"r§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§@§ = -1;
                  }
                  else
                  {
                     this.§@§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§8"y§.§-"Z§.objects.getObject(_loc2_) as §&#=§;
                  if(_loc3_ && _loc3_.§=i§)
                  {
                     this.§#"=§ = false;
                     this.§@§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§+"6§())
                  {
                     this.§#"=§ = false;
                     this.§@§ = 2000;
                  }
                  else
                  {
                     this.§@§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§=!Z§ += param1;
         this.§5"r§ += param1;
         if(this.§5"r§ > this.§8"y§.§-"Z§.§""?§.ground)
         {
            param1 = this.§5"r§ - this.§8"y§.§-"Z§.§""?§.ground;
            this.§=!Z§ -= param1;
            this.§5"r§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §9!H§() : void
      {
         var _loc1_:§?#Q§ = null;
         if(this.§8"!§ is §?#Q§)
         {
            _loc1_ = §?#Q§(this.§8"!§);
            this.§1<§ = new b2Vec2(_loc1_.§`!`§.x,_loc1_.§`!`§.y);
            this.§0#J§ = _loc1_.radius;
         }
         else
         {
            this.§1<§ = new b2Vec2(0,0);
            this.§0#J§ = 1.5;
         }
      }
      
      protected function §"!$§() : void
      {
         this.§]!`§ = this.§8"y§.§-"Z§.animationManager.getAnimation(this.mName);
         if(!this.§]!`§)
         {
            this.§ "-§(null);
         }
         else
         {
            this.§!!k§();
         }
      }
      
      public function § "-§(param1:DisplayObject) : void
      {
         this.§,!d§ = param1;
         if(this.§,!d§ && this.§,!d§.parent != this.§%G§)
         {
            this.§%G§.addChild(this.§,!d§);
         }
         if(this.§,!d§)
         {
            this.§,!d§.pivotX -= this.§1<§.x / §#_§.§8]§;
            this.§,!d§.pivotY -= this.§1<§.y / §#_§.§8]§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§="h§)
         {
            this.§="$§ = 0;
            _loc4_ = false;
         }
         if(this.§&#O§)
         {
            this.§-"3§(param1);
            this.§[K§(param1);
            if(_loc4_ && param3)
            {
               this.§<!7§(param1,param2);
            }
         }
      }
      
      public function §-"3§(param1:Number) : void
      {
         if(this.§;#4§ > 0)
         {
            this.§;#4§ -= param1;
            if(this.§;#4§ <= 0)
            {
               this.§;#W§();
            }
         }
         else if(this.§+P§ <= 0 && Math.random() * §=!n§ < param1 && this.§8"y§.mSlingShotState)
         {
            this.§["r§();
         }
      }
      
      public function §;#W§() : void
      {
         this.§;#4§ = 0;
         this.§!!k§();
      }
      
      public function §["r§() : void
      {
         if(!this.§&#O§)
         {
            return;
         }
         this.§;#4§ = §0!p§;
         this.§7#%§();
      }
      
      protected function §7#%§() : void
      {
         this.§ "-§(this.§]!`§.getSubAnimation("blink").getFrame(0,this.§,!d§));
      }
      
      public function §[K§(param1:Number) : void
      {
         if(this.§+P§ > 0)
         {
            this.§+P§ -= param1;
            if(this.§+P§ <= 0)
            {
               this.§9!f§();
            }
         }
         else if(this.§;#4§ <= 0 && Math.random() * §<]§ < param1)
         {
            this.§7"7§();
         }
      }
      
      public function §9!f§() : void
      {
         this.§+P§ = 0;
         this.§!!k§();
      }
      
      protected function §!!k§() : void
      {
         this.§ "-§(this.§]!`§.getFrame(0,this.§,!d§));
      }
      
      public function §7"7§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§&#O§)
         {
            return;
         }
         if(this.§+P§ > 0)
         {
            this.§9!f§();
         }
         if(this.§;#4§ > 0)
         {
            this.§;#W§();
         }
         if(param1 < 0)
         {
            param1 = §'#2§.§<T§;
         }
         this.§+P§ = §][§;
         this.§;j§();
         if(this.§?!%§ || this.§="h§ || param2)
         {
            §&#=§.§4!#§(param1,this.§@! §);
         }
         else
         {
            §&#=§.§4!#§(param1,this.§@! §,§4"k§);
         }
      }
      
      protected function §;j§() : void
      {
         this.§ "-§(this.§]!`§.getSubAnimation("yell").getFrame(0,this.§,!d§));
      }
      
      public function §<!7§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§="$§ > 0)
         {
            this.§="$§ -= param1;
            if(this.§="$§ <= 0)
            {
               ++this.§>"O§;
               this.§`!x§ *= 0.4;
               if(!this.§?!%§ && this.§>"O§ < 2)
               {
                  if(this.§>"O§ > 1 && this.§`!x§ < -1)
                  {
                     this.§`!x§ = -1;
                  }
                  this.§`v§ = this.§`!x§;
                  this.§="$§ = §-3§;
                  this.§="$§ *= Math.abs(this.§`v§) / 2;
                  this.§%"s§ = this.§="$§;
                  this.§<#W§ = 0;
                  this.§=![§ = 0;
               }
               else if(!this.§?!%§ && param2)
               {
                  this.§?!m§(1.5);
               }
               else
               {
                  this.§="$§ = 0;
                  this.§?"X§ = 0;
                  this.§<#W§ = 0;
                  this.§`!x§ = 0;
               }
            }
            else
            {
               if(this.§="$§ >= this.§%"s§ / 2)
               {
                  _loc3_ = (this.§%"s§ - this.§="$§) / (this.§%"s§ / 2);
                  _loc3_ = §""K§.§,#K§(_loc3_);
                  this.§?"X§ = _loc3_ * this.§`v§;
               }
               else
               {
                  _loc3_ = (this.§%"s§ / 2 - this.§="$§) / (this.§%"s§ / 2);
                  _loc3_ = §""K§.§,#K§(_loc3_,false);
                  this.§?"X§ = this.§`v§ + _loc3_ * -this.§`v§;
               }
               this.§<#W§ = 360 * §""K§.§,#K§((this.§%"s§ - this.§="$§) / this.§%"s§) * this.§=![§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §+!I§ < param1 && !this.§?!%§ && !this.§="h§ && !this.§#"=§)
         {
            this.§?!m§();
         }
      }
      
      public function §?!m§(param1:Number = 1) : void
      {
         if(!this.§&#O§)
         {
            return;
         }
         this.§>"O§ = 0;
         this.§="$§ = §-3§;
         this.§?"X§ = 0;
         this.§`v§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§`!x§ = this.§`v§;
         this.§="$§ *= Math.abs(this.§`v§) / 3;
         this.§%"s§ = this.§="$§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§=![§ = 0;
         }
         else if(this.§="$§ < 350)
         {
            this.§=![§ = 0;
         }
         else
         {
            this.§=![§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§=![§ = Math.random() > 0.5 ? Number(this.§=![§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§8"y§.§]`§)
         {
            this.§%G§.x = this.§8!+§ / §#_§.§8]§;
            this.§%G§.y = (this.§=!Z§ + this.§?"X§) / §#_§.§8]§;
         }
         else
         {
            this.§%G§.x = (this.§8!+§ + this.§?"X§ * Math.cos((this.§%"D§ + 90) / 180 * Math.PI)) / §#_§.§8]§;
            this.§%G§.y = (this.§=!Z§ + this.§?"X§ * Math.sin((this.§%"D§ + 90) / 180 * Math.PI)) / §#_§.§8]§;
         }
         this.§%G§.rotation = (this.§<#W§ + this.§%"D§) / 180 * Math.PI;
      }
      
      public function fallFromSlingshot() : void
      {
         this.§#"=§ = true;
         this.§?!%§ = false;
         this.§="h§ = false;
         this.§>"O§ = 0;
         this.§@§ = 0;
         this.§="$§ = 0;
         this.§="$§ = 0;
         this.§?"X§ = 0;
         this.§<#W§ = 0;
         this.§`!x§ = 0;
         this.§=![§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§8!+§) * (param1 - this.§8!+§) + (param2 - this.§=!Z§) * (param2 - this.§=!Z§));
         if(_loc3_ <= this.§0#J§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§8!+§ >= param3 && this.§8!+§ <= param4 && this.§=!Z§ >= param1 && this.§=!Z§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§8!+§ != param1 || this.§=!Z§ != param2)
         {
            _loc4_ = true;
         }
         this.§8!+§ = param1;
         this.§=!Z§ = param2;
         this.§<#W§ = param3;
         this.§@§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§8"y§.sortBirds();
         }
      }
      
      public function get §8!7§() : Number
      {
         return this.§="$§;
      }
      
      public function get §%!2§() : Number
      {
         return this.§@§;
      }
      
      public function set §%!2§(param1:Number) : void
      {
         this.§@§ = param1;
      }
      
      public function get §<z§() : Number
      {
         return this.§<",§;
      }
      
      public function get §8#M§() : Boolean
      {
         return this.§?!%§;
      }
      
      public function get radius() : Number
      {
         return this.§0#J§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §<z§(param1:Number) : void
      {
         this.§<",§ = param1;
      }
      
      public function get §&"D§() : Number
      {
         return this.§@!V§;
      }
      
      public function set §&"D§(param1:Number) : void
      {
         this.§@!V§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§8"2§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§8!+§;
      }
      
      public function get y() : Number
      {
         return this.§=!Z§;
      }
      
      public function get §,r§() : Number
      {
         return this.§?T§;
      }
      
      public function get §for §() : Number
      {
         return this.§!0§;
      }
   }
}
