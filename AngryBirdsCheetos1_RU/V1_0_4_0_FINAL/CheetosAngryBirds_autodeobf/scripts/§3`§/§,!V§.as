package §3`§
{
   import §0V§.§`!O§;
   import §3§.Sprite;
   import §3d§.§20§;
   import §3d§.§6!7§;
   import §3d§.§@?§;
   import §9t§.b2FilterData;
   import §9t§.b2World;
   import §>X§.§"^§;
   import §>X§.§7!%§;
   import §^q§.b2Vec2;
   
   public class §,!V§ extends §6!7§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var §"F§:Boolean = true;
      
      public function §,!V§(param1:§@?§, param2:Sprite, param3:b2World, param4:§`!O§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§@?§) : Boolean
      {
         var _loc17_:§20§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §=!,§().GetPosition().x;
         var _loc3_:Number = §=!,§().GetPosition().y;
         var _loc4_:Number = §=!,§().GetLinearVelocity().x;
         var _loc5_:Number = §=!,§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§6X§ = §1!$§;
         _loc9_.§'w§ = 65535 & ~§&!P§ & ~§1!$§;
         if(this.§"F§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§ ;§ = true;
            _loc17_.§,D§(new b2Vec2(10 + 0,-7));
            _loc17_.§?5§(75);
            _loc17_.§"c§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§ ;§ = true;
            _loc17_.§,D§(new b2Vec2(3 + 0,-17));
            _loc17_.§?5§(75 * 0.5);
            _loc17_.§"c§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§ ;§ = true;
            _loc17_.§,D§(new b2Vec2(-3 + 0,-17));
            _loc17_.§?5§(-75 * 0.5);
            _loc17_.§"c§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§ ;§ = true;
            _loc17_.§,D§(new b2Vec2(-10 + 0,-7));
            _loc17_.§?5§(-75);
            _loc17_.§"c§(_loc9_);
            this.§,D§(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false)).§ ;§ = false;
            _loc17_.§,D§(new b2Vec2(20,20));
            _loc17_.§"c§(_loc9_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §4r§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§"^§) : void
      {
         var _loc3_:int = §6p§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§,!V§.CHEETOS_EXPLOSION,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x,§=!,§().GetPosition().y,1500,"",§7!%§.§&#§,0,0,0,0,2,20,true);
         this.§8!5§(param1);
      }
      
      private function §8!5§(param1:§"^§) : void
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
            param1.addParticle(§,!V§.CHEESE_PARTICLE,§"^§.§<!L§,§7!%§.§!w§,§=!,§().GetPosition().x,§=!,§().GetPosition().y,400 + 700 * Math.random(),"",§7!%§.§8k§(§6O§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
