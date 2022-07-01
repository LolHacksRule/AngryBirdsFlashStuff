package §[K§
{
   import §'I§.*;
   import §7!&§.*;
   import §9!Z§.*;
   import §?"'§.*;
   import §`!C§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §9!+§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §5!A§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§5!A§ = param1;
         this.§4a§();
      }
      
      b2internal function §^c§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§9!+§[param3][param4].createFcn = param1;
         this.§9!+§[param3][param4].destroyFcn = param2;
         this.§9!+§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§9!+§[param4][param3].createFcn = param1;
            this.§9!+§[param4][param3].destroyFcn = param2;
            this.§9!+§[param4][param3].primary = false;
         }
      }
      
      b2internal function §4a§() : void
      {
         var _loc2_:int = 0;
         this.§9!+§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§ !S§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§ !S§)
         {
            this.§9!+§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§ !S§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§ !S§)
            {
               this.§9!+§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§^c§(b2CircleContact.§&y§,b2CircleContact.§"!,§,b2Shape.§7"4§,b2Shape.§7"4§);
         this.§^c§(b2PolyAndCircleContact.§&y§,b2PolyAndCircleContact.§"!,§,b2Shape.§?"#§,b2Shape.§7"4§);
         this.§^c§(b2PolygonContact.§&y§,b2PolygonContact.§"!,§,b2Shape.§?"#§,b2Shape.§?"#§);
         this.§^c§(b2EdgeAndCircleContact.§&y§,b2EdgeAndCircleContact.§"!,§,b2Shape.§4!7§,b2Shape.§7"4§);
         this.§^c§(b2PolyAndEdgeContact.§&y§,b2PolyAndEdgeContact.§"!,§,b2Shape.§?"#§,b2Shape.§4!7§);
      }
      
      public function §&y§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§&r§();
         var _loc4_:int = param2.§&r§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§9!+§[_loc3_][_loc4_]).§class§)
         {
            _loc6_ = _loc5_.§class§;
            _loc5_.§class§ = _loc6_.§>7§;
            --_loc5_.§&!t§;
            _loc6_.§`p§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§5!A§)).§`p§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§5!A§)).§`p§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §"!,§(param1:b2Contact) : void
      {
         if(param1.§1!&§.§<X§ > 0)
         {
            param1.§,!V§.m_body.SetAwake(true);
            param1.§-"0§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§,!V§.§&r§();
         var _loc3_:int = param1.§-"0§.§&r§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§9!+§[_loc2_][_loc3_]).§&!t§;
         param1.§>7§ = _loc4_.§class§;
         _loc4_.§class§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§5!A§);
      }
   }
}
