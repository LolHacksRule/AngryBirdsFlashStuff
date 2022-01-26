package §&!S§
{
   import §!!V§.§&I§;
   import §&!5§.Sprite;
   import §&!B§.b2Vec2;
   import §8e§.§"!U§;
   import §8e§.§7!H§;
   import §[x§.b2FilterData;
   import §[x§.b2World;
   import §]!+§.§";§;
   import §]!+§.§'§;
   import §]!+§.§`H§;
   
   public class §"!N§ extends §`H§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var §@p§:Boolean = true;
      
      public function §"!N§(param1:§'§, param2:Sprite, param3:b2World, param4:§&I§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§'§) : Boolean
      {
         var _loc17_:§";§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §?A§().GetPosition().x;
         var _loc3_:Number = §?A§().GetPosition().y;
         var _loc4_:Number = §?A§().GetLinearVelocity().x;
         var _loc5_:Number = §?A§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§@Z§ = §>!&§;
         _loc9_.§8h§ = 65535 & ~§5!O§ & ~§>!&§;
         if(this.§@p§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§5H§ = true;
            _loc17_.§6U§(new b2Vec2(10 + 0,-7));
            _loc17_.§=!§(75);
            _loc17_.§@!3§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§5H§ = true;
            _loc17_.§6U§(new b2Vec2(3 + 0,-17));
            _loc17_.§=!§(75 * 0.5);
            _loc17_.§@!3§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§5H§ = true;
            _loc17_.§6U§(new b2Vec2(-3 + 0,-17));
            _loc17_.§=!§(-75 * 0.5);
            _loc17_.§@!3§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§5H§ = true;
            _loc17_.§6U§(new b2Vec2(-10 + 0,-7));
            _loc17_.§=!§(-75);
            _loc17_.§@!3§(_loc9_);
            this.§6U§(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false)).§5H§ = false;
            _loc17_.§6U§(new b2Vec2(20,20));
            _loc17_.§@!3§(_loc9_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §#!8§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§7!H§) : void
      {
         var _loc3_:int = §=5§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§"!N§.CHEETOS_EXPLOSION,§7!H§.§]0§,§"!U§.§+6§,§?A§().GetPosition().x,§?A§().GetPosition().y,1500,"",§"!U§.§3h§,0,0,0,0,2,20,true);
         this.§0i§(param1);
      }
      
      private function §0i§(param1:§7!H§) : void
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
            param1.addParticle(§"!N§.CHEESE_PARTICLE,§7!H§.§]0§,§"!U§.§+6§,§?A§().GetPosition().x,§?A§().GetPosition().y,400 + 700 * Math.random(),"",§"!U§.§5U§(§+!J§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
