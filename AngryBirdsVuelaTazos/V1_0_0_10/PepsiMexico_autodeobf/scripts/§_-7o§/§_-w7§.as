package §_-7o§
{
   import §_-0y§.§_-B3§;
   import §_-0y§.§_-DE§;
   import §_-I1§.§_-2N§;
   import §_-KS§.§_-3l§;
   import §_-KS§.§_-6i§;
   import §_-KS§.§_-Wt§;
   import §_-KS§.§_-ia§;
   import §_-jY§.Texture;
   import §_-ot§.§_-02§;
   import §_-se§.DisplayObject;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   
   public class §_-w7§
   {
      
      public static const §_-09§:int = 0;
      
      public static const §_-Or§:int = 1;
      
      public static const §_-ve§:int = 2;
      
      public static const §_-ev§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-7X§:String = "Effect_TrailBig_Bird";
      
      public static const §_-8§:String = "Effect_Trail_Sparkle";
      
      public static const §_-Ar§:String = "Effect_Floating_Score";
      
      public static const §_-uo§:String = "Effect_Floating_Text";
      
      public static const §_-c6§:String = "Effect_Explosion_Particle";
      
      public static const §_-nT§:String = "Effect_Explosion_Core";
      
      public static const §_-WS§:String = "Effect_Pig_Destruction";
      
      public static const §_-Yt§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-Hl§:String = "Effect_Bird_Destruction";
      
      public static const §_-mu§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-gj§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-6U§:int = 0;
      
      public static const §_-PY§:int = 1;
      
      public static const §_-kF§:int = 2;
      
      public static const §_-O6§:int = 3;
      
      public static const §_-v5§:int = 4;
      
      public static const §_-gs§:int = 5;
      
      public static const §_-iL§:int = 6;
      
      public static const §_-IS§:int = 7;
      
      public static const §_-5U§:int = 8;
      
      public static const §_-Au§:int = 9;
      
      public static const §_-4O§:int = 10;
      
      public static const §_-k-§:int = 11;
      
      public static const §_-AK§:int = 12;
      
      public static const §_-Hh§:int = 13;
      
      public static const §_-mx§:int = 14;
      
      public static const §_-Ix§:int = 15;
      
      public static const §_-uO§:int = 16;
      
      public static const §_-S§:int = 17;
      
      public static const §_-hF§:int = 18;
      
      public static const §_-VO§:Boolean = true;
       
      
      public var §_-oI§:int;
      
      public var §_-LD§:int;
      
      public var §_-ML§:String;
      
      public var §_-6l§:Number;
      
      public var §_-79§:Number;
      
      public var §_-1r§:Number;
      
      public var §_-ED§:Number;
      
      public var §_-Gc§:Number = 0;
      
      public var §_-O1§:Number;
      
      public var §_-2S§:Number;
      
      public var §_-5z§:String;
      
      public var §_-bd§:Number = -1;
      
      public var §_-aD§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-N9§:Sprite;
      
      private var §_-aP§:§_-DE§;
      
      private var §_-Tk§:int;
      
      private var §_-eV§:§_-3l§;
      
      private var §_-DZ§:Boolean;
      
      private var §_-T9§:§_-6i§;
      
      private var §_-NZ§:§_-ia§;
      
      public function §_-w7§(param1:§_-6i§, param2:§_-ia§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1)
      {
         this.§_-N9§ = new Sprite();
         super();
         this.§_-T9§ = param1;
         this.§_-NZ§ = param2;
         this.§_-ML§ = param3;
         this.§_-oI§ = param5;
         this.§_-LD§ = param4;
         this.§_-aD§ = param10;
         this.§_-5z§ = param9;
         this.§_-6l§ = 0;
         this.§_-2S§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-O1§ = param15;
         this.§_-1r§ = param11;
         this.§_-79§ = param12;
         this.§_-Gc§ = param14;
         this.§_-ED§ = param13;
         this.§_-sl§();
         this.§_-kR§();
         if(this.§_-oI§ == §_-Or§)
         {
            this.§_-bd§ = §_-2N§.§_-iP§.§_-iZ§.§_-Ab§ + this.§_-N9§.height * §_-B3§.§_-s8§;
         }
      }
      
      public static function §_-MH§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-6U§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-kF§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-PY§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-gs§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-v5§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-O6§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-hF§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-iL§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-Au§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-IS§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-5U§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-4O§;
         }
         return §_-k-§;
      }
      
      public static function §_-B-§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-AK§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-mx§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-Hh§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-S§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-uO§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-Ix§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-Ix§;
         }
         return §_-uO§;
      }
      
      public function get §_-gi§() : DisplayObject
      {
         return this.§_-N9§;
      }
      
      public function §_-4y§(param1:Number, param2:Number) : void
      {
      }
      
      private function §_-sl§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:Sprite = null;
         var _loc5_:§_-3l§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§_-ML§)
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
            case §_-7X§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-8§:
               this.createParticle("??");
               break;
            case §_-WS§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-Yt§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-gj§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-nT§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-c6§:
               _loc2_ = 1 + _loc1_ % 5;
               _loc3_ = "particle" + _loc2_;
               break;
            case §_-Ar§:
            case §_-uo§:
               _loc4_ = new Sprite();
               _loc5_ = this.§_-T9§.§_-bs§("NUMBERS");
               this.§_-aP§ = new §_-DE§(_loc4_,_loc5_);
               this.§_-aP§.§_-Er§(parseInt(this.§_-5z§));
               if(parseInt(this.§_-5z§) == 10000)
               {
                  switch(this.§_-aD§)
                  {
                     case §_-AK§:
                        this.createParticle("SCORE_BIRD_RED");
                        break;
                     case §_-Hh§:
                        this.createParticle("SCORE_BIRD_BLUE");
                        break;
                     case §_-Ix§:
                        this.createParticle("SCORE_BIRD_GREEN");
                        break;
                     case §_-S§:
                        this.createParticle("SCORE_BIRD_BLACK");
                        break;
                     case §_-uO§:
                        this.createParticle("SCORE_BIRD_WHITE");
                        break;
                     case §_-mx§:
                        this.createParticle("SCORE_BIRD_YELLOW");
                        break;
                     default:
                        this.§_-N9§.addChild(_loc4_);
                  }
               }
               else if(parseInt(this.§_-5z§) == 5000)
               {
                  this.createParticle("SCORE_PIG");
               }
               else
               {
                  this.§_-N9§.addChild(_loc4_);
               }
               _loc4_.scaleX = _loc4_.scaleY = 0.75;
               break;
            case §_-mu§:
               switch(this.§_-aD§)
               {
                  case §_-Au§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §_-4O§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-IS§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §_-5U§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §_-k-§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§_-N9§)
               {
                  this.§_-N9§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-Hl§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§_-aD§)
               {
                  case §_-6U§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §_-gs§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §_-PY§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §_-O6§:
                     this.createParticle("??");
                     break;
                  case §_-v5§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §_-kF§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §_-hF§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§_-N9§)
               {
                  this.§_-N9§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-ML§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-Wt§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-eV§ = this.§_-T9§.§_-bs§(param1);
         this.§_-DZ§ = param4;
         if(this.§_-eV§)
         {
            _loc6_ = (_loc5_ = this.§_-eV§.getFrame(0)).texture;
         }
         else
         {
            _loc6_ = this.§_-NZ§.§_-O8§();
         }
         this.§_-Tk§ = param3;
         var _loc7_:§_-N§ = new §_-N§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-O1§;
         this.§_-N9§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX;
            _loc7_.y = -_loc5_.pivotY;
         }
         else
         {
            _loc7_.x = -this.§_-N9§.width / 2;
            _loc7_.y = -this.§_-N9§.height / 2;
         }
      }
      
      public function §_-kR§() : void
      {
         if(this.§_-N9§)
         {
            this.§_-N9§.x = this.mX / §_-B3§.§_-s8§;
            this.§_-N9§.y = this.mY / §_-B3§.§_-s8§;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-Wt§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-N§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§_-6l§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-Tk§ > 0 && this.§_-eV§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-6l§ / 1000 / (1 / _loc3_)) < this.§_-eV§.getFrameCount())
            {
               this.§_-N9§.§_-sL§();
               _loc6_ = (_loc5_ = this.§_-eV§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-N§(_loc6_);
               this.§_-N9§.§_-sL§();
               this.§_-N9§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
            }
            else if(this.§_-DZ§)
            {
               this.§_-N9§.§_-sL§();
            }
         }
         if(this.§_-oI§ == §_-09§)
         {
            this.§_-Wb§(param1);
            if(this.§_-2S§ > 0)
            {
               _loc8_ = 1;
               if(this.§_-ML§ == §_-uo§)
               {
                  if((_loc10_ = this.§_-6l§ / this.§_-2S§) <= 0.2)
                  {
                     _loc9_ = _loc10_ / 0.2;
                  }
                  else if(_loc10_ >= 0.8)
                  {
                     _loc9_ = 1 - (_loc10_ - 0.8) / 0.2;
                  }
                  else
                  {
                     _loc9_ = 1;
                  }
                  _loc8_ = _loc9_ * (0.5 + int(this.§_-5z§) / 5000);
               }
               this.§_-N9§.scaleX = _loc8_;
               this.§_-N9§.scaleY = _loc8_;
            }
            _loc2_ = true;
         }
         else if(this.§_-oI§ == §_-Or§)
         {
            this.§_-Wb§(param1);
            if(this.§_-ML§ == §_-c6§)
            {
               this.§_-N9§.alpha = Math.max(0,Math.min(1,2 * §_-02§.§_-Jm§((this.§_-2S§ - this.§_-6l§) / this.§_-2S§,false)));
               _loc11_ = Math.atan2(-this.§_-79§,this.§_-1r§) * (180 / Math.PI);
               this.§_-N9§.scaleX = Math.max(0.2,this.§_-N9§.alpha);
               this.§_-N9§.scaleY = Math.max(0.2,this.§_-N9§.alpha);
               this.§_-N9§.rotation = (360 - _loc11_) / 180 * Math.PI;
            }
            else if(this.§_-ML§ == §_-Hl§ || this.§_-ML§ == §_-gj§)
            {
               this.§_-N9§.scaleX = this.§_-N9§.scaleY = 0.4 + (this.§_-2S§ - this.§_-6l§) / this.§_-2S§ * 1.6;
            }
            _loc2_ = true;
            if(this.§_-bd§ > 0 && this.mY > this.§_-bd§)
            {
               return false;
            }
         }
         if(this.§_-2S§ > 0 && this.§_-6l§ >= this.§_-2S§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-kR§();
         }
         return true;
      }
      
      public function §_-Wb§(param1:Number) : void
      {
         this.§_-79§ += param1 * this.§_-ED§ / 1000;
         this.mY += this.§_-79§ * param1 / 1000;
         this.mX += this.§_-1r§ * param1 / 1000;
         if(this.§_-Gc§ != 0)
         {
            this.§_-N9§.rotation += this.§_-Gc§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function dispose() : void
      {
         if(this.§_-aP§)
         {
            this.§_-aP§.clear();
            this.§_-aP§ = null;
         }
         if(this.§_-N9§)
         {
            this.§_-N9§.dispose();
            this.§_-N9§ = null;
         }
      }
   }
}
