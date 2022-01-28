package §_-dH§
{
   import §_-3b§.§_-5p§;
   import §_-3b§.§_-Lf§;
   import §_-3b§.§_-Og§;
   import §_-3b§.§_-Xv§;
   import §_-Di§.§_-47§;
   import §_-Di§.§_-ix§;
   import §_-Q0§.Texture;
   import §_-SE§.DisplayObject;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   import §_-gM§.§_-Em§;
   import §_-pm§.§_-gb§;
   import §_-tW§.§_-lx§;
   
   public class §_-ds§
   {
      
      public static const §_-J5§:int = 0;
      
      public static const §_-qg§:int = 1;
      
      public static const §_-gq§:int = 2;
      
      public static const §_-OG§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-ib§:String = "Effect_TrailBig_Bird";
      
      public static const §_-rF§:String = "Effect_Trail_Sparkle";
      
      public static const §_-AQ§:String = "Effect_Floating_Score";
      
      public static const §_-VD§:String = "Effect_Floating_Text";
      
      public static const §_-s6§:String = "Effect_Explosion_Particle";
      
      public static const §_-5I§:String = "Effect_Explosion_Core";
      
      public static const §_-o2§:String = "Effect_Pig_Destruction";
      
      public static const §_-wx§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-Sz§:String = "Effect_Bird_Destruction";
      
      public static const §_-2i§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-Y5§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-8W§:int = 0;
      
      public static const §_-4E§:int = 1;
      
      public static const §_-31§:int = 2;
      
      public static const §_-Gp§:int = 3;
      
      public static const §_-ue§:int = 4;
      
      public static const §_-2g§:int = 5;
      
      public static const §_-Vo§:int = 6;
      
      public static const §_-tZ§:int = 7;
      
      public static const §_-Fh§:int = 8;
      
      public static const §_-g-§:int = 9;
      
      public static const §_-mh§:int = 10;
      
      public static const §_-NY§:int = 11;
      
      public static const §_-iP§:int = 12;
      
      public static const §_-50§:int = 13;
      
      public static const §_-9L§:int = 14;
      
      public static const §break§:int = 15;
      
      public static const §_-00§:int = 16;
      
      public static const §_-Rj§:int = 17;
      
      public static const §_-vH§:int = 18;
      
      public static const §_-AJ§:Boolean = true;
       
      
      public var §_-S3§:int;
      
      public var §_-Er§:int;
      
      public var §_-hK§:String;
      
      public var §_-eP§:Number;
      
      public var §_-Jv§:Number;
      
      public var §_-vO§:Number;
      
      public var §_-R0§:Number;
      
      public var §_-TC§:Number = 0;
      
      public var §_-8R§:Number;
      
      public var §_-eQ§:Number;
      
      public var §_-RQ§:String;
      
      public var §_-qS§:Number = -1;
      
      public var §_-yP§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §class§:Sprite;
      
      private var §for§:§_-47§;
      
      private var §_-vA§:int;
      
      private var §_-lb§:int;
      
      private var §_-oC§:Boolean;
      
      private var §_-h1§:§_-5p§;
      
      private var §_-uE§:Boolean;
      
      private var §_-LP§:§_-Xv§;
      
      private var §_-wI§:§_-Og§;
      
      private var §_-6q§:§_-lx§;
      
      public function §_-ds§(param1:§_-Xv§, param2:§_-Og§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§class§ = new Sprite();
         super();
         this.§_-LP§ = param1;
         this.§_-wI§ = param2;
         this.§_-hK§ = param3;
         this.§_-S3§ = param5;
         this.§_-Er§ = param4;
         this.§_-yP§ = param10;
         this.§_-lb§ = param16;
         this.§_-oC§ = param17;
         this.§_-RQ§ = param9;
         this.§_-eP§ = 0;
         this.§_-eQ§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-8R§ = param15;
         this.§_-vO§ = param11;
         this.§_-Jv§ = param12;
         this.§_-TC§ = param14;
         this.§_-R0§ = param13;
         this.§_-4u§();
         this.§_-oO§();
         if(this.§_-S3§ == §_-qg§)
         {
            this.§_-qS§ = §_-gb§.§_-ls§.§_-Ts§.§_-p7§ + this.§class§.height * §_-ix§.§_-z8§;
         }
      }
      
      public static function §_-vZ§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-8W§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-31§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-4E§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-2g§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-ue§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-Gp§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-vH§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-Vo§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-g-§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-tZ§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-Fh§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-mh§;
         }
         return §_-NY§;
      }
      
      public static function §_-Y4§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-iP§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-9L§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-50§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Rj§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-00§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §break§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §break§;
         }
         return §_-00§;
      }
      
      public function get §_-H3§() : DisplayObject
      {
         return this.§class§;
      }
      
      public function §_-lo§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §_-4u§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§_-5p§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§_-hK§)
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
            case §_-ib§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-rF§:
               this.createParticle("??");
               break;
            case §_-o2§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-wx§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-Y5§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-5I§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-s6§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §_-AQ§:
            case §_-VD§:
               if(parseInt(this.§_-RQ§) == 10000)
               {
                  _loc8_ = 16777215;
                  switch(this.§_-yP§)
                  {
                     case §_-iP§:
                        _loc8_ = 16058683;
                        break;
                     case §_-50§:
                        _loc8_ = 55294;
                        break;
                     case §break§:
                        _loc8_ = 1878602;
                        break;
                     case §_-Rj§:
                        _loc8_ = 3552822;
                        break;
                     case §_-00§:
                        break;
                     case §_-9L§:
                        _loc8_ = 16705792;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§_-LP§.§_-8-§("NUMBERS");
                  this.§for§ = new §_-47§(_loc2_,_loc3_,true);
                  this.§for§.§_-pJ§(parseInt(this.§_-RQ§));
                  this.§class§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.setColor(_loc8_);
                  _loc2_.flatten();
                  break;
               }
               if(parseInt(this.§_-RQ§) == 5000)
               {
                  this.createParticle("SCORE_PIG");
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§_-LP§.§_-8-§("NUMBERS");
               this.§for§ = new §_-47§(_loc2_,_loc3_);
               this.§for§.§_-pJ§(parseInt(this.§_-RQ§));
               this.§class§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §_-2i§:
               switch(this.§_-yP§)
               {
                  case §_-g-§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §_-mh§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-tZ§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §_-Fh§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §_-NY§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§class§)
               {
                  this.§class§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-Sz§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§_-yP§)
               {
                  case §_-8W§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §_-2g§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §_-4E§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §_-Gp§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §_-ue§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §_-31§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §_-vH§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§class§)
               {
                  this.§class§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-hK§,null,this.§_-lb§,this.§_-oC§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-Lf§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-h1§ = this.§_-LP§.§_-8-§(param1);
         this.§_-uE§ = param4;
         if(this.§_-h1§)
         {
            _loc6_ = (_loc5_ = this.§_-h1§.getFrame(0)).texture;
         }
         else
         {
            _loc6_ = this.§_-wI§.§_-3i§();
         }
         this.§_-vA§ = param3;
         var _loc7_:§_-rl§ = new §_-rl§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-8R§;
         this.§class§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX;
            _loc7_.y = -_loc5_.pivotY;
         }
         else
         {
            _loc7_.x = -this.§class§.width / 2;
            _loc7_.y = -this.§class§.height / 2;
         }
      }
      
      public function §_-oO§() : void
      {
         if(this.§class§)
         {
            this.§class§.x = this.mX / §_-ix§.§_-z8§;
            this.§class§.y = this.mY / §_-ix§.§_-z8§;
         }
      }
      
      public function §_-gr§(param1:§_-lx§) : void
      {
         this.§_-6q§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-Lf§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-rl§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§_-eP§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-6q§)
         {
            if(this.§_-6q§.sprite == null || this.§_-6q§.§_-YF§ == null)
            {
               return false;
            }
            this.mX = this.§_-6q§.§_-UF§().GetPosition().x;
            this.mY = this.§_-6q§.§_-UF§().GetPosition().y;
         }
         if(this.§_-vA§ > 0 && this.§_-h1§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-eP§ / 1000 / (1 / _loc3_)) < this.§_-h1§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-h1§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-rl§(_loc6_);
               this.§class§.§_-0--§(0,-1,true);
               this.§class§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
               _loc7_.scaleX = _loc7_.scaleY = this.§_-8R§;
            }
            else if(this.§_-uE§)
            {
               this.§class§.§_-0--§(0,-1,true);
            }
         }
         if(this.§_-S3§ == §_-J5§)
         {
            this.§_-rd§(param1);
            if(this.§_-eQ§ > 0)
            {
               _loc8_ = 1;
               if(this.§_-hK§ == §_-VD§)
               {
                  if((_loc10_ = this.§_-eP§ / this.§_-eQ§) <= 0.2)
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
                  _loc8_ = _loc9_ * (0.5 + int(this.§_-RQ§) / 5000);
               }
               this.§class§.scaleX = _loc8_;
               this.§class§.scaleY = _loc8_;
            }
            _loc2_ = true;
         }
         else if(this.§_-S3§ == §_-qg§)
         {
            this.§_-rd§(param1);
            if(this.§_-hK§ == §_-s6§)
            {
               this.§class§.alpha = Math.max(0,Math.min(1,2 * §_-Em§.§_-Pj§((this.§_-eQ§ - this.§_-eP§) / this.§_-eQ§,false)));
               _loc11_ = Math.atan2(-this.§_-Jv§,this.§_-vO§) * (180 / Math.PI);
               this.§class§.scaleX = Math.max(0.2,this.§class§.alpha);
               this.§class§.scaleY = Math.max(0.2,this.§class§.alpha);
               this.§class§.rotation = (360 - _loc11_) / 180 * Math.PI;
            }
            else if(this.§_-hK§ == §_-Sz§ || this.§_-hK§ == §_-Y5§)
            {
               this.§class§.scaleX = this.§class§.scaleY = 0.2 + (this.§_-eQ§ - this.§_-eP§) / this.§_-eQ§ * 1.8;
            }
            _loc2_ = true;
            if(this.§_-qS§ > 0 && this.mY > this.§_-qS§)
            {
               return false;
            }
         }
         if(this.§_-eQ§ > 0 && this.§_-eP§ >= this.§_-eQ§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-oO§();
         }
         return true;
      }
      
      public function §_-rd§(param1:Number) : void
      {
         this.§_-Jv§ += param1 * this.§_-R0§ / 1000;
         this.mY += this.§_-Jv§ * param1 / 1000;
         this.mX += this.§_-vO§ * param1 / 1000;
         if(this.§_-TC§ != 0)
         {
            this.§class§.rotation += this.§_-TC§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function dispose() : void
      {
         if(this.§for§)
         {
            this.§for§.clear();
            this.§for§ = null;
         }
         if(this.§class§)
         {
            this.§class§.dispose();
            this.§class§ = null;
         }
         if(this.§_-6q§)
         {
            this.§_-6q§ = null;
         }
      }
   }
}
