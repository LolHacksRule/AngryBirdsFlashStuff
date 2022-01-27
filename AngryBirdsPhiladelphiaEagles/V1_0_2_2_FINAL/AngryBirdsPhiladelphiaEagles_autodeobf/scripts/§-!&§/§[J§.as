package §-!&§
{
   import § N§.Sprite;
   import §&^§.§[!7§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §,!"§.§[!G§;
   import §1&§.§1!B§;
   import §9T§.§1r§;
   import §9T§.§6O§;
   import §9T§.§?9§;
   import §?#§.§+7§;
   import §^]§.§[z§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.geom.Point;
   
   public class §[J§ extends §20§
   {
       
      
      private var §"!,§:Boolean = false;
      
      private var §-!@§:int = 0;
      
      private var §+!+§:§3!,§ = null;
      
      private var §3!N§:§[!9§;
      
      public function §[J§(param1:§1r§, param2:§[z§, param3:Sprite)
      {
         var _loc5_:§3!,§ = null;
         super(param1,param2,param3);
         var _loc4_:int = 0;
         while(_loc4_ < §]!I§.length)
         {
            if((_loc5_ = §]!I§[_loc4_]).§4V§ == "BLOCK_ROPE_THICK")
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
      
      override public function addObject(param1:String, param2:Number, param3:Number, param4:Number = 0, param5:Boolean = false, param6:Boolean = false, param7:Boolean = true, param8:Number = 1.0, param9:Boolean = false) : §3!,§
      {
         if(param1.indexOf("MISC_EASTER_EGG_") == 0)
         {
            return null;
         }
         if(param1 == "BIRD_MIGHTY_EAGLE")
         {
            this.§+!+§ = super.addObject("BIRD_MIGHTY_PHIL_EAGLE",param2,param3,param4,param5,param6,param7,param8,param9);
            return this.§+!+§;
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
         return §6O§;
      }
      
      override public function mightyEagleUsed() : void
      {
         super.mightyEagleUsed();
      }
      
      override public function objectCollision(param1:§3!,§, param2:§3!,§) : Boolean
      {
         var _loc3_:§1!B§ = null;
         if((_loc3_ = param1 as §1!B§) && _loc3_.§2s§)
         {
            if(!_loc3_.§0J§)
            {
               _loc3_.§`%§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§0J§ = true;
            return false;
         }
         if((_loc3_ = param2 as §1!B§) && _loc3_.§2s§)
         {
            if(!_loc3_.§0J§)
            {
               _loc3_.§`%§().SetAngularVelocity((1 - Math.pow(1 - Math.random(),5)) * 4 - 2);
            }
            _loc3_.§0J§ = true;
            return false;
         }
         return super.objectCollision(param1,param2);
      }
      
      override protected function checkExplosions(param1:§3!,§) : void
      {
         if(param1 is §1!B§)
         {
            this.addExplosions(§9r§.§4!H§,param1.§`%§().GetPosition().x,param1.§`%§().GetPosition().y);
         }
         else
         {
            super.checkExplosions(param1);
         }
      }
      
      override public function addExplosions(param1:int, param2:Number, param3:Number) : void
      {
         § c§.push(§9r§.createExplosion(param1,param2,param3));
         §[!7§.playSound("TntExplosions","ChannelExplosions");
      }
      
      override public function updateLevelObjectsComplete(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:b2Vec2 = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:Point = null;
         var _loc6_:§[!G§ = null;
         if(§'4§ != 0)
         {
            §[!G§(§!D§.§46§.§@!@§()).§4v§().§1B§(§+7§.§4!'§,true);
         }
         if(this.mMightyEagleAdded)
         {
            _loc2_ = 1;
            if(mMightyEagleHasTouchedGround)
            {
               _loc2_ = -1;
            }
            _loc3_ = new b2Vec2(§6O§.MIGHTY_EAGLE_X_DIRECTION,_loc2_ * §6O§.MIGHTY_EAGLE_Y_CHANGE);
            _loc4_ = this.§+!+§.§`%§().GetPosition().Copy();
            _loc3_.Normalize();
            _loc4_.x -= _loc3_.x * 5.5 * 5;
            _loc4_.y -= _loc3_.y * 5.5 * 5;
         }
         if(§6O§.§1"§)
         {
            if(this.mMightyEagleAdded && this.§+!+§ != null)
            {
               if(mMightyEagleHasTouchedGround && this.§+!+§ != null)
               {
                  _loc5_ = §;§.box2DToScreen(this.§+!+§.§`%§().GetPosition().x,this.§+!+§.§`%§().GetPosition().y);
                  if(!(_loc6_ = §[!G§(§!D§.§46§.§@!@§())).§#!H§() && !this.§-!@§ && _loc5_.x > AngryBirdsCustomCanvas.§-p§ + §6O§.§5>§)
                  {
                     _loc6_.§4L§();
                  }
                  else if(!this.§-!@§ && _loc5_.x > AngryBirdsCustomCanvas.§-p§ + §6O§.§1L§)
                  {
                     this.§-!@§ = mMightyEagleTimer;
                     this.§"!,§ = true;
                     this.§;§.slowMotion = true;
                     this.§3!N§ = §3C§.§>o§.§<t§(§;§,{"timeMultiplier":§6O§.§4I§},{"timeMultiplier":1},§6O§.§1i§);
                     this.§3!N§.onComplete = this.§^!'§;
                     this.§3!N§.play();
                  }
                  else if(this.§"!,§ && _loc5_.x < AngryBirdsCustomCanvas.§-p§ + §6O§.§1L§)
                  {
                     this.§>i§();
                  }
               }
            }
            if(this.§"!,§)
            {
               if(mMightyEagleTimer - this.§-!@§ > §6O§.§=!§ + §6O§.§'2§)
               {
                  §[!G§(§!D§.§46§.§@!@§()).§1Y§();
               }
               if(mMightyEagleTimer - this.§-!@§ > §6O§.§=!§)
               {
                  if(this.§3!N§ == null)
                  {
                     this.§3!N§ = §3C§.§>o§.§<t§(§;§,{"timeMultiplier":1},{"timeMultiplier":§6O§.§4I§},§6O§.§0!O§);
                     this.§3!N§.play();
                  }
               }
            }
         }
         if(this.mMightyEagleAdded && this.§+!+§ != null)
         {
            this.§+!+§.§4V§ = "BIRD_MIGHTY_EAGLE";
         }
         super.updateLevelObjectsComplete(param1);
      }
      
      public function §>i§() : void
      {
         this.§"!,§ = false;
         this.§-!@§ = 0;
         if(§;§ != null)
         {
            §?9§(§;§).timeMultiplier = 1;
         }
         if(this.§3!N§ != null)
         {
            this.§3!N§.stop();
            this.§3!N§ = null;
         }
      }
      
      private function §^!'§() : void
      {
         this.§3!N§ = null;
      }
      
      private function §&`§(param1:b2Vec2, param2:b2Vec2, param3:int) : void
      {
         var _loc6_:§3!,§ = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = param3;
         for each(_loc6_ in §]!I§)
         {
            _loc7_ = _loc6_.§`%§().GetPosition().x - param1.x;
            _loc8_ = _loc6_.§`%§().GetPosition().y - param1.y;
            _loc9_ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
            _loc4_++;
            if(_loc9_ <= _loc5_)
            {
               if(_loc6_.§+!?§.§4V§.toUpperCase() == "BREAKABLE_STATIC_BLOCK_TRANSPARENT")
               {
                  _loc6_.applyDamage(9999,false);
               }
               else
               {
                  _loc10_ = 10;
                  if(_loc6_.§+!?§.material.mName.toUpperCase() == "MATERIAL_BLOCK_STONE")
                  {
                     _loc10_ *= 20;
                  }
                  if(_loc9_ > 0)
                  {
                     _loc11_ = _loc10_ * (_loc7_ / _loc9_);
                     _loc12_ = _loc10_ * (_loc8_ / _loc9_);
                     _loc6_.§`%§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(param2.x,param2.y));
                  }
               }
            }
         }
      }
   }
}
