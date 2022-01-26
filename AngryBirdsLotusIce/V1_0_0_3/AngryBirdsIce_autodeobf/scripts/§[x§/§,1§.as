package §[x§
{
   import §1n§.§1D§;
   import §1n§.§?!C§;
   import §4N§.§&!@§;
   import §4N§.§2D§;
   import §4N§.§7E§;
   import §9_§.§+>§;
   import §;8§.§4m§;
   import §[P§.Texture;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   
   public class §,1§
   {
      
      public static const §??§:String = "ChannelSlingshot";
      
      public static const §8!C§:Number = 900;
      
      public static const §&H§:Number = 200;
      
      public static const §&!3§:Number = 200;
      
      public static const §,P§:Number = 1500;
      
      public static const §0y§:Number = 5000;
      
      public static const §^!5§:Number = 1000;
      
      public static const §9@§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §-Y§:Number;
      
      protected var §%!;§:Number;
      
      protected var §+<§:Number;
      
      protected var §,8§:Number;
      
      private var §><§:§7E§;
      
      protected var §]!=§:Number;
      
      protected var §%e§:Number = 1;
      
      private var §1-§:Sprite;
      
      protected var §,k§:§?!C§;
      
      private var §6-§:§1!,§;
      
      protected var § 2§:§9"§;
      
      private var § !#§:Number;
      
      private var §,d§:Boolean = false;
      
      private var §5a§:Boolean = false;
      
      protected var §0I§:Boolean = false;
      
      private var §-f§:Number;
      
      private var §0M§:Number = 0;
      
      private var §=p§:Number = 0;
      
      private var §7!E§:Number = 0;
      
      private var §&y§:Number = 1000;
      
      private var §1a§:Number;
      
      private var §3q§:Number;
      
      private var §7h§:int;
      
      private var §`<§:Number = 0;
      
      protected var §!!&§:Number;
      
      protected var §39§:Number;
      
      private var §"G§:Number = 1;
      
      private var §^z§:Number = 0;
      
      private var §,E§:b2Vec2;
      
      private var §,&§:Number = 1;
      
      public function §,1§(param1:§9"§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§ 2§ = param1;
         this.§1-§ = param2;
         this.mName = param3;
         this.§><§ = §&!@§.§9B§(this.mName).§@,§;
         this.§-Y§ = param4;
         this.§%!;§ = param5;
         this.§+<§ = param4;
         this.§,8§ = param5;
         this.§]!=§ = 0;
         this.§,d§ = false;
         this.§5a§ = false;
         this.§0M§ = 0;
         this.§`!4§();
         this.§!!&§ = 0;
      }
      
      public function §"Y§() : void
      {
         this.§,d§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§1-§)
         {
            this.§1-§.dispose();
            this.§1-§ = null;
         }
      }
      
      public function §=x§(param1:Number) : void
      {
         if(!this.§5a§ || this.§,d§)
         {
            return;
         }
         if(this.§%e§ != 0)
         {
            this.§7!E§ = 0;
            this.§`<§ = 0;
            this.§]!=§ = 0;
            this.§3q§ = 0;
            this.§%e§ = 0;
         }
         param1 = Math.min(param1,this.§-f§);
         this.§-Y§ += param1 * (this.§ 2§.§-Y§ - this.§-Y§) / this.§-f§;
         this.§%!;§ += param1 * (this.§ 2§.§%!;§ - this.§%!;§) / this.§-f§;
         this.§%!;§ -= param1 / 50 * (this.§-f§ / §8!C§);
         this.§]!=§ += param1 * (360 - this.§]!=§) / this.§-f§;
         this.§-f§ -= param1;
         if(this.§-f§ <= 0)
         {
            this.§-Y§ = this.§ 2§.§-Y§;
            this.§%!;§ = this.§ 2§.§%!;§;
            this.§5a§ = false;
            this.§,d§ = true;
            this.§]!=§ = 0;
         }
         this.§]z§();
      }
      
      public function §@A§() : void
      {
         this.§5a§ = true;
         this.§-f§ = §8!C§;
         this.§`+§(§7E§.§;!<§);
         if(this.§`<§ != 0)
         {
            this.§%!;§ += this.§`<§;
            this.§`<§ = 0;
         }
      }
      
      public function §#2§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§,d§ && this.§!!&§ >= 0)
         {
            if(this.§39§ > this.§ 2§.§1! §.§1!6§.§&p§)
            {
               this.§7z§(this.§ 2§.§1! §.§1!6§.§&p§ - this.§39§);
               this.§!!&§ = -1;
            }
            this.§!!&§ -= param1;
            if(this.§!!&§ <= 0)
            {
               if(this.§7!E§ > 0)
               {
                  this.§!!&§ = this.§7!E§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§39§))
               {
                  _loc2_ = this.§ 2§.§1! §.objects.§9!0§(this.§-Y§,this.§39§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§7z§(param1 / 100))
                  {
                     this.§!!&§ = -1;
                  }
                  else
                  {
                     this.§!!&§ = 0;
                  }
               }
               else if(!this.§ 2§.§1! §.objects.§!§(_loc2_).§@!!§)
               {
                  this.§0I§ = false;
                  this.§!!&§ = -1;
               }
               else if(this.§ 2§.§1! §.objects.§!§(_loc2_).§2h§())
               {
                  this.§0I§ = false;
                  this.§!!&§ = 2000;
               }
               else
               {
                  this.§!!&§ = 500;
               }
            }
         }
      }
      
      public function §7z§(param1:Number) : Boolean
      {
         this.§%!;§ += param1;
         this.§39§ += param1;
         if(this.§39§ > this.§ 2§.§1! §.§1!6§.§&p§)
         {
            param1 = this.§39§ - this.§ 2§.§1! §.§1!6§.§&p§;
            this.§%!;§ -= param1;
            this.§39§ -= param1;
            this.§]z§();
            return true;
         }
         this.§]z§();
         return false;
      }
      
      public function §`!4§() : void
      {
         var _loc1_:§2D§ = §&!@§.§9B§(this.mName).shape;
         if(_loc1_.§0V§() == §2D§.§>!$§)
         {
            this.§,E§ = _loc1_.§9H§()[0];
            this.§ !#§ = _loc1_.§?!#§;
         }
         else if(_loc1_.§0V§() == §2D§.§&W§)
         {
            this.§,E§ = new b2Vec2(0,0);
            this.§ !#§ = 1.5;
         }
         this.§,k§ = this.§ 2§.§1! §.§0!§.§9$§(this.mName);
         if(!this.§,k§)
         {
            this.§@u§(null);
         }
         else
         {
            this.§@u§(this.§,k§.getFrame(0));
         }
      }
      
      public function §@u§(param1:§1D§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§ 2§.§01§.textureManager.§9!5§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§6-§ == null)
         {
            this.§6-§ = new §1!,§(_loc2_);
            this.§1-§.addChild(this.§6-§);
         }
         else
         {
            this.§6-§.texture = _loc2_;
         }
         if(param1)
         {
            this.§6-§.x = -param1.pivotX - this.§,E§.x / §2^§.§,]§;
            this.§6-§.y = -param1.pivotY - this.§,E§.y / §2^§.§,]§;
         }
         else
         {
            this.§6-§.x = -this.§6-§.width / 2;
            this.§6-§.y = -this.§6-§.height / 2;
         }
         this.§6-§.scaleX = _loc3_;
         this.§6-§.scaleY = _loc3_;
         this.§]z§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§#2§(param1);
         if(this.§5a§)
         {
            this.§7!E§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§;D§(param1);
            this.§;!?§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§<!@§(param1,param2);
            }
         }
      }
      
      public function §;D§(param1:Number) : void
      {
         if(this.§0M§ > 0)
         {
            this.§0M§ -= param1;
            if(this.§0M§ <= 0)
            {
               this.§%!0§();
            }
         }
         else if(this.§=p§ <= 0 && Math.random() * §,P§ < param1 && this.§ 2§.mSlingShotState)
         {
            this.§@=§();
         }
      }
      
      public function §%!0§() : void
      {
         this.§0M§ = 0;
         this.§@u§(this.§,k§.getFrame(0));
      }
      
      public function §@=§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§0M§ = §&H§;
         this.§@u§(this.§,k§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §;!?§(param1:Number) : void
      {
         if(this.§=p§ > 0)
         {
            this.§=p§ -= param1;
            if(this.§=p§ <= 0)
            {
               this.§8!A§();
            }
         }
         else if(this.§0M§ <= 0 && Math.random() * §0y§ < param1)
         {
            this.§`+§();
         }
      }
      
      public function §8!A§() : void
      {
         this.§=p§ = 0;
         this.§@u§(this.§,k§.getFrame(0));
      }
      
      public function §`+§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§=p§ > 0)
         {
            this.§8!A§();
         }
         if(this.§0M§ > 0)
         {
            this.§%!0§();
         }
         if(param1 < 0)
         {
            param1 = §7E§.§5j§;
         }
         this.§=p§ = §&!3§;
         this.§@u§(this.§,k§.getSubAnimation("yell").getFrame(0));
         if(this.§,d§ || this.§5a§ || param2)
         {
            §+>§.§0x§(param1,this.§><§);
         }
         else
         {
            §+>§.§0x§(param1,this.§><§,§??§);
         }
      }
      
      public function §<!@§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§7!E§ > 0)
         {
            this.§7!E§ -= param1;
            if(this.§7!E§ <= 0)
            {
               ++this.§7h§;
               this.§3q§ *= 0.4;
               if(!this.§,d§ && this.§7h§ < 2)
               {
                  if(this.§7h§ > 1 && this.§3q§ < -1)
                  {
                     this.§3q§ = -1;
                  }
                  this.§1a§ = this.§3q§;
                  this.§7!E§ = §9@§;
                  this.§7!E§ *= Math.abs(this.§1a§) / 2;
                  this.§&y§ = this.§7!E§;
                  this.§]!=§ = 0;
                  this.§%e§ = 0;
               }
               else if(!this.§,d§ && param2)
               {
                  this.§1J§(2.25);
               }
               else
               {
                  this.§7!E§ = 0;
                  this.§`<§ = 0;
                  this.§]!=§ = 0;
                  this.§3q§ = 0;
               }
            }
            else
            {
               if(this.§7!E§ >= this.§&y§ / 2)
               {
                  _loc3_ = (this.§&y§ - this.§7!E§) / (this.§&y§ / 2);
                  _loc3_ = §4m§.§5v§(_loc3_);
                  this.§`<§ = _loc3_ * this.§1a§;
               }
               else
               {
                  _loc3_ = (this.§&y§ / 2 - this.§7!E§) / (this.§&y§ / 2);
                  _loc3_ = §4m§.§5v§(_loc3_,false);
                  this.§`<§ = this.§1a§ + _loc3_ * -this.§1a§;
               }
               this.§]!=§ = 360 * §4m§.§5v§((this.§&y§ - this.§7!E§) / this.§&y§) * this.§%e§;
            }
            this.§]z§();
         }
         else if(Math.random() * §^!5§ < param1 && !this.§,d§ && !this.§5a§ && !this.§0I§)
         {
            this.§1J§();
         }
      }
      
      public function §1J§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§7h§ = 0;
         this.§7!E§ = §9@§;
         this.§`<§ = 0;
         this.§1a§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§3q§ = this.§1a§;
         this.§7!E§ *= Math.abs(this.§1a§) / 3;
         this.§&y§ = this.§7!E§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§%e§ = 0;
         }
         else if(this.§7!E§ < 350)
         {
            this.§%e§ = 0;
         }
         else
         {
            this.§%e§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§%e§ = Math.random() > 0.5 ? Number(this.§%e§) : Number(0);
         }
      }
      
      public function §]z§() : void
      {
         this.§1-§.x = this.§-Y§ / §2^§.§,]§;
         this.§1-§.y = (this.§%!;§ + this.§`<§) / §2^§.§,]§;
         this.§1-§.rotation = this.§]!=§ / 180 * Math.PI;
      }
      
      public function §[u§() : void
      {
         this.§0I§ = true;
         this.§,d§ = false;
         this.§5a§ = false;
         this.§7h§ = 0;
         this.§!!&§ = 0;
         this.§7!E§ = 0;
         this.§7!E§ = 0;
         this.§`<§ = 0;
         this.§]!=§ = 0;
         this.§3q§ = 0;
         this.§%e§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§-Y§) * (param1 - this.§-Y§) + (param2 - this.§%!;§) * (param2 - this.§%!;§));
         if(_loc3_ <= this.§ !#§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§-Y§ >= param3 && this.§-Y§ <= param4 && this.§%!;§ >= param1 && this.§%!;§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§-Y§ != param1 || this.§%!;§ != param2)
         {
            _loc3_ = true;
         }
         this.§-Y§ = param1;
         this.§%!;§ = param2;
         this.§!!&§ = 100;
         this.§]z§();
         if(_loc3_)
         {
            this.§ 2§.§8T§();
         }
      }
      
      public function §,D§() : §1!,§
      {
         return this.§6-§;
      }
      
      public function get §2e§() : Number
      {
         return this.§7!E§;
      }
      
      public function get §,h§() : Number
      {
         return this.§!!&§;
      }
      
      public function set §,h§(param1:Number) : void
      {
         this.§!!&§ = param1;
      }
      
      public function get §9[§() : Number
      {
         return this.§"G§;
      }
      
      public function get §6E§() : Boolean
      {
         return this.§,d§;
      }
      
      public function get radius() : Number
      {
         return this.§ !#§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§1-§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §9[§(param1:Number) : void
      {
         this.§"G§ = param1;
      }
      
      public function get §2@§() : Number
      {
         return this.§^z§;
      }
      
      public function set §2@§(param1:Number) : void
      {
         this.§^z§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§,&§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function get §`v§() : Number
      {
         return this.§+<§;
      }
      
      public function get §#A§() : Number
      {
         return this.§,8§;
      }
   }
}
