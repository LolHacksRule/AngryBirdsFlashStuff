package §?!D§
{
   import §&!M§.*;
   import §,Y§.*;
   import §3!t§.*;
   import §6!`§.*;
   import §;"0§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §=q§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §=!a§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§=!a§ = param1;
         this.§!!§();
      }
      
      b2internal function §;!W§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§=q§[param3][param4].createFcn = param1;
         this.§=q§[param3][param4].destroyFcn = param2;
         this.§=q§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§=q§[param4][param3].createFcn = param1;
            this.§=q§[param4][param3].destroyFcn = param2;
            this.§=q§[param4][param3].primary = false;
         }
      }
      
      b2internal function §!!§() : void
      {
         var _loc2_:int = 0;
         this.§=q§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§#!k§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§#!k§)
         {
            this.§=q§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§#!k§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§#!k§)
            {
               this.§=q§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§;!W§(b2CircleContact.§[,§,b2CircleContact.§3"8§,b2Shape.§93§,b2Shape.§93§);
         this.§;!W§(b2PolyAndCircleContact.§[,§,b2PolyAndCircleContact.§3"8§,b2Shape.§-n§,b2Shape.§93§);
         this.§;!W§(b2PolygonContact.§[,§,b2PolygonContact.§3"8§,b2Shape.§-n§,b2Shape.§-n§);
         this.§;!W§(b2EdgeAndCircleContact.§[,§,b2EdgeAndCircleContact.§3"8§,b2Shape.§!;§,b2Shape.§93§);
         this.§;!W§(b2PolyAndEdgeContact.§[,§,b2PolyAndEdgeContact.§3"8§,b2Shape.§-n§,b2Shape.§!;§);
      }
      
      public function §[,§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§6!Q§();
         var _loc4_:int = param2.§6!Q§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§=q§[_loc3_][_loc4_]).§;"8§)
         {
            _loc6_ = _loc5_.§;"8§;
            _loc5_.§;"8§ = _loc6_.§'!@§;
            --_loc5_.§=!s§;
            _loc6_.§%@§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§=!a§)).§%@§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§=!a§)).§%@§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §3"8§(param1:b2Contact) : void
      {
         if(param1.§-!w§.§3!G§ > 0)
         {
            param1.§true §.m_body.SetAwake(true);
            param1.§]!f§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§true §.§6!Q§();
         var _loc3_:int = param1.§]!f§.§6!Q§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§=q§[_loc2_][_loc3_]).§=!s§;
         param1.§'!@§ = _loc4_.§;"8§;
         _loc4_.§;"8§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§=!a§);
      }
   }
}
