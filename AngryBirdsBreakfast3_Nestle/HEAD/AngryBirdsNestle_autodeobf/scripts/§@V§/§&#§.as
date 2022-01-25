package §@V§
{
   import §%8§.§%!S§;
   import §%8§.§89§;
   import §%8§.§@-§;
   import §%8§.§[_§;
   import §24§.§,"2§;
   import §2`§.§;!Q§;
   import §3!J§.DisplayObject;
   import §3!J§.Sprite;
   import §@!"§.§@_§;
   import §@!E§.b2Vec2;
   
   public class §&#§
   {
      
      public static const §+H§:String = "ChannelSlingshot";
      
      public static const §5!,§:Number = 900;
      
      public static const §@""§:Number = 200;
      
      public static const §4"0§:Number = 200;
      
      public static const §=!O§:Number = 1500;
      
      public static const §^8§:Number = 5000;
      
      public static const §9x§:Number = 1000;
      
      public static const §9X§:Number = 1000;
      
      public static const § !f§:Number = 46.25;
      
      public static const §;!t§:Number = 52.5;
       
      
      protected var mName:String;
      
      protected var §]!B§:Number;
      
      protected var §9=§:Number;
      
      protected var §4!G§:Number;
      
      protected var § n§:Number;
      
      protected var §#"&§:Number;
      
      protected var §'!U§:Number;
      
      private var §+>§:§89§;
      
      protected var §0!-§:Number;
      
      protected var §`!Y§:Number = 1;
      
      private var §&%§:Sprite;
      
      private var §]3§:Sprite;
      
      protected var §@!5§:§;!Q§;
      
      private var §"G§:DisplayObject;
      
      protected var §<V§:§0"§;
      
      private var §,Z§:Number;
      
      protected var §9!`§:Boolean = false;
      
      private var §+!<§:Boolean = false;
      
      protected var §;!d§:Boolean = false;
      
      private var §?!L§:Number;
      
      private var §]"&§:Number = 0;
      
      private var §+e§:Number = 0;
      
      private var §4L§:Number = 0;
      
      private var §2!h§:Number = 1000;
      
      private var §'H§:Number;
      
      private var §&!G§:Number;
      
      private var §4!_§:int;
      
      private var §;!U§:Number = 0;
      
      protected var §3I§:Number;
      
      protected var §3"5§:Number;
      
      private var §2!O§:Number = 1;
      
      private var §0R§:Number = 0;
      
      private var § "1§:b2Vec2;
      
      private var §2c§:Number = 1;
      
      private var §3![§:§[_§;
      
      protected var §93§:§@-§;
      
      protected var §6!e§:Boolean = true;
      
      private var §8!s§:int;
      
      public function §&#§(param1:§0"§, param2:Sprite, param3:String, param4:§@-§, param5:Number, param6:Number, param7:Number, param8:int)
      {
         super();
         this.§93§ = param4;
         this.§8!s§ = param8;
         this.§<V§ = param1;
         this.§&%§ = param2;
         this.mName = param3;
         this.§3![§ = param4.shape;
         this.§+>§ = param4.soundResource;
         this.§]!B§ = param5;
         this.§9=§ = param6;
         this.§4!G§ = param7 / Math.PI * 180;
         this.§'!U§ = this.§4!G§;
         this.§ n§ = param5;
         this.§#"&§ = param6;
         this.§9!`§ = false;
         this.§+!<§ = false;
         this.§0!-§ = 0;
         this.§]"&§ = 0;
         this.§3I§ = 0;
         this.§%=§();
         this.§,&§();
      }
      
      public function get launchIndex() : int
      {
         return this.§8!s§;
      }
      
      public function set launchIndex(param1:int) : void
      {
         this.§8!s§ = param1;
      }
      
      public function get §]![§() : Sprite
      {
         return this.§]3§;
      }
      
      public function dispose() : void
      {
         if(this.§&%§)
         {
            this.§&%§.dispose();
            this.§&%§ = null;
         }
         if(this.§]3§)
         {
            this.§]3§.dispose();
            this.§]3§ = null;
         }
      }
      
      public function §^"6§() : void
      {
         if(!this.§]3§)
         {
            this.§]3§ = new Sprite();
            this.§]![§.x = this.§&%§.x;
            this.§]![§.y = this.§&%§.y;
            this.§]![§.rotation = this.§&%§.rotation;
         }
      }
      
      public function set color(param1:uint) : void
      {
         if(this.§"G§)
         {
            this.§"G§.color = param1;
         }
      }
      
      public function get levelItem() : §@-§
      {
         return this.§93§;
      }
      
      public function §8!7§(param1:Boolean) : void
      {
         this.§9!`§ = param1;
         if(!this.§&a§)
         {
            this.§]!B§ = this.§ n§;
            this.§9=§ = this.§#"&§;
            this.§0!-§ = this.§4!G§;
            this.updateRenderer();
         }
      }
      
      public function set §??§(param1:Boolean) : void
      {
         this.§6!e§ = param1;
      }
      
      public function get §+!4§() : Number
      {
         if(this.name.toUpperCase() == "BIRD_GREEN")
         {
            return §;!t§;
         }
         return § !f§;
      }
      
      public function §<h§(param1:Number) : void
      {
         if(!this.§+!<§ || this.§9!`§)
         {
            return;
         }
         if(this.§`!Y§ != 0)
         {
            this.§4L§ = 0;
            this.§;!U§ = 0;
            this.§0!-§ = 0;
            this.§&!G§ = 0;
            this.§`!Y§ = 0;
         }
         param1 = Math.min(param1,this.§?!L§);
         this.§]!B§ += param1 * (this.§<V§.x - this.§]!B§) / this.§?!L§;
         this.§9=§ += param1 * (this.§<V§.y - this.§9=§) / this.§?!L§;
         this.§9=§ -= param1 / 50 * (this.§?!L§ / §5!,§);
         this.§0!-§ += param1 * (360 - this.§0!-§) / this.§?!L§;
         this.§?!L§ -= param1;
         if(this.§?!L§ <= 0)
         {
            this.§]!B§ = this.§<V§.x;
            this.§9=§ = this.§<V§.y;
            this.§+!<§ = false;
            this.§8!7§(true);
            this.§0!-§ = 0;
            this.§4!G§ = this.§<V§.angle / Math.PI * 180;
         }
         this.updateRenderer();
      }
      
      public function §#!'§() : void
      {
         this.§+!<§ = true;
         this.§?!L§ = §5!,§;
         this.§=+§(§89§.§^V§);
         if(this.§;!U§ != 0)
         {
            this.§9=§ += this.§;!U§;
            this.§;!U§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:§@_§ = null;
         if(!this.§9!`§ && this.§3I§ >= 0)
         {
            if(this.§3"5§ > this.§<V§.§;c§.§];§.ground)
            {
               this.applyGravity(this.§<V§.§;c§.§];§.ground - this.§3"5§);
               this.§3I§ = -1;
            }
            this.§3I§ -= param1;
            if(this.§3I§ <= 0)
            {
               if(this.§4L§ > 0)
               {
                  this.§3I§ = this.§4L§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§3"5§))
               {
                  _loc2_ = this.§<V§.§;c§.objects.§?!_§(this.§]!B§,this.§3"5§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§3I§ = -1;
                  }
                  else
                  {
                     this.§3I§ = 0;
                  }
               }
               else
               {
                  _loc3_ = this.§<V§.§;c§.objects.getObject(_loc2_) as §@_§;
                  if(_loc3_ && _loc3_.§1"+§)
                  {
                     this.§;!d§ = false;
                     this.§3I§ = -1;
                  }
                  else if(_loc3_ && _loc3_.§!'§())
                  {
                     this.§;!d§ = false;
                     this.§3I§ = 2000;
                  }
                  else
                  {
                     this.§3I§ = 500;
                  }
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§9=§ += param1;
         this.§3"5§ += param1;
         if(this.§3"5§ > this.§<V§.§;c§.§];§.ground)
         {
            param1 = this.§3"5§ - this.§<V§.§;c§.§];§.ground;
            this.§9=§ -= param1;
            this.§3"5§ -= param1;
            this.updateRenderer();
            return true;
         }
         this.updateRenderer();
         return false;
      }
      
      protected function §%=§() : void
      {
         var _loc1_:§%!S§ = null;
         if(this.§3![§ is §%!S§)
         {
            _loc1_ = §%!S§(this.§3![§);
            this.§ "1§ = new b2Vec2(_loc1_.§-x§.x,_loc1_.§-x§.y);
            this.§,Z§ = _loc1_.radius;
         }
         else
         {
            this.§ "1§ = new b2Vec2(0,0);
            this.§,Z§ = 1.5;
         }
      }
      
      protected function §,&§() : void
      {
         this.§@!5§ = this.§<V§.§;c§.§13§.§6"%§(this.mName);
         if(!this.§@!5§)
         {
            this.§^"5§(null);
         }
         else
         {
            this.§;!e§();
         }
      }
      
      public function §^"5§(param1:DisplayObject) : void
      {
         this.§"G§ = param1;
         if(this.§"G§ && this.§"G§.parent != this.§&%§)
         {
            this.§&%§.addChild(this.§"G§);
         }
         if(this.§"G§)
         {
            this.§"G§.pivotX -= this.§ "1§.x / §#=§.§^!2§;
            this.§"G§.pivotY -= this.§ "1§.y / §#=§.§^!2§;
         }
         this.updateRenderer();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§+!<§)
         {
            this.§4L§ = 0;
            _loc4_ = false;
         }
         if(this.§6!e§)
         {
            this.§'!m§(param1);
            this.§<O§(param1);
            if(_loc4_ && param3)
            {
               this.§'!J§(param1,param2);
            }
         }
      }
      
      public function §'!m§(param1:Number) : void
      {
         if(this.§]"&§ > 0)
         {
            this.§]"&§ -= param1;
            if(this.§]"&§ <= 0)
            {
               this.§!!#§();
            }
         }
         else if(this.§+e§ <= 0 && Math.random() * §=!O§ < param1 && this.§<V§.mSlingShotState)
         {
            this.§'!S§();
         }
      }
      
      public function §!!#§() : void
      {
         this.§]"&§ = 0;
         this.§;!e§();
      }
      
      public function §'!S§() : void
      {
         if(!this.§6!e§)
         {
            return;
         }
         this.§]"&§ = §@""§;
         this.§1i§();
      }
      
      protected function §1i§() : void
      {
         this.§^"5§(this.§@!5§.getSubAnimation("blink").getFrame(0,this.§"G§));
      }
      
      public function §<O§(param1:Number) : void
      {
         if(this.§+e§ > 0)
         {
            this.§+e§ -= param1;
            if(this.§+e§ <= 0)
            {
               this.§'"-§();
            }
         }
         else if(this.§]"&§ <= 0 && Math.random() * §^8§ < param1)
         {
            this.§=+§();
         }
      }
      
      public function §'"-§() : void
      {
         this.§+e§ = 0;
         this.§;!e§();
      }
      
      protected function §;!e§() : void
      {
         this.§^"5§(this.§@!5§.getFrame(0,this.§"G§));
      }
      
      public function §=+§(param1:int = -1, param2:Boolean = false) : void
      {
         if(!this.§6!e§)
         {
            return;
         }
         if(this.§+e§ > 0)
         {
            this.§'"-§();
         }
         if(this.§]"&§ > 0)
         {
            this.§!!#§();
         }
         if(param1 < 0)
         {
            param1 = §89§.§8!0§;
         }
         this.§+e§ = §4"0§;
         this.§]Y§();
         if(this.§9!`§ || this.§+!<§ || param2)
         {
            §@_§.§>!z§(param1,this.§+>§);
         }
         else
         {
            §@_§.§>!z§(param1,this.§+>§,§+H§);
         }
      }
      
      protected function §]Y§() : void
      {
         this.§^"5§(this.§@!5§.getSubAnimation("yell").getFrame(0,this.§"G§));
      }
      
      public function §'!J§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4L§ > 0)
         {
            this.§4L§ -= param1;
            if(this.§4L§ <= 0)
            {
               ++this.§4!_§;
               this.§&!G§ *= 0.4;
               if(!this.§9!`§ && this.§4!_§ < 2)
               {
                  if(this.§4!_§ > 1 && this.§&!G§ < -1)
                  {
                     this.§&!G§ = -1;
                  }
                  this.§'H§ = this.§&!G§;
                  this.§4L§ = §9X§;
                  this.§4L§ *= Math.abs(this.§'H§) / 2;
                  this.§2!h§ = this.§4L§;
                  this.§0!-§ = 0;
                  this.§`!Y§ = 0;
               }
               else if(!this.§9!`§ && param2)
               {
                  this.§0!O§(1.5);
               }
               else
               {
                  this.§4L§ = 0;
                  this.§;!U§ = 0;
                  this.§0!-§ = 0;
                  this.§&!G§ = 0;
               }
            }
            else
            {
               if(this.§4L§ >= this.§2!h§ / 2)
               {
                  _loc3_ = (this.§2!h§ - this.§4L§) / (this.§2!h§ / 2);
                  _loc3_ = §,"2§.§+!u§(_loc3_);
                  this.§;!U§ = _loc3_ * this.§'H§;
               }
               else
               {
                  _loc3_ = (this.§2!h§ / 2 - this.§4L§) / (this.§2!h§ / 2);
                  _loc3_ = §,"2§.§+!u§(_loc3_,false);
                  this.§;!U§ = this.§'H§ + _loc3_ * -this.§'H§;
               }
               this.§0!-§ = 360 * §,"2§.§+!u§((this.§2!h§ - this.§4L§) / this.§2!h§) * this.§`!Y§;
            }
            this.updateRenderer();
         }
         else if(Math.random() * §9x§ < param1 && !this.§9!`§ && !this.§+!<§ && !this.§;!d§)
         {
            this.§0!O§();
         }
      }
      
      public function §0!O§(param1:Number = 1) : void
      {
         if(!this.§6!e§)
         {
            return;
         }
         this.§4!_§ = 0;
         this.§4L§ = §9X§;
         this.§;!U§ = 0;
         this.§'H§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§&!G§ = this.§'H§;
         this.§4L§ *= Math.abs(this.§'H§) / 3;
         this.§2!h§ = this.§4L§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§`!Y§ = 0;
         }
         else if(this.§4L§ < 350)
         {
            this.§`!Y§ = 0;
         }
         else
         {
            this.§`!Y§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§`!Y§ = Math.random() > 0.5 ? Number(this.§`!Y§) : Number(0);
         }
      }
      
      public function updateRenderer() : void
      {
         if(this.§<V§.§2"1§)
         {
            this.§&%§.x = this.§]!B§ / §#=§.§^!2§;
            this.§&%§.y = (this.§9=§ + this.§;!U§) / §#=§.§^!2§;
         }
         else
         {
            this.§&%§.x = (this.§]!B§ + this.§;!U§ * Math.cos((this.§4!G§ + 90) / 180 * Math.PI)) / §#=§.§^!2§;
            this.§&%§.y = (this.§9=§ + this.§;!U§ * Math.sin((this.§4!G§ + 90) / 180 * Math.PI)) / §#=§.§^!2§;
         }
         if(this.§<V§.§0j§)
         {
            this.§&%§.rotation = (this.§0!-§ + this.§4!G§) / 180 * Math.PI;
         }
         if(this.§]![§)
         {
            this.§]![§.x = this.§&%§.x;
            this.§]![§.y = this.§&%§.y;
            this.§]![§.rotation = this.§&%§.rotation;
         }
      }
      
      public function §^!k§() : void
      {
         this.§;!d§ = true;
         this.§9!`§ = false;
         this.§+!<§ = false;
         this.§4!_§ = 0;
         this.§3I§ = 0;
         this.§4L§ = 0;
         this.§4L§ = 0;
         this.§;!U§ = 0;
         this.§0!-§ = 0;
         this.§&!G§ = 0;
         this.§`!Y§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§]!B§) * (param1 - this.§]!B§) + (param2 - this.§9=§) * (param2 - this.§9=§));
         if(_loc3_ <= this.§,Z§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§]!B§ >= param3 && this.§]!B§ <= param4 && this.§9=§ >= param1 && this.§9=§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = 0.0) : void
      {
         var _loc4_:Boolean = false;
         if(this.§]!B§ != param1 || this.§9=§ != param2)
         {
            _loc4_ = true;
         }
         this.§]!B§ = param1;
         this.§9=§ = param2;
         this.§0!-§ = param3;
         this.§3I§ = 100;
         this.updateRenderer();
         if(_loc4_)
         {
            this.§<V§.§`#§();
         }
      }
      
      public function get §]k§() : Number
      {
         return this.§4L§;
      }
      
      public function get §]!j§() : Number
      {
         return this.§3I§;
      }
      
      public function set §]!j§(param1:Number) : void
      {
         this.§3I§ = param1;
      }
      
      public function get §3!G§() : Number
      {
         return this.§2!O§;
      }
      
      public function get §&a§() : Boolean
      {
         return this.§9!`§;
      }
      
      public function get radius() : Number
      {
         return this.§,Z§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&%§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §3!G§(param1:Number) : void
      {
         this.§2!O§ = param1;
      }
      
      public function get §,!P§() : Number
      {
         return this.§0R§;
      }
      
      public function set §,!P§(param1:Number) : void
      {
         this.§0R§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§2c§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§9=§;
      }
      
      public function get §"!a§() : Number
      {
         return this.§ n§;
      }
      
      public function get §<"&§() : Number
      {
         return this.§#"&§;
      }
   }
}
