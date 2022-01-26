package §_-we§
{
   import §_-2r§.§_-eO§;
   import §_-2r§.§_-sn§;
   import §_-5p§.§_-4§;
   import §_-5p§.§_-Kf§;
   import §_-5p§.§_-Kn§;
   import §_-5p§.§_-b1§;
   import §_-Dk§.Texture;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   import §_-U0§.§_-RP§;
   import §_-bl§.§_-Ie§;
   import §_-gC§.§_-XR§;
   
   public class §_-yB§
   {
      
      public static const §_-TI§:int = 0;
      
      public static const §_-7K§:int = 1;
      
      public static const §_-5§:int = 2;
      
      public static const §_-0-5§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-aa§:String = "Effect_TrailBig_Bird";
      
      public static const §_-qj§:String = "Effect_Trail_Sparkle";
      
      public static const §_-Pa§:String = "Effect_Floating_Score";
      
      public static const §_-y8§:String = "Effect_Floating_Text";
      
      public static const §_-2K§:String = "Effect_Explosion_Particle";
      
      public static const §_-1P§:String = "Effect_Explosion_Core";
      
      public static const §_-i9§:String = "Effect_Pig_Destruction";
      
      public static const §_-9T§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-PD§:String = "Effect_Bird_Destruction";
      
      public static const §_-4P§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-LP§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-6p§:int = 0;
      
      public static const §_-A2§:int = 1;
      
      public static const §_-bX§:int = 2;
      
      public static const §_-E3§:int = 3;
      
      public static const §_-tO§:int = 4;
      
      public static const §_-D4§:int = 5;
      
      public static const §_-wn§:int = 6;
      
      public static const §_-c-§:int = 7;
      
      public static const §_-08§:int = 8;
      
      public static const §_-0-C§:int = 9;
      
      public static const §_-Zq§:int = 10;
      
      public static const §_-In§:int = 11;
      
      public static const §_-MT§:int = 12;
      
      public static const §_-yQ§:int = 13;
      
      public static const §_-Yk§:int = 14;
      
      public static const §_-9d§:int = 15;
      
      public static const §_-1j§:int = 16;
      
      public static const §_-Rp§:int = 17;
      
      public static const §_-0g§:int = 18;
      
      public static const §_-Wb§:Boolean = true;
       
      
      public var §_-E§:int;
      
      public var §_-ko§:int;
      
      public var §_-wZ§:String;
      
      public var §_-3j§:Number;
      
      public var §_-NG§:Number;
      
      public var §_-9f§:Number;
      
      public var §_-8y§:Number;
      
      public var §_-AE§:Number = 0;
      
      public var §_-7Q§:Number;
      
      public var §_-Gr§:Number;
      
      public var §_-LM§:String;
      
      public var §_-F-§:Number = -1;
      
      public var §_-qN§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-Wi§:Sprite;
      
      private var §_-bh§:§_-eO§;
      
      private var §_-32§:int;
      
      private var §_-sk§:int;
      
      private var §_-wc§:Boolean;
      
      private var §_-Ec§:§_-b1§;
      
      private var §_-Xp§:Boolean;
      
      private var §_-Ax§:§_-Kn§;
      
      private var §_-S7§:§_-Kf§;
      
      private var §_-qz§:§_-Ie§;
      
      public function §_-yB§(param1:§_-Kn§, param2:§_-Kf§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         this.§_-Wi§ = new Sprite();
         super();
         this.§_-Ax§ = param1;
         this.§_-S7§ = param2;
         this.§_-wZ§ = param3;
         this.§_-E§ = param5;
         this.§_-ko§ = param4;
         this.§_-qN§ = param10;
         this.§_-sk§ = param16;
         this.§_-wc§ = param17;
         this.§_-LM§ = param9;
         this.§_-3j§ = 0;
         this.§_-Gr§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-7Q§ = param15;
         this.§_-9f§ = param11;
         this.§_-NG§ = param12;
         this.§_-AE§ = param14;
         this.§_-8y§ = param13;
         this.§_-0e§();
         this.§_-T9§();
         if(this.§_-E§ == §_-7K§)
         {
            this.§_-F-§ = §_-XR§.§_-Xv§.§_-BV§.§use§ + this.§_-Wi§.height * §_-sn§.§_-5Y§;
         }
      }
      
      public static function §_-zC§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-6p§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-bX§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-A2§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-D4§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-tO§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-E3§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-0g§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-wn§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-0-C§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-c-§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-08§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-Zq§;
         }
         return §_-In§;
      }
      
      public static function §_-7T§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-MT§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-Yk§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-yQ§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Rp§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-1j§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-9d§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-9d§;
         }
         return §_-1j§;
      }
      
      public function get §_-vW§() : DisplayObject
      {
         return this.§_-Wi§;
      }
      
      public function §_-W7§(param1:Number, param2:Number) : void
      {
      }
      
      protected function §_-0e§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§_-b1§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§_-wZ§)
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
            case §_-aa§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-qj§:
               this.createParticle("??");
               break;
            case §_-i9§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-9T§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-LP§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-1P§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-2K§:
               _loc4_ = 1 + _loc1_ % 5;
               _loc5_ = "particle" + _loc4_;
               break;
            case §_-Pa§:
            case §_-y8§:
               if(parseInt(this.§_-LM§) == 10000 || parseInt(this.§_-LM§) == 5000)
               {
                  _loc8_ = 16777215;
                  switch(this.§_-qN§)
                  {
                     case §_-MT§:
                        _loc8_ = 16058683;
                        break;
                     case §_-yQ§:
                        _loc8_ = 55294;
                        break;
                     case §_-9d§:
                        _loc8_ = 1878602;
                        break;
                     case §_-Rp§:
                        _loc8_ = 3552822;
                        break;
                     case §_-1j§:
                        break;
                     case §_-Yk§:
                        _loc8_ = 16705792;
                  }
                  if(parseInt(this.§_-LM§) == 5000)
                  {
                     _loc8_ = 7201353;
                  }
                  _loc2_ = new Sprite();
                  _loc3_ = this.§_-Ax§.§_-sJ§("NUMBERS");
                  this.§_-bh§ = new §_-eO§(_loc2_,_loc3_,true);
                  this.§_-bh§.§_-eB§(parseInt(this.§_-LM§));
                  this.§_-Wi§.addChild(_loc2_);
                  _loc2_.scaleX = _loc2_.scaleY = 0.75;
                  _loc2_.color = _loc8_;
                  _loc2_.flatten();
                  break;
               }
               _loc2_ = new Sprite();
               _loc3_ = this.§_-Ax§.§_-sJ§("NUMBERS");
               this.§_-bh§ = new §_-eO§(_loc2_,_loc3_);
               this.§_-bh§.§_-eB§(parseInt(this.§_-LM§));
               this.§_-Wi§.addChild(_loc2_);
               _loc2_.scaleX = _loc2_.scaleY = 0.75;
               break;
            case §_-4P§:
               switch(this.§_-qN§)
               {
                  case §_-0-C§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §_-Zq§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-c-§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §_-08§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §_-In§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§_-Wi§)
               {
                  this.§_-Wi§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-PD§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§_-qN§)
               {
                  case §_-6p§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §_-D4§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §_-A2§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §_-E3§:
                     this.createParticle("PARTICLE_BIRDGREEN_" + _loc7_);
                     break;
                  case §_-tO§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §_-bX§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §_-0g§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§_-Wi§)
               {
                  this.§_-Wi§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-wZ§,null,this.§_-sk§,this.§_-wc§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-4§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-Ec§ = this.§_-Ax§.§_-sJ§(param1);
         this.§_-Xp§ = param4;
         if(this.§_-Ec§)
         {
            _loc6_ = (_loc5_ = this.§_-Ec§.getFrame(0)).texture;
            this.§_-7Q§ *= _loc5_.scale;
         }
         else
         {
            _loc6_ = this.§_-S7§.§_-H0§();
         }
         this.§_-32§ = param3;
         var _loc7_:§_-Nd§ = new §_-Nd§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-7Q§;
         this.§_-Wi§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX;
            _loc7_.y = -_loc5_.pivotY;
         }
         else
         {
            _loc7_.x = -this.§_-Wi§.width / 2;
            _loc7_.y = -this.§_-Wi§.height / 2;
         }
      }
      
      public function §_-T9§() : void
      {
         if(this.§_-Wi§)
         {
            this.§_-Wi§.x = this.mX / §_-sn§.§_-5Y§;
            this.§_-Wi§.y = this.mY / §_-sn§.§_-5Y§;
         }
      }
      
      public function §_-1R§(param1:§_-Ie§) : void
      {
         this.§_-qz§ = param1;
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-4§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-Nd§ = null;
         this.§_-3j§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-qz§)
         {
            if(this.§_-qz§.sprite == null || this.§_-qz§.§_-Az§ == null)
            {
               return false;
            }
            this.mX = this.§_-qz§.§_-BO§().GetPosition().x;
            this.mY = this.§_-qz§.§_-BO§().GetPosition().y;
         }
         if(this.§_-32§ > 0 && this.§_-Ec§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-3j§ / 1000 / (1 / _loc3_)) < this.§_-Ec§.getFrameCount())
            {
               _loc6_ = (_loc5_ = this.§_-Ec§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-Nd§(_loc6_);
               this.§_-Wi§.§_-Zd§(0,-1,true);
               this.§_-Wi§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
               _loc7_.scaleX = _loc7_.scaleY = this.§_-7Q§;
            }
            else if(this.§_-Xp§)
            {
               this.§_-Wi§.§_-Zd§(0,-1,true);
            }
         }
         if(this.§_-E§ == §_-7K§)
         {
            this.§_-4X§(param1);
            _loc2_ = this.§_-Tq§(param1);
            if(this.§_-F-§ > 0 && this.mY > this.§_-F-§)
            {
               return false;
            }
         }
         else
         {
            this.§_-4X§(param1);
            _loc2_ = this.§_-Tq§(param1);
         }
         if(this.§_-Gr§ > 0 && this.§_-3j§ >= this.§_-Gr§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-T9§();
         }
         return true;
      }
      
      public function §_-4X§(param1:Number) : void
      {
         this.§_-NG§ += param1 * this.§_-8y§ / 1000;
         this.mY += this.§_-NG§ * param1 / 1000;
         this.mX += this.§_-9f§ * param1 / 1000;
         if(this.§_-AE§ != 0)
         {
            this.§_-Wi§.rotation += this.§_-AE§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function §_-Tq§(param1:Number) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§_-E§ == §_-TI§)
         {
            if(this.§_-Gr§ > 0)
            {
               _loc2_ = 1;
               if(this.§_-wZ§ == §_-y8§)
               {
                  if((_loc4_ = this.§_-3j§ / this.§_-Gr§) <= 0.2)
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
                  _loc2_ = _loc3_ * (0.5 + int(this.§_-LM§) / 5000);
               }
               this.§_-Wi§.scaleX = _loc2_;
               this.§_-Wi§.scaleY = _loc2_;
            }
            return true;
         }
         if(this.§_-E§ == §_-7K§)
         {
            if(this.§_-wZ§ == §_-2K§)
            {
               this.§_-Wi§.alpha = Math.max(0,Math.min(1,2 * §_-RP§.§_-55§((this.§_-Gr§ - this.§_-3j§) / this.§_-Gr§,false)));
               _loc5_ = Math.atan2(-this.§_-NG§,this.§_-9f§) * (180 / Math.PI);
               this.§_-Wi§.scaleX = Math.max(0.2,this.§_-Wi§.alpha);
               this.§_-Wi§.scaleY = Math.max(0.2,this.§_-Wi§.alpha);
               this.§_-Wi§.rotation = (360 - _loc5_) / 180 * Math.PI;
            }
            else if(this.§_-wZ§ == §_-PD§ || this.§_-wZ§ == §_-LP§)
            {
               this.§_-Wi§.scaleX = this.§_-Wi§.scaleY = 0.2 + (this.§_-Gr§ - this.§_-3j§) / this.§_-Gr§ * 1.8;
            }
            return true;
         }
         return false;
      }
      
      public function dispose() : void
      {
         if(this.§_-bh§)
         {
            this.§_-bh§.clear();
            this.§_-bh§ = null;
         }
         if(this.§_-Wi§)
         {
            this.§_-Wi§.dispose();
            this.§_-Wi§ = null;
         }
         if(this.§_-qz§)
         {
            this.§_-qz§ = null;
         }
      }
   }
}
