package §0b§
{
   import § y§.*;
   import §!u§.*;
   import §54§.*;
   import §;h§.*;
   import §]!7§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §7m§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §"b§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§"b§ = param1;
         this.§7!&§();
      }
      
      b2internal function §,2§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§7m§[param3][param4].createFcn = param1;
         this.§7m§[param3][param4].destroyFcn = param2;
         this.§7m§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§7m§[param4][param3].createFcn = param1;
            this.§7m§[param4][param3].destroyFcn = param2;
            this.§7m§[param4][param3].primary = false;
         }
      }
      
      b2internal function §7!&§() : void
      {
         var _loc2_:int = 0;
         this.§7m§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§+!=§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§+!=§)
         {
            this.§7m§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§+!=§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§+!=§)
            {
               this.§7m§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§,2§(b2CircleContact.§`Q§,b2CircleContact.§5!,§,b2Shape.§8m§,b2Shape.§8m§);
         this.§,2§(b2PolyAndCircleContact.§`Q§,b2PolyAndCircleContact.§5!,§,b2Shape.§3!D§,b2Shape.§8m§);
         this.§,2§(b2PolygonContact.§`Q§,b2PolygonContact.§5!,§,b2Shape.§3!D§,b2Shape.§3!D§);
         this.§,2§(b2EdgeAndCircleContact.§`Q§,b2EdgeAndCircleContact.§5!,§,b2Shape.§,F§,b2Shape.§8m§);
         this.§,2§(b2PolyAndEdgeContact.§`Q§,b2PolyAndEdgeContact.§5!,§,b2Shape.§3!D§,b2Shape.§,F§);
      }
      
      public function §`Q§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§`!Q§();
         var _loc4_:int = param2.§`!Q§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§7m§[_loc3_][_loc4_]).§=^§)
         {
            _loc6_ = _loc5_.§=^§;
            _loc5_.§=^§ = _loc6_.§&!+§;
            --_loc5_.§]H§;
            _loc6_.§+!K§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§"b§)).§+!K§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§"b§)).§+!K§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §5!,§(param1:b2Contact) : void
      {
         if(param1.§=!c§.§72§ > 0)
         {
            param1.§31§.m_body.SetAwake(true);
            param1.§`>§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§31§.§`!Q§();
         var _loc3_:int = param1.§`>§.§`!Q§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§7m§[_loc2_][_loc3_]).§]H§;
         param1.§&!+§ = _loc4_.§=^§;
         _loc4_.§=^§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§"b§);
      }
   }
}
