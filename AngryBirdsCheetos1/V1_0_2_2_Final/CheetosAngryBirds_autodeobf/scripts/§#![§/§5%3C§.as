package §#![§
{
   import §!X§.§86§;
   import §,h§.§+0§;
   import §,h§.§4!9§;
   import §,h§.§6M§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §0!G§.b2Vec2;
   import §]@§.Sprite;
   import §`j§.b2FilterData;
   import §`j§.b2World;
   
   public class §5<§ extends §4!9§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var §%7§:Boolean = true;
      
      public function §5<§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§6M§) : Boolean
      {
         var _loc17_:§+0§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §?!7§().GetPosition().x;
         var _loc3_:Number = §?!7§().GetPosition().y;
         var _loc4_:Number = §?!7§().GetLinearVelocity().x;
         var _loc5_:Number = §?!7§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§^-§ = §=!#§;
         _loc9_.§&!8§ = 65535 & ~§;?§ & ~§=!#§;
         if(this.§%7§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§ !W§ = true;
            _loc17_.§`o§(new b2Vec2(10 + 0,-7));
            _loc17_.§8W§(75);
            _loc17_.§>!!§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§ !W§ = true;
            _loc17_.§`o§(new b2Vec2(3 + 0,-17));
            _loc17_.§8W§(75 * 0.5);
            _loc17_.§>!!§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§ !W§ = true;
            _loc17_.§`o§(new b2Vec2(-3 + 0,-17));
            _loc17_.§8W§(-75 * 0.5);
            _loc17_.§>!!§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§ !W§ = true;
            _loc17_.§`o§(new b2Vec2(-10 + 0,-7));
            _loc17_.§8W§(-75);
            _loc17_.§>!!§(_loc9_);
            this.§`o§(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_,_loc3_ - _loc7_,0,true,false)).§ !W§ = false;
            _loc17_.§`o§(new b2Vec2(20,20));
            _loc17_.§>!!§(_loc9_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §;J§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§<2§) : void
      {
         var _loc3_:int = §'!+§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§5<§.CHEETOS_EXPLOSION,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,1500,"",§7o§.§1!6§,0,0,0,0,2,20,true);
         this.§9V§(param1);
      }
      
      private function §9V§(param1:§<2§) : void
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
            param1.addParticle(§5<§.CHEESE_PARTICLE,§<2§.§]!X§,§7o§.§%u§,§?!7§().GetPosition().x,§?!7§().GetPosition().y,400 + 700 * Math.random(),"",§7o§.§3E§(§2!1§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
