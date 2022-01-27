package §'!^§
{
   import §"!w§.*;
   import §8K§.*;
   import §;`§.*;
   import §>!m§.*;
   import §[!f§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §3!B§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §2'§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§2'§ = param1;
         this.§"o§();
      }
      
      b2internal function §%&§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§3!B§[param3][param4].createFcn = param1;
         this.§3!B§[param3][param4].destroyFcn = param2;
         this.§3!B§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§3!B§[param4][param3].createFcn = param1;
            this.§3!B§[param4][param3].destroyFcn = param2;
            this.§3!B§[param4][param3].primary = false;
         }
      }
      
      b2internal function §"o§() : void
      {
         var _loc2_:int = 0;
         this.§3!B§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§<!Y§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§<!Y§)
         {
            this.§3!B§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§<!Y§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§<!Y§)
            {
               this.§3!B§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§%&§(b2CircleContact.§&!L§,b2CircleContact.§<!p§,b2Shape.§?!<§,b2Shape.§?!<§);
         this.§%&§(b2PolyAndCircleContact.§&!L§,b2PolyAndCircleContact.§<!p§,b2Shape.§7!D§,b2Shape.§?!<§);
         this.§%&§(b2PolygonContact.§&!L§,b2PolygonContact.§<!p§,b2Shape.§7!D§,b2Shape.§7!D§);
         this.§%&§(b2EdgeAndCircleContact.§&!L§,b2EdgeAndCircleContact.§<!p§,b2Shape.§]!1§,b2Shape.§?!<§);
         this.§%&§(b2PolyAndEdgeContact.§&!L§,b2PolyAndEdgeContact.§<!p§,b2Shape.§7!D§,b2Shape.§]!1§);
      }
      
      public function §&!L§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§^![§();
         var _loc4_:int = param2.§^![§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§3!B§[_loc3_][_loc4_]).§3!0§)
         {
            _loc6_ = _loc5_.§3!0§;
            _loc5_.§3!0§ = _loc6_.§+!>§;
            --_loc5_.§[!5§;
            _loc6_.§;c§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§2'§)).§;c§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§2'§)).§;c§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §<!p§(param1:b2Contact) : void
      {
         if(param1.§@I§.§"!g§ > 0)
         {
            param1.§@!y§.m_body.SetAwake(true);
            param1.§0!O§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§@!y§.§^![§();
         var _loc3_:int = param1.§0!O§.§^![§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§3!B§[_loc2_][_loc3_]).§[!5§;
         param1.§+!>§ = _loc4_.§3!0§;
         _loc4_.§3!0§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§2'§);
      }
   }
}
