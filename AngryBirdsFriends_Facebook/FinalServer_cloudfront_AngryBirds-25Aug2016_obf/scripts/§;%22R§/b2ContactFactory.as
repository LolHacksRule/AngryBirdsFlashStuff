package §;"R§
{
   import §0H§.*;
   import §0m§.*;
   import §3"q§.*;
   import §=#n§.*;
   import §?!c§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §-I§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §1#;§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§1#;§ = param1;
         this.§`![§();
      }
      
      b2internal function §="b§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§-I§[param3][param4].createFcn = param1;
         this.§-I§[param3][param4].destroyFcn = param2;
         this.§-I§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§-I§[param4][param3].createFcn = param1;
            this.§-I§[param4][param3].destroyFcn = param2;
            this.§-I§[param4][param3].primary = false;
         }
      }
      
      b2internal function §`![§() : void
      {
         var _loc2_:int = 0;
         this.§-I§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§^"O§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§^"O§)
         {
            this.§-I§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§^"O§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§^"O§)
            {
               this.§-I§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§="b§(b2CircleContact.§'#h§,b2CircleContact.§@!]§,b2Shape.§+0§,b2Shape.§+0§);
         this.§="b§(b2PolyAndCircleContact.§'#h§,b2PolyAndCircleContact.§@!]§,b2Shape.§0#N§,b2Shape.§+0§);
         this.§="b§(b2PolygonContact.§'#h§,b2PolygonContact.§@!]§,b2Shape.§0#N§,b2Shape.§0#N§);
         this.§="b§(b2EdgeAndCircleContact.§'#h§,b2EdgeAndCircleContact.§@!]§,b2Shape.§`$&§,b2Shape.§+0§);
         this.§="b§(b2PolyAndEdgeContact.§'#h§,b2PolyAndEdgeContact.§@!]§,b2Shape.§0#N§,b2Shape.§`$&§);
      }
      
      public function §'#h§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§ "c§();
         var _loc4_:int = param2.§ "c§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§-I§[_loc3_][_loc4_]).§]!@§)
         {
            _loc6_ = _loc5_.§]!@§;
            _loc5_.§]!@§ = _loc6_.§@##§;
            --_loc5_.§?"j§;
            if(_loc5_.primary)
            {
               _loc6_.§<#W§(param1,param2);
            }
            else
            {
               _loc6_.§<#W§(param2,param1);
            }
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§1#;§)).§<#W§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§1#;§)).§<#W§(param2,param1);
            _loc6_.§%!n§ = true;
            return _loc6_;
         }
         return null;
      }
      
      public function §@!]§(param1:b2Contact) : void
      {
         if(param1.§&#V§.§+!P§ > 0)
         {
            param1.§!!u§.m_body.SetAwake(true);
            param1.§?!A§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§!!u§.§ "c§();
         var _loc3_:int = param1.§?!A§.§ "c§();
         if(param1.§%!n§)
         {
            _loc2_ = param1.§?!A§.§ "c§();
            _loc3_ = param1.§!!u§.§ "c§();
         }
         if(_loc2_ == 0 && _loc3_ == 1)
         {
         }
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§-I§[_loc2_][_loc3_]).§?"j§;
         param1.§@##§ = _loc4_.§]!@§;
         _loc4_.§]!@§ = param1;
         _loc4_.destroyFcn(param1,this.§1#;§);
      }
   }
}
