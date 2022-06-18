package §?[§
{
   import § T§.§"!2§;
   import § T§.§1!'§;
   import § T§.§1M§;
   import §!4§.§0m§;
   import §!4§.§^!_§;
   import §&i§.b2FilterData;
   import §&i§.b2World;
   import §1!A§.Sprite;
   import §5!K§.b2Vec2;
   import §7z§.§]!-§;
   
   public class §4y§ extends §1M§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var §=i§:Boolean = true;
      
      public function §4y§(param1:§1!'§, param2:Sprite, param3:b2World, param4:§]!-§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§1!'§) : Boolean
      {
         var _loc17_:§"!2§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §][§().GetPosition().x;
         var _loc3_:Number = §][§().GetPosition().y;
         var _loc4_:Number = §][§().GetLinearVelocity().x;
         var _loc5_:Number = §][§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§=!O§ = §4§;
         _loc9_.§1>§ = 65535 & ~§&,§ & ~§4§;
         if(this.§=i§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§-!C§ = true;
            _loc17_.§,!9§(new b2Vec2(10 + 0,-7));
            _loc17_.§3!E§(75);
            _loc17_.§'!W§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§-!C§ = true;
            _loc17_.§,!9§(new b2Vec2(3 + 0,-17));
            _loc17_.§3!E§(75 * 0.5);
            _loc17_.§'!W§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§-!C§ = true;
            _loc17_.§,!9§(new b2Vec2(-3 + 0,-17));
            _loc17_.§3!E§(-75 * 0.5);
            _loc17_.§'!W§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§-!C§ = true;
            _loc17_.§,!9§(new b2Vec2(-10 + 0,-7));
            _loc17_.§3!E§(-75);
            _loc17_.§'!W§(_loc9_);
            this.§,!9§(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false)).§-!C§ = false;
            _loc17_.§,!9§(new b2Vec2(20,20));
            _loc17_.§'!W§(_loc9_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §#!2§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§0m§) : void
      {
         var _loc3_:int = §,!E§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§4y§.CHEETOS_EXPLOSION,§0m§.§=!T§,§^!_§.§4t§,§][§().GetPosition().x,§][§().GetPosition().y,1500,"",§^!_§.§'4§,0,0,0,0,2,20,true);
         this.§"d§(param1);
      }
      
      private function §"d§(param1:§0m§) : void
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
            param1.addParticle(§4y§.CHEESE_PARTICLE,§0m§.§=!T§,§^!_§.§4t§,§][§().GetPosition().x,§][§().GetPosition().y,400 + 700 * Math.random(),"",§^!_§.§2!N§(§9@§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
