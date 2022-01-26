package §_-CA§
{
   import §_-0-K§.§_-FL§;
   import §_-00B§.b2FilterData;
   import §_-00B§.b2World;
   import §_-Fk§.§_-Cb§;
   import §_-Fk§.§_-ON§;
   import §_-Fk§.§_-lp§;
   import §_-Lw§.§_-RT§;
   import §_-Lw§.§_-hQ§;
   import §_-Vn§.b2Vec2;
   import §case §.Sprite;
   
   public class §_-hU§ extends §_-ON§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var §_-WH§:Boolean = true;
      
      public function §_-hU§(param1:§_-lp§, param2:Sprite, param3:b2World, param4:§_-FL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§_-lp§) : Boolean
      {
         var _loc17_:§_-Cb§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-Zv§().GetPosition().x;
         var _loc3_:Number = §_-Zv§().GetPosition().y;
         var _loc4_:Number = §_-Zv§().GetLinearVelocity().x;
         var _loc5_:Number = §_-Zv§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§_-50§ = §_-nk§;
         _loc9_.§_-Vs§ = 65535 & ~§_-XU§ & ~§_-nk§;
         if(this.§_-WH§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§_-Vv§ = true;
            _loc17_.§_-fC§(new b2Vec2(10 + 0,-7));
            _loc17_.§_-YI§(75);
            _loc17_.§_-Sm§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§_-Vv§ = true;
            _loc17_.§_-fC§(new b2Vec2(3 + 0,-17));
            _loc17_.§_-YI§(75 * 0.5);
            _loc17_.§_-Sm§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§_-Vv§ = true;
            _loc17_.§_-fC§(new b2Vec2(-3 + 0,-17));
            _loc17_.§_-YI§(-75 * 0.5);
            _loc17_.§_-Sm§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§_-Vv§ = true;
            _loc17_.§_-fC§(new b2Vec2(-10 + 0,-7));
            _loc17_.§_-YI§(-75);
            _loc17_.§_-Sm§(_loc9_);
            this.§_-fC§(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false)).§_-Vv§ = false;
            _loc17_.§_-fC§(new b2Vec2(20,20));
            _loc17_.§_-Sm§(_loc9_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §null§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§_-RT§) : void
      {
         var _loc3_:int = §_-nM§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§_-hU§.CHEETOS_EXPLOSION,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,§_-Zv§().GetPosition().x,§_-Zv§().GetPosition().y,1500,"",§_-hQ§.§_-RQ§,0,0,0,0,2,20,true);
         this.§_-2g§(param1);
      }
      
      private function §_-2g§(param1:§_-RT§) : void
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
            param1.addParticle(§_-hU§.CHEESE_PARTICLE,§_-RT§.§_-MU§,§_-hQ§.§_-Wf§,§_-Zv§().GetPosition().x,§_-Zv§().GetPosition().y,400 + 700 * Math.random(),"",§_-hQ§.§_-kW§(§_-k-§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
