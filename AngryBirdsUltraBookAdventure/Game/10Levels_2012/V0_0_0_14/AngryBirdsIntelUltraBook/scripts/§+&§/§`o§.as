package §+&§
{
   import §!!9§.Texture;
   import §,6§.§5z§;
   import §,6§.§^!>§;
   import §6z§.§4!u§;
   import §8>§.b2Vec2;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import §>o§.§'y§;
   import §>o§.§+!4§;
   import §>o§.§0!N§;
   import §]![§.§4!H§;
   
   public class §`o§
   {
      
      public static const §7!4§:String = "ChannelSlingshot";
      
      public static const § each§:Number = 900;
      
      public static const §1!W§:Number = 200;
      
      public static const §<l§:Number = 200;
      
      public static const §1!%§:Number = 1500;
      
      public static const §0!s§:Number = 5000;
      
      public static const §1!m§:Number = 1000;
      
      public static const §0!S§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §;!@§:Number;
      
      protected var §3L§:Number;
      
      protected var §1§:Number;
      
      protected var §=^§:Number;
      
      private var §]W§:§'y§;
      
      protected var §3!f§:Number;
      
      protected var §"Q§:Number = 1;
      
      private var §8!9§:Sprite;
      
      protected var §?I§:§^!>§;
      
      private var §[!!§:§;!U§;
      
      protected var §&Q§:§ R§;
      
      private var §!!C§:Number;
      
      private var §-G§:Boolean = false;
      
      private var §6!c§:Boolean = false;
      
      protected var §[m§:Boolean = false;
      
      private var §!6§:Number;
      
      private var §9i§:Number = 0;
      
      private var §%$§:Number = 0;
      
      private var §`%§:Number = 0;
      
      private var § ]§:Number = 1000;
      
      private var §!`§:Number;
      
      private var §"M§:Number;
      
      private var §6-§:int;
      
      private var §';§:Number = 0;
      
      protected var §6!`§:Number;
      
      protected var §=!>§:Number;
      
      private var §-!9§:Number = 1;
      
      private var §]I§:Number = 0;
      
      private var §%V§:b2Vec2;
      
      private var §!+§:Number = 1;
      
      public function §`o§(param1:§ R§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§&Q§ = param1;
         this.§8!9§ = param2;
         this.mName = param3;
         this.§]W§ = §+!4§.§ !`§(this.mName).§8!p§;
         this.§;!@§ = param4;
         this.§3L§ = param5;
         this.§1§ = param4;
         this.§=^§ = param5;
         this.§3!f§ = 0;
         this.§-G§ = false;
         this.§6!c§ = false;
         this.§9i§ = 0;
         this.§7!2§();
         this.§6!`§ = 0;
      }
      
      public function §0!M§() : void
      {
         this.§-G§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§8!9§)
         {
            this.§8!9§.dispose();
            this.§8!9§ = null;
         }
      }
      
      public function §`f§(param1:Number) : void
      {
         if(!this.§6!c§ || this.§-G§)
         {
            return;
         }
         if(this.§"Q§ != 0)
         {
            this.§`%§ = 0;
            this.§';§ = 0;
            this.§3!f§ = 0;
            this.§"M§ = 0;
            this.§"Q§ = 0;
         }
         param1 = Math.min(param1,this.§!6§);
         this.§;!@§ += param1 * (this.§&Q§.§;!@§ - this.§;!@§) / this.§!6§;
         this.§3L§ += param1 * (this.§&Q§.§3L§ - this.§3L§) / this.§!6§;
         this.§3L§ -= param1 / 50 * (this.§!6§ / § each§);
         this.§3!f§ += param1 * (360 - this.§3!f§) / this.§!6§;
         this.§!6§ -= param1;
         if(this.§!6§ <= 0)
         {
            this.§;!@§ = this.§&Q§.§;!@§;
            this.§3L§ = this.§&Q§.§3L§;
            this.§6!c§ = false;
            this.§-G§ = true;
            this.§3!f§ = 0;
         }
         this.§ a§();
      }
      
      public function §'?§() : void
      {
         this.§6!c§ = true;
         this.§!6§ = § each§;
         this.§=!2§(§'y§.§#!8§);
         if(this.§';§ != 0)
         {
            this.§3L§ += this.§';§;
            this.§';§ = 0;
         }
      }
      
      public function §<!w§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§-G§ && this.§6!`§ >= 0)
         {
            if(this.§=!>§ > this.§&Q§.§+!X§.§<!x§.§;2§)
            {
               this.§#!l§(this.§&Q§.§+!X§.§<!x§.§;2§ - this.§=!>§);
               this.§6!`§ = -1;
            }
            this.§6!`§ -= param1;
            if(this.§6!`§ <= 0)
            {
               if(this.§`%§ > 0)
               {
                  this.§6!`§ = this.§`%§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§=!>§))
               {
                  _loc2_ = this.§&Q§.§+!X§.objects.§&8§(this.§;!@§,this.§=!>§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§#!l§(param1 / 100))
                  {
                     this.§6!`§ = -1;
                  }
                  else
                  {
                     this.§6!`§ = 0;
                  }
               }
               else if(!this.§&Q§.§+!X§.objects.§^k§(_loc2_).§ !§)
               {
                  this.§[m§ = false;
                  this.§6!`§ = -1;
               }
               else if(this.§&Q§.§+!X§.objects.§^k§(_loc2_).§;!3§())
               {
                  this.§[m§ = false;
                  this.§6!`§ = 2000;
               }
               else
               {
                  this.§6!`§ = 500;
               }
            }
         }
      }
      
      public function §#!l§(param1:Number) : Boolean
      {
         this.§3L§ += param1;
         this.§=!>§ += param1;
         if(this.§=!>§ > this.§&Q§.§+!X§.§<!x§.§;2§)
         {
            param1 = this.§=!>§ - this.§&Q§.§+!X§.§<!x§.§;2§;
            this.§3L§ -= param1;
            this.§=!>§ -= param1;
            this.§ a§();
            return true;
         }
         this.§ a§();
         return false;
      }
      
      public function §7!2§() : void
      {
         var _loc1_:§0!N§ = §+!4§.§ !`§(this.mName).shape;
         if(_loc1_.§>1§() == §0!N§.§0M§)
         {
            this.§%V§ = _loc1_.§9K§()[0];
            this.§!!C§ = _loc1_.§>!D§;
         }
         else if(_loc1_.§>1§() == §0!N§.§#!`§)
         {
            this.§%V§ = new b2Vec2(0,0);
            this.§!!C§ = 1.5;
         }
         this.§?I§ = this.§&Q§.§+!X§.animationManager.getAnimation(this.mName);
         if(!this.§?I§)
         {
            this.§<U§(null);
         }
         else
         {
            this.§<U§(this.§?I§.getFrame(0));
         }
      }
      
      public function §<U§(param1:§5z§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§&Q§.§,!i§.textureManager.§80§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§[!!§ == null)
         {
            this.§[!!§ = new §;!U§(_loc2_);
            this.§8!9§.addChild(this.§[!!§);
         }
         else
         {
            this.§[!!§.texture = _loc2_;
         }
         if(param1)
         {
            this.§[!!§.x = -param1.pivotX - this.§%V§.x / §-!7§.§8!r§;
            this.§[!!§.y = -param1.pivotY - this.§%V§.y / §-!7§.§8!r§;
         }
         else
         {
            this.§[!!§.x = -this.§[!!§.width / 2;
            this.§[!!§.y = -this.§[!!§.height / 2;
         }
         this.§[!!§.scaleX = _loc3_;
         this.§[!!§.scaleY = _loc3_;
         this.§ a§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§<!w§(param1);
         if(this.§6!c§)
         {
            this.§`%§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§=D§(param1);
            this.§[!@§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§[C§(param1,param2);
            }
         }
      }
      
      public function §=D§(param1:Number) : void
      {
         if(this.§9i§ > 0)
         {
            this.§9i§ -= param1;
            if(this.§9i§ <= 0)
            {
               this.§'k§();
            }
         }
         else if(this.§%$§ <= 0 && Math.random() * §1!%§ < param1 && this.§&Q§.mSlingShotState)
         {
            this.§%!%§();
         }
      }
      
      public function §'k§() : void
      {
         this.§9i§ = 0;
         this.§<U§(this.§?I§.getFrame(0));
      }
      
      public function §%!%§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§9i§ = §1!W§;
         this.§<U§(this.§?I§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §[!@§(param1:Number) : void
      {
         if(this.§%$§ > 0)
         {
            this.§%$§ -= param1;
            if(this.§%$§ <= 0)
            {
               this.§"!I§();
            }
         }
         else if(this.§9i§ <= 0 && Math.random() * §0!s§ < param1)
         {
            this.§=!2§();
         }
      }
      
      public function §"!I§() : void
      {
         this.§%$§ = 0;
         this.§<U§(this.§?I§.getFrame(0));
      }
      
      public function §=!2§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§%$§ > 0)
         {
            this.§"!I§();
         }
         if(this.§9i§ > 0)
         {
            this.§'k§();
         }
         if(param1 < 0)
         {
            param1 = §'y§.§<!H§;
         }
         this.§%$§ = §<l§;
         this.§<U§(this.§?I§.getSubAnimation("yell").getFrame(0));
         if(this.§-G§ || this.§6!c§ || param2)
         {
            §4!H§.§@,§(param1,this.§]W§);
         }
         else
         {
            §4!H§.§@,§(param1,this.§]W§,§7!4§);
         }
      }
      
      public function §[C§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§`%§ > 0)
         {
            this.§`%§ -= param1;
            if(this.§`%§ <= 0)
            {
               ++this.§6-§;
               this.§"M§ *= 0.4;
               if(!this.§-G§ && this.§6-§ < 2)
               {
                  if(this.§6-§ > 1 && this.§"M§ < -1)
                  {
                     this.§"M§ = -1;
                  }
                  this.§!`§ = this.§"M§;
                  this.§`%§ = §0!S§;
                  this.§`%§ *= Math.abs(this.§!`§) / 2;
                  this.§ ]§ = this.§`%§;
                  this.§3!f§ = 0;
                  this.§"Q§ = 0;
               }
               else if(!this.§-G§ && param2)
               {
                  this.§-!W§(2.25);
               }
               else
               {
                  this.§`%§ = 0;
                  this.§';§ = 0;
                  this.§3!f§ = 0;
                  this.§"M§ = 0;
               }
            }
            else
            {
               if(this.§`%§ >= this.§ ]§ / 2)
               {
                  _loc3_ = (this.§ ]§ - this.§`%§) / (this.§ ]§ / 2);
                  _loc3_ = §4!u§.§4!W§(_loc3_);
                  this.§';§ = _loc3_ * this.§!`§;
               }
               else
               {
                  _loc3_ = (this.§ ]§ / 2 - this.§`%§) / (this.§ ]§ / 2);
                  _loc3_ = §4!u§.§4!W§(_loc3_,false);
                  this.§';§ = this.§!`§ + _loc3_ * -this.§!`§;
               }
               this.§3!f§ = 360 * §4!u§.§4!W§((this.§ ]§ - this.§`%§) / this.§ ]§) * this.§"Q§;
            }
            this.§ a§();
         }
         else if(Math.random() * §1!m§ < param1 && !this.§-G§ && !this.§6!c§ && !this.§[m§)
         {
            this.§-!W§();
         }
      }
      
      public function §-!W§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§6-§ = 0;
         this.§`%§ = §0!S§;
         this.§';§ = 0;
         this.§!`§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§"M§ = this.§!`§;
         this.§`%§ *= Math.abs(this.§!`§) / 3;
         this.§ ]§ = this.§`%§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§"Q§ = 0;
         }
         else if(this.§`%§ < 350)
         {
            this.§"Q§ = 0;
         }
         else
         {
            this.§"Q§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§"Q§ = Math.random() > 0.5 ? Number(this.§"Q§) : Number(0);
         }
      }
      
      public function § a§() : void
      {
         this.§8!9§.x = this.§;!@§ / §-!7§.§8!r§;
         this.§8!9§.y = (this.§3L§ + this.§';§) / §-!7§.§8!r§;
         this.§8!9§.rotation = this.§3!f§ / 180 * Math.PI;
      }
      
      public function § !V§() : void
      {
         this.§[m§ = true;
         this.§-G§ = false;
         this.§6!c§ = false;
         this.§6-§ = 0;
         this.§6!`§ = 0;
         this.§`%§ = 0;
         this.§`%§ = 0;
         this.§';§ = 0;
         this.§3!f§ = 0;
         this.§"M§ = 0;
         this.§"Q§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§;!@§) * (param1 - this.§;!@§) + (param2 - this.§3L§) * (param2 - this.§3L§));
         if(_loc3_ <= this.§!!C§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§;!@§ >= param3 && this.§;!@§ <= param4 && this.§3L§ >= param1 && this.§3L§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§;!@§ != param1 || this.§3L§ != param2)
         {
            _loc3_ = true;
         }
         this.§;!@§ = param1;
         this.§3L§ = param2;
         this.§6!`§ = 100;
         this.§ a§();
         if(_loc3_)
         {
            this.§&Q§.§#!3§();
         }
      }
      
      public function §1f§() : §;!U§
      {
         return this.§[!!§;
      }
      
      public function get §5!?§() : Number
      {
         return this.§`%§;
      }
      
      public function get §`!a§() : Number
      {
         return this.§6!`§;
      }
      
      public function set §`!a§(param1:Number) : void
      {
         this.§6!`§ = param1;
      }
      
      public function get §1'§() : Number
      {
         return this.§-!9§;
      }
      
      public function get §+!p§() : Boolean
      {
         return this.§-G§;
      }
      
      public function get radius() : Number
      {
         return this.§!!C§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!9§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §1'§(param1:Number) : void
      {
         this.§-!9§ = param1;
      }
      
      public function get §-[§() : Number
      {
         return this.§]I§;
      }
      
      public function set §-[§(param1:Number) : void
      {
         this.§]I§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§!+§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§!+§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§;!@§;
      }
      
      public function get y() : Number
      {
         return this.§3L§;
      }
      
      public function get §2!0§() : Number
      {
         return this.§1§;
      }
      
      public function get §^X§() : Number
      {
         return this.§=^§;
      }
   }
}
