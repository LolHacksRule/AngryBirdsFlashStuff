package §`!k§
{
   import § "%§.*;
   import §"#i§.*;
   import §'"$§.*;
   import §,!s§.*;
   import §4"O§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §`#5§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §%@§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§%@§ = param1;
         this.§3#b§();
      }
      
      b2internal function §9$9§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§`#5§[param3][param4].createFcn = param1;
         this.§`#5§[param3][param4].destroyFcn = param2;
         this.§`#5§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§`#5§[param4][param3].createFcn = param1;
            this.§`#5§[param4][param3].destroyFcn = param2;
            this.§`#5§[param4][param3].primary = false;
         }
      }
      
      b2internal function §3#b§() : void
      {
         var _loc2_:int = 0;
         this.§`#5§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§5u§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§5u§)
         {
            this.§`#5§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§5u§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§5u§)
            {
               this.§`#5§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§9$9§(b2CircleContact.§4"T§,b2CircleContact.§`"e§,b2Shape.§!X§,b2Shape.§!X§);
         this.§9$9§(b2PolyAndCircleContact.§4"T§,b2PolyAndCircleContact.§`"e§,b2Shape.§9##§,b2Shape.§!X§);
         this.§9$9§(b2PolygonContact.§4"T§,b2PolygonContact.§`"e§,b2Shape.§9##§,b2Shape.§9##§);
         this.§9$9§(b2EdgeAndCircleContact.§4"T§,b2EdgeAndCircleContact.§`"e§,b2Shape.§-#a§,b2Shape.§!X§);
         this.§9$9§(b2PolyAndEdgeContact.§4"T§,b2PolyAndEdgeContact.§`"e§,b2Shape.§9##§,b2Shape.§-#a§);
      }
      
      public function §4"T§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§+L§();
         var _loc4_:int = param2.§+L§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§`#5§[_loc3_][_loc4_]).§6!Q§)
         {
            _loc6_ = _loc5_.§6!Q§;
            _loc5_.§6!Q§ = _loc6_.§-!l§;
            --_loc5_.§,"u§;
            if(_loc5_.primary)
            {
               _loc6_.§1!M§(param1,param2);
            }
            else
            {
               _loc6_.§1!M§(param2,param1);
            }
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§%@§)).§1!M§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§%@§)).§1!M§(param2,param1);
            _loc6_.§9!p§ = true;
            return _loc6_;
         }
         return null;
      }
      
      public function §`"e§(param1:b2Contact) : void
      {
         var _loc6_:int = 0;
         if(param1.§1"j§.§%!+§ > 0)
         {
            param1.§##y§.m_body.SetAwake(true);
            param1.§0!m§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§##y§.§+L§();
         var _loc3_:int = param1.§0!m§.§+L§();
         if(param1.§9!p§)
         {
            _loc2_ = param1.§0!m§.§+L§();
            _loc3_ = param1.§##y§.§+L§();
         }
         if(_loc2_ == 0 && _loc3_ == 1)
         {
            _loc6_ = 1;
         }
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§`#5§[_loc2_][_loc3_]).§,"u§;
         param1.§-!l§ = _loc4_.§6!Q§;
         _loc4_.§6!Q§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§%@§);
      }
   }
}
