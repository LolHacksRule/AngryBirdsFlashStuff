package §8x§
{
   import §+=§.§%!H§;
   import §,!F§.§#§;
   import §,!F§.§0f§;
   import §,!F§.§1J§;
   import §3!%§.§#!K§;
   import §4G§.Sprite;
   import §<!4§.§25§;
   import §='§.§0i§;
   import §>Y§.§%m§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.geom.Point;
   
   public class §4A§ extends §>A§
   {
       
      
      private var §@!%§:Boolean = false;
      
      private var §#!7§:int = 0;
      
      private var § U§:§8C§ = null;
      
      private var §=!;§:§6q§;
      
      public function §4A§(param1:§#§, param2:§#!K§, param3:Sprite)
      {
         var _loc5_:§8C§ = null;
         super(param1,param2,param3);
         var _loc4_:int = 0;
         while(_loc4_ < §3!F§.length)
         {
            if((_loc5_ = §3!F§[_loc4_]).§!Z§ == "BLOCK_ROPE_THICK")
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
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §8C§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         if(param1 == "BIRD_MIGHTY_EAGLE")
         {
            this.§ U§ = super.addObject("BIRD_MIGHTY_PHIL_EAGLE",param2,param3,param4,param5,param6,param7,param8,param9);
            return this.§ U§;
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
         return §1J§;
      }
      
      override public function mightyEagleUsed() : void
      {
         super.mightyEagleUsed();
      }
      
      override public function objectCollision(param1:§8C§, param2:§8C§) : Boolean
      {
         var _loc3_:§0i§ = null;
         if((_loc3_ = param1 as §0i§) && _loc3_.§2!2§)
         {
            if(!_loc3_.§+;§)
            {
               _loc3_.§]!7§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§+;§ = true;
            return false;
         }
         if((_loc3_ = param2 as §0i§) && _loc3_.§2!2§)
         {
            if(!_loc3_.§+;§)
            {
               _loc3_.§]!7§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§+;§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§8C§) : void
      {
         if(param1 is §0i§)
         {
            this.addExplosions(§2+§.§"0§,param1.§]!7§().GetPosition().x,param1.§]!7§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         §[!4§.push(§2+§.createExplosion(param1,param2,param3));
         §25§.playSound("TntExplosions","ChannelExplosions");
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:§%m§ = null;
         if(§@_§ != 0)
         {
            §%m§(§#'§.§20§.§%x§()).§4b§().§?!&§(§%!H§.§ "§,true);
         }
         if(this.mMightyEagleAdded)
         {
            _loc2_ = 1;
            if(mMightyEagleHasTouchedGround)
            {
               _loc2_ = -1;
            }
            _loc3_ = new b2Vec2(§1J§.MIGHTY_EAGLE_X_DIRECTION,_loc2_ * §1J§.MIGHTY_EAGLE_Y_CHANGE);
            _loc4_ = this.§ U§.§]!7§().GetPosition().Copy();
            _loc3_.Normalize();
            _loc4_.x -= _loc3_.x * 5.5 * 5;
            _loc4_.y -= _loc3_.y * 5.5 * 5;
         }
         if(§1J§.§&%§)
         {
            if(this.mMightyEagleAdded && this.§ U§ != null)
            {
               if(mMightyEagleHasTouchedGround && this.§ U§ != null)
               {
                  _loc5_ = §&§.box2DToScreen(this.§ U§.§]!7§().GetPosition().x,this.§ U§.§]!7§().GetPosition().y);
                  if(!(_loc6_ = §%m§(§#'§.§20§.§%x§())).§'M§() && !this.§#!7§ && _loc5_.x > AngryBirdsCustomCanvas.§^&§ + §1J§.§9-§)
                  {
                     _loc6_.§8!9§();
                  }
                  else if(!this.§#!7§ && _loc5_.x > AngryBirdsCustomCanvas.§^&§ + §1J§.§4"§)
                  {
                     this.§#!7§ = mMightyEagleTimer;
                     this.§@!%§ = true;
                     this.§&§.slowMotion = true;
                     this.§=!;§ = §[!-§.§ set§.§6B§(§&§,{"timeMultiplier":§1J§.§^,§},{"timeMultiplier":1},§1J§.§!c§);
                     this.§=!;§.onComplete = this.§-0§;
                     this.§=!;§.play();
                  }
                  else if(this.§@!%§ && _loc5_.x < AngryBirdsCustomCanvas.§^&§ + §1J§.§4"§)
                  {
                     this.§&v§();
                  }
               }
            }
            if(this.§@!%§)
            {
               if(mMightyEagleTimer - this.§#!7§ > §1J§.§4R§ + §1J§.§=!N§)
               {
                  §%m§(§#'§.§20§.§%x§()).§+R§();
               }
               if(mMightyEagleTimer - this.§#!7§ > §1J§.§4R§)
               {
                  if(this.§=!;§ == null)
                  {
                     this.§=!;§ = §[!-§.§ set§.§6B§(§&§,{"timeMultiplier":1},{"timeMultiplier":§1J§.§^,§},§1J§.§"R§);
                     this.§=!;§.play();
                  }
               }
            }
         }
         if(this.mMightyEagleAdded && this.§ U§ != null)
         {
            this.§ U§.§!Z§ = "BIRD_MIGHTY_EAGLE";
         }
         super.updateLevelObjectsComplete(param1);
      }
      
      public function §&v§() : void
      {
         this.§@!%§ = false;
         this.§#!7§ = 0;
         if(§&§ != null)
         {
            §0f§(§&§).timeMultiplier = 1;
         }
         if(this.§=!;§ != null)
         {
            this.§=!;§.stop();
            this.§=!;§ = null;
         }
      }
      
      private function §-0§() : void
      {
         this.§=!;§ = null;
      }
      
      private function §&!N§(param1:b2Vec2, param2:b2Vec2, param3:int) : void
      {
         var _loc6_:§8C§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = param3;
         for each(_loc6_ in §3!F§)
         {
            _loc7_ = _loc6_.§]!7§().GetPosition().x - param1.x;
            _loc8_ = _loc6_.§]!7§().GetPosition().y - param1.y;
            _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
            _loc4_++;
            if(_loc9_ <= _loc5_)
            {
               if(_loc6_.§"S§.§!Z§.toUpperCase() == "BREAKABLE_STATIC_BLOCK_TRANSPARENT")
               {
                  _loc6_.applyDamage(9999,false);
               }
               else
               {
                  _loc10_ = 10;
                  if(_loc6_.§"S§.material.mName.toUpperCase() == "MATERIAL_BLOCK_STONE")
                  {
                     _loc10_ *= 20;
                  }
                  if(_loc9_ > 0)
                  {
                     _loc11_ = _loc10_ * (_loc7_ / _loc9_);
                     _loc12_ = _loc10_ * (_loc8_ / _loc9_);
                     _loc6_.§]!7§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(param2.x,param2.y));
                  }
               }
            }
         }
      }
   }
}
