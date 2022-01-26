package §_-Vq§
{
   import §_-Ah§.§_-b§;
   import §_-Bp§.§_-5N§;
   import §_-Bp§.§_-9c§;
   import §_-Bp§.§_-Po§;
   import §_-Bp§.§_-wQ§;
   import §_-Q2§.Texture;
   import §_-ZG§.§_-3J§;
   import §_-ez§.§_-Ay§;
   import §_-ez§.§_-ai§;
   import §_-vO§.DisplayObject;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   
   public class §_-gu§
   {
      
      public static const §_-E§:int = 0;
      
      public static const §_-Ii§:int = 1;
      
      public static const §_-Al§:int = 2;
      
      public static const §_-1Q§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §_-dK§:String = "Effect_TrailBig_Bird";
      
      public static const §_-VG§:String = "Effect_Trail_Sparkle";
      
      public static const §_-0d§:String = "Effect_Floating_Score";
      
      public static const §_-ft§:String = "Effect_Floating_Text";
      
      public static const §_-qt§:String = "Effect_Explosion_Particle";
      
      public static const §_-A0§:String = "Effect_Explosion_Core";
      
      public static const §_-gS§:String = "Effect_Pig_Destruction";
      
      public static const §_-Y2§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §_-Fr§:String = "Effect_Bird_Destruction";
      
      public static const §_-jG§:String = "Effect_Block_Destruction_Particles";
      
      public static const §_-LH§:String = "Effect_Block_Destruction_Core";
      
      public static const §_-bk§:int = 0;
      
      public static const §_-QQ§:int = 1;
      
      public static const §_-Ki§:int = 2;
      
      public static const §_-NY§:int = 3;
      
      public static const §_-Lf§:int = 4;
      
      public static const §_-J3§:int = 5;
      
      public static const §_-G5§:int = 6;
      
      public static const §_-2d§:int = 7;
      
      public static const §_-YP§:int = 8;
      
      public static const §_-wJ§:int = 9;
      
      public static const §_-r3§:int = 10;
      
      public static const §_-CL§:int = 11;
      
      public static const §_-O5§:int = 12;
      
      public static const §_-1x§:int = 13;
      
      public static const §_-3z§:int = 14;
      
      public static const §_-8u§:int = 15;
      
      public static const §_-HD§:int = 16;
      
      public static const §_-Jk§:int = 17;
      
      public static const §_-Wi§:int = 18;
      
      public static const §_-i9§:Boolean = true;
       
      
      public var §_-t9§:int;
      
      public var §_-BQ§:int;
      
      public var §_-Jj§:String;
      
      public var §_-7Z§:Number;
      
      public var §case§:Number;
      
      public var §_-Cj§:Number;
      
      public var §_-L9§:Number;
      
      public var §_-AM§:Number = 0;
      
      public var §_-8f§:Number;
      
      public var §_-vu§:Number;
      
      public var §_-8G§:String;
      
      public var §_-bi§:Number = -1;
      
      public var §_-Fm§:int;
      
      public var mX:Number;
      
      public var mY:Number;
      
      private var §_-Ak§:Sprite;
      
      private var §_-sJ§:§_-ai§;
      
      private var §_-kJ§:int;
      
      private var §_-3i§:§_-wQ§;
      
      private var §_-Fl§:Boolean;
      
      private var §_-CP§:§_-Po§;
      
      private var §_-aH§:§_-5N§;
      
      public function §_-gu§(param1:§_-Po§, param2:§_-5N§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1)
      {
         this.§_-Ak§ = new Sprite();
         super();
         this.§_-CP§ = param1;
         this.§_-aH§ = param2;
         this.§_-Jj§ = param3;
         this.§_-t9§ = param5;
         this.§_-BQ§ = param4;
         this.§_-Fm§ = param10;
         this.§_-8G§ = param9;
         this.§_-7Z§ = 0;
         this.§_-vu§ = param8;
         this.mX = param6;
         this.mY = param7;
         this.§_-8f§ = param15;
         this.§_-Cj§ = param11;
         this.§case§ = param12;
         this.§_-AM§ = param14;
         this.§_-L9§ = param13;
         this.§_-3j§();
         this.§_-Ux§();
         if(this.§_-t9§ == §_-Ii§)
         {
            this.§_-bi§ = §_-b§.§_-cK§.§_-k8§.§_-4p§ + this.§_-Ak§.height * §_-Ay§.§_-G0§;
         }
      }
      
      public static function §_-kb§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-bk§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-Ki§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-QQ§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-J3§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-Lf§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-NY§;
         }
         if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
         {
            return §_-Wi§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-G5§;
         }
         if(param1.toUpperCase().indexOf("ICE") >= 0)
         {
            return §_-wJ§;
         }
         if(param1.toUpperCase().indexOf("WOOD") >= 0)
         {
            return §_-2d§;
         }
         if(param1.toUpperCase().indexOf("STONE") >= 0)
         {
            return §_-YP§;
         }
         if(param1.toUpperCase().indexOf("SNOW") >= 0)
         {
            return §_-r3§;
         }
         return §_-CL§;
      }
      
      public static function §_-L2§(param1:String) : int
      {
         if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
         {
            return §_-O5§;
         }
         if(param1.toUpperCase().indexOf("BIRD_YELLOW") >= 0)
         {
            return §_-3z§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLUE") >= 0)
         {
            return §_-1x§;
         }
         if(param1.toUpperCase().indexOf("BIRD_BLACK") >= 0)
         {
            return §_-Jk§;
         }
         if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
         {
            return §_-HD§;
         }
         if(param1.toUpperCase().indexOf("BIRD_GREEN") >= 0)
         {
            return §_-8u§;
         }
         if(param1.toUpperCase().indexOf("PIG") >= 0)
         {
            return §_-8u§;
         }
         return §_-HD§;
      }
      
      public function get §_-iV§() : DisplayObject
      {
         return this.§_-Ak§;
      }
      
      public function §_-72§(param1:Number, param2:Number) : void
      {
      }
      
      private function §_-3j§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:Sprite = null;
         var _loc5_:§_-wQ§ = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         _loc1_ = Math.random() * 100;
         switch(this.§_-Jj§)
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
            case §_-dK§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-VG§:
               this.createParticle("??");
               break;
            case §_-gS§:
               this.createParticle("SMOKE_BIG",null,20,true);
               break;
            case §_-Y2§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-LH§:
               this.createParticle("SMOKE_SMALL",null,15,false);
               break;
            case §_-A0§:
               this.createParticle("EXPLOSION",null,20,true);
               break;
            case §_-qt§:
               _loc2_ = 1 + _loc1_ % 5;
               _loc3_ = "particle" + _loc2_;
               break;
            case §_-0d§:
            case §_-ft§:
               _loc4_ = new Sprite();
               _loc5_ = this.§_-CP§.§_-hS§("NUMBERS");
               this.§_-sJ§ = new §_-ai§(_loc4_,_loc5_);
               this.§_-sJ§.§_-4v§(parseInt(this.§_-8G§));
               if(parseInt(this.§_-8G§) == 10000)
               {
                  switch(this.§_-Fm§)
                  {
                     case §_-O5§:
                        this.createParticle("SCORE_BIRD_RED");
                        break;
                     case §_-1x§:
                        this.createParticle("SCORE_BIRD_BLUE");
                        break;
                     case §_-8u§:
                        this.createParticle("SCORE_BIRD_GREEN");
                        break;
                     case §_-Jk§:
                        this.createParticle("SCORE_BIRD_BLACK");
                        break;
                     case §_-HD§:
                        this.createParticle("SCORE_BIRD_WHITE");
                        break;
                     case §_-3z§:
                        this.createParticle("SCORE_BIRD_YELLOW");
                        break;
                     default:
                        this.§_-Ak§.addChild(_loc4_);
                  }
               }
               else if(parseInt(this.§_-8G§) == 5000)
               {
                  this.createParticle("SCORE_PIG");
               }
               else
               {
                  this.§_-Ak§.addChild(_loc4_);
               }
               _loc4_.scaleX = _loc4_.scaleY = 0.75;
               break;
            case §_-jG§:
               switch(this.§_-Fm§)
               {
                  case §_-wJ§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("PARTICLE_ICE_" + _loc6_);
                     break;
                  case §_-r3§:
                     _loc6_ = 1 + _loc1_ % 5;
                     this.createParticle("??");
                     break;
                  case §_-2d§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_WOOD_" + _loc6_);
                     break;
                  case §_-YP§:
                     _loc6_ = 1 + _loc1_ % 3;
                     this.createParticle("PARTICLE_STONE_" + _loc6_);
                     break;
                  case §_-CL§:
                     _loc6_ = 1 + _loc1_ % 5;
               }
               if(this.§_-Ak§)
               {
                  this.§_-Ak§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            case §_-Fr§:
               _loc7_ = 1 + _loc1_ % 3;
               switch(this.§_-Fm§)
               {
                  case §_-bk§:
                     this.createParticle("PARTICLE_BIRDRED_" + _loc7_);
                     break;
                  case §_-J3§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  case §_-QQ§:
                     this.createParticle("PARTICLE_BIRDBLUE_" + _loc7_);
                     break;
                  case §_-NY§:
                     this.createParticle("??");
                     break;
                  case §_-Lf§:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
                     break;
                  case §_-Ki§:
                     this.createParticle("PARTICLE_BIRDYELLOW_" + _loc7_);
                     break;
                  case §_-Wi§:
                     this.createParticle("PARTICLE_BIRDBLACK_" + _loc7_);
                     break;
                  default:
                     this.createParticle("PARTICLE_BIRDWHITE_" + _loc7_);
               }
               if(this.§_-Ak§)
               {
                  this.§_-Ak§.rotation = Math.random() * 360 / 180 * Math.PI;
                  break;
               }
               break;
            default:
               this.createParticle(this.§_-Jj§);
         }
      }
      
      private function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc5_:§_-9c§ = null;
         var _loc6_:Texture = null;
         if(param1 == "??")
         {
            return;
         }
         this.§_-3i§ = this.§_-CP§.§_-hS§(param1);
         this.§_-Fl§ = param4;
         if(this.§_-3i§)
         {
            _loc6_ = (_loc5_ = this.§_-3i§.getFrame(0)).texture;
         }
         else
         {
            _loc6_ = this.§_-aH§.§_-Ex§();
         }
         this.§_-kJ§ = param3;
         var _loc7_:§_-OW§ = new §_-OW§(_loc6_);
         _loc7_.scaleX = _loc7_.scaleY = this.§_-8f§;
         this.§_-Ak§.addChild(_loc7_);
         if(_loc5_)
         {
            _loc7_.x = -_loc5_.pivotX;
            _loc7_.y = -_loc5_.pivotY;
         }
         else
         {
            _loc7_.x = -this.§_-Ak§.width / 2;
            _loc7_.y = -this.§_-Ak§.height / 2;
         }
      }
      
      public function §_-Ux§() : void
      {
         if(this.§_-Ak§)
         {
            this.§_-Ak§.x = this.mX / §_-Ay§.§_-G0§;
            this.§_-Ak§.y = this.mY / §_-Ay§.§_-G0§;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§_-9c§ = null;
         var _loc6_:Texture = null;
         var _loc7_:§_-OW§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         this.§_-7Z§ += param1;
         var _loc2_:Boolean = false;
         if(this.§_-kJ§ > 0 && this.§_-3i§)
         {
            _loc3_ = 15;
            if((_loc4_ = this.§_-7Z§ / 1000 / (1 / _loc3_)) < this.§_-3i§.getFrameCount())
            {
               this.§_-Ak§.§_-n4§();
               _loc6_ = (_loc5_ = this.§_-3i§.getFrame(_loc4_)).texture;
               _loc7_ = new §_-OW§(_loc6_);
               this.§_-Ak§.§_-n4§();
               this.§_-Ak§.addChild(_loc7_);
               _loc7_.x = -_loc5_.pivotX;
               _loc7_.y = -_loc5_.pivotY;
            }
            else if(this.§_-Fl§)
            {
               this.§_-Ak§.§_-n4§();
            }
         }
         if(this.§_-t9§ == §_-E§)
         {
            this.§_-rY§(param1);
            if(this.§_-vu§ > 0)
            {
               _loc8_ = 1;
               if(this.§_-Jj§ == §_-ft§)
               {
                  if((_loc10_ = this.§_-7Z§ / this.§_-vu§) <= 0.2)
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
                  _loc8_ = _loc9_ * (0.5 + int(this.§_-8G§) / 5000);
               }
               this.§_-Ak§.scaleX = _loc8_;
               this.§_-Ak§.scaleY = _loc8_;
            }
            _loc2_ = true;
         }
         else if(this.§_-t9§ == §_-Ii§)
         {
            this.§_-rY§(param1);
            if(this.§_-Jj§ == §_-qt§)
            {
               this.§_-Ak§.alpha = Math.max(0,Math.min(1,2 * §_-3J§.§_-Bq§((this.§_-vu§ - this.§_-7Z§) / this.§_-vu§,false)));
               _loc11_ = Math.atan2(-this.§case§,this.§_-Cj§) * (180 / Math.PI);
               this.§_-Ak§.scaleX = Math.max(0.2,this.§_-Ak§.alpha);
               this.§_-Ak§.scaleY = Math.max(0.2,this.§_-Ak§.alpha);
               this.§_-Ak§.rotation = (360 - _loc11_) / 180 * Math.PI;
            }
            else if(this.§_-Jj§ == §_-Fr§ || this.§_-Jj§ == §_-LH§)
            {
               this.§_-Ak§.scaleX = this.§_-Ak§.scaleY = 0.4 + (this.§_-vu§ - this.§_-7Z§) / this.§_-vu§ * 1.6;
            }
            _loc2_ = true;
            if(this.§_-bi§ > 0 && this.mY > this.§_-bi§)
            {
               return false;
            }
         }
         if(this.§_-vu§ > 0 && this.§_-7Z§ >= this.§_-vu§)
         {
            return false;
         }
         if(_loc2_)
         {
            this.§_-Ux§();
         }
         return true;
      }
      
      public function §_-rY§(param1:Number) : void
      {
         this.§case§ += param1 * this.§_-L9§ / 1000;
         this.mY += this.§case§ * param1 / 1000;
         this.mX += this.§_-Cj§ * param1 / 1000;
         if(this.§_-AM§ != 0)
         {
            this.§_-Ak§.rotation += this.§_-AM§ * param1 / 1000 / 180 * Math.PI;
         }
      }
      
      public function dispose() : void
      {
         if(this.§_-sJ§)
         {
            this.§_-sJ§.clear();
            this.§_-sJ§ = null;
         }
         if(this.§_-Ak§)
         {
            this.§_-Ak§.dispose();
            this.§_-Ak§ = null;
         }
      }
   }
}
