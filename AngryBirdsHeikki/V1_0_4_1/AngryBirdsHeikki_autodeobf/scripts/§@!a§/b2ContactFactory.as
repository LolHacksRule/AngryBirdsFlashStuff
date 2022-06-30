package §@!a§
{
   import §+!b§.*;
   import §4x§.*;
   import §8!I§.*;
   import §<"§.*;
   import §=i§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §40§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §=#§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§=#§ = param1;
         this.§>!?§();
      }
      
      b2internal function §5@§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§40§[param3][param4].createFcn = param1;
         this.§40§[param3][param4].destroyFcn = param2;
         this.§40§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§40§[param4][param3].createFcn = param1;
            this.§40§[param4][param3].destroyFcn = param2;
            this.§40§[param4][param3].primary = false;
         }
      }
      
      b2internal function §>!?§() : void
      {
         var _loc2_:int = 0;
         this.§40§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§0!1§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§0!1§)
         {
            this.§40§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§0!1§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§0!1§)
            {
               this.§40§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§5@§(b2CircleContact.§ `§,b2CircleContact.§%!`§,b2Shape.§2!Q§,b2Shape.§2!Q§);
         this.§5@§(b2PolyAndCircleContact.§ `§,b2PolyAndCircleContact.§%!`§,b2Shape.§-§,b2Shape.§2!Q§);
         this.§5@§(b2PolygonContact.§ `§,b2PolygonContact.§%!`§,b2Shape.§-§,b2Shape.§-§);
         this.§5@§(b2EdgeAndCircleContact.§ `§,b2EdgeAndCircleContact.§%!`§,b2Shape.§9^§,b2Shape.§2!Q§);
         this.§5@§(b2PolyAndEdgeContact.§ `§,b2PolyAndEdgeContact.§%!`§,b2Shape.§-§,b2Shape.§9^§);
      }
      
      public function § `§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§<!M§();
         var _loc4_:int = param2.§<!M§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§40§[_loc3_][_loc4_]).§4w§)
         {
            _loc6_ = _loc5_.§4w§;
            _loc5_.§4w§ = _loc6_.§,C§;
            --_loc5_.§@5§;
            _loc6_.§5!9§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§=#§)).§5!9§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§=#§)).§5!9§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §%!`§(param1:b2Contact) : void
      {
         if(param1.§=!=§.§>!=§ > 0)
         {
            param1.§]![§.m_body.SetAwake(true);
            param1.§11§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§]![§.§<!M§();
         var _loc3_:int = param1.§11§.§<!M§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§40§[_loc2_][_loc3_]).§@5§;
         param1.§,C§ = _loc4_.§4w§;
         _loc4_.§4w§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§=#§);
      }
   }
}
