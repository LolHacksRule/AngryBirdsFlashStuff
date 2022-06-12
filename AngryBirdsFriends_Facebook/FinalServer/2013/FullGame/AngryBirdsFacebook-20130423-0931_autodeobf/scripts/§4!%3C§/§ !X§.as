package §4!<§
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §+!c§.§6!r§;
   import §-f§.§+"R§;
   import §-f§.§8!<§;
   import §-f§.§[!J§;
   import §6!^§.b2Vec2;
   import §<5§.Texture;
   import §<T§.§4!N§;
   import §<T§.§^"5§;
   import §`!G§.§[!8§;
   
   public class § !X§
   {
      
      public static const §1!X§:String = "ChannelSlingshot";
      
      public static const §&w§:Number = 900;
      
      public static const §4!V§:Number = 200;
      
      public static const §4!L§:Number = 200;
      
      public static const §7c§:Number = 1500;
      
      public static const §["F§:Number = 5000;
      
      public static const § !v§:Number = 1000;
      
      public static const §#!Q§:Number = 1000;
       
      
      protected var mName:String;
      
      protected var §4!K§:Number;
      
      protected var §7!#§:Number;
      
      protected var §0!H§:Number;
      
      protected var §8"<§:Number;
      
      private var §7@§:§[!J§;
      
      protected var §!"W§:Number;
      
      protected var §&!9§:Number = 1;
      
      private var §?!T§:Sprite;
      
      protected var §4",§:§4!N§;
      
      private var §8!U§:§ "E§;
      
      protected var §%!v§:§&=§;
      
      private var § s§:Number;
      
      private var §="2§:Boolean = false;
      
      private var §`<§:Boolean = false;
      
      protected var §+5§:Boolean = false;
      
      private var §#!N§:Number;
      
      private var §"`§:Number = 0;
      
      private var §6!§:Number = 0;
      
      private var §4!S§:Number = 0;
      
      private var §=!,§:Number = 1000;
      
      private var §4!§:Number;
      
      private var §2!t§:Number;
      
      private var §9B§:int;
      
      private var §[!v§:Number = 0;
      
      protected var §8!T§:Number;
      
      protected var §""P§:Number;
      
      private var §-v§:Number = 1;
      
      private var §5!^§:Number = 0;
      
      private var §""§:b2Vec2;
      
      private var §<[§:Number = 1;
      
      public function § !X§(param1:§&=§, param2:Sprite, param3:String, param4:Number, param5:Number)
      {
         super();
         this.§%!v§ = param1;
         this.§?!T§ = param2;
         this.mName = param3;
         this.§7@§ = §8!<§.§3"[§(this.mName).§!j§;
         this.§4!K§ = param4;
         this.§7!#§ = param5;
         this.§0!H§ = param4;
         this.§8"<§ = param5;
         this.§!"W§ = 0;
         this.§="2§ = false;
         this.§`<§ = false;
         this.§"`§ = 0;
         this.§2"0§();
         this.§8!T§ = 0;
      }
      
      public function §8""§() : void
      {
         this.§="2§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§?!T§)
         {
            this.§?!T§.dispose();
            this.§?!T§ = null;
         }
      }
      
      public function §<!c§(param1:Number) : void
      {
         if(!this.§`<§ || this.§="2§)
         {
            return;
         }
         if(this.§&!9§ != 0)
         {
            this.§4!S§ = 0;
            this.§[!v§ = 0;
            this.§!"W§ = 0;
            this.§2!t§ = 0;
            this.§&!9§ = 0;
         }
         param1 = Math.min(param1,this.§#!N§);
         this.§4!K§ += param1 * (this.§%!v§.§4!K§ - this.§4!K§) / this.§#!N§;
         this.§7!#§ += param1 * (this.§%!v§.§7!#§ - this.§7!#§) / this.§#!N§;
         this.§7!#§ -= param1 / 50 * (this.§#!N§ / §&w§);
         this.§!"W§ += param1 * (360 - this.§!"W§) / this.§#!N§;
         this.§#!N§ -= param1;
         if(this.§#!N§ <= 0)
         {
            this.§4!K§ = this.§%!v§.§4!K§;
            this.§7!#§ = this.§%!v§.§7!#§;
            this.§`<§ = false;
            this.§="2§ = true;
            this.§!"W§ = 0;
         }
         this.§]`§();
      }
      
      public function §2!K§() : void
      {
         this.§`<§ = true;
         this.§#!N§ = §&w§;
         this.§!H§(§[!J§.§^"?§);
         if(this.§[!v§ != 0)
         {
            this.§7!#§ += this.§[!v§;
            this.§[!v§ = 0;
         }
      }
      
      public function updateGroundControl(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(!this.§="2§ && this.§8!T§ >= 0)
         {
            if(this.§""P§ > this.§%!v§.mLevelMain.§-!z§.§]2§)
            {
               this.applyGravity(this.§%!v§.mLevelMain.§-!z§.§]2§ - this.§""P§);
               this.§8!T§ = -1;
            }
            this.§8!T§ -= param1;
            if(this.§8!T§ <= 0)
            {
               if(this.§4!S§ > 0)
               {
                  this.§8!T§ = this.§4!S§;
                  return;
               }
               _loc2_ = 0;
               if(!isNaN(this.§""P§))
               {
                  _loc2_ = this.§%!v§.mLevelMain.objects.§'n§(this.§4!K§,this.§""P§);
               }
               if(_loc2_ < 0)
               {
                  if(this.applyGravity(param1 / 100))
                  {
                     this.§8!T§ = -1;
                  }
                  else
                  {
                     this.§8!T§ = 0;
                  }
               }
               else if(!this.§%!v§.mLevelMain.objects.§,!§(_loc2_).§[p§)
               {
                  this.§+5§ = false;
                  this.§8!T§ = -1;
               }
               else if(this.§%!v§.mLevelMain.objects.§,!§(_loc2_).§]!!§())
               {
                  this.§+5§ = false;
                  this.§8!T§ = 2000;
               }
               else
               {
                  this.§8!T§ = 500;
               }
            }
         }
      }
      
      public function applyGravity(param1:Number) : Boolean
      {
         this.§7!#§ += param1;
         this.§""P§ += param1;
         if(this.§""P§ > this.§%!v§.mLevelMain.§-!z§.§]2§)
         {
            param1 = this.§""P§ - this.§%!v§.mLevelMain.§-!z§.§]2§;
            this.§7!#§ -= param1;
            this.§""P§ -= param1;
            this.§]`§();
            return true;
         }
         this.§]`§();
         return false;
      }
      
      public function §2"0§() : void
      {
         var _loc1_:§+"R§ = §8!<§.§3"[§(this.mName).shape;
         if(_loc1_.§&"A§() == §+"R§.§"c§)
         {
            this.§""§ = _loc1_.§3V§()[0];
            this.§ s§ = _loc1_.§,>§;
         }
         else if(_loc1_.§&"A§() == §+"R§.§[!>§)
         {
            this.§""§ = new b2Vec2(0,0);
            this.§ s§ = 1.5;
         }
         this.§4",§ = this.§%!v§.mLevelMain.animationManager.getAnimation(this.mName);
         if(!this.§4",§)
         {
            this.§^6§(null);
         }
         else
         {
            this.§^6§(this.§4",§.getFrame(0));
         }
      }
      
      public function §^6§(param1:§^"5§) : void
      {
         var _loc2_:Texture = null;
         var _loc3_:Number = 1;
         if(!param1)
         {
            _loc2_ = this.§%!v§.§3![§.textureManager.§]i§();
         }
         else
         {
            _loc2_ = param1.texture;
            _loc3_ = param1.scale;
         }
         if(this.§8!U§ == null)
         {
            this.§8!U§ = new § "E§(_loc2_);
            this.§?!T§.addChild(this.§8!U§);
         }
         else
         {
            this.§8!U§.texture = _loc2_;
         }
         if(param1)
         {
            this.§8!U§.x = -param1.pivotX - this.§""§.x / §'!S§.§2"<§;
            this.§8!U§.y = -param1.pivotY - this.§""§.y / §'!S§.§2"<§;
         }
         else
         {
            this.§8!U§.x = -this.§8!U§.width / 2;
            this.§8!U§.y = -this.§8!U§.height / 2;
         }
         this.§8!U§.scaleX = _loc3_;
         this.§8!U§.scaleY = _loc3_;
         this.§]`§();
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         this.updateGroundControl(param1);
         if(this.§`<§)
         {
            this.§4!S§ = 0;
            _loc4_ = false;
         }
         if(this.mName != "BIRD_SARDINE")
         {
            this.§ 4§(param1);
            this.§^!G§(param1);
            if(_loc4_ && param3 == true)
            {
               this.§=!y§(param1,param2);
            }
         }
      }
      
      public function § 4§(param1:Number) : void
      {
         if(this.§"`§ > 0)
         {
            this.§"`§ -= param1;
            if(this.§"`§ <= 0)
            {
               this.§!M§();
            }
         }
         else if(this.§6!§ <= 0 && Math.random() * §7c§ < param1 && this.§%!v§.mSlingShotState)
         {
            this.§<4§();
         }
      }
      
      public function §!M§() : void
      {
         this.§"`§ = 0;
         this.§^6§(this.§4",§.getFrame(0));
      }
      
      public function §<4§() : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§"`§ = §4!V§;
         this.§^6§(this.§4",§.getSubAnimation("blink").getFrame(0));
      }
      
      public function §^!G§(param1:Number) : void
      {
         if(this.§6!§ > 0)
         {
            this.§6!§ -= param1;
            if(this.§6!§ <= 0)
            {
               this.§`!x§();
            }
         }
         else if(this.§"`§ <= 0 && Math.random() * §["F§ < param1)
         {
            this.§!H§();
         }
      }
      
      public function §`!x§() : void
      {
         this.§6!§ = 0;
         this.§^6§(this.§4",§.getFrame(0));
      }
      
      public function §!H§(param1:int = -1, param2:Boolean = false) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         if(this.§6!§ > 0)
         {
            this.§`!x§();
         }
         if(this.§"`§ > 0)
         {
            this.§!M§();
         }
         if(param1 < 0)
         {
            param1 = §[!J§.§<!x§;
         }
         this.§6!§ = §4!L§;
         this.§^6§(this.§4",§.getSubAnimation("yell").getFrame(0));
         if(this.§="2§ || this.§`<§ || param2)
         {
            §[!8§.§ "3§(param1,this.§7@§);
         }
         else
         {
            §[!8§.§ "3§(param1,this.§7@§,§1!X§);
         }
      }
      
      public function §=!y§(param1:Number, param2:Boolean) : void
      {
         var _loc3_:Number = NaN;
         if(this.§4!S§ > 0)
         {
            this.§4!S§ -= param1;
            if(this.§4!S§ <= 0)
            {
               ++this.§9B§;
               this.§2!t§ *= 0.4;
               if(!this.§="2§ && this.§9B§ < 2)
               {
                  if(this.§9B§ > 1 && this.§2!t§ < -1)
                  {
                     this.§2!t§ = -1;
                  }
                  this.§4!§ = this.§2!t§;
                  this.§4!S§ = §#!Q§;
                  this.§4!S§ *= Math.abs(this.§4!§) / 2;
                  this.§=!,§ = this.§4!S§;
                  this.§!"W§ = 0;
                  this.§&!9§ = 0;
               }
               else if(!this.§="2§ && param2)
               {
                  this.§<!E§(2.25);
               }
               else
               {
                  this.§4!S§ = 0;
                  this.§[!v§ = 0;
                  this.§!"W§ = 0;
                  this.§2!t§ = 0;
               }
            }
            else
            {
               if(this.§4!S§ >= this.§=!,§ / 2)
               {
                  _loc3_ = (this.§=!,§ - this.§4!S§) / (this.§=!,§ / 2);
                  _loc3_ = §6!r§.§+3§(_loc3_);
                  this.§[!v§ = _loc3_ * this.§4!§;
               }
               else
               {
                  _loc3_ = (this.§=!,§ / 2 - this.§4!S§) / (this.§=!,§ / 2);
                  _loc3_ = §6!r§.§+3§(_loc3_,false);
                  this.§[!v§ = this.§4!§ + _loc3_ * -this.§4!§;
               }
               this.§!"W§ = 360 * §6!r§.§+3§((this.§=!,§ - this.§4!S§) / this.§=!,§) * this.§&!9§;
            }
            this.§]`§();
         }
         else if(Math.random() * § !v§ < param1 && !this.§="2§ && !this.§`<§ && !this.§+5§)
         {
            this.§<!E§();
         }
      }
      
      public function §<!E§(param1:Number = 1) : void
      {
         if(this.mName == "BIRD_SARDINE")
         {
            return;
         }
         this.§9B§ = 0;
         this.§4!S§ = §#!Q§;
         this.§[!v§ = 0;
         this.§4!§ = -(0.75 + Math.random() * 1.5) * param1;
         this.§2!t§ = this.§4!§;
         this.§4!S§ *= Math.abs(this.§4!§) / 3;
         this.§=!,§ = this.§4!S§;
         if(this.mName == "BIRD_WHITE" || this.mName == "BIRD_BLACK" || this.mName == "RED_BIG")
         {
            this.§&!9§ = 0;
         }
         else if(this.§4!S§ < 350)
         {
            this.§&!9§ = 0;
         }
         else
         {
            this.§&!9§ = Math.random() > 0.5 ? Number(1) : Number(-1);
            this.§&!9§ = Math.random() > 0.5 ? Number(this.§&!9§) : Number(0);
         }
      }
      
      public function §]`§() : void
      {
         this.§?!T§.x = this.§4!K§ / §'!S§.§2"<§;
         this.§?!T§.y = (this.§7!#§ + this.§[!v§) / §'!S§.§2"<§;
         this.§?!T§.rotation = this.§!"W§ / 180 * Math.PI;
      }
      
      public function §,";§() : void
      {
         this.§+5§ = true;
         this.§="2§ = false;
         this.§`<§ = false;
         this.§9B§ = 0;
         this.§8!T§ = 0;
         this.§4!S§ = 0;
         this.§4!S§ = 0;
         this.§[!v§ = 0;
         this.§!"W§ = 0;
         this.§2!t§ = 0;
         this.§&!9§ = 0;
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Number = Math.sqrt((param1 - this.§4!K§) * (param1 - this.§4!K§) + (param2 - this.§7!#§) * (param2 - this.§7!#§));
         if(_loc3_ <= this.§ s§ * 1.1)
         {
            return true;
         }
         return false;
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         return this.§4!K§ >= param3 && this.§4!K§ <= param4 && this.§7!#§ >= param1 && this.§7!#§ <= param2;
      }
      
      public function setPosition(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         if(this.§4!K§ != param1 || this.§7!#§ != param2)
         {
            _loc3_ = true;
         }
         this.§4!K§ = param1;
         this.§7!#§ = param2;
         this.§8!T§ = 100;
         this.§]`§();
         if(_loc3_)
         {
            this.§%!v§.§5!r§();
         }
      }
      
      public function §`j§() : § "E§
      {
         return this.§8!U§;
      }
      
      public function get §??§() : Number
      {
         return this.§4!S§;
      }
      
      public function get §]!$§() : Number
      {
         return this.§8!T§;
      }
      
      public function set §]!$§(param1:Number) : void
      {
         this.§8!T§ = param1;
      }
      
      public function get §+"-§() : Number
      {
         return this.§-v§;
      }
      
      public function get §'K§() : Boolean
      {
         return this.§="2§;
      }
      
      public function get radius() : Number
      {
         return this.§ s§;
      }
      
      public function get sprite() : Sprite
      {
         return this.§?!T§;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set §+"-§(param1:Number) : void
      {
         this.§-v§ = param1;
      }
      
      public function get §5J§() : Number
      {
         return this.§5!^§;
      }
      
      public function set §5J§(param1:Number) : void
      {
         this.§5!^§ = param1;
      }
      
      public function get scale() : Number
      {
         return this.§<[§;
      }
      
      public function set scale(param1:Number) : void
      {
         this.§<[§ = param1;
      }
      
      public function get x() : Number
      {
         return this.§4!K§;
      }
      
      public function get y() : Number
      {
         return this.§7!#§;
      }
      
      public function get §[q§() : Number
      {
         return this.§0!H§;
      }
      
      public function get §%R§() : Number
      {
         return this.§8"<§;
      }
      
      public function §0s§() : Boolean
      {
         return this.§+5§;
      }
   }
}
