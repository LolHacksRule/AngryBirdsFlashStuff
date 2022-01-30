package §`§
{
   import §&!n§.*;
   import §2!Q§.*;
   import §8,§.*;
   import §9v§.*;
   import §?!E§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §9!-§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §[=§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§[=§ = param1;
         this.§4! §();
      }
      
      b2internal function §,f§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§9!-§[param3][param4].createFcn = param1;
         this.§9!-§[param3][param4].destroyFcn = param2;
         this.§9!-§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§9!-§[param4][param3].createFcn = param1;
            this.§9!-§[param4][param3].destroyFcn = param2;
            this.§9!-§[param4][param3].primary = false;
         }
      }
      
      b2internal function §4! §() : void
      {
         var _loc2_:int = 0;
         this.§9!-§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§5!t§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§5!t§)
         {
            this.§9!-§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§5!t§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§5!t§)
            {
               this.§9!-§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§,f§(b2CircleContact.§-"$§,b2CircleContact.§@!,§,b2Shape.§1"2§,b2Shape.§1"2§);
         this.§,f§(b2PolyAndCircleContact.§-"$§,b2PolyAndCircleContact.§@!,§,b2Shape.§;!y§,b2Shape.§1"2§);
         this.§,f§(b2PolygonContact.§-"$§,b2PolygonContact.§@!,§,b2Shape.§;!y§,b2Shape.§;!y§);
         this.§,f§(b2EdgeAndCircleContact.§-"$§,b2EdgeAndCircleContact.§@!,§,b2Shape.§+!w§,b2Shape.§1"2§);
         this.§,f§(b2PolyAndEdgeContact.§-"$§,b2PolyAndEdgeContact.§@!,§,b2Shape.§;!y§,b2Shape.§+!w§);
      }
      
      public function §-"$§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§7![§();
         var _loc4_:int = param2.§7![§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§9!-§[_loc3_][_loc4_]).§<!p§)
         {
            _loc6_ = _loc5_.§<!p§;
            _loc5_.§<!p§ = _loc6_.§-!7§;
            --_loc5_.§7"'§;
            _loc6_.§8!<§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§[=§)).§8!<§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§[=§)).§8!<§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §@!,§(param1:b2Contact) : void
      {
         if(param1.§7`§.§@!p§ > 0)
         {
            param1.§+!u§.m_body.SetAwake(true);
            param1.§6h§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§+!u§.§7![§();
         var _loc3_:int = param1.§6h§.§7![§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§9!-§[_loc2_][_loc3_]).§7"'§;
         param1.§-!7§ = _loc4_.§<!p§;
         _loc4_.§<!p§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§[=§);
      }
   }
}
