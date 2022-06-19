package §package§
{
   import §!!%§.§7!W§;
   import §!!%§.§?f§;
   import §!!R§.Sprite;
   import §#v§.§!!!§;
   import §#v§.;
   import §#v§.§-!7§;
   import §=E§.b2Vec2;
   import §?!0§.b2FilterData;
   import §?!0§.b2World;
   import §?'§.§9N§;
   
   public class §"!0§ extends §!!!§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var § -§:Boolean = true;
      
      public function §"!0§(param1:§-!7§, param2:Sprite, param3:b2World, param4:§9N§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§-!7§) : Boolean
      {
         var _loc17_:§#3§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §#a§().GetPosition().x;
         var _loc3_:Number = §#a§().GetPosition().y;
         var _loc4_:Number = §#a§().GetLinearVelocity().x;
         var _loc5_:Number = §#a§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§?p§ = §"!=§;
         _loc9_.§]@§ = 65535 & ~§8q§ & ~§"!=§;
         if(this.§ -§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§4!'§ = true;
            _loc17_.§?!"§(new b2Vec2(10 + 0,-7));
            _loc17_.§3!=§(75);
            _loc17_.§0=§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§4!'§ = true;
            _loc17_.§?!"§(new b2Vec2(3 + 0,-17));
            _loc17_.§3!=§(75 * 0.5);
            _loc17_.§0=§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§4!'§ = true;
            _loc17_.§?!"§(new b2Vec2(-3 + 0,-17));
            _loc17_.§3!=§(-75 * 0.5);
            _loc17_.§0=§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§4!'§ = true;
            _loc17_.§?!"§(new b2Vec2(-10 + 0,-7));
            _loc17_.§3!=§(-75);
            _loc17_.§0=§(_loc9_);
            this.§?!"§(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false)).§4!'§ = false;
            _loc17_.§?!"§(new b2Vec2(20,20));
            _loc17_.§0=§(_loc9_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §@A§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§7!W§) : void
      {
         var _loc3_:int = §&c§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§"!0§.CHEETOS_EXPLOSION,§7!W§.§'>§,§?f§.§"z§,§#a§().GetPosition().x,§#a§().GetPosition().y,1500,"",§?f§.§&!§,0,0,0,0,2,20,true);
         this.§&L§(param1);
      }
      
      private function §&L§(param1:§7!W§) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc3_:int = 100;
         var _loc4_:Number = 90;
         _loc3_ *= 1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = (_loc4_ += Math.random() * (720 / _loc3_)) / (180 / Math.PI);
            _loc7_ = 25 * Math.cos(_loc6_) * Math.random();
            _loc8_ = -25 * Math.sin(_loc6_) * Math.random();
            param1.addParticle(§"!0§.CHEESE_PARTICLE,§7!W§.§'>§,§?f§.§"z§,§#a§().GetPosition().x,§#a§().GetPosition().y,400 + 700 * Math.random(),"",§?f§.§+!Z§(§,!§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
