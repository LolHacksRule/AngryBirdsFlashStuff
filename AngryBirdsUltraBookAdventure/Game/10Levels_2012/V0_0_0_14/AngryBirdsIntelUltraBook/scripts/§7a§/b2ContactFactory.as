package §7a§
{
   import § D§.*;
   import §&!-§.*;
   import §0!'§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §37§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §>#§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§>#§ = param1;
         this.§ %§();
      }
      
      b2internal function §;!1§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§37§[param3][param4].createFcn = param1;
         this.§37§[param3][param4].destroyFcn = param2;
         this.§37§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§37§[param4][param3].createFcn = param1;
            this.§37§[param4][param3].destroyFcn = param2;
            this.§37§[param4][param3].primary = false;
         }
      }
      
      b2internal function § %§() : void
      {
         var _loc2_:int = 0;
         this.§37§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§">§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§">§)
         {
            this.§37§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§">§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§">§)
            {
               this.§37§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§;!1§(b2CircleContact.§5=§,b2CircleContact.§"L§,b2Shape.§8&§,b2Shape.§8&§);
         this.§;!1§(b2PolyAndCircleContact.§5=§,b2PolyAndCircleContact.§"L§,b2Shape.§8y§,b2Shape.§8&§);
         this.§;!1§(b2PolygonContact.§5=§,b2PolygonContact.§"L§,b2Shape.§8y§,b2Shape.§8y§);
         this.§;!1§(b2EdgeAndCircleContact.§5=§,b2EdgeAndCircleContact.§"L§,b2Shape.§<!o§,b2Shape.§8&§);
         this.§;!1§(b2PolyAndEdgeContact.§5=§,b2PolyAndEdgeContact.§"L§,b2Shape.§8y§,b2Shape.§<!o§);
      }
      
      public function §5=§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§0!@§();
         var _loc4_:int = param2.§0!@§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§37§[_loc3_][_loc4_]).§3!q§)
         {
            _loc6_ = _loc5_.§3!q§;
            _loc5_.§3!q§ = _loc6_.§7n§;
            --_loc5_.§@g§;
            _loc6_.§#[§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§>#§)).§#[§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§>#§)).§#[§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §"L§(param1:b2Contact) : void
      {
         if(param1.§?K§.§]B§ > 0)
         {
            param1.§48§.m_body.SetAwake(true);
            param1.§[=§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§48§.§0!@§();
         var _loc3_:int = param1.§[=§.§0!@§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§37§[_loc2_][_loc3_]).§@g§;
         param1.§7n§ = _loc4_.§3!q§;
         _loc4_.§3!q§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§>#§);
      }
   }
}
