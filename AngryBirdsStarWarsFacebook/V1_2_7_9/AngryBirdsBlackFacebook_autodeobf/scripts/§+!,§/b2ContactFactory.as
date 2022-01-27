package §+!,§
{
   import §%!#§.*;
   import §1x§.*;
   import §9!s§.*;
   import §[!L§.*;
   import §^>§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §+-§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §3!L§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§3!L§ = param1;
         this.§=B§();
      }
      
      b2internal function §,!d§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§+-§[param3][param4].createFcn = param1;
         this.§+-§[param3][param4].destroyFcn = param2;
         this.§+-§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§+-§[param4][param3].createFcn = param1;
            this.§+-§[param4][param3].destroyFcn = param2;
            this.§+-§[param4][param3].primary = false;
         }
      }
      
      b2internal function §=B§() : void
      {
         var _loc2_:int = 0;
         this.§+-§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§`l§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§`l§)
         {
            this.§+-§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§`l§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§`l§)
            {
               this.§+-§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§,!d§(b2CircleContact.§0"]§,b2CircleContact.§%c§,b2Shape.§">§,b2Shape.§">§);
         this.§,!d§(b2PolyAndCircleContact.§0"]§,b2PolyAndCircleContact.§%c§,b2Shape.§2!c§,b2Shape.§">§);
         this.§,!d§(b2PolygonContact.§0"]§,b2PolygonContact.§%c§,b2Shape.§2!c§,b2Shape.§2!c§);
         this.§,!d§(b2EdgeAndCircleContact.§0"]§,b2EdgeAndCircleContact.§%c§,b2Shape.§>"Z§,b2Shape.§">§);
         this.§,!d§(b2PolyAndEdgeContact.§0"]§,b2PolyAndEdgeContact.§%c§,b2Shape.§2!c§,b2Shape.§>"Z§);
      }
      
      public function §0"]§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§ "N§();
         var _loc4_:int = param2.§ "N§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§+-§[_loc3_][_loc4_]).§5!a§)
         {
            _loc6_ = _loc5_.§5!a§;
            _loc5_.§5!a§ = _loc6_.§ z§;
            --_loc5_.§@!x§;
            _loc6_.§1"x§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§3!L§)).§1"x§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§3!L§)).§1"x§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §%c§(param1:b2Contact) : void
      {
         if(param1.§&"'§.§+"`§ > 0)
         {
            param1.§0">§.m_body.SetAwake(true);
            param1.§'#'§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§0">§.§ "N§();
         var _loc3_:int = param1.§'#'§.§ "N§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§+-§[_loc2_][_loc3_]).§@!x§;
         param1.§ z§ = _loc4_.§5!a§;
         _loc4_.§5!a§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§3!L§);
      }
   }
}
