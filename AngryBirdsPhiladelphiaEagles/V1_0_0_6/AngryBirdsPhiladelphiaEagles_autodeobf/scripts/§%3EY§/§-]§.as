package §>Y§
{
   import §#!0§.§#-§;
   import §1E§.§5T§;
   import §3?§.§6+§;
   import §3B§.§^a§;
   import §4!-§.§%o§;
   import §4!-§.§,2§;
   import §4!-§.§9!H§;
   import §8!A§.§"w§;
   import §86§.Sprite;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.geom.Point;
   
   public class §-]§ extends §2>§
   {
       
      
      private var §5n§:Boolean = false;
      
      private var §'!@§:int = 0;
      
      private var §1!>§:§#o§ = null;
      
      private var §^!$§:§<Q§;
      
      public function §-]§(param1:§%o§, param2:§5T§, param3:Sprite)
      {
         var _loc5_:§#o§ = null;
         super(param1,param2,param3);
         var _loc4_:int = 0;
         while(_loc4_ < §?`§.length)
         {
            if((_loc5_ = §?`§[_loc4_]).§]q§ == "BLOCK_ROPE_THICK")
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
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §#o§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         if(param1 == "BIRD_MIGHTY_EAGLE")
         {
            this.§1!>§ = super.addObject("BIRD_MIGHTY_PHIL_EAGLE",param2,param3,param4,param5,param6,param7,param8,param9);
            return this.§1!>§;
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
         return §,2§;
      }
      
      override public function mightyEagleUsed() : void
      {
         super.mightyEagleUsed();
      }
      
      override public function objectCollision(param1:§#o§, param2:§#o§) : Boolean
      {
         var _loc3_:§^a§ = null;
         if((_loc3_ = param1 as §^a§) && _loc3_.§;§)
         {
            if(!_loc3_.§<e§)
            {
               _loc3_.§[5§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§<e§ = true;
            return false;
         }
         if((_loc3_ = param2 as §^a§) && _loc3_.§;§)
         {
            if(!_loc3_.§<e§)
            {
               _loc3_.§[5§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§<e§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§#o§) : void
      {
         if(param1 is §^a§)
         {
            this.addExplosions(§&!%§.§#!#§,param1.§[5§().GetPosition().x,param1.§[5§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §3g§.push(§&!%§.createExplosion(param1,param2,param3));
         §#-§.playSound("TntExplosions","ChannelExplosions");
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:§"w§ = null;
         if(§^u§ != 0)
         {
            §"w§(§>!?§.§=!N§.§-!>§()).§"!=§().§#!-§(§6+§.§>!=§,true);
         }
         if(this.mMightyEagleAdded)
         {
            _loc2_ = 1;
            if(mMightyEagleHasTouchedGround)
            {
               _loc2_ = -1;
            }
            _loc3_ = new b2Vec2(§,2§.MIGHTY_EAGLE_X_DIRECTION,_loc2_ * §,2§.MIGHTY_EAGLE_Y_CHANGE);
            _loc4_ = this.§1!>§.§[5§().GetPosition().Copy();
            _loc3_.Normalize();
            _loc4_.x -= _loc3_.x * 5.5 * 5;
            _loc4_.y -= _loc3_.y * 5.5 * 5;
         }
         if(§,2§.§>!0§)
         {
            if(this.mMightyEagleAdded && this.§1!>§ != null)
            {
               if(mMightyEagleHasTouchedGround && this.§1!>§ != null)
               {
                  _loc5_ = §'!8§.box2DToScreen(this.§1!>§.§[5§().GetPosition().x,this.§1!>§.§[5§().GetPosition().y);
                  if(!(_loc6_ = §"w§(§>!?§.§=!N§.§-!>§())).§0N§() && !this.§'!@§ && _loc5_.x > AngryBirdsCustomCanvas.§[!1§ + §,2§.§9!D§)
                  {
                     _loc6_.§-N§();
                  }
                  else if(!this.§'!@§ && _loc5_.x > AngryBirdsCustomCanvas.§[!1§ + §,2§.§;T§)
                  {
                     this.§'!@§ = mMightyEagleTimer;
                     this.§5n§ = true;
                     this.§'!8§.slowMotion = true;
                     this.§^!$§ = §5^§.§<"§.§^g§(§'!8§,{"timeMultiplier":§,2§.§&>§},{"timeMultiplier":1},§,2§.§,F§);
                     this.§^!$§.onComplete = this.§9! §;
                     this.§^!$§.play();
                  }
                  else if(this.§5n§ && _loc5_.x < AngryBirdsCustomCanvas.§[!1§ + §,2§.§;T§)
                  {
                     this.§%v§();
                  }
               }
            }
            if(this.§5n§)
            {
               if(mMightyEagleTimer - this.§'!@§ > §,2§.§^! § + §,2§.§@G§)
               {
                  §"w§(§>!?§.§=!N§.§-!>§()).§%J§();
               }
               if(mMightyEagleTimer - this.§'!@§ > §,2§.§^! §)
               {
                  if(this.§^!$§ == null)
                  {
                     this.§^!$§ = §5^§.§<"§.§^g§(§'!8§,{"timeMultiplier":1},{"timeMultiplier":§,2§.§&>§},§,2§.§3Z§);
                     this.§^!$§.play();
                  }
               }
            }
         }
         if(this.mMightyEagleAdded && this.§1!>§ != null)
         {
            this.§1!>§.§]q§ = "BIRD_MIGHTY_EAGLE";
         }
         super.updateLevelObjectsComplete(param1);
      }
      
      public function §%v§() : void
      {
         this.§5n§ = false;
         this.§'!@§ = 0;
         if(§'!8§ != null)
         {
            §9!H§(§'!8§).timeMultiplier = 1;
         }
         if(this.§^!$§ != null)
         {
            this.§^!$§.stop();
            this.§^!$§ = null;
         }
      }
      
      private function §9! §() : void
      {
         this.§^!$§ = null;
      }
      
      private function §>§(param1:b2Vec2, param2:b2Vec2, param3:int) : void
      {
         var _loc6_:§#o§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = param3;
         for each(_loc6_ in §?`§)
         {
            _loc7_ = _loc6_.§[5§().GetPosition().x - param1.x;
            _loc8_ = _loc6_.§[5§().GetPosition().y - param1.y;
            _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
            _loc4_++;
            if(_loc9_ <= _loc5_)
            {
               if(_loc6_.§5p§.§]q§.toUpperCase() == "BREAKABLE_STATIC_BLOCK_TRANSPARENT")
               {
                  _loc6_.applyDamage(9999,false);
               }
               else
               {
                  _loc10_ = 10;
                  if(_loc6_.§5p§.material.mName.toUpperCase() == "MATERIAL_BLOCK_STONE")
                  {
                     _loc10_ *= 20;
                  }
                  if(_loc9_ > 0)
                  {
                     _loc11_ = _loc10_ * (_loc7_ / _loc9_);
                     _loc12_ = _loc10_ * (_loc8_ / _loc9_);
                     _loc6_.§[5§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(param2.x,param2.y));
                  }
               }
            }
         }
      }
   }
}
