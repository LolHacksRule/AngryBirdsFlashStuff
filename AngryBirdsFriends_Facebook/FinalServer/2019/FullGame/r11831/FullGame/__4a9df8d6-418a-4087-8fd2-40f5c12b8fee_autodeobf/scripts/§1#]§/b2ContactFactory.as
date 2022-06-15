package §1#]§
{
   import §!H§.*;
   import §4$E§.*;
   import §?!C§.*;
   import §?N§.*;
   import §@!S§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §`$+§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §^w§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§^w§ = param1;
         this.§!$>§();
      }
      
      b2internal function §5;§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§`$+§[param3][param4].createFcn = param1;
         this.§`$+§[param3][param4].destroyFcn = param2;
         this.§`$+§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§`$+§[param4][param3].createFcn = param1;
            this.§`$+§[param4][param3].destroyFcn = param2;
            this.§`$+§[param4][param3].primary = false;
         }
      }
      
      b2internal function §!$>§() : void
      {
         var _loc2_:int = 0;
         this.§`$+§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§?#j§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§?#j§)
         {
            this.§`$+§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§?#j§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§?#j§)
            {
               this.§`$+§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§5;§(b2CircleContact.§,"h§,b2CircleContact.§;"@§,b2Shape.§"$E§,b2Shape.§"$E§);
         this.§5;§(b2PolyAndCircleContact.§,"h§,b2PolyAndCircleContact.§;"@§,b2Shape.§?6§,b2Shape.§"$E§);
         this.§5;§(b2PolygonContact.§,"h§,b2PolygonContact.§;"@§,b2Shape.§?6§,b2Shape.§?6§);
         this.§5;§(b2EdgeAndCircleContact.§,"h§,b2EdgeAndCircleContact.§;"@§,b2Shape.§#!-§,b2Shape.§"$E§);
         this.§5;§(b2PolyAndEdgeContact.§,"h§,b2PolyAndEdgeContact.§;"@§,b2Shape.§?6§,b2Shape.§#!-§);
      }
      
      public function §,"h§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§8!p§();
         var _loc4_:int = param2.§8!p§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§`$+§[_loc3_][_loc4_]).§'#^§)
         {
            _loc6_ = _loc5_.§'#^§;
            _loc5_.§'#^§ = _loc6_.§@W§;
            --_loc5_.§4#=§;
            if(_loc5_.primary)
            {
               _loc6_.§!!C§(param1,param2);
            }
            else
            {
               _loc6_.§!!C§(param2,param1);
            }
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§^w§)).§!!C§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§^w§)).§!!C§(param2,param1);
            _loc6_.§##w§ = true;
            return _loc6_;
         }
         return null;
      }
      
      public function §;"@§(param1:b2Contact) : void
      {
         var _loc6_:int = 0;
         if(param1.§^#t§.§`!o§ > 0)
         {
            param1.§-!-§.m_body.SetAwake(true);
            param1.§^y§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§-!-§.§8!p§();
         var _loc3_:int = param1.§^y§.§8!p§();
         if(param1.§##w§)
         {
            _loc2_ = param1.§^y§.§8!p§();
            _loc3_ = param1.§-!-§.§8!p§();
         }
         if(_loc2_ == 0 && _loc3_ == 1)
         {
            _loc6_ = 1;
         }
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§`$+§[_loc2_][_loc3_]).§4#=§;
         param1.§@W§ = _loc4_.§'#^§;
         _loc4_.§'#^§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§^w§);
      }
   }
}
