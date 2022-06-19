package §_-aX§
{
   import §_-2r§.§_-sn§;
   import §_-Ls§.Sprite;
   import §_-bl§.§_-Ie§;
   import §_-bl§.§_-S4§;
   import §_-bl§.§_-ag§;
   import §_-cP§.b2Vec2;
   import §_-we§.§_-5J§;
   import §_-we§.§_-yB§;
   import §try§.b2FilterData;
   import §try§.b2World;
   
   public class §_-te§ extends §_-ag§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var §_-ez§:Boolean = true;
      
      public function §_-te§(param1:§_-S4§, param2:Sprite, param3:b2World, param4:§_-sn§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§_-S4§) : Boolean
      {
         var _loc17_:§_-Ie§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §_-BO§().GetPosition().x;
         var _loc3_:Number = §_-BO§().GetPosition().y;
         var _loc4_:Number = §_-BO§().GetLinearVelocity().x;
         var _loc5_:Number = §_-BO§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§_-26§ = §_-oo§;
         _loc9_.§_-rY§ = 65535 & ~§_-0-d§ & ~§_-oo§;
         if(this.§_-ez§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§_-2L§ = true;
            _loc17_.§_-d9§(new b2Vec2(10 + 0,-7));
            _loc17_.§_-na§(75);
            _loc17_.§_-lu§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§_-2L§ = true;
            _loc17_.§_-d9§(new b2Vec2(3 + 0,-17));
            _loc17_.§_-na§(75 * 0.5);
            _loc17_.§_-lu§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§_-2L§ = true;
            _loc17_.§_-d9§(new b2Vec2(-3 + 0,-17));
            _loc17_.§_-na§(-75 * 0.5);
            _loc17_.§_-lu§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§_-2L§ = true;
            _loc17_.§_-d9§(new b2Vec2(-10 + 0,-7));
            _loc17_.§_-na§(-75);
            _loc17_.§_-lu§(_loc9_);
            this.§_-d9§(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false)).§_-2L§ = false;
            _loc17_.§_-d9§(new b2Vec2(20,20));
            _loc17_.§_-lu§(_loc9_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §_-YL§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§_-5J§) : void
      {
         var _loc3_:int = §_-vE§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§_-te§.CHEETOS_EXPLOSION,§_-5J§.§_-2S§,§_-yB§.§_-7K§,§_-BO§().GetPosition().x,§_-BO§().GetPosition().y,1500,"",§_-yB§.§_-D4§,0,0,0,0,2,20,true);
         this.§_-in§(param1);
      }
      
      private function §_-in§(param1:§_-5J§) : void
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
            param1.addParticle(§_-te§.CHEESE_PARTICLE,§_-5J§.§_-2S§,§_-yB§.§_-7K§,§_-BO§().GetPosition().x,§_-BO§().GetPosition().y,400 + 700 * Math.random(),"",§_-yB§.§_-zC§(§_-G2§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
