package §0=§
{
   import §"g§.§8$§;
   import §,!1§.§]e§;
   import §,T§.§2`§;
   import §,T§.§4j§;
   import §,T§.§[-§;
   import §-!'§.Sprite;
   import §6!L§.§#!M§;
   import §=!0§.§"T§;
   import §=!1§.§"!D§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.geom.Point;
   
   public class §>!0§ extends §6!M§
   {
       
      
      private var §=!6§:Boolean = false;
      
      private var §"!,§:int = 0;
      
      private var §^u§:§2p§ = null;
      
      private var §&r§:§!l§;
      
      public function §>!0§(param1:§[-§, param2:§#!M§, param3:Sprite)
      {
         var _loc5_:§2p§ = null;
         super(param1,param2,param3);
         var _loc4_:int = 0;
         while(_loc4_ < §<w§.length)
         {
            if((_loc5_ = §<w§[_loc4_]).§8!J§ == "BLOCK_ROPE_THICK")
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
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §2p§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         if(param1 == "BIRD_MIGHTY_EAGLE")
         {
            this.§^u§ = super.addObject("BIRD_MIGHTY_PHIL_EAGLE",param2,param3,param4,param5,param6,param7,param8,param9);
            return this.§^u§;
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
         return §2`§;
      }
      
      override public function mightyEagleUsed() : void
      {
         super.mightyEagleUsed();
      }
      
      override public function objectCollision(param1:§2p§, param2:§2p§) : Boolean
      {
         var _loc3_:§8$§ = null;
         if((_loc3_ = param1 as §8$§) && _loc3_.§]1§)
         {
            if(!_loc3_.§3M§)
            {
               _loc3_.§;!M§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§3M§ = true;
            return false;
         }
         if((_loc3_ = param2 as §8$§) && _loc3_.§]1§)
         {
            if(!_loc3_.§3M§)
            {
               _loc3_.§;!M§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§3M§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§2p§) : void
      {
         if(param1 is §8$§)
         {
            this.addExplosions(§>!A§.§2!4§,param1.§;!M§().GetPosition().x,param1.§;!M§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §3$§.push(§>!A§.createExplosion(param1,param2,param3));
         §]e§.playSound("TntExplosions","ChannelExplosions");
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:§"T§ = null;
         if(§>a§ != 0)
         {
            §"T§(§=!<§.§4M§.§[x§()).§@d§().§[!9§(§"!D§.§@v§,true);
         }
         if(this.mMightyEagleAdded)
         {
            _loc2_ = 1;
            if(mMightyEagleHasTouchedGround)
            {
               _loc2_ = -1;
            }
            _loc3_ = new b2Vec2(§2`§.MIGHTY_EAGLE_X_DIRECTION,_loc2_ * §2`§.MIGHTY_EAGLE_Y_CHANGE);
            _loc4_ = this.§^u§.§;!M§().GetPosition().Copy();
            _loc3_.Normalize();
            _loc4_.x -= _loc3_.x * 5.5 * 5;
            _loc4_.y -= _loc3_.y * 5.5 * 5;
         }
         if(§2`§.§[§)
         {
            if(this.mMightyEagleAdded && this.§^u§ != null)
            {
               if(mMightyEagleHasTouchedGround && this.§^u§ != null)
               {
                  _loc5_ = §34§.box2DToScreen(this.§^u§.§;!M§().GetPosition().x,this.§^u§.§;!M§().GetPosition().y);
                  if(!(_loc6_ = §"T§(§=!<§.§4M§.§[x§())).§,!C§() && !this.§"!,§ && _loc5_.x > AngryBirdsCustomCanvas.§6!I§ + §2`§.§%9§)
                  {
                     _loc6_.§2j§();
                  }
                  else if(!this.§"!,§ && _loc5_.x > AngryBirdsCustomCanvas.§6!I§ + §2`§.§#D§)
                  {
                     this.§"!,§ = mMightyEagleTimer;
                     this.§=!6§ = true;
                     this.§34§.slowMotion = true;
                     this.§&r§ = §5!&§.§@!&§.§9!4§(§34§,{"timeMultiplier":§2`§.§'W§},{"timeMultiplier":1},§2`§.§=!J§);
                     this.§&r§.onComplete = this.§"c§;
                     this.§&r§.play();
                  }
                  else if(this.§=!6§ && _loc5_.x < AngryBirdsCustomCanvas.§6!I§ + §2`§.§#D§)
                  {
                     this.§%;§();
                  }
               }
            }
            if(this.§=!6§)
            {
               if(mMightyEagleTimer - this.§"!,§ > §2`§.§<!1§ + §2`§.§%D§)
               {
                  §"T§(§=!<§.§4M§.§[x§()).§]!E§();
               }
               if(mMightyEagleTimer - this.§"!,§ > §2`§.§<!1§)
               {
                  if(this.§&r§ == null)
                  {
                     this.§&r§ = §5!&§.§@!&§.§9!4§(§34§,{"timeMultiplier":1},{"timeMultiplier":§2`§.§'W§},§2`§.§-!L§);
                     this.§&r§.play();
                  }
               }
            }
         }
         if(this.mMightyEagleAdded && this.§^u§ != null)
         {
            this.§^u§.§8!J§ = "BIRD_MIGHTY_EAGLE";
         }
         super.updateLevelObjectsComplete(param1);
      }
      
      public function §%;§() : void
      {
         this.§=!6§ = false;
         this.§"!,§ = 0;
         if(§34§ != null)
         {
            §4j§(§34§).timeMultiplier = 1;
         }
         if(this.§&r§ != null)
         {
            this.§&r§.stop();
            this.§&r§ = null;
         }
      }
      
      private function §"c§() : void
      {
         this.§&r§ = null;
      }
      
      private function §-M§(param1:b2Vec2, param2:b2Vec2, param3:int) : void
      {
         var _loc6_:§2p§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = param3;
         for each(_loc6_ in §<w§)
         {
            _loc7_ = _loc6_.§;!M§().GetPosition().x - param1.x;
            _loc8_ = _loc6_.§;!M§().GetPosition().y - param1.y;
            _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
            _loc4_++;
            if(_loc9_ <= _loc5_)
            {
               if(_loc6_.§&v§.§8!J§.toUpperCase() == "BREAKABLE_STATIC_BLOCK_TRANSPARENT")
               {
                  _loc6_.applyDamage(9999,false);
               }
               else
               {
                  _loc10_ = 10;
                  if(_loc6_.§&v§.material.mName.toUpperCase() == "MATERIAL_BLOCK_STONE")
                  {
                     _loc10_ *= 20;
                  }
                  if(_loc9_ > 0)
                  {
                     _loc11_ = _loc10_ * (_loc7_ / _loc9_);
                     _loc12_ = _loc10_ * (_loc8_ / _loc9_);
                     _loc6_.§;!M§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(param2.x,param2.y));
                  }
               }
            }
         }
      }
   }
}
