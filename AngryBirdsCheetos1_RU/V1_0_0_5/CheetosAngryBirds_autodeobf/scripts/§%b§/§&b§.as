package §%b§
{
   import §!4§.§ 8§;
   import §"C§.§?w§;
   import §+,§.b2Vec2;
   import §-A§.Texture;
   import §?!H§.§!h§;
   import §?!H§.§=!D§;
   import §?!H§.§?U§;
   import §@!§.§ !N§;
   import §@!§.§8!W§;
   import §null §.§%!G§;
   import §null §.Sprite;
   
   public class §&b§
   {
      
      public static const §^]§:String = "ChannelSlingshot";
      
      public static const §4x§:Number = 900;
      
      public static const §7!@§:Number = 200;
      
      public static const §4!,§:Number = 200;
      
      public static const §]E§:Number = 1500;
      
      public static const §#!W§:Number = 5000;
      
      public static const §`I§:Number = 1000;
      
      public static const §"e§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §+!L§:Number;
      
      protected var §!;§:Number;
      
      protected var §+8§:Number;
      
      protected var §2,§:Number;
      
      private var §?e§:§=!D§;
      
      protected var §71§:Number;
      
      protected var §6!W§:Number = 1;
      
      private var §&!C§:Sprite;
      
      protected var §"!9§:§8!W§;
      
      private var §'!>§:§%!G§;
      
      protected var §[!,§:§=!!§;
      
      private var § h§:Number;
      
      private var §#+§:Boolean = false;
      
      private var §,!_§:Boolean = false;
      
      protected var §@!&§:Boolean = false;
      
      private var §7!=§:Number;
      
      private var set:Number = 0;
      
      private var § !K§:Number = 0;
      
      private var §"+§:Number = 0;
      
      private var §%1§:Number = 1000;
      
      private var §=!N§:Number;
      
      private var §"P§:Number;
      
      private var §#,§:int;
      
      private var §]!A§:Number = 0;
      
      protected var §-K§:Number;
      
      protected var §9!3§:Number;
      
      private var §8!Q§:Number = 1;
      
      private var §]"§:Number = 0;
      
      private var §'<§:b2Vec2;
      
      private var §-§:Number = 1;
      
      public function §&b§(param1:§=!!§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§[!,§ = param1;
         this.§&!C§ = param2;
         this.mName = param3;
         this.§?e§ = §!h§.§2M§(this.mName).§[x§;
         this.§+!L§ = param4;
         this.§!;§ = param5;
         this.§+8§ = param4;
         this.§2,§ = param5;
         this.§71§ = 0;
         this.§#+§ = false;
         this.§,!_§ = false;
         this.set = 0;
         this.§=@§();
         this.§-K§ = 0;
      }
      
      public function §?!_§() : void
      {
         this.§#+§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§&!C§)
         {
            this.§&!C§.dispose();
            this.§&!C§ = null;
         }
      }
      
      public function §;!_§(param1:Number) : void
      {
         if(!this.§,!_§ || this.§#+§)
         {
            return;
         }
         if(this.§6!W§ != 0)
         {
            this.§"+§ = 0;
            this.§]!A§ = 0;
            this.§71§ = 0;
            this.§"P§ = 0;
            this.§6!W§ = 0;
         }
         param1 = Math.min(param1,this.§7!=§);
         this.§+!L§ += param1 * (this.§[!,§.§+!L§ - this.§+!L§) / this.§7!=§;
         this.§!;§ += param1 * (this.§[!,§.§!;§ - this.§!;§) / this.§7!=§;
         this.§!;§ -= param1 / 50 * (this.§7!=§ / §4x§);
         this.§71§ += param1 * (360 - this.§71§) / this.§7!=§;
         this.§7!=§ -= param1;
         if(this.§7!=§ <= 0)
         {
            this.§+!L§ = this.§[!,§.§+!L§;
            this.§!;§ = this.§[!,§.§!;§;
            this.§,!_§ = false;
            this.§#+§ = true;
            this.§71§ = 0;
         }
         this.§2'§();
      }
      
      public function §[8§() : void
      {
         this.§,!_§ = true;
         this.§7!=§ = §4x§;
         this.§9!O§(§=!D§.§!b§);
         if(this.§]!A§ != 0)
         {
            this.§!;§ += this.§]!A§;
            this.§]!A§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§#+§ && this.§-K§ >= 0)
         {
            if(this.§9!3§ > this.§[!,§.§]!8§.§break§.§!!%§)
            {
               this.applyGravity(this.§[!,§.§]!8§.§break§.§!!%§ - this.§9!3§);
               this.§-K§ = -1;
            }
            this.§-K§ -= param1;
            if(this.§-K§ <= 0)
            {
               if(this.§"+§ > 0)
               {
                  this.§-K§ = this.§"+§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§9!3§))
               {
                  _loc2_ = this.§[!,§.§]!8§.objects.§`!8§(this.§+!L§,this.§9!3§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§-K§ = -1;
                  }
                  else
                  {
                     this.§-K§ = 0;
                  }
               }
               else if(!this.§[!,§.§]!8§.objects.§,`§(_loc2_).§^o§)
               {
                  this.§@!&§ = false;
                  this.§-K§ = -1;
               }
               else if(this.§[!,§.§]!8§.objects.§,`§(_loc2_).§]!;§())
               {
                  this.§@!&§ = false;
                  this.§-K§ = 2000;
               }
               else
               {
                  this.§-K§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§!;§ += param1;
         this.§9!3§ += param1;
         if(this.§9!3§ > this.§[!,§.§]!8§.§break§.§!!%§)
         {
            param1 = this.§9!3§ - this.§[!,§.§]!8§.§break§.§!!%§;
            this.§!;§ -= param1;
            this.§9!3§ -= param1;
            this.§2'§();
            return true;
         }
         this.§2'§();
         return false;
      }
      
      public function §=@§() : void
      {
         var _loc1_:§?U§ = §!h§.§2M§(this.mName).shape;
         if(_loc1_.§<!7§() == §?U§.§"H§)
         {
            this.§'<§ = _loc1_.§"L§()[0];
            this.§ h§ = _loc1_.§`!S§;
         }
         else if(_loc1_.§<!7§() == §?U§.§&u§)
         {
            this.§'<§ = new b2Vec2(0,0);
            this.§ h§ = 1.5;
         }
         this.§"!9§ = this.§[!,§.§]!8§.§%!P§.§0g§(this.mName);
         if(!this.§"!9§)
         {
            this.§`o§(null);
         }
         else
         {
            this.§`o§(this.§"!9§.getFrame(0));
         }
      }
      
      public function §`o§(param1:§ !N§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§[!,§.§`!4§.§>A§.§4! §();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§'!>§ == null)
         {
            this.§'!>§ = new §%!G§(_loc2_);
            this.§&!C§.addChild(this.§'!>§);
         }
         else
         {
            this.§'!>§.texture = _loc2_;
         }
         if(param1)
         {
            this.§'!>§.x = -param1.pivotX - this.§'<§.x / §0!Z§.§+n§;
            this.§'!>§.y = -param1.pivotY - this.§'<§.y / §0!Z§.§+n§;
         }
         else
         {
            this.§'!>§.x = -this.§'!>§.width / 2;
            this.§'!>§.y = -this.§'!>§.height / 2;
         }
         this.§'!>§.scaleX = _loc3_;
         this.§'!>§.scaleY = _loc3_;
         this.§2'§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§,!_§)
         {
            this.§"+§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§%!§(param1);
            this.§7B§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§%!%§(param1,param2);
            }
         }
      }
      
      public function §%!§(param1:Number) : void
      {
         if(this.set > 0)
         {
            this.set -= param1;
            if(this.set <= 0)
            {
               this.§'y§();
            }
         }
         else if(this.§ !K§ <= 0 && Math.random() * §]E§ < param1 && this.§[!,§.mSlingShotState)
         {
            this.§72§();
         }
      }
      
      public function §'y§() : void
      {
         this.set = 0;
         this.§`o§(this.§"!9§.getFrame(0));
      }
      
      public function §72§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.set = §7!@§;
         this.§`o§(this.§"!9§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §7B§(param1:Number) : void
      {
         if(this.§ !K§ > 0)
         {
            this.§ !K§ -= param1;
            if(this.§ !K§ <= 0)
            {
               this.§78§();
            }
         }
         else if(this.set <= 0 && Math.random() * §#!W§ < param1)
         {
            this.§9!O§();
         }
      }
      
      public function §78§() : void
      {
         this.§ !K§ = 0;
         this.§`o§(this.§"!9§.getFrame(0));
      }
      
      public function §9!O§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§ !K§ > 0)
         {
            this.§78§();
         }
         if(this.set > 0)
         {
            this.§'y§();
         }
         if(param1 < 0)
         {
            param1 = §=!D§.§6c§;
         }
         this.§ !K§ = §4!,§;
         this.§`o§(this.§"!9§.getSubAnimation("yell").getFrame(0));
         if(this.§#+§ || this.§,!_§ || param2)
         {
            §?w§.§[O§(param1,this.§?e§);
         }
         else
         {
            §?w§.§[O§(param1,this.§?e§,§^]§);
         }
      }
      
      public function §%!%§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§"+§ > 0)
         {
            this.§"+§ -= param1;
            if(this.§"+§ <= 0)
            {
               ++this.§#,§;
               this.§"P§ *= 0.4;
               if(!this.§#+§ && this.§#,§ < 2)
               {
                  if(this.§#,§ > 1 && this.§"P§ < -1)
                  {
                     this.§"P§ = -1;
                  }
                  this.§=!N§ = this.§"P§;
                  this.§"+§ = §"e§;
                  this.§"+§ *= Math.abs(this.§=!N§) / 2;
                  this.§%1§ = this.§"+§;
                  this.§71§ = 0;
                  this.§6!W§ = 0;
               }
               else if(!this.§#+§ && param2)
               {
                  this.§7X§(2.25);
               }
               else
               {
                  this.§"+§ = 0;
                  this.§]!A§ = 0;
                  this.§71§ = 0;
                  this.§"P§ = 0;
               }
            }
            else
            {
               if(this.§"+§ >= this.§%1§ / 2)
               {
                  _loc3_ = (this.§%1§ - this.§"+§) / (this.§%1§ / 2);
                  _loc3_ = § 8§.§7u§(_loc3_);
                  this.§]!A§ = _loc3_ * this.§=!N§;
               }
               else
               {
                  _loc3_ = (this.§%1§ / 2 - this.§"+§) / (this.§%1§ / 2);
                  _loc3_ = § 8§.§7u§(_loc3_,false);
                  this.§]!A§ = this.§=!N§ + _loc3_ * -this.§=!N§;
               }
               this.§71§ = 360 * § 8§.§7u§((this.§%1§ - this.§"+§) / this.§%1§) * this.§6!W§;
            }
            this.§2'§();
         }
         else if(Math.random() * §`I§ < param1 && !this.§#+§ && !this.§,!_§ && !this.§@!&§)
         {
            this.§7X§();
         }
      }
      
      public function §7X§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§#,§ = 0;
         this.§"+§ = §"e§;
         this.§]!A§ = 0;
         this.§=!N§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§"P§ = this.§=!N§;
         this.§"+§ *= Math.abs(this.§=!N§) / 3;
         this.§%1§ = this.§"+§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§6!W§ = 0;
         }
         else if(this.§"+§ < 350)
         {
            this.§6!W§ = 0;
         }
         else
         {
            this.§6!W§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§6!W§ = Math.random() > 0.5 ? Number(this.§6!W§) : Number(0);
         }
      }
      
      public function §2'§() : void
      {
         this.§&!C§.x = this.§+!L§ / §0!Z§.§+n§;
         this.§&!C§.y = (this.§!;§ + this.§]!A§) / §0!Z§.§+n§;
         this.§&!C§.rotation = this.§71§ / 180 * Math.PI;
      }
      
      public function §'$§() : void
      {
         this.§@!&§ = true;
         this.§#+§ = false;
         this.§,!_§ = false;
         this.§#,§ = 0;
         this.§-K§ = 0;
         this.§"+§ = 0;
         this.§"+§ = 0;
         this.§]!A§ = 0;
         this.§71§ = 0;
         this.§"P§ = 0;
         this.§6!W§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§+!L§) * (param1 - this.§+!L§) + (param2 - this.§!;§) * (param2 - this.§!;§));
         if(_loc3_ <= this.§ h§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§+!L§ >= param3 && this.§+!L§ <= param4 && this.§!;§ >= param1 && this.§!;§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§+!L§ != param1 || this.§!;§ != param2)
         {
            _loc3_ = true;
         }
         this.§+!L§ = param1;
         this.§!;§ = param2;
         this.§-K§ = 100;
         this.§2'§();
         if(_loc3_)
         {
            this.§[!,§.§5K§();
         }
      }
      
      public function §'![§() : §%!G§
      {
         return this.§'!>§;
      }
      
      public function get §import§() : Number
      {
         return this.§"+§;
      }
      
      public function get §+B§() : Number
      {
         return this.§-K§;
      }
      
      public function set §+B§(param1:Number) : void
      {
         this.§-K§ = param1;
      }
      
      public function get §1A§() : Number
      {
         return this.§8!Q§;
      }
      
      public function get §<v§() : Boolean
      {
         return this.§#+§;
      }
      
      public function get radius() : Number
      {
         return this.§ h§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§&!C§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §1A§(param1:Number) : void
      {
         this.§8!Q§ = param1;
      }
      
      public function get §-&§() : Number
      {
         return this.§]"§;
      }
      
      public function set §-&§(param1:Number) : void
      {
         this.§]"§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§-§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§-§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§+!L§;
      }
      
      public function get y() : Number
      {
         return this.§!;§;
      }
      
      public function get §%!W§() : Number
      {
         return this.§+8§;
      }
      
      public function get §+2§() : Number
      {
         return this.§2,§;
      }
   }
}
