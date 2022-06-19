package §6H§
{
   import § o§.b2FilterData;
   import § o§.b2World;
   import §&!8§.§+!6§;
   import §&!8§.§[g§;
   import §&!8§.§]V§;
   import §,§.§ p§;
   import §1!4§.§7!?§;
   import §1!4§.§do§;
   import §6!H§.b2Vec2;
   import §^a§.Sprite;
   import §`h§.§@!Z§;
   
   public class §#!;§ extends §]V§
   {
      
      public static const CHEETOS_EXPLOSION:String = "CHEETOS_EXPLOSION";
      
      public static const CHEESE_PARTICLE:String = "CHEESE_PARTICLE";
       
      
      public var §5E§:Boolean = true;
      
      public function §#!;§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         var _loc17_:§[g§ = null;
         if(!super.activateSpecialPower(param1))
         {
            return false;
         }
         var _loc2_:Number = §`e§().GetPosition().x;
         var _loc3_:Number = §`e§().GetPosition().y;
         var _loc4_:Number = §`e§().GetLinearVelocity().x;
         var _loc5_:Number = §`e§().GetLinearVelocity().y;
         var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
         var _loc7_:Number = -_loc4_ / _loc6_;
         var _loc8_:Number = _loc5_ / _loc6_;
         var _loc9_:b2FilterData;
         (_loc9_ = new b2FilterData()).§5!G§ = §?]§;
         _loc9_.§&!6§ = 65535 & ~§%!P§ & ~§?]§;
         if(this.§5E§)
         {
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2,_loc3_ - _loc7_,0,true,false)).§3!]§ = true;
            _loc17_.§5! §(new b2Vec2(10 + 0,-7));
            _loc17_.§0Q§(75);
            _loc17_.§<k§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ + 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,true)).§3!]§ = true;
            _loc17_.§5! §(new b2Vec2(3 + 0,-17));
            _loc17_.§0Q§(75 * 0.5);
            _loc17_.§<k§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2 * 0.5,_loc3_ - _loc7_ - 1,0,true,false)).§3!]§ = true;
            _loc17_.§5! §(new b2Vec2(-3 + 0,-17));
            _loc17_.§0Q§(-75 * 0.5);
            _loc17_.§<k§(_loc9_);
            (_loc17_ = param1.addObject("CHEESE_STICKS",_loc2_ - _loc8_ - 2,_loc3_ - _loc7_,0,true,false)).§3!]§ = true;
            _loc17_.§5! §(new b2Vec2(-10 + 0,-7));
            _loc17_.§0Q§(-75);
            _loc17_.§<k§(_loc9_);
            this.§5! §(new b2Vec2(_loc4_ * 0.3,_loc5_ * 0.3));
         }
         else
         {
            §@!Z§.§;!,§.§7!h§.addExplosions(§1b§.§4J§,_loc2_,_loc3_);
         }
         return true;
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         if(super.isReadyToBeRemoved(param1) || §,B§)
         {
            return true;
         }
         return false;
      }
      
      override public function addDestructionParticles(param1:§do§) : void
      {
         var _loc3_:int = §>!+§(false) + 1;
         var _loc5_:Number = Number(90) / (180 / Math.PI);
         param1.addParticle(§#!;§.CHEETOS_EXPLOSION,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,1500,"",§7!?§.§=2§,0,0,0,0,2,20,true);
         this.§=!U§(param1);
      }
      
      private function §=!U§(param1:§do§) : void
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
            param1.addParticle(§#!;§.CHEESE_PARTICLE,§do§.§+!c§,§7!?§.§22§,§`e§().GetPosition().x,§`e§().GetPosition().y,400 + 700 * Math.random(),"",§7!?§.§7R§(§>p§),_loc7_,_loc8_,5,_loc8_ * 20,0.5 + Math.random() * 2);
            _loc5_++;
         }
      }
   }
}
