package §6"0§
{
   import §,!T§.*;
   import §1#F§.*;
   import §3#h§.*;
   import §6!R§.*;
   import §9$A§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §#E§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §1#v§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§1#v§ = param1;
         this.§7"_§();
      }
      
      b2internal function §7#1§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§#E§[param3][param4].createFcn = param1;
         this.§#E§[param3][param4].destroyFcn = param2;
         this.§#E§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§#E§[param4][param3].createFcn = param1;
            this.§#E§[param4][param3].destroyFcn = param2;
            this.§#E§[param4][param3].primary = false;
         }
      }
      
      b2internal function §7"_§() : void
      {
         var _loc2_:int = 0;
         this.§#E§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§!"V§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§!"V§)
         {
            this.§#E§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§!"V§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§!"V§)
            {
               this.§#E§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§7#1§(b2CircleContact.§'#q§,b2CircleContact.§0"y§,b2Shape.§?#n§,b2Shape.§?#n§);
         this.§7#1§(b2PolyAndCircleContact.§'#q§,b2PolyAndCircleContact.§0"y§,b2Shape.§!"Q§,b2Shape.§?#n§);
         this.§7#1§(b2PolygonContact.§'#q§,b2PolygonContact.§0"y§,b2Shape.§!"Q§,b2Shape.§!"Q§);
         this.§7#1§(b2EdgeAndCircleContact.§'#q§,b2EdgeAndCircleContact.§0"y§,b2Shape.§ #W§,b2Shape.§?#n§);
         this.§7#1§(b2PolyAndEdgeContact.§'#q§,b2PolyAndEdgeContact.§0"y§,b2Shape.§!"Q§,b2Shape.§ #W§);
      }
      
      public function §'#q§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§!"k§();
         var _loc4_:int = param2.§!"k§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§#E§[_loc3_][_loc4_]).§-"^§)
         {
            _loc6_ = _loc5_.§-"^§;
            _loc5_.§-"^§ = _loc6_.§7<§;
            --_loc5_.§6!@§;
            if(_loc5_.primary)
            {
               _loc6_.§14§(param1,param2);
            }
            else
            {
               _loc6_.§14§(param2,param1);
            }
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§1#v§)).§14§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§1#v§)).§14§(param2,param1);
            _loc6_.§+,§ = true;
            return _loc6_;
         }
         return null;
      }
      
      public function §0"y§(param1:b2Contact) : void
      {
         if(param1.§[!2§.§?#Z§ > 0)
         {
            param1.§#";§.m_body.SetAwake(true);
            param1.§0#0§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§#";§.§!"k§();
         var _loc3_:int = param1.§0#0§.§!"k§();
         if(param1.§+,§)
         {
            _loc2_ = param1.§0#0§.§!"k§();
            _loc3_ = param1.§#";§.§!"k§();
         }
         if(_loc2_ == 0 && _loc3_ == 1)
         {
         }
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§#E§[_loc2_][_loc3_]).§6!@§;
         param1.§7<§ = _loc4_.§-"^§;
         _loc4_.§-"^§ = param1;
         _loc4_.destroyFcn(param1,this.§1#v§);
      }
   }
}
