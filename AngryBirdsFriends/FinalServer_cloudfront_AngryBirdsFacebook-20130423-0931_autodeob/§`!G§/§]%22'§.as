package §`!G§
{
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §'"-§.b2Distance;
   import §'"-§.b2DistanceInput;
   import §'"-§.b2DistanceOutput;
   import §'"-§.b2DistanceProxy;
   import §'"-§.b2RayCastInput;
   import §'"-§.b2RayCastOutput;
   import §'"-§.b2SimplexCache;
   import §,l§.§+I§;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   import §8m§.§@"M§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import flash.geom.Point;
   
   public class §]"'§ extends §8"=§
   {
      
      private static const §;!u§:int = 3;
       
      
      public var §!!Z§:Sprite;
      
      private var §6+§:int = 0;
      
      private var §4Q§:Vector.<Object>;
      
      private var §="T§:Number = 0;
      
      private var §+"J§:Number = 2000;
      
      private var §6!u§:Boolean = false;
      
      public function §]"'§(param1:§'!S§, param2:§0"T§, param3:Sprite)
      {
         this.§!!Z§ = new Sprite();
         this.§!!Z§.§^]§ = false;
         super(param1,param2,param3);
      }
      
      override protected function removeChildFromMainSprite(param1:Sprite) : void
      {
         if(this.§!!Z§.contains(param1))
         {
            this.§!!Z§.removeChild(param1);
            return;
         }
         super.removeChildFromMainSprite(param1);
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §[!8§
      {
         var _loc11_:Array = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            _loc11_ = param1.split("_");
            _loc12_ = _loc11_[_loc11_.length - 1];
            _loc13_ = "1000-" + _loc12_;
            if((AngryBirdsFP11.sUserProgress as §#!$§).§,"F§(_loc13_))
            {
               return null;
            }
         }
         if(param1.indexOf("MISC_EASTER_PLACEHOLDER") == 0)
         {
            if((_loc14_ = this.§?p§()) == null)
            {
               return null;
            }
            param1 = _loc14_;
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      private function §?p§() : String
      {
         if(this.§9"%§.§7"T§ == null)
         {
            return "";
         }
         if(!this.§9"%§.§7"T§.§+!!§() || this.§9"%§.§7"T§.§+4§() || !this.§9"%§.§7"T§.§<!'§())
         {
            return "";
         }
         var _loc1_:Number = this.§9"%§.§7"T§.§&!§(LevelManager.§ T§);
         if(_loc1_ > 0.5 && this.§6+§ < §;!u§)
         {
            ++this.§6+§;
            return "MISC_COLLECTIBLE_EGG_";
         }
         return "";
      }
      
      override public function updateScrollAndScale(param1:Number, param2:Number) : void
      {
         this.§!!Z§.x = -param1;
         this.§!!Z§.y = -param2;
         super.updateScrollAndScale(param1,param2);
      }
      
      override protected function createObject(param1:Sprite, param2:String, param3:Number, param4:Number, param5:Number = 0, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0) : §[!8§
      {
         if(param2.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return new §<V§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_COLLECTIBLE_EGG_") == 0)
         {
            return new §8!4§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_FB_HEARTCANNON_SHOT") == 0)
         {
            return new §2"V§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_FB_CANNON") == 0)
         {
            return new §8R§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("POWERUP_BOMB") == 0)
         {
            return new §=!D§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param3,param4,param5,param9);
         }
         if(param2.indexOf("BIRD_CHRISTMAS") == 0)
         {
            return new §?m§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param8,param9);
         }
         if(param2.indexOf("BIRD_WINGMAN") == 0)
         {
            return new §-!3§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param8,param9);
         }
         if(param2.indexOf("MISC_FB_EASTER_MUSHROOM") == 0)
         {
            return new §<E§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
         }
         if(param2.indexOf("MISC_FAIRY_BLOCK_4X4") == 0)
         {
            return new §1!E§(this,param1,mLevelMain.mLevelEngine.mWorld,mLevelMain,§""G§,param2,param3,param4,param5,param9);
         }
         return super.createObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      public function §[[§(param1:Number, param2:Number, param3:Number = 0, param4:Number = 1) : §=!D§
      {
         var _loc5_:Sprite = new Sprite();
         return this.addObject("POWERUP_BOMB",param1,param2,param3,false,false,false,param4) as §=!D§;
      }
      
      override protected function applyExplosionDamage(param1:§[!8§, param2:Number) : void
      {
         param1.applyDamage(param2,true,false,false,true);
      }
      
      override public function objectCollision(param1:§[!8§, param2:§[!8§) : Boolean
      {
         if(param1 is §=!D§ && param2 is §=!D§)
         {
            if(!(param1 as §=!D§).§'"9§ && !(param2 as §=!D§).§'"9§)
            {
               return false;
            }
         }
         if(param1 is §-!3§)
         {
            (param1 as §-!3§).§!w§(param2);
         }
         else if(param2 is §-!3§)
         {
            (param2 as §-!3§).§!w§(param1);
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function addDestructionParticles(param1:§[!8§, param2:§6!O§) : void
      {
         param1.addDestructionParticles(param2);
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number, param4:Vector.<§[!8§> = null) : void
      {
         §,"D§.push(§-"[§.createExplosion(param1,param2,param3,param4));
         if(param1 != §6!M§.§var§ && param1 != §-"[§.§]""§)
         {
            §@"M§.§3"C§("TntExplosions","ChannelExplosions");
         }
      }
      
      override protected function getMainExplosionCoreName(param1:int) : String
      {
         switch(param1)
         {
            case §-"[§.§]""§:
               return "";
            default:
               return super.getMainExplosionCoreName(param1);
         }
      }
      
      public function §+!T§(param1:uint) : Vector.<§[!8§>
      {
         var _loc7_:§[!8§ = null;
         var _loc8_:uint = 0;
         var _loc9_:Vector.<§[!8§> = null;
         if(!isPigsAlive())
         {
            return null;
         }
         var _loc2_:int = §@!Z§.length;
         var _loc3_:int = §5"V§();
         if(_loc3_ == 0)
         {
            return null;
         }
         var _loc4_:Vector.<§[!8§> = new Vector.<§[!8§>();
         var _loc5_:int = §@!Z§.length - 1;
         while(_loc5_ >= 0)
         {
            if((_loc7_ = §@!Z§[_loc5_] as §[!8§) && _loc7_.§&!y§() && _loc7_.§ d§ > 0)
            {
               _loc4_[_loc4_.length] = _loc7_;
            }
            _loc5_--;
         }
         var _loc6_:Vector.<§[!8§> = new Vector.<§[!8§>();
         while(_loc6_.length < param1)
         {
            if(_loc4_.length == 0)
            {
               _loc6_[_loc6_.length] = null;
            }
            else
            {
               _loc8_ = _loc4_.length * Math.random();
               _loc9_ = _loc4_.splice(_loc8_,1);
               _loc6_[_loc6_.length] = _loc9_[0];
            }
         }
         return _loc6_;
      }
      
      public function §%u§() : void
      {
         var _loc1_:Object = null;
         var _loc7_:§[!8§ = null;
         var _loc8_:int = 0;
         var _loc2_:Vector.<§[!8§> = new Vector.<§[!8§>();
         var _loc3_:Number = 0;
         while(_loc3_ < §?l§.§'h§.§?x§.§57§())
         {
            if((_loc7_ = §?l§.§'h§.§?x§.§,!§(_loc3_)).§&!y§())
            {
               _loc2_.push(_loc7_);
            }
            _loc3_++;
         }
         if(_loc2_.length == 0)
         {
            return;
         }
         var _loc4_:Array = new Array();
         var _loc5_:int = _loc2_.length > 4 ? 4 : int(_loc2_.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            if(_loc2_.length > 1)
            {
               _loc8_ = this.§!"X§(_loc2_.length);
               while(_loc4_.indexOf(_loc8_) != -1)
               {
                  _loc8_ = this.§!"X§(_loc2_.length);
               }
               _loc4_.push(_loc8_);
            }
            else
            {
               _loc8_ = 0;
            }
            _loc1_ = this.§<>§(_loc2_[_loc8_].getBody());
            if(_loc1_)
            {
               if(_loc6_ == 0)
               {
                  _loc1_.scaleModifier = 1;
               }
               else if(_loc6_ == 1)
               {
                  _loc1_.scaleModifier = 0.7;
               }
               else
               {
                  _loc1_.scaleModifier = 0.25;
               }
               this.§?!E§(_loc1_);
            }
            _loc6_++;
         }
      }
      
      private function §[s§() : void
      {
         if(this.§="T§ > this.§+"J§ && !this.§6!u§)
         {
            this.§6!u§ = true;
            §@"M§.§3"C§("Mushroom_Grow_1","ChannelMisc",0,1);
            this.§="T§ = 0;
         }
      }
      
      private function §]&§() : Object
      {
         var _loc3_:§[!8§ = null;
         var _loc4_:int = 0;
         var _loc1_:Vector.<§[!8§> = new Vector.<§[!8§>();
         var _loc2_:Number = 0;
         while(_loc2_ < §?l§.§'h§.§?x§.§57§())
         {
            _loc3_ = §?l§.§'h§.§?x§.§,!§(_loc2_);
            if(_loc3_.§]H§() && !_loc3_.§&!y§() && !_loc3_.§!!n§())
            {
               _loc1_.push(_loc3_);
            }
            _loc2_++;
         }
         if(_loc1_.length > 0)
         {
            _loc4_ = this.§!"X§(_loc1_.length);
            return this.§<>§(_loc1_[_loc4_].getBody());
         }
         return null;
      }
      
      private function §!"X§(param1:int) : int
      {
         return Math.floor(Math.random() * param1) as int;
      }
      
      private function §=e§(param1:Number = 0, param2:Number = 1) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      private function §<>§(param1:b2Body) : Object
      {
         var _loc4_:b2Vec2 = null;
         var _loc7_:b2Fixture = null;
         var _loc8_:b2Vec2 = null;
         var _loc9_:Number = NaN;
         var _loc19_:§[!8§ = null;
         var _loc20_:b2Fixture = null;
         var _loc21_:b2DistanceOutput = null;
         var _loc22_:b2SimplexCache = null;
         var _loc2_:b2Vec2 = new b2Vec2(0,§?l§.§5&§() * §'!S§.§1"4§);
         var _loc3_:Number = 1;
         var _loc5_:b2DistanceInput;
         (_loc5_ = new b2DistanceInput()).§3!3§ = param1.§!"0§();
         _loc5_.§@!a§ = new b2DistanceProxy();
         _loc5_.§@!a§.Set(param1.GetFixtureList().GetShape());
         _loc5_.§0y§ = true;
         var _loc6_:Number = §'!S§.§&H§;
         var _loc10_:Number = 0;
         while(_loc10_ < §?l§.§'h§.§?x§.§57§())
         {
            if((_loc19_ = §?l§.§'h§.§?x§.§,!§(_loc10_)).getBody().GetMass() == 0 && param1.GetPosition().y < _loc19_.getBody().GetPosition().y && (_loc19_.isTexture() || _loc19_.isGround()) && _loc19_.§@x§.indexOf("INVISIBLE") == -1)
            {
               _loc20_ = _loc19_.getBody().GetFixtureList();
               _loc5_.§-H§ = _loc19_.getBody().§!"0§();
               _loc5_.§>!j§ = new b2DistanceProxy();
               _loc5_.§>!j§.Set(_loc19_.getBody().GetFixtureList().GetShape());
               _loc21_ = new b2DistanceOutput();
               (_loc22_ = new b2SimplexCache()).count = 0;
               b2Distance.§4"H§(_loc21_,_loc22_,_loc5_);
               if(_loc6_ > _loc21_.§<"1§ && param1.GetPosition().y < _loc19_.getBody().GetPosition().y)
               {
                  _loc6_ = _loc21_.§<"1§;
                  _loc7_ = _loc19_.getBody().GetFixtureList();
                  _loc8_ = _loc21_.§%" §;
                  _loc9_ = _loc21_.§<"1§;
               }
            }
            _loc10_++;
         }
         var _loc11_:b2Vec2 = param1.GetPosition();
         if(_loc9_ == 0)
         {
            _loc9_ = 1;
         }
         var _loc12_:Number = (_loc11_.x - _loc8_.x) / _loc9_;
         var _loc13_:Number = (_loc11_.y - _loc8_.y) / _loc9_;
         var _loc14_:b2Vec2 = new b2Vec2(_loc11_.x - _loc12_ * §'!S§.§&H§,_loc11_.y - _loc13_ * §'!S§.§&H§);
         var _loc15_:b2RayCastInput = new b2RayCastInput(_loc11_,_loc14_);
         var _loc16_:b2RayCastOutput = new b2RayCastOutput();
         if(!_loc7_.RayCast(_loc16_,_loc15_))
         {
            return null;
         }
         _loc3_ = _loc16_.fraction;
         _loc4_ = _loc16_.normal;
         var _loc17_:Number = _loc11_.x + _loc3_ * (_loc14_.x - _loc11_.x);
         var _loc18_:Number = _loc11_.y + _loc3_ * (_loc14_.y - _loc11_.y);
         return {
            "point":new Point(_loc17_,_loc18_),
            "normal":new Point(_loc4_.x,_loc4_.y)
         };
      }
      
      public function §?!E§(param1:Object) : void
      {
         if(!this.§4Q§)
         {
            this.§4Q§ = new Vector.<Object>();
         }
         this.§4Q§.push(param1);
      }
      
      override public function updateLevelObjectsGoingOn(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         var _loc6_:Number = NaN;
         var _loc7_:§<E§ = null;
         if(this.§4Q§ != null)
         {
            this.§="T§ += param1;
            _loc2_ = this.§4Q§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc3_ = this.§4Q§[_loc2_];
               _loc4_ = _loc3_.point;
               _loc5_ = _loc3_.normal;
               if(!isNaN(_loc4_.x) && !isNaN(_loc4_.y))
               {
                  _loc6_ = Math.atan2(_loc5_.x,_loc5_.y);
                  (_loc7_ = this.addObject("MISC_FB_EASTER_MUSHROOM",_loc4_.x + _loc5_.x,_loc4_.y + _loc5_.y,0,false,false,false,1,false) as §<E§).scaleModifier = _loc3_.scaleModifier;
                  _loc7_.§]"J§(_loc4_,_loc5_);
                  _loc7_.§ d§ *= _loc7_.scaleModifier;
                  _loc7_.§4&§();
               }
               this.§4Q§.splice(_loc2_,1);
               _loc2_--;
            }
            this.§[s§();
         }
         super.updateLevelObjectsGoingOn(param1);
      }
      
      public function get §9"%§() : §+I§
      {
         return §%"S§.§!C§.§9"%§;
      }
   }
}
