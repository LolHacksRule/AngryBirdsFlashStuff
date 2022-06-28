package §break§
{
   import §2!+§.*;
   import §7!u§.*;
   import §72§.*;
   import §>H§.*;
   import §`w§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §5@§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §`o§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§`o§ = param1;
         this.§2J§();
      }
      
      b2internal function §8]§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§5@§[param3][param4].createFcn = param1;
         this.§5@§[param3][param4].destroyFcn = param2;
         this.§5@§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§5@§[param4][param3].createFcn = param1;
            this.§5@§[param4][param3].destroyFcn = param2;
            this.§5@§[param4][param3].primary = false;
         }
      }
      
      b2internal function §2J§() : void
      {
         var _loc2_:int = 0;
         this.§5@§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§@!q§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§@!q§)
         {
            this.§5@§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§@!q§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§@!q§)
            {
               this.§5@§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§8]§(b2CircleContact.§`4§,b2CircleContact.§[M§,b2Shape.§=! §,b2Shape.§=! §);
         this.§8]§(b2PolyAndCircleContact.§`4§,b2PolyAndCircleContact.§[M§,b2Shape.§6!t§,b2Shape.§=! §);
         this.§8]§(b2PolygonContact.§`4§,b2PolygonContact.§[M§,b2Shape.§6!t§,b2Shape.§6!t§);
         this.§8]§(b2EdgeAndCircleContact.§`4§,b2EdgeAndCircleContact.§[M§,b2Shape.§=Q§,b2Shape.§=! §);
         this.§8]§(b2PolyAndEdgeContact.§`4§,b2PolyAndEdgeContact.§[M§,b2Shape.§6!t§,b2Shape.§=Q§);
      }
      
      public function §`4§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§2!r§();
         var _loc4_:int = param2.§2!r§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§5@§[_loc3_][_loc4_]).§&E§)
         {
            _loc6_ = _loc5_.§&E§;
            _loc5_.§&E§ = _loc6_.§3=§;
            --_loc5_.§^!D§;
            _loc6_.§<!e§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§`o§)).§<!e§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§`o§)).§<!e§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §[M§(param1:b2Contact) : void
      {
         if(param1.§"!m§.§63§ > 0)
         {
            param1.§50§.m_body.SetAwake(true);
            param1.§'z§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§50§.§2!r§();
         var _loc3_:int = param1.§'z§.§2!r§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§5@§[_loc2_][_loc3_]).§^!D§;
         param1.§3=§ = _loc4_.§&E§;
         _loc4_.§&E§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§`o§);
      }
   }
}
