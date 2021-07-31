package §?b§
{
   import §!+§.§>G§;
   import §'k§.§2v§;
   import §'k§.§7x§;
   import §+!"§.§2+§;
   import §5!@§.Texture;
   import §7!0§.§6Z§;
   import §7!0§.§9!0§;
   import §7!0§.§<$§;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §+$§
   {
      
      public static const §'@§:String = "ChannelSlingshot";
      
      public static const §"x§:Number = 900;
      
      public static const §for §:Number = 200;
      
      public static const §`7§:Number = 200;
      
      public static const §7t§:Number = 1500;
      
      public static const §?!H§:Number = 5000;
      
      public static const §``§:Number = 1000;
      
      public static const §#!-§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §<!B§:Number;
      
      protected var §,k§:Number;
      
      protected var §5!2§:Number;
      
      protected var §^!6§:Number;
      
      private var §[! §:§6Z§;
      
      protected var §]!C§:Number;
      
      protected var §5!G§:Number = 1;
      
      private var §[0§:Sprite;
      
      protected var §;&§:§7x§;
      
      private var §15§:§6!0§;
      
      protected var §+"§:§4K§;
      
      private var §8+§:Number;
      
      private var §"@§:Boolean = false;
      
      private var §3A§:Boolean = false;
      
      protected var §6!"§:Boolean = false;
      
      private var §"!?§:Number;
      
      private var §4!3§:Number = 0;
      
      private var §>! §:Number = 0;
      
      private var §#d§:Number = 0;
      
      private var §[!9§:Number = 1000;
      
      private var §]]§:Number;
      
      private var §&Y§:Number;
      
      private var §&>§:int;
      
      private var §"!9§:Number = 0;
      
      protected var §`!7§:Number;
      
      protected var §7A§:Number;
      
      private var §[!G§:Number = 1;
      
      private var §get §:Number = 0;
      
      private var §,d§:b2Vec2;
      
      private var §!!%§:Number = 1;
      
      public function §+$§(param1:§4K§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§+"§ = param1;
         this.§[0§ = param2;
         this.mName = param3;
         this.§[! § = §9!0§.§&!<§(this.mName).§]!=§;
         this.§<!B§ = param4;
         this.§,k§ = param5;
         this.§5!2§ = param4;
         this.§^!6§ = param5;
         this.§]!C§ = 0;
         this.§"@§ = false;
         this.§3A§ = false;
         this.§4!3§ = 0;
         this.§ B§();
         this.§`!7§ = 0;
      }
      
      public function §6p§() : void
      {
         this.§"@§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§[0§)
         {
            this.§[0§.dispose();
            this.§[0§ = null;
         }
      }
      
      public function § H§(param1:Number) : void
      {
         if(!this.§3A§ || this.§"@§)
         {
            return;
         }
         if(this.§5!G§ != 0)
         {
            this.§#d§ = 0;
            this.§"!9§ = 0;
            this.§]!C§ = 0;
            this.§&Y§ = 0;
            this.§5!G§ = 0;
         }
         param1 = Math.min(param1,this.§"!?§);
         this.§<!B§ += param1 * (this.§+"§.§<!B§ - this.§<!B§) / this.§"!?§;
         this.§,k§ += param1 * (this.§+"§.§,k§ - this.§,k§) / this.§"!?§;
         this.§,k§ -= param1 / 50 * (this.§"!?§ / §"x§);
         this.§]!C§ += param1 * (360 - this.§]!C§) / this.§"!?§;
         this.§"!?§ -= param1;
         if(this.§"!?§ <= 0)
         {
            this.§<!B§ = this.§+"§.§<!B§;
            this.§,k§ = this.§+"§.§,k§;
            this.§3A§ = false;
            this.§"@§ = true;
            this.§]!C§ = 0;
         }
         this.§#n§();
      }
      
      public function §+`§() : void
      {
         this.§3A§ = true;
         this.§"!?§ = §"x§;
         this.§1j§(§6Z§.§6M§);
         if(this.§"!9§ != 0)
         {
            this.§,k§ += this.§"!9§;
            this.§"!9§ = 0;
         }
      }
      
      public function §1M§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§"@§ && this.§`!7§ >= 0)
         {
            if(this.§7A§ > this.§+"§.§4!%§.§+4§.§6o§)
            {
               this.§@t§(this.§+"§.§4!%§.§+4§.§6o§ - this.§7A§);
               this.§`!7§ = -1;
            }
            this.§`!7§ -= param1;
            if(this.§`!7§ <= 0)
            {
               if(this.§#d§ > 0)
               {
                  this.§`!7§ = this.§#d§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§7A§))
               {
                  _loc2_ = this.§+"§.§4!%§.objects.§&!7§(this.§<!B§,this.§7A§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§@t§(param1 / 100))
                  {
                     this.§`!7§ = -1;
                  }
                  else
                  {
                     this.§`!7§ = 0;
                  }
               }
               else if(!this.§+"§.§4!%§.objects.§"0§(_loc2_).§`!F§)
               {
                  this.§6!"§ = false;
                  this.§`!7§ = -1;
               }
               else if(this.§+"§.§4!%§.objects.§"0§(_loc2_).§%f§())
               {
                  this.§6!"§ = false;
                  this.§`!7§ = 2000;
               }
               else
               {
                  this.§`!7§ = 500;
               }
            }
         }
      }
      
      public function §@t§(param1:Number) : Boolean
      {
         this.§,k§ += param1;
         this.§7A§ += param1;
         if(this.§7A§ > this.§+"§.§4!%§.§+4§.§6o§)
         {
            param1 = this.§7A§ - this.§+"§.§4!%§.§+4§.§6o§;
            this.§,k§ -= param1;
            this.§7A§ -= param1;
            this.§#n§();
            return true;
         }
         this.§#n§();
         return false;
      }
      
      public function § B§() : void
      {
         var _loc1_:§<$§ = §9!0§.§&!<§(this.mName).shape;
         if(_loc1_.§ r§() == §<$§.§]M§)
         {
            this.§,d§ = _loc1_.§]X§()[0];
            this.§8+§ = _loc1_.§ l§;
         }
         else if(_loc1_.§ r§() == §<$§.§[!"§)
         {
            this.§,d§ = new b2Vec2(0,0);
            this.§8+§ = 1.5;
         }
         this.§;&§ = this.§+"§.§4!%§.§!`§.§`l§(this.mName);
         if(!this.§;&§)
         {
            this.§0R§(null);
         }
         else
         {
            this.§0R§(this.§;&§.getFrame(0));
         }
      }
      
      public function §0R§(param1:§2v§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§+"§.§;'§.textureManager.§"h§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§15§ == null)
         {
            this.§15§ = new §6!0§(_loc2_);
            this.§[0§.addChild(this.§15§);
         }
         else
         {
            this.§15§.texture = _loc2_;
         }
         if(param1)
         {
            this.§15§.x = -param1.pivotX - this.§,d§.x / §7!,§.§ '§;
            this.§15§.y = -param1.pivotY - this.§,d§.y / §7!,§.§ '§;
         }
         else
         {
            this.§15§.x = -this.§15§.width / 2;
            this.§15§.y = -this.§15§.height / 2;
         }
         this.§15§.scaleX = _loc3_;
         this.§15§.scaleY = _loc3_;
         this.§#n§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§1M§(param1);
         if(this.§3A§)
         {
            this.§#d§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§'n§(param1);
            this.§!<§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§%!6§(param1,param2);
            }
         }
      }
      
      public function §'n§(param1:Number) : void
      {
         if(this.§4!3§ > 0)
         {
            this.§4!3§ -= param1;
            if(this.§4!3§ <= 0)
            {
               this.§1!F§();
            }
         }
         else if(this.§>! § <= 0 && Math.random() * §7t§ < param1 && this.§+"§.mSlingShotState)
         {
            this.§"J§();
         }
      }
      
      public function §1!F§() : void
      {
         this.§4!3§ = 0;
         this.§0R§(this.§;&§.getFrame(0));
      }
      
      public function §"J§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§4!3§ = §for §;
         this.§0R§(this.§;&§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §!<§(param1:Number) : void
      {
         if(this.§>! § > 0)
         {
            this.§>! § -= param1;
            if(this.§>! § <= 0)
            {
               this.§,f§();
            }
         }
         else if(this.§4!3§ <= 0 && Math.random() * §?!H§ < param1)
         {
            this.§1j§();
         }
      }
      
      public function §,f§() : void
      {
         this.§>! § = 0;
         this.§0R§(this.§;&§.getFrame(0));
      }
      
      public function §1j§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§>! § > 0)
         {
            this.§,f§();
         }
         if(this.§4!3§ > 0)
         {
            this.§1!F§();
         }
         if(param1 < 0)
         {
            param1 = §6Z§.§1m§;
         }
         this.§>! § = §`7§;
         this.§0R§(this.§;&§.getSubAnimation("yell").getFrame(0));
         if(this.§"@§ || this.§3A§ || param2)
         {
            §>G§.§"4§(param1,this.§[! §);
         }
         else
         {
            §>G§.§"4§(param1,this.§[! §,§'@§);
         }
      }
      
      public function §%!6§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§#d§ > 0)
         {
            this.§#d§ -= param1;
            if(this.§#d§ <= 0)
            {
               ++this.§&>§;
               this.§&Y§ *= 0.4;
               if(!this.§"@§ && this.§&>§ < 2)
               {
                  if(this.§&>§ > 1 && this.§&Y§ < -1)
                  {
                     this.§&Y§ = -1;
                  }
                  this.§]]§ = this.§&Y§;
                  this.§#d§ = §#!-§;
                  this.§#d§ *= Math.abs(this.§]]§) / 2;
                  this.§[!9§ = this.§#d§;
                  this.§]!C§ = 0;
                  this.§5!G§ = 0;
               }
               else if(!this.§"@§ && param2)
               {
                  this.§]%§(2.25);
               }
               else
               {
                  this.§#d§ = 0;
                  this.§"!9§ = 0;
                  this.§]!C§ = 0;
                  this.§&Y§ = 0;
               }
            }
            else
            {
               if(this.§#d§ >= this.§[!9§ / 2)
               {
                  _loc3_ = (this.§[!9§ - this.§#d§) / (this.§[!9§ / 2);
                  _loc3_ = §2+§.§5r§(_loc3_);
                  this.§"!9§ = _loc3_ * this.§]]§;
               }
               else
               {
                  _loc3_ = (this.§[!9§ / 2 - this.§#d§) / (this.§[!9§ / 2);
                  _loc3_ = §2+§.§5r§(_loc3_,false);
                  this.§"!9§ = this.§]]§ + _loc3_ * -this.§]]§;
               }
               this.§]!C§ = 360 * §2+§.§5r§((this.§[!9§ - this.§#d§) / this.§[!9§) * this.§5!G§;
            }
            this.§#n§();
         }
         else if(Math.random() * §``§ < param1 && !this.§"@§ && !this.§3A§ && !this.§6!"§)
         {
            this.§]%§();
         }
      }
      
      public function §]%§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§&>§ = 0;
         this.§#d§ = §#!-§;
         this.§"!9§ = 0;
         this.§]]§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§&Y§ = this.§]]§;
         this.§#d§ *= Math.abs(this.§]]§) / 3;
         this.§[!9§ = this.§#d§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§5!G§ = 0;
         }
         else if(this.§#d§ < 350)
         {
            this.§5!G§ = 0;
         }
         else
         {
            this.§5!G§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§5!G§ = Math.random() > 0.5 ? Number(this.§5!G§) : Number(0);
         }
      }
      
      public function §#n§() : void
      {
         this.§[0§.x = this.§<!B§ / §7!,§.§ '§;
         this.§[0§.y = (this.§,k§ + this.§"!9§) / §7!,§.§ '§;
         this.§[0§.rotation = this.§]!C§ / 180 * Math.PI;
      }
      
      public function §>P§() : void
      {
         this.§6!"§ = true;
         this.§"@§ = false;
         this.§3A§ = false;
         this.§&>§ = 0;
         this.§`!7§ = 0;
         this.§#d§ = 0;
         this.§#d§ = 0;
         this.§"!9§ = 0;
         this.§]!C§ = 0;
         this.§&Y§ = 0;
         this.§5!G§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§<!B§) * (param1 - this.§<!B§) + (param2 - this.§,k§) * (param2 - this.§,k§));
         if(_loc3_ <= this.§8+§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§<!B§ >= param3 && this.§<!B§ <= param4 && this.§,k§ >= param1 && this.§,k§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§<!B§ != param1 || this.§,k§ != param2)
         {
            _loc3_ = true;
         }
         this.§<!B§ = param1;
         this.§,k§ = param2;
         this.§`!7§ = 100;
         this.§#n§();
         if(_loc3_)
         {
            this.§+"§.§33§();
         }
      }
      
      public function §'o§() : §6!0§
      {
         return this.§15§;
      }
      
      public function get §^o§() : Number
      {
         return this.§#d§;
      }
      
      public function get §[<§() : Number
      {
         return this.§`!7§;
      }
      
      public function set §[<§(param1:Number) : void
      {
         this.§`!7§ = param1;
      }
      
      public function get §4@§() : Number
      {
         return this.§[!G§;
      }
      
      public function get §2^§() : Boolean
      {
         return this.§"@§;
      }
      
      public function get radius() : Number
      {
         return this.§8+§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§[0§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §4@§(param1:Number) : void
      {
         this.§[!G§ = param1;
      }
      
      public function get §#!9§() : Number
      {
         return this.§get §;
      }
      
      public function set §#!9§(param1:Number) : void
      {
         this.§get § = param1;
      }
      
      public function get scale() : Number
      {
         return this.§!!%§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§!!%§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§<!B§;
      }
      
      public function get y() : Number
      {
         return this.§,k§;
      }
      
      public function get §set §() : Number
      {
         return this.§5!2§;
      }
      
      public function get §3!>§() : Number
      {
         return this.§^!6§;
      }
   }
}
