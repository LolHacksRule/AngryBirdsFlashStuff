package §_-PP§
{
   import §_-7§.§_-ph§;
   import §_-Cy§.Texture;
   import §_-FQ§.§_-7W§;
   import §_-FQ§.§_-fL§;
   import §_-UX§.DisplayObject;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-ex§.§_-hj§;
   import §_-rQ§.§_-Fv§;
   import §_-rQ§.§_-MV§;
   import §_-rQ§.§_-hA§;
   import §_-rQ§.§_-nh§;
   
   public class §_-qC§
   {
      
      public static const §_-I4§:int = 0;
      
      public static const §_-L4§:int = 1;
      
      public static const §_-OY§:int = 2;
      
      public static const §_-O5§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-GO§:String = "Effect_TrailBig_Bird";
      
      public static const §_-HS§:String = "Effect_Trail_Sparkle";
      
      public static const §_-EF§:String = "Effect_Floating_Score";
      
      public static const §_-oU§:String = "Effect_Floating_Text";
      
      public static const §_-F-§:String = "Effect_Explosion_Particle";
      
      public static const §_-Ac§:String = "Effect_Explosion_Core";
      
      public static const §_-TK§:String = "Effect_Pig_Destruction";
      
      public static const §_-4c§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-T6§:String = "Effect_Bird_Destruction";
      
      public static const §_-KK§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-ns§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-xp§:int = 0;
      
      public static const §_-o§:int = 1;
      
      public static const §_-Kl§:int = 2;
      
      public static const §_-sb§:int = 3;
      
      public static const §_-FD§:int = 4;
      
      public static const §_-Jp§:int = 5;
      
      public static const §_-4V§:int = 6;
      
      public static const §_-Cq§:int = 7;
      
      public static const §_-sI§:int = 8;
      
      public static const §_-2M§:int = 9;
      
      public static const §_-Ce§:int = 10;
      
      public static const §_-hf§:int = 11;
      
      public static const §_-I1§:int = 12;
      
      public static const §_-hl§:int = 13;
      
      public static const §_-2C§:int = 14;
      
      public static const §_-y6§:int = 15;
      
      public static const §_-Mk§:int = 16;
      
      public static const §_-Q-§:int = 17;
      
      public static const §_-Wn§:int = 18;
      
      public static const §_-So§:Boolean = true;
       
      
      public var §_-IN§:int;
      
      public var §_-jZ§:int;
      
      public var §_-xU§:String;
      
      public var §_-Ji§:Number;
      
      public var §_-ot§:Number;
      
      public var §_-l9§:Number;
      
      public var §_-QG§:Number;
      
      public var §_-YV§:Number = 0;
      
      public var §_-K0§:Number;
      
      public var §_-oj§:Number;
      
      public var §_-s4§:String;
      
      public var §_-Lw§:Number = -1;
      
      public var §_-1F§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-dc§:Sprite;
      
      private var §_-Aw§:§_-fL§;
      
      private var §_-Up§:int;
      
      private var §_-ov§:int;
      
      private var §_-ni§:Boolean;
      
      private var §_-5v§:§_-Fv§;
      
      private var §_-YS§:Boolean;
      
      private var §_-rv§:§_-nh§;
      
      private var §_-fS§:§_-hA§;
      
      public function §_-qC§(param1:§_-nh§, param2:§_-hA§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§_-dc§ = new Sprite();
         super();
         this.§_-rv§ = param1;
         this.§_-fS§ = param2;
         this.§_-xU§ = param3;
         this.§_-IN§ = param5;
         this.§_-jZ§ = param4;
         this.§_-1F§ = param10;
         this.§_-ov§ = param16;
         this.§_-ni§ = param17;
         this.§_-s4§ = param9;
         this.§_-Ji§ = 0;
         this.§_-oj§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-K0§ = param15;
         this.§_-l9§ = param11;
         this.§_-ot§ = param12;
         this.§_-YV§ = param14;
         this.§_-QG§ = param13;
         this.§_-HH§();
         this.§_-pP§();
         if(this.§_-IN§ == §_-L4§)
         {
            this.§_-Lw§ = §_-ph§.§_-Tw§.§_-Dw§.§_-X1§ + this.§_-dc§.height * §_-7W§.§_-hT§;
         }
      }
      
      public static function §_-rI§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-xp§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-Kl§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-o§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Jp§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-FD§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-sb§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-Wn§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-4V§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-2M§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-Cq§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-sI§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-Ce§;
         }
         return §_-hf§;
      }
      
      public static function §_-x7§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-I1§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-2C§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-hl§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Q-§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-Mk§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-y6§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-y6§;
         }
         return §_-Mk§;
      }
      
      public function get §_-RJ§() : DisplayObject
      {
         return this.§_-dc§;
      }
      
      public function §_-Hj§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §_-HH§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Sprite = null;
         var _loc7_:§_-Fv§ = null;
         _loc1_ = Math.random() * 100;
         loop0:
         switch(this.§_-xU§)
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
            case §_-GO§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-HS§:
               this.createParticle("??");
               break;
            case §_-TK§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-4c§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-ns§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-Ac§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-F-§:
               _loc2_ = 1 + _loc1_ % 5;
               _loc3_ = "particle" + _loc2_;
               break;
            case §_-EF§:
            case §_-oU§:
               if(parseInt(this.§_-s4§) != 10000)
               {
                  if(parseInt(this.§_-s4§) == 5000)
                  {
                     this.createParticle("SCORE_PIG");
                     break;
                  }
                  _loc6_ = new Sprite();
                  _loc7_ = this.§_-rv§.§_-72§("NUMBERS");
                  this.§_-Aw§ = new §_-fL§(_loc6_,_loc7_);
                  this.§_-Aw§.§_-SH§(parseInt(this.§_-s4§));
                  this.§_-dc§.addChild(_loc6_);
                  _loc6_.scaleX = _loc6_.scaleY = 0.75;
                  break;
               }
               switch(this.§_-1F§)
               {
                  case §_-I1§:
                     this.createParticle("SCORE_BIRD_RED");
                     break loop0;
                  case §_-hl§:
                     this.createParticle("SCORE_BIRD_BLUE");
                     break loop0;
                  case §_-y6§:
                     this.createParticle("SCORE_BIRD_GREEN");
                     break loop0;
                  case §_-Q-§:
                     this.createParticle("SCORE_BIRD_BLACK");
                     break loop0;
                  case §_-Mk§:
                     this.createParticle("SCORE_BIRD_WHITE");
                     break loop0;
                  case §_-2C§:
                     this.createParticle("SCORE_BIRD_YELLOW");
                     break loop0;
                  default:
                     _loc6_ = new Sprite();
                     _loc7_ = this.§_-rv§.§_-72§("NUMBERS");
                     this.§_-Aw§ = new §_-fL§(_loc6_,_loc7_);
                     this.§_-Aw§.§_-SH§(parseInt(this.§_-s4§));
                     this.§_-dc§.addChild(_loc6_);
                     _loc6_.scaleX = _loc6_.scaleY = 0.75;
               }
               break;
            case §_-KK§:
               switch(this.§_-1F§)
               {
                  case §_-2M§:
                     _loc4_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc4_);
                     break;
                  case §_-Ce§:
                     _loc4_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-Cq§:
                     _loc4_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc4_);
                     break;
                  case §_-sI§:
                     _loc4_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc4_);
                     break;
                  case §_-hf§:
                     _loc4_ = 1 + _loc1_ % 5;
               }
               if(this.§_-dc§)
               {
                  this.§_-dc§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-T6§:
               _loc5_ = 1 + _loc1_ % 3;
               switch(this.§_-1F§)
               {
                  case §_-xp§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc5_);
                     break;
                  case §_-Jp§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc5_);
                     break;
                  case §_-o§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc5_);
                     break;
                  case §_-sb§:
                     this.createParticle("??");
                     break;
                  case §_-FD§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc5_);
                     break;
                  case §_-Kl§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc5_);
                     break;
                  case §_-Wn§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc5_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc5_);
               }
               if(this.§_-dc§)
               {
                  this.§_-dc§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-xU§,null,this.§_-ov§,this.§_-ni§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-MV§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-5v§ = this.§_-rv§.§_-72§(param1);
         this.§_-YS§ = param4;
         if(this.§_-5v§)
         {
            _loc6_ = (_loc5_ = this.§_-5v§.getFrame(0)).texture;
         }
         else
         {
            _loc6_ = this.§_-fS§.§_-qL§();
         }
         this.§_-Up§ = param3;
         var _loc7_:§_-2S§ = new §_-2S§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-K0§;
         this.§_-dc§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX;
            _loc7_.y = -_loc5_.pivotY;
         }
         else
         {
            _loc7_.x = -this.§_-dc§.width / 2;
            _loc7_.y = -this.§_-dc§.height / 2;
         }
      }
      
      public function §_-pP§() : void
      {
         if(this.§_-dc§)
         {
            this.§_-dc§.x = this.mX / §_-7W§.§_-hT§;
            this.§_-dc§.y = this.mY / §_-7W§.§_-hT§;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-MV§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-2S§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§_-Ji§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-Up§ > 0 && this.§_-5v§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-Ji§ / 1000 / (1 / _loc3_)) < this.§_-5v§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-5v§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-2S§(_loc6_);
               this.§_-dc§.§_-zM§(0,-1,true);
               this.§_-dc§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
            }
            else if(this.§_-YS§)
            {
               this.§_-dc§.§_-zM§(0,-1,true);
            }
         }
         if(this.§_-IN§ == §_-I4§)
         {
            this.§_-N9§(param1);
            if(this.§_-oj§ > 0)
            {
               _loc8_ = 1;
               if(this.§_-xU§ == §_-oU§)
               {
                  if((_loc10_ = this.§_-Ji§ / this.§_-oj§) <= 0.2)
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
                  _loc8_ = _loc9_ * (0.5 + int(this.§_-s4§) / 5000);
               }
               this.§_-dc§.scaleX = _loc8_;
               this.§_-dc§.scaleY = _loc8_;
            }
            _loc2_ = true;
         }
         else if(this.§_-IN§ == §_-L4§)
         {
            this.§_-N9§(param1);
            if(this.§_-xU§ == §_-F-§)
            {
               this.§_-dc§.alpha = Math.max(0,Math.min(1,2 * §_-hj§.§_-oJ§((this.§_-oj§ - this.§_-Ji§) / this.§_-oj§,false)));
               _loc11_ = Math.atan2(-this.§_-ot§,this.§_-l9§) * (180 / Math.PI);
               this.§_-dc§.scaleX = Math.max(0.2,this.§_-dc§.alpha);
               this.§_-dc§.scaleY = Math.max(0.2,this.§_-dc§.alpha);
               this.§_-dc§.rotation = (360 - _loc11_) / 180 * Math.PI;
            }
            else if(this.§_-xU§ == §_-T6§ || this.§_-xU§ == §_-ns§)
            {
               this.§_-dc§.scaleX = this.§_-dc§.scaleY = 0.4 + (this.§_-oj§ - this.§_-Ji§) / this.§_-oj§ * 1.6;
            }
            _loc2_ = true;
            if(this.§_-Lw§ > 0 && this.mY > this.§_-Lw§)
            {
               return false;
            }
         }
         if(this.§_-oj§ > 0 && this.§_-Ji§ >= this.§_-oj§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-pP§();
         }
         return true;
      }
      
      public function §_-N9§(param1:Number) : void
      {
         this.§_-ot§ += param1 * this.§_-QG§ / 1000;
         this.mY += this.§_-ot§ * param1 / 1000;
         this.mX += this.§_-l9§ * param1 / 1000;
         if(this.§_-YV§ != 0)
         {
            this.§_-dc§.rotation += this.§_-YV§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function dispose() : void
      {
         if(this.§_-Aw§)
         {
            this.§_-Aw§.clear();
            this.§_-Aw§ = null;
         }
         if(this.§_-dc§)
         {
            this.§_-dc§.dispose();
            this.§_-dc§ = null;
         }
      }
   }
}
