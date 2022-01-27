package §8[§
{
   import §+#$§.*;
   import §3"5§.*;
   import §4!$§.*;
   import §5"i§.*;
   import §[R§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §1!3§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §+!z§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§+!z§ = param1;
         this.§4#O§();
      }
      
      b2internal function §29§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§1!3§[param3][param4].createFcn = param1;
         this.§1!3§[param3][param4].destroyFcn = param2;
         this.§1!3§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§1!3§[param4][param3].createFcn = param1;
            this.§1!3§[param4][param3].destroyFcn = param2;
            this.§1!3§[param4][param3].primary = false;
         }
      }
      
      b2internal function §4#O§() : void
      {
         var _loc2_:int = 0;
         this.§1!3§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§`"#§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§`"#§)
         {
            this.§1!3§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§`"#§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§`"#§)
            {
               this.§1!3§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§29§(b2CircleContact.§=!S§,b2CircleContact.§;!"§,b2Shape.§;!T§,b2Shape.§;!T§);
         this.§29§(b2PolyAndCircleContact.§=!S§,b2PolyAndCircleContact.§;!"§,b2Shape.§ !7§,b2Shape.§;!T§);
         this.§29§(b2PolygonContact.§=!S§,b2PolygonContact.§;!"§,b2Shape.§ !7§,b2Shape.§ !7§);
         this.§29§(b2EdgeAndCircleContact.§=!S§,b2EdgeAndCircleContact.§;!"§,b2Shape.§5"l§,b2Shape.§;!T§);
         this.§29§(b2PolyAndEdgeContact.§=!S§,b2PolyAndEdgeContact.§;!"§,b2Shape.§ !7§,b2Shape.§5"l§);
      }
      
      public function §=!S§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§8! §();
         var _loc4_:int = param2.§8! §();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§1!3§[_loc3_][_loc4_]).§"=§)
         {
            _loc6_ = _loc5_.§"=§;
            _loc5_.§"=§ = _loc6_.§!"!§;
            --_loc5_.§4!T§;
            _loc6_.§'B§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§+!z§)).§'B§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§+!z§)).§'B§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §;!"§(param1:b2Contact) : void
      {
         if(param1.§!#Y§.§6#;§ > 0)
         {
            param1.§8"Q§.m_body.SetAwake(true);
            param1.§?# §.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§8"Q§.§8! §();
         var _loc3_:int = param1.§?# §.§8! §();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§1!3§[_loc2_][_loc3_]).§4!T§;
         param1.§!"!§ = _loc4_.§"=§;
         _loc4_.§"=§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§+!z§);
      }
   }
}
