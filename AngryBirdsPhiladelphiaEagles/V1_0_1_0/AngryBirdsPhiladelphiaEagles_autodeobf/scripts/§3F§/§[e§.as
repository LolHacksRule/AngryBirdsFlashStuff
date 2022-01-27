package §3F§
{
   import §"!J§.§5!'§;
   import §##§.§"U§;
   import §#n§.§8!=§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §3H§.Sprite;
   import §5=§.§8G§;
   import §>2§.§!6§;
   import §>2§.§00§;
   import §>2§.§4h§;
   import §[N§.§9k§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.geom.Point;
   
   public class §[e§ extends §0z§
   {
       
      
      private var §=^§:Boolean = false;
      
      private var §=!$§:int = 0;
      
      private var §#!H§:§2!3§ = null;
      
      private var §^'§:§]H§;
      
      public function §[e§(param1:§4h§, param2:§8G§, param3:Sprite)
      {
         var _loc5_:§2!3§ = null;
         super(param1,param2,param3);
         var _loc4_:int = 0;
         while(_loc4_ < §<o§.length)
         {
            if((_loc5_ = §<o§[_loc4_]).§9E§ == "BLOCK_ROPE_THICK")
            {
               _loc5_.sprite.parent.setChildIndex(_loc5_.sprite,0);
            }
            _loc4_++;
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §2!3§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         if(param1 == "BIRD_MIGHTY_EAGLE")
         {
            this.§#!H§ = super.addObject("BIRD_MIGHTY_PHIL_EAGLE",param2,param3,param4,param5,param6,param7,param8,param9);
            return this.§#!H§;
         }
         if(param1 == "BIRD_SARDINE")
         {
            return super.addObject("BIRD_PHIL_SARDINE",param2,param3,param4,param5,param6,param7,param8,param9);
         }
         if(param1 == "PIG_BASIC_SMALL")
         {
            return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,true);
         }
         return super.addObject(param1,param2,param3,param4,param5,param6,param7,param8,param9);
      }
      
      override protected function get Tuner() : Class
      {
         return §!6§;
      }
      
      override public function mightyEagleUsed() : void
      {
         super.mightyEagleUsed();
      }
      
      override public function objectCollision(param1:§2!3§, param2:§2!3§) : Boolean
      {
         var _loc3_:§8!=§ = null;
         if((_loc3_ = param1 as §8!=§) && _loc3_.§2N§)
         {
            if(!_loc3_.§ B§)
            {
               _loc3_.§?!M§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§ B§ = true;
            return false;
         }
         if((_loc3_ = param2 as §8!=§) && _loc3_.§2N§)
         {
            if(!_loc3_.§ B§)
            {
               _loc3_.§?!M§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§ B§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§2!3§) : void
      {
         if(param1 is §8!=§)
         {
            this.addExplosions(§9T§.§[d§,param1.§?!M§().GetPosition().x,param1.§?!M§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §>1§.push(§9T§.createExplosion(param1,param2,param3));
         §9k§.playSound("TntExplosions","ChannelExplosions");
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:§"U§ = null;
         if(§@C§ != 0)
         {
            §"U§(§#g§.§^!G§.§-!9§()).§?!P§().§,!4§(§5!'§.§#a§,true);
         }
         if(this.mMightyEagleAdded)
         {
            _loc2_ = 1;
            if(mMightyEagleHasTouchedGround)
            {
               _loc2_ = -1;
            }
            _loc3_ = new b2Vec2(§!6§.MIGHTY_EAGLE_X_DIRECTION,_loc2_ * §!6§.MIGHTY_EAGLE_Y_CHANGE);
            _loc4_ = this.§#!H§.§?!M§().GetPosition().Copy();
            _loc3_.Normalize();
            _loc4_.x -= _loc3_.x * 5.5 * 5;
            _loc4_.y -= _loc3_.y * 5.5 * 5;
         }
         if(§!6§.§ q§)
         {
            if(this.mMightyEagleAdded && this.§#!H§ != null)
            {
               if(mMightyEagleHasTouchedGround && this.§#!H§ != null)
               {
                  _loc5_ = §@k§.box2DToScreen(this.§#!H§.§?!M§().GetPosition().x,this.§#!H§.§?!M§().GetPosition().y);
                  if(!(_loc6_ = §"U§(§#g§.§^!G§.§-!9§())).§?7§() && !this.§=!$§ && _loc5_.x > AngryBirdsCustomCanvas.§=!M§ + §!6§.§5h§)
                  {
                     _loc6_.§9!N§();
                  }
                  else if(!this.§=!$§ && _loc5_.x > AngryBirdsCustomCanvas.§=!M§ + §!6§.§6Z§)
                  {
                     this.§=!$§ = mMightyEagleTimer;
                     this.§=^§ = true;
                     this.§@k§.slowMotion = true;
                     this.§^'§ = §<t§.§4J§.§#q§(§@k§,{"timeMultiplier":§!6§.§ !,§},{"timeMultiplier":1},§!6§.§%;§);
                     this.§^'§.onComplete = this.§=o§;
                     this.§^'§.play();
                  }
                  else if(this.§=^§ && _loc5_.x < AngryBirdsCustomCanvas.§=!M§ + §!6§.§6Z§)
                  {
                     this.§=a§();
                  }
               }
            }
            if(this.§=^§)
            {
               if(mMightyEagleTimer - this.§=!$§ > §!6§.§?!L§ + §!6§.§?>§)
               {
                  §"U§(§#g§.§^!G§.§-!9§()).§#I§();
               }
               if(mMightyEagleTimer - this.§=!$§ > §!6§.§?!L§)
               {
                  if(this.§^'§ == null)
                  {
                     this.§^'§ = §<t§.§4J§.§#q§(§@k§,{"timeMultiplier":1},{"timeMultiplier":§!6§.§ !,§},§!6§.§]G§);
                     this.§^'§.play();
                  }
               }
            }
         }
         if(this.mMightyEagleAdded && this.§#!H§ != null)
         {
            this.§#!H§.§9E§ = "BIRD_MIGHTY_EAGLE";
         }
         super.updateLevelObjectsComplete(param1);
      }
      
      public function §=a§() : void
      {
         this.§=^§ = false;
         this.§=!$§ = 0;
         if(§@k§ != null)
         {
            §00§(§@k§).timeMultiplier = 1;
         }
         if(this.§^'§ != null)
         {
            this.§^'§.stop();
            this.§^'§ = null;
         }
      }
      
      private function §=o§() : void
      {
         this.§^'§ = null;
      }
      
      private function §6B§(param1:b2Vec2, param2:b2Vec2, param3:int) : void
      {
         var _loc6_:§2!3§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = param3;
         for each(_loc6_ in §<o§)
         {
            _loc7_ = _loc6_.§?!M§().GetPosition().x - param1.x;
            _loc8_ = _loc6_.§?!M§().GetPosition().y - param1.y;
            _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
            _loc4_++;
            if(_loc9_ <= _loc5_)
            {
               if(_loc6_.§5k§.§9E§.toUpperCase() == "BREAKABLE_STATIC_BLOCK_TRANSPARENT")
               {
                  _loc6_.applyDamage(9999,false);
               }
               else
               {
                  _loc10_ = 10;
                  if(_loc6_.§5k§.material.mName.toUpperCase() == "MATERIAL_BLOCK_STONE")
                  {
                     _loc10_ *= 20;
                  }
                  if(_loc9_ > 0)
                  {
                     _loc11_ = _loc10_ * (_loc7_ / _loc9_);
                     _loc12_ = _loc10_ * (_loc8_ / _loc9_);
                     _loc6_.§?!M§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(param2.x,param2.y));
                  }
               }
            }
         }
      }
   }
}
