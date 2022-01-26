package §_-Sr§
{
   import §_-94§.§_-si§;
   import §_-GY§.DisplayObject;
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-Kz§.§_-Uw§;
   import §_-Kz§.§_-c3§;
   import §_-aA§.§_-Tn§;
   import §_-fr§.§_-FX§;
   import §_-my§.§_-GX§;
   import §_-my§.§_-Oi§;
   import §_-my§.§_-V0§;
   import §_-my§.§_-uG§;
   import §_-yp§.Texture;
   
   public class §_-K-§
   {
      
      public static const §_-XL§:int = 0;
      
      public static const §_-AI§:int = 1;
      
      public static const §_-2w§:int = 2;
      
      public static const §_-BZ§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-3k§:String = "Effect_TrailBig_Bird";
      
      public static const §_-5-§:String = "Effect_Trail_Sparkle";
      
      public static const §_-Ge§:String = "Effect_Floating_Score";
      
      public static const §_-3J§:String = "Effect_Floating_Text";
      
      public static const §case§:String = "Effect_Explosion_Particle";
      
      public static const §_-zY§:String = "Effect_Explosion_Core";
      
      public static const §_-dg§:String = "Effect_Pig_Destruction";
      
      public static const §_-QR§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-b9§:String = "Effect_Bird_Destruction";
      
      public static const §_-Qq§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-yv§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-P8§:int = 0;
      
      public static const §_-GR§:int = 1;
      
      public static const §_-Om§:int = 2;
      
      public static const §_-1-§:int = 3;
      
      public static const §_-dQ§:int = 4;
      
      public static const §_-2j§:int = 5;
      
      public static const §_-eJ§:int = 6;
      
      public static const §_-9p§:int = 7;
      
      public static const §_-Ww§:int = 8;
      
      public static const §_-gF§:int = 9;
      
      public static const §_-ER§:int = 10;
      
      public static const §_-CR§:int = 11;
      
      public static const §_-wX§:int = 12;
      
      public static const §_-QF§:int = 13;
      
      public static const §_-uq§:int = 14;
      
      public static const §_-8Q§:int = 15;
      
      public static const §_-TD§:int = 16;
      
      public static const §_-Gp§:int = 17;
      
      public static const §_-f9§:int = 18;
      
      public static const §_-1t§:Boolean = true;
       
      
      public var §_-kh§:int;
      
      public var §_-FH§:int;
      
      public var §_-Ws§:String;
      
      public var §_-w-§:Number;
      
      public var §_-1e§:Number;
      
      public var §_-d0§:Number;
      
      public var §_-8s§:Number;
      
      public var §_-Ga§:Number = 0;
      
      public var §_-uV§:Number;
      
      public var §_-5Y§:Number;
      
      public var §_-Nh§:String;
      
      public var §_-y4§:Number = -1;
      
      public var §_-CC§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-N6§:Sprite;
      
      private var §_-Oz§:§_-Uw§;
      
      private var §_-l0§:int;
      
      private var § get§:int;
      
      private var §_-2z§:Boolean;
      
      private var §_-wq§:§_-uG§;
      
      private var §_-dE§:Boolean;
      
      private var §_-Ly§:§_-Oi§;
      
      private var §_-B1§:§_-V0§;
      
      private var §_-ng§:§_-FX§;
      
      public function §_-K-§(param1:§_-Oi§, param2:§_-V0§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§_-N6§ = new Sprite();
         super();
         this.§_-Ly§ = param1;
         this.§_-B1§ = param2;
         this.§_-Ws§ = param3;
         this.§_-kh§ = param5;
         this.§_-FH§ = param4;
         this.§_-CC§ = param10;
         this.§ get§ = param16;
         this.§_-2z§ = param17;
         this.§_-Nh§ = param9;
         this.§_-w-§ = 0;
         this.§_-5Y§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-uV§ = param15;
         this.§_-d0§ = param11;
         this.§_-1e§ = param12;
         this.§_-Ga§ = param14;
         this.§_-8s§ = param13;
         this.§_-Iy§();
         this.§_-26§();
         if(this.§_-kh§ == §_-AI§)
         {
            this.§_-y4§ = §_-si§.§_-HI§.§_-6X§.§_-Ku§ + this.§_-N6§.height * §_-c3§.§_-GA§;
         }
      }
      
      public static function §_-2U§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-P8§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-Om§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-GR§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-2j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-dQ§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-1-§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-f9§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-eJ§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-gF§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-9p§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-Ww§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-ER§;
         }
         return §_-CR§;
      }
      
      public static function §_-eM§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-wX§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-uq§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-QF§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Gp§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-TD§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-8Q§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-8Q§;
         }
         return §_-TD§;
      }
      
      public function get §_-XI§() : DisplayObject
      {
         return this.§_-N6§;
      }
      
      public function §_-aN§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §_-Iy§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§_-uG§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§_-Ws§)
         {
            case PARTICLE_NAME_BIRD_TRAIL1:
               this.createParticle("TRAIL_1");
               break;
            case PARTICLE_NAME_BIRD_TRAIL2:
               this.createParticle("TRAIL_2");
               break;
            case PARTICLE_NAME_BIRD_TRAIL3:
               this.createParticle("TRAIL_3");
               break;
            case §_-3k§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-5-§:
               this.createParticle("??");
               break;
            case §_-dg§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-QR§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-yv§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-zY§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §case§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §_-Ge§:
            case §_-3J§:
               if(parseInt(this.§_-Nh§) == 10000 || parseInt(this.§_-Nh§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§_-CC§)
                  {
                     case §_-wX§:
                        _loc8_ = 16058683;
                        break;
                     case §_-QF§:
                        _loc8_ = 55294;
                        break;
                     case §_-8Q§:
                        _loc8_ = 1878602;
                        break;
                     case §_-Gp§:
                        _loc8_ = 3552822;
                        break;
                     case §_-TD§:
                        break;
                     case §_-uq§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§_-Nh§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§_-Ly§.§_-VW§("NUMBERS");
                  this.§_-Oz§ = new §_-Uw§(_loc2_,_loc3_,true);
                  this.§_-Oz§.§_-I1§(parseInt(this.§_-Nh§));
                  this.§_-N6§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§_-Ly§.§_-VW§("NUMBERS");
               this.§_-Oz§ = new §_-Uw§(_loc2_,_loc3_);
               this.§_-Oz§.§_-I1§(parseInt(this.§_-Nh§));
               this.§_-N6§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §_-Qq§:
               switch(this.§_-CC§)
               {
                  case §_-gF§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §_-ER§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-9p§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §_-Ww§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §_-CR§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§_-N6§)
               {
                  this.§_-N6§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-b9§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§_-CC§)
               {
                  case §_-P8§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §_-2j§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §_-GR§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §_-1-§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §_-dQ§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §_-Om§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §_-f9§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§_-N6§)
               {
                  this.§_-N6§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-Ws§,null,this.§ get§,this.§_-2z§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-GX§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-wq§ = this.§_-Ly§.§_-VW§(param1);
         this.§_-dE§ = param4;
         if(this.§_-wq§)
         {
            _loc6_ = (_loc5_ = this.§_-wq§.getFrame(0)).texture;
            this.§_-uV§ *= _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§_-B1§.§_-Mk§();
         }
         this.§_-l0§ = param3;
         var _loc7_:§_-4W§ = this.§_-bu§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-uV§;
         this.§_-N6§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX * this.§_-uV§;
            _loc7_.y = -_loc5_.pivotY * this.§_-uV§;
         }
         else
         {
            _loc7_.x = -this.§_-N6§.width / 2;
            _loc7_.y = -this.§_-N6§.height / 2;
         }
      }
      
      protected function §_-bu§(param1:Texture) : §_-4W§
      {
         return new §_-4W§(param1,false);
      }
      
      public function §_-26§() : void
      {
         if(this.§_-N6§)
         {
            this.§_-N6§.x = this.mX / §_-c3§.§_-GA§;
            this.§_-N6§.y = this.mY / §_-c3§.§_-GA§;
         }
      }
      
      public function §_-LX§(param1:§_-FX§) : void
      {
         this.§_-ng§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-GX§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-4W§ = null;
         this.§_-w-§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-ng§)
         {
            if(this.§_-ng§.sprite == null || this.§_-ng§.§_-9Z§ == null)
            {
               return false;
            }
            this.mX = this.§_-ng§.§implements§().GetPosition().x;
            this.mY = this.§_-ng§.§implements§().GetPosition().y;
         }
         if(this.§_-l0§ > 0 && this.§_-wq§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-w-§ / 1000 / (1 / _loc3_)) < this.§_-wq§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-wq§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-4W§(_loc6_);
               this.§_-N6§.§_-0-x§(0,-1,true);
               this.§_-N6§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
               _loc7_.scaleX = _loc7_.scaleY = this.§_-uV§;
            }
            else if(this.§_-dE§)
            {
               this.§_-N6§.§_-0-x§(0,-1,true);
            }
         }
         if(this.§_-kh§ == §_-AI§)
         {
            this.§_-U§(param1);
            _loc2_ = this.§_-Fp§(param1);
            if(this.§_-y4§ > 0 && this.mY > this.§_-y4§)
            {
               return false;
            }
         }
         else
         {
            this.§_-U§(param1);
            _loc2_ = this.§_-Fp§(param1);
         }
         if(this.§_-5Y§ > 0 && this.§_-w-§ >= this.§_-5Y§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-26§();
         }
         return true;
      }
      
      public function §_-U§(param1:Number) : void
      {
         this.§_-1e§ += param1 * this.§_-8s§ / 1000;
         this.mY += this.§_-1e§ * param1 / 1000;
         this.mX += this.§_-d0§ * param1 / 1000;
         if(this.§_-Ga§ != 0)
         {
            this.§_-N6§.rotation += this.§_-Ga§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §_-Fp§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§_-kh§ == §_-XL§)
         {
            if(this.§_-5Y§ > 0)
            {
               _loc2_ = 1;
               if(this.§_-Ws§ == §_-3J§)
               {
                  if((_loc4_ = this.§_-w-§ / this.§_-5Y§) <= 0.2)
                  {
                     _loc3_ = _loc4_ / 0.2;
                  }
                  else if(_loc4_ >= 0.8)
                  {
                     _loc3_ = 1 - (_loc4_ - 0.8) / 0.2;
                  }
                  else
                  {
                     _loc3_ = 1;
                  }
                  _loc2_ = _loc3_ * (0.5 + int(this.§_-Nh§) / 5000);
               }
               this.§_-N6§.scaleX = _loc2_;
               this.§_-N6§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§_-kh§ == §_-AI§)
         {
            if(this.§_-Ws§ == §case§)
            {
               this.§_-N6§.alpha = Math.max(0,Math.min(1,2 * §_-Tn§.§_-eb§((this.§_-5Y§ - this.§_-w-§) / this.§_-5Y§,false)));
               _loc5_ = Math.atan2(-this.§_-1e§,this.§_-d0§) * (180 / Math.PI);
               this.§_-N6§.scaleX = Math.max(0.2,this.§_-N6§.alpha);
               this.§_-N6§.scaleY = Math.max(0.2,this.§_-N6§.alpha);
               this.§_-N6§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§_-Ws§ == §_-b9§ || this.§_-Ws§ == §_-yv§)
            {
               this.§_-N6§.scaleX = this.§_-N6§.scaleY = 0.2 + (this.§_-5Y§ - this.§_-w-§) / this.§_-5Y§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§_-Oz§)
         {
            this.§_-Oz§.clear();
            this.§_-Oz§ = null;
         }
         if(this.§_-N6§)
         {
            this.§_-N6§.dispose();
            this.§_-N6§ = null;
         }
         if(this.§_-ng§)
         {
            this.§_-ng§ = null;
         }
      }
   }
}
