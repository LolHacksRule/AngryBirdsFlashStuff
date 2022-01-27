package §'R§
{
   import § "§.§4!F§;
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%"§.§ !,§;
   import §%"§.§ do§;
   import §%"§.§"!-§;
   import §+y§.§3V§;
   import §8;§.§3?§;
   import §<!N§.Sprite;
   import §?!;§.§;!,§;
   import §]G§.§>G§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.geom.Point;
   
   public class §!Z§ extends §!m§
   {
       
      
      private var §%S§:Boolean = false;
      
      private var §]!1§:int = 0;
      
      private var §"!4§:§&r§ = null;
      
      private var §3<§:§ !4§;
      
      public function §!Z§(param1:§ do§, param2:§;!,§, param3:Sprite)
      {
         var _loc5_:§&r§ = null;
         super(param1,param2,param3);
         var _loc4_:int = 0;
         while(_loc4_ < §@L§.length)
         {
            if((_loc5_ = §@L§[_loc4_]).§8!I§ == "BLOCK_ROPE_THICK")
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
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §&r§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         if(param1 == "BIRD_MIGHTY_EAGLE")
         {
            this.§"!4§ = super.addObject("BIRD_MIGHTY_PHIL_EAGLE",param2,param3,param4,param5,param6,param7,param8,param9);
            return this.§"!4§;
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
         return § !,§;
      }
      
      override public function mightyEagleUsed() : void
      {
         super.mightyEagleUsed();
      }
      
      override public function objectCollision(param1:§&r§, param2:§&r§) : Boolean
      {
         var _loc3_:§4!F§ = null;
         if((_loc3_ = param1 as §4!F§) && _loc3_.§-q§)
         {
            if(!_loc3_.§?=§)
            {
               _loc3_.§<!I§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§?=§ = true;
            return false;
         }
         if((_loc3_ = param2 as §4!F§) && _loc3_.§-q§)
         {
            if(!_loc3_.§?=§)
            {
               _loc3_.§<!I§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§?=§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§&r§) : void
      {
         if(param1 is §4!F§)
         {
            this.addExplosions(§`<§.§?3§,param1.§<!I§().GetPosition().x,param1.§<!I§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         § f§.push(§`<§.createExplosion(param1,param2,param3));
         §3V§.playSound("TntExplosions","ChannelExplosions");
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:§3?§ = null;
         if(§8d§ != 0)
         {
            §3?§(§#!1§.§@F§.§6,§()).§1]§().§9y§(§>G§.§&!=§,true);
         }
         if(this.mMightyEagleAdded)
         {
            _loc2_ = 1;
            if(mMightyEagleHasTouchedGround)
            {
               _loc2_ = -1;
            }
            _loc3_ = new b2Vec2(§ !,§.MIGHTY_EAGLE_X_DIRECTION,_loc2_ * § !,§.MIGHTY_EAGLE_Y_CHANGE);
            _loc4_ = this.§"!4§.§<!I§().GetPosition().Copy();
            _loc3_.Normalize();
            _loc4_.x -= _loc3_.x * 5.5 * 5;
            _loc4_.y -= _loc3_.y * 5.5 * 5;
         }
         if(§ !,§.§2@§)
         {
            if(this.mMightyEagleAdded && this.§"!4§ != null)
            {
               if(mMightyEagleHasTouchedGround && this.§"!4§ != null)
               {
                  _loc5_ = §-H§.box2DToScreen(this.§"!4§.§<!I§().GetPosition().x,this.§"!4§.§<!I§().GetPosition().y);
                  if(!(_loc6_ = §3?§(§#!1§.§@F§.§6,§())).§'5§() && !this.§]!1§ && _loc5_.x > AngryBirdsCustomCanvas.§[!0§ + § !,§.§'!D§)
                  {
                     _loc6_.§]!E§();
                  }
                  else if(!this.§]!1§ && _loc5_.x > AngryBirdsCustomCanvas.§[!0§ + § !,§.§=8§)
                  {
                     this.§]!1§ = mMightyEagleTimer;
                     this.§%S§ = true;
                     this.§-H§.slowMotion = true;
                     this.§3<§ = §49§.§&y§.§=!3§(§-H§,{"timeMultiplier":§ !,§.§4!9§},{"timeMultiplier":1},§ !,§.§-I§);
                     this.§3<§.onComplete = this.§-g§;
                     this.§3<§.play();
                  }
                  else if(this.§%S§ && _loc5_.x < AngryBirdsCustomCanvas.§[!0§ + § !,§.§=8§)
                  {
                     this.§<Z§();
                  }
               }
            }
            if(this.§%S§)
            {
               if(mMightyEagleTimer - this.§]!1§ > § !,§.§!!F§ + § !,§.§-!#§)
               {
                  §3?§(§#!1§.§@F§.§6,§()).§=o§();
               }
               if(mMightyEagleTimer - this.§]!1§ > § !,§.§!!F§)
               {
                  if(this.§3<§ == null)
                  {
                     this.§3<§ = §49§.§&y§.§=!3§(§-H§,{"timeMultiplier":1},{"timeMultiplier":§ !,§.§4!9§},§ !,§.§,!+§);
                     this.§3<§.play();
                  }
               }
            }
         }
         if(this.mMightyEagleAdded && this.§"!4§ != null)
         {
            this.§"!4§.§8!I§ = "BIRD_MIGHTY_EAGLE";
         }
         super.updateLevelObjectsComplete(param1);
      }
      
      public function §<Z§() : void
      {
         this.§%S§ = false;
         this.§]!1§ = 0;
         if(§-H§ != null)
         {
            §"!-§(§-H§).timeMultiplier = 1;
         }
         if(this.§3<§ != null)
         {
            this.§3<§.stop();
            this.§3<§ = null;
         }
      }
      
      private function §-g§() : void
      {
         this.§3<§ = null;
      }
      
      private function §5!7§(param1:b2Vec2, param2:b2Vec2, param3:int) : void
      {
         var _loc6_:§&r§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = param3;
         for each(_loc6_ in §@L§)
         {
            _loc7_ = _loc6_.§<!I§().GetPosition().x - param1.x;
            _loc8_ = _loc6_.§<!I§().GetPosition().y - param1.y;
            _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
            _loc4_++;
            if(_loc9_ <= _loc5_)
            {
               if(_loc6_.§@j§.§8!I§.toUpperCase() == "BREAKABLE_STATIC_BLOCK_TRANSPARENT")
               {
                  _loc6_.applyDamage(9999,false);
               }
               else
               {
                  _loc10_ = 10;
                  if(_loc6_.§@j§.material.mName.toUpperCase() == "MATERIAL_BLOCK_STONE")
                  {
                     _loc10_ *= 20;
                  }
                  if(_loc9_ > 0)
                  {
                     _loc11_ = _loc10_ * (_loc7_ / _loc9_);
                     _loc12_ = _loc10_ * (_loc8_ / _loc9_);
                     _loc6_.§<!I§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(param2.x,param2.y));
                  }
               }
            }
         }
      }
   }
}
