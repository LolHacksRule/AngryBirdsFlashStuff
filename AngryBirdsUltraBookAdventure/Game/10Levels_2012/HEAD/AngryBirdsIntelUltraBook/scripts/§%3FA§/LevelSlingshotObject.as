package §?A§
{
   import §'N§.§"3§;
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §3Y§.LevelObject;
   import §8!?§.§?!B§;
   import §8!?§.Animation;
   import §?!&§.b2Vec2;
   import §^L§.LevelItemManager;
   import §^L§.LevelItemShape;
   import §^L§.LevelItemSoundResource;
   
   public class LevelSlingshotObject
   {
      
      public static const §7!T§:String = "ChannelSlingshot";
      
      public static const §;n§:Number = 900;
      
      public static const §&3§:Number = 200;
      
      public static const §]!J§:Number = 200;
      
      public static const §+L§:Number = 1500;
      
      public static const §?!Y§:Number = 5000;
      
      public static const §3b§:Number = 1000;
      
      public static const §6W§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §`!Z§:Number;
      
      protected var §[§:Number;
      
      protected var §!!Y§:Number;
      
      protected var §"!I§:Number;
      
      private var §@!Z§:LevelItemSoundResource;
      
      protected var §#3§:Number;
      
      protected var §8Q§:Number = 1;
      
      private var §1!J§:Sprite;
      
      protected var §9!d§:Animation;
      
      private var §=@§:§&p§;
      
      protected var §2Z§:LevelSlingshot;
      
      private var §;4§:Number;
      
      private var §'!S§:Boolean = false;
      
      private var §-v§:Boolean = false;
      
      protected var §;?§:Boolean = false;
      
      private var §+j§:Number;
      
      private var §!p§:Number = 0;
      
      private var §<T§:Number = 0;
      
      private var §#8§:Number = 0;
      
      private var §'^§:Number = 1000;
      
      private var §"§:Number;
      
      private var §0_§:Number;
      
      private var §-e§:int;
      
      private var §7T§:Number = 0;
      
      protected var §!m§:Number;
      
      protected var §@=§:Number;
      
      private var §,!]§:Number = 1;
      
      private var §>d§:Number = 0;
      
      private var § !4§:b2Vec2;
      
      private var §[+§:Number = 1;
      
      public function LevelSlingshotObject(param1:LevelSlingshot, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§2Z§ = param1;
         this.§1!J§ = param2;
         this.mName = param3;
         this.§@!Z§ = LevelItemManager.§><§(this.mName).§3!,§;
         this.§`!Z§ = param4;
         this.§[§ = param5;
         this.§!!Y§ = param4;
         this.§"!I§ = param5;
         this.§#3§ = 0;
         this.§'!S§ = false;
         this.§-v§ = false;
         this.§!p§ = 0;
         this.§-!§();
         this.§!m§ = 0;
      }
      
      public function §import§() : void
      {
         this.§'!S§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§1!J§)
         {
            this.§1!J§.dispose();
            this.§1!J§ = null;
         }
      }
      
      public function §`!d§(param1:Number) : void
      {
         if(!this.§-v§ || this.§'!S§)
         {
            return;
         }
         if(this.§8Q§ != 0)
         {
            this.§#8§ = 0;
            this.§7T§ = 0;
            this.§#3§ = 0;
            this.§0_§ = 0;
            this.§8Q§ = 0;
         }
         param1 = Math.min(param1,this.§+j§);
         this.§`!Z§ += param1 * (this.§2Z§.§`!Z§ - this.§`!Z§) / this.§+j§;
         this.§[§ += param1 * (this.§2Z§.§[§ - this.§[§) / this.§+j§;
         this.§[§ -= param1 / 50 * (this.§+j§ / §;n§);
         this.§#3§ += param1 * (360 - this.§#3§) / this.§+j§;
         this.§+j§ -= param1;
         if(this.§+j§ <= 0)
         {
            this.§`!Z§ = this.§2Z§.§`!Z§;
            this.§[§ = this.§2Z§.§[§;
            this.§-v§ = false;
            this.§'!S§ = true;
            this.§#3§ = 0;
         }
         this.§+§();
      }
      
      public function §9d§() : void
      {
         this.§-v§ = true;
         this.§+j§ = §;n§;
         this.§,8§(LevelItemSoundResource.§9! §);
         if(this.§7T§ != 0)
         {
            this.§[§ += this.§7T§;
            this.§7T§ = 0;
         }
      }
      
      public function §[e§(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§'!S§ && this.§!m§ >= 0)
         {
            if(this.§@=§ > this.§2Z§.§6f§.§7!%§.§7!5§)
            {
               this.§30§(this.§2Z§.§6f§.§7!%§.§7!5§ - this.§@=§);
               this.§!m§ = -1;
            }
            this.§!m§ -= param1;
            if(this.§!m§ <= 0)
            {
               if(this.§#8§ > 0)
               {
                  this.§!m§ = this.§#8§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§@=§))
               {
                  _loc2_ = this.§2Z§.§6f§.objects.§35§(this.§`!Z§,this.§@=§);
               }
               if(_loc2_ < 0)
               {
                  if(this.§30§(param1 / 100))
                  {
                     this.§!m§ = -1;
                  }
                  else
                  {
                     this.§!m§ = 0;
                  }
               }
               else if(!this.§2Z§.§6f§.objects.§[O§(_loc2_).§-!]§)
               {
                  this.§;?§ = false;
                  this.§!m§ = -1;
               }
               else if(this.§2Z§.§6f§.objects.§[O§(_loc2_).§[q§())
               {
                  this.§;?§ = false;
                  this.§!m§ = 2000;
               }
               else
               {
                  this.§!m§ = 500;
               }
            }
         }
      }
      
      public function §30§(param1:Number) : Boolean
      {
         this.§[§ += param1;
         this.§@=§ += param1;
         if(this.§@=§ > this.§2Z§.§6f§.§7!%§.§7!5§)
         {
            param1 = this.§@=§ - this.§2Z§.§6f§.§7!%§.§7!5§;
            this.§[§ -= param1;
            this.§@=§ -= param1;
            this.§+§();
            return true;
         }
         this.§+§();
         return false;
      }
      
      public function §-!§() : void
      {
         var _loc1_:LevelItemShape = LevelItemManager.§><§(this.mName).shape;
         if(_loc1_.§'!,§() == LevelItemShape.§"c§)
         {
            this.§ !4§ = _loc1_.§?[§()[0];
            this.§;4§ = _loc1_.§^B§;
         }
         else if(_loc1_.§'!,§() == LevelItemShape.§0!+§)
         {
            this.§ !4§ = new b2Vec2(0,0);
            this.§;4§ = 1.5;
         }
         this.§9!d§ = this.§2Z§.§6f§.animationManager.getAnimation(this.mName);
         if(!this.§9!d§)
         {
            this.§2B§(null);
         }
         else
         {
            this.§2B§(this.§9!d§.getFrame(0));
         }
      }
      
      public function §2B§(param1:§?!B§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§2Z§.levelMain.textureManager.§0G§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§=@§ == null)
         {
            this.§=@§ = new §&p§(_loc2_);
            this.§1!J§.addChild(this.§=@§);
         }
         else
         {
            this.§=@§.texture = _loc2_;
         }
         if(param1)
         {
            this.§=@§.x = -param1.pivotX - this.§ !4§.x / LevelMain.§!5§;
            this.§=@§.y = -param1.pivotY - this.§ !4§.y / LevelMain.§!5§;
         }
         else
         {
            this.§=@§.x = -this.§=@§.width / 2;
            this.§=@§.y = -this.§=@§.height / 2;
         }
         this.§=@§.scaleX = _loc3_;
         this.§=@§.scaleY = _loc3_;
         this.§+§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.§[e§(param1);
         if(this.§-v§)
         {
            this.§#8§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§+g§(param1);
            this.§4X§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§[@§(param1,param2);
            }
         }
      }
      
      public function §+g§(param1:Number) : void
      {
         if(this.§!p§ > 0)
         {
            this.§!p§ -= param1;
            if(this.§!p§ <= 0)
            {
               this.§5=§();
            }
         }
         else if(this.§<T§ <= 0 && Math.random() * §+L§ < param1 && this.§2Z§.mSlingShotState)
         {
            this.§1;§();
         }
      }
      
      public function §5=§() : void
      {
         this.§!p§ = 0;
         this.§2B§(this.§9!d§.getFrame(0));
      }
      
      public function §1;§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§!p§ = §&3§;
         this.§2B§(this.§9!d§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §4X§(param1:Number) : void
      {
         if(this.§<T§ > 0)
         {
            this.§<T§ -= param1;
            if(this.§<T§ <= 0)
            {
               this.§?!j§();
            }
         }
         else if(this.§!p§ <= 0 && Math.random() * §?!Y§ < param1)
         {
            this.§,8§();
         }
      }
      
      public function §?!j§() : void
      {
         this.§<T§ = 0;
         this.§2B§(this.§9!d§.getFrame(0));
      }
      
      public function §,8§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§<T§ > 0)
         {
            this.§?!j§();
         }
         if(this.§!p§ > 0)
         {
            this.§5=§();
         }
         if(param1 < 0)
         {
            param1 = LevelItemSoundResource.§#!i§;
         }
         this.§<T§ = §]!J§;
         this.§2B§(this.§9!d§.getSubAnimation("yell").getFrame(0));
         if(this.§'!S§ || this.§-v§ || param2)
         {
            LevelObject.§1!"§(param1,this.§@!Z§);
         }
         else
         {
            LevelObject.§1!"§(param1,this.§@!Z§,§7!T§);
         }
      }
      
      public function §[@§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§#8§ > 0)
         {
            this.§#8§ -= param1;
            if(this.§#8§ <= 0)
            {
               ++this.§-e§;
               this.§0_§ *= 0.4;
               if(!this.§'!S§ && this.§-e§ < 2)
               {
                  if(this.§-e§ > 1 && this.§0_§ < -1)
                  {
                     this.§0_§ = -1;
                  }
                  this.§"§ = this.§0_§;
                  this.§#8§ = §6W§;
                  this.§#8§ *= Math.abs(this.§"§) / 2;
                  this.§'^§ = this.§#8§;
                  this.§#3§ = 0;
                  this.§8Q§ = 0;
               }
               else if(!this.§'!S§ && param2)
               {
                  this.§<9§(2.25);
               }
               else
               {
                  this.§#8§ = 0;
                  this.§7T§ = 0;
                  this.§#3§ = 0;
                  this.§0_§ = 0;
               }
            }
            else
            {
               if(this.§#8§ >= this.§'^§ / 2)
               {
                  _loc3_ = (this.§'^§ - this.§#8§) / (this.§'^§ / 2);
                  _loc3_ = §"3§.§5M§(_loc3_);
                  this.§7T§ = _loc3_ * this.§"§;
               }
               else
               {
                  _loc3_ = (this.§'^§ / 2 - this.§#8§) / (this.§'^§ / 2);
                  _loc3_ = §"3§.§5M§(_loc3_,false);
                  this.§7T§ = this.§"§ + _loc3_ * -this.§"§;
               }
               this.§#3§ = 360 * §"3§.§5M§((this.§'^§ - this.§#8§) / this.§'^§) * this.§8Q§;
            }
            this.§+§();
         }
         else if(Math.random() * §3b§ < param1 && !this.§'!S§ && !this.§-v§ && !this.§;?§)
         {
            this.§<9§();
         }
      }
      
      public function §<9§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§-e§ = 0;
         this.§#8§ = §6W§;
         this.§7T§ = 0;
         this.§"§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§0_§ = this.§"§;
         this.§#8§ *= Math.abs(this.§"§) / 3;
         this.§'^§ = this.§#8§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§8Q§ = 0;
         }
         else if(this.§#8§ < 350)
         {
            this.§8Q§ = 0;
         }
         else
         {
            this.§8Q§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§8Q§ = Math.random() > 0.5 ? Number(this.§8Q§) : Number(0);
         }
      }
      
      public function §+§() : void
      {
         this.§1!J§.x = this.§`!Z§ / LevelMain.§!5§;
         this.§1!J§.y = (this.§[§ + this.§7T§) / LevelMain.§!5§;
         this.§1!J§.rotation = this.§#3§ / 180 * Math.PI;
      }
      
      public function §6q§() : void
      {
         this.§;?§ = true;
         this.§'!S§ = false;
         this.§-v§ = false;
         this.§-e§ = 0;
         this.§!m§ = 0;
         this.§#8§ = 0;
         this.§#8§ = 0;
         this.§7T§ = 0;
         this.§#3§ = 0;
         this.§0_§ = 0;
         this.§8Q§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§`!Z§) * (param1 - this.§`!Z§) + (param2 - this.§[§) * (param2 - this.§[§));
         if(_loc3_ <= this.§;4§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§`!Z§ >= param3 && this.§`!Z§ <= param4 && this.§[§ >= param1 && this.§[§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§`!Z§ != param1 || this.§[§ != param2)
         {
            _loc3_ = true;
         }
         this.§`!Z§ = param1;
         this.§[§ = param2;
         this.§!m§ = 100;
         this.§+§();
         if(_loc3_)
         {
            this.§2Z§.§3!§();
         }
      }
      
      public function §!,§() : §&p§
      {
         return this.§=@§;
      }
      
      public function get §`T§() : Number
      {
         return this.§#8§;
      }
      
      public function get §<k§() : Number
      {
         return this.§!m§;
      }
      
      public function set §<k§(param1:Number) : void
      {
         this.§!m§ = param1;
      }
      
      public function get §-!9§() : Number
      {
         return this.§,!]§;
      }
      
      public function get §@!5§() : Boolean
      {
         return this.§'!S§;
      }
      
      public function get radius() : Number
      {
         return this.§;4§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!J§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §-!9§(param1:Number) : void
      {
         this.§,!]§ = param1;
      }
      
      public function get §!i§() : Number
      {
         return this.§>d§;
      }
      
      public function set §!i§(param1:Number) : void
      {
         this.§>d§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§[+§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§[+§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§`!Z§;
      }
      
      public function get y() : Number
      {
         return this.§[§;
      }
      
      public function get §[T§() : Number
      {
         return this.§!!Y§;
      }
      
      public function get §+b§() : Number
      {
         return this.§"!I§;
      }
   }
}
