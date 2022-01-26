package §_-DS§
{
   import §_-1P§.§_-3p§;
   import §_-1P§.§_-XN§;
   import §_-1P§.§_-lC§;
   import §_-1P§.§_-uT§;
   import §_-Hw§.§_-3C§;
   import §_-RG§.§_-bT§;
   import §_-S4§.Texture;
   import §_-pF§.DisplayObject;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import §_-rp§.§_-3S§;
   import §_-rp§.§_-c5§;
   
   public class §_-Aa§
   {
      
      public static const §_-bq§:int = 0;
      
      public static const include:int = 1;
      
      public static const §_-TF§:int = 2;
      
      public static const §_-tZ§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-8m§:String = "Effect_TrailBig_Bird";
      
      public static const §_-DU§:String = "Effect_Trail_Sparkle";
      
      public static const §_-6h§:String = "Effect_Floating_Score";
      
      public static const §_-N6§:String = "Effect_Floating_Text";
      
      public static const §_-fV§:String = "Effect_Explosion_Particle";
      
      public static const §_-PO§:String = "Effect_Explosion_Core";
      
      public static const §_-7T§:String = "Effect_Pig_Destruction";
      
      public static const §_-K1§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-GF§:String = "Effect_Bird_Destruction";
      
      public static const §_-12§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-a9§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-rc§:int = 0;
      
      public static const §_-dT§:int = 1;
      
      public static const §_-ke§:int = 2;
      
      public static const §_-bf§:int = 3;
      
      public static const §_-fp§:int = 4;
      
      public static const §_-53§:int = 5;
      
      public static const §_-TU§:int = 6;
      
      public static const §_-YP§:int = 7;
      
      public static const §_-cC§:int = 8;
      
      public static const §_-LQ§:int = 9;
      
      public static const §_-TX§:int = 10;
      
      public static const §_-lB§:int = 11;
      
      public static const §_-k7§:int = 12;
      
      public static const §_-6R§:int = 13;
      
      public static const §_-2e§:int = 14;
      
      public static const §_-3D§:int = 15;
      
      public static const §_-tO§:int = 16;
      
      public static const §_-CD§:int = 17;
      
      public static const §_-GS§:int = 18;
      
      public static const §_-Yc§:Boolean = true;
       
      
      public var §_-MC§:int;
      
      public var §_-Q7§:int;
      
      public var §_-qu§:String;
      
      public var §_-8B§:Number;
      
      public var §_-1e§:Number;
      
      public var §_-EM§:Number;
      
      public var §_-3j§:Number;
      
      public var §_-5-§:Number = 0;
      
      public var §_-RM§:Number;
      
      public var §_-ej§:Number;
      
      public var §_-E0§:String;
      
      public var §_-Ad§:Number = -1;
      
      public var §_-dC§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-5k§:Sprite;
      
      private var §_-1r§:§_-3S§;
      
      private var §_-Ai§:int;
      
      private var §_-MD§:§_-uT§;
      
      private var §_-qg§:Boolean;
      
      private var §_-S-§:§_-lC§;
      
      private var §_-Li§:§_-3p§;
      
      public function §_-Aa§(param1:§_-lC§, param2:§_-3p§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1)
      {
         this.§_-5k§ = new Sprite();
         super();
         this.§_-S-§ = param1;
         this.§_-Li§ = param2;
         this.§_-qu§ = param3;
         this.§_-MC§ = param5;
         this.§_-Q7§ = param4;
         this.§_-dC§ = param10;
         this.§_-E0§ = param9;
         this.§_-8B§ = 0;
         this.§_-ej§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-RM§ = param15;
         this.§_-EM§ = param11;
         this.§_-1e§ = param12;
         this.§_-5-§ = param14;
         this.§_-3j§ = param13;
         this.§_-pZ§();
         this.§_-2s§();
         if(this.§_-MC§ == include)
         {
            this.§_-Ad§ = §_-3C§.§_-bz§.§_-tB§.§_-JX§ + this.§_-5k§.height * §_-c5§.§_-Wa§;
         }
      }
      
      public static function §_-Am§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-rc§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-ke§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-dT§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-53§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-fp§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-bf§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-GS§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-TU§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-LQ§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-YP§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-cC§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-TX§;
         }
         return §_-lB§;
      }
      
      public static function §_-2H§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-k7§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-2e§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-6R§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-CD§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-tO§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-3D§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-3D§;
         }
         return §_-tO§;
      }
      
      public function get §_-Yp§() : DisplayObject
      {
         return this.§_-5k§;
      }
      
      public function §_-np§(param1:Number, param2:Number) : void
      {
      }
      
      private function §_-pZ§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:§_-uT§ = null;
         _loc1_ = Math.random() * 100;
         loop0:
         switch(this.§_-qu§)
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
            case §_-8m§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-DU§:
               this.createParticle("??");
               break;
            case §_-7T§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-K1§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-a9§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-PO§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-fV§:
               _loc2_ = 1 + _loc1_ % 5;
               _loc3_ = "particle" + _loc2_;
               break;
            case §_-6h§:
            case §_-N6§:
               if(parseInt(this.§_-E0§) != 10000)
               {
                  if(parseInt(this.§_-E0§) == 5000)
                  {
                     this.createParticle("SCORE_PIG");
                     break;
                  }
                  _loc6_ = new Sprite();
                  _loc7_ = this.§_-S-§.§_-9B§("NUMBERS");
                  this.§_-1r§ = new §_-3S§(_loc6_,_loc7_);
                  this.§_-1r§.§_-jO§(parseInt(this.§_-E0§));
                  this.§_-5k§.addChild(_loc6_);
                  _loc6_.scaleX = _loc6_.scaleY = 0.75;
                  break;
               }
               switch(this.§_-dC§)
               {
                  case §_-k7§:
                     this.createParticle("SCORE_BIRD_RED");
                     break loop0;
                  case §_-6R§:
                     this.createParticle("SCORE_BIRD_BLUE");
                     break loop0;
                  case §_-3D§:
                     this.createParticle("SCORE_BIRD_GREEN");
                     break loop0;
                  case §_-CD§:
                     this.createParticle("SCORE_BIRD_BLACK");
                     break loop0;
                  case §_-tO§:
                     this.createParticle("SCORE_BIRD_WHITE");
                     break loop0;
                  case §_-2e§:
                     this.createParticle("SCORE_BIRD_YELLOW");
                     break loop0;
                  default:
                     _loc6_ = new Sprite();
                     _loc7_ = this.§_-S-§.§_-9B§("NUMBERS");
                     this.§_-1r§ = new §_-3S§(_loc6_,_loc7_);
                     this.§_-1r§.§_-jO§(parseInt(this.§_-E0§));
                     this.§_-5k§.addChild(_loc6_);
                     _loc6_.scaleX = _loc6_.scaleY = 0.75;
               }
               break;
            case §_-12§:
               switch(this.§_-dC§)
               {
                  case §_-LQ§:
                     _loc4_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc4_);
                     break;
                  case §_-TX§:
                     _loc4_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-YP§:
                     _loc4_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc4_);
                     break;
                  case §_-cC§:
                     _loc4_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc4_);
                     break;
                  case §_-lB§:
                     _loc4_ = 1 + _loc1_ % 5;
               }
               if(this.§_-5k§)
               {
                  this.§_-5k§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-GF§:
               _loc5_ = 1 + _loc1_ % 3;
               switch(this.§_-dC§)
               {
                  case §_-rc§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc5_);
                     break;
                  case §_-53§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc5_);
                     break;
                  case §_-dT§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc5_);
                     break;
                  case §_-bf§:
                     this.createParticle("??");
                     break;
                  case §_-fp§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc5_);
                     break;
                  case §_-ke§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc5_);
                     break;
                  case §_-GS§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc5_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc5_);
               }
               if(this.§_-5k§)
               {
                  this.§_-5k§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-qu§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-XN§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-MD§ = this.§_-S-§.§_-9B§(param1);
         this.§_-qg§ = param4;
         if(this.§_-MD§)
         {
            _loc6_ = (_loc5_ = this.§_-MD§.getFrame(0)).texture;
         }
         else
         {
            _loc6_ = this.§_-Li§.§_-WG§();
         }
         this.§_-Ai§ = param3;
         var _loc7_:§_-gY§ = new §_-gY§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-RM§;
         this.§_-5k§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX;
            _loc7_.y = -_loc5_.pivotY;
         }
         else
         {
            _loc7_.x = -this.§_-5k§.width / 2;
            _loc7_.y = -this.§_-5k§.height / 2;
         }
      }
      
      public function §_-2s§() : void
      {
         if(this.§_-5k§)
         {
            this.§_-5k§.x = this.mX / §_-c5§.§_-Wa§;
            this.§_-5k§.y = this.mY / §_-c5§.§_-Wa§;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-XN§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-gY§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§_-8B§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-Ai§ > 0 && this.§_-MD§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-8B§ / 1000 / (1 / _loc3_)) < this.§_-MD§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-MD§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-gY§(_loc6_);
               this.§_-5k§.§_-h6§(0,-1,true);
               this.§_-5k§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
            }
            else if(this.§_-qg§)
            {
               this.§_-5k§.§_-h6§(0,-1,true);
            }
         }
         if(this.§_-MC§ == §_-bq§)
         {
            this.§_-e0§(param1);
            if(this.§_-ej§ > 0)
            {
               _loc8_ = 1;
               if(this.§_-qu§ == §_-N6§)
               {
                  if((_loc10_ = this.§_-8B§ / this.§_-ej§) <= 0.2)
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
                  _loc8_ = _loc9_ * (0.5 + int(this.§_-E0§) / 5000);
               }
               this.§_-5k§.scaleX = _loc8_;
               this.§_-5k§.scaleY = _loc8_;
            }
            _loc2_ = true;
         }
         else if(this.§_-MC§ == include)
         {
            this.§_-e0§(param1);
            if(this.§_-qu§ == §_-fV§)
            {
               this.§_-5k§.alpha = Math.max(0,Math.min(1,2 * §_-bT§.§_-p8§((this.§_-ej§ - this.§_-8B§) / this.§_-ej§,false)));
               _loc11_ = Math.atan2(-this.§_-1e§,this.§_-EM§) * (180 / Math.PI);
               this.§_-5k§.scaleX = Math.max(0.2,this.§_-5k§.alpha);
               this.§_-5k§.scaleY = Math.max(0.2,this.§_-5k§.alpha);
               this.§_-5k§.rotation = (360 - _loc11_) / 180 * Math.PI;
            }
            else if(this.§_-qu§ == §_-GF§ || this.§_-qu§ == §_-a9§)
            {
               this.§_-5k§.scaleX = this.§_-5k§.scaleY = 0.4 + (this.§_-ej§ - this.§_-8B§) / this.§_-ej§ * 1.6;
            }
            _loc2_ = true;
            if(this.§_-Ad§ > 0 && this.mY > this.§_-Ad§)
            {
               return false;
            }
         }
         if(this.§_-ej§ > 0 && this.§_-8B§ >= this.§_-ej§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-2s§();
         }
         return true;
      }
      
      public function §_-e0§(param1:Number) : void
      {
         this.§_-1e§ += param1 * this.§_-3j§ / 1000;
         this.mY += this.§_-1e§ * param1 / 1000;
         this.mX += this.§_-EM§ * param1 / 1000;
         if(this.§_-5-§ != 0)
         {
            this.§_-5k§.rotation += this.§_-5-§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function dispose() : void
      {
         if(this.§_-1r§)
         {
            this.§_-1r§.clear();
            this.§_-1r§ = null;
         }
         if(this.§_-5k§)
         {
            this.§_-5k§.dispose();
            this.§_-5k§ = null;
         }
      }
   }
}
