package §_-D9§
{
   import §_-43§.b2FilterData;
   import §_-43§.b2World;
   import §_-F2§.b2Vec2;
   import §_-GY§.Sprite;
   import §_-Kz§.§_-c3§;
   import §_-Sr§.§_-Jq§;
   import §_-Sr§.§_-K-§;
   import §_-fr§.§ else§;
   import §_-fr§.§_-FX§;
   import §_-fr§.§_-ZS§;
   
   public class §_-dH§ extends §_-ZS§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var §_-eQ§:Boolean = true;
      
      public function §_-dH§(param1:§ else§, param2:Sprite, param3:b2World, param4:§_-c3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§ else§) : Boolean
      {
         var _loc17_:§_-FX§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §implements§().GetPosition().x;
         var _loc3_:Number = §implements§().GetPosition().y;
         var _loc4_:Number = §implements§().GetLinearVelocity().x;
         var _loc5_:Number = §implements§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§_-eR§ = §_-W2§;
         _loc9_.§_-uo§ = 65535 & ~§_-O0§ & ~§_-W2§;
         if(this.§_-eQ§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§_-Wy§ = true;
            _loc17_.§_-PP§(new b2Vec2(10 + 0,-7));
            _loc17_.§_-y7§(75);
            _loc17_.§_-yN§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§_-Wy§ = true;
            _loc17_.§_-PP§(new b2Vec2(3 + 0,-17));
            _loc17_.§_-y7§(75 * 0.5);
            _loc17_.§_-yN§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§_-Wy§ = true;
            _loc17_.§_-PP§(new b2Vec2(-3 + 0,-17));
            _loc17_.§_-y7§(-75 * 0.5);
            _loc17_.§_-yN§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§_-Wy§ = true;
            _loc17_.§_-PP§(new b2Vec2(-10 + 0,-7));
            _loc17_.§_-y7§(-75);
            _loc17_.§_-yN§(_loc9_);
            this.§_-PP§(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false)).§_-Wy§ = false;
            _loc17_.§_-PP§(new b2Vec2(20,20));
            _loc17_.§_-yN§(_loc9_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §_-5p§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§_-Jq§) : void
      {
         var _loc3_:int = §_-m8§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§_-dH§.CHEETOS_EXPLOSION,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,§implements§().GetPosition().x,§implements§().GetPosition().y,1500,"",§_-K-§.§_-2j§,0,0,0,0,2,20,true);
         this.§_-7H§(param1);
      }
      
      private function §_-7H§(param1:§_-Jq§) : void
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
            param1.addParticle(§_-dH§.CHEESE_PARTICLE,§_-Jq§.§_-0-§,§_-K-§.§_-AI§,§implements§().GetPosition().x,§implements§().GetPosition().y,400 + 700 * Math.random(),"",§_-K-§.§_-2U§(§_-05§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
