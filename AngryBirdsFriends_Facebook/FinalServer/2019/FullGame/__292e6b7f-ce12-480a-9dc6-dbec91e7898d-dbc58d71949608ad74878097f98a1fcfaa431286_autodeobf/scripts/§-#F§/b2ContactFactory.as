package §-#F§
{
   import §&$+§.*;
   import §'#K§.*;
   import §,#E§.*;
   import §04§.*;
   import §1#I§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §2"J§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §>!-§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§>!-§ = param1;
         this.§#@§();
      }
      
      b2internal function §6;§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§2"J§[param3][param4].createFcn = param1;
         this.§2"J§[param3][param4].destroyFcn = param2;
         this.§2"J§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§2"J§[param4][param3].createFcn = param1;
            this.§2"J§[param4][param3].destroyFcn = param2;
            this.§2"J§[param4][param3].primary = false;
         }
      }
      
      b2internal function §#@§() : void
      {
         var _loc2_:int = 0;
         this.§2"J§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§>"j§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§>"j§)
         {
            this.§2"J§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§>"j§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§>"j§)
            {
               this.§2"J§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§6;§(b2CircleContact.§9#s§,b2CircleContact.§,#?§,b2Shape.§7!#§,b2Shape.§7!#§);
         this.§6;§(b2PolyAndCircleContact.§9#s§,b2PolyAndCircleContact.§,#?§,b2Shape.§#!J§,b2Shape.§7!#§);
         this.§6;§(b2PolygonContact.§9#s§,b2PolygonContact.§,#?§,b2Shape.§#!J§,b2Shape.§#!J§);
         this.§6;§(b2EdgeAndCircleContact.§9#s§,b2EdgeAndCircleContact.§,#?§,b2Shape.§^$#§,b2Shape.§7!#§);
         this.§6;§(b2PolyAndEdgeContact.§9#s§,b2PolyAndEdgeContact.§,#?§,b2Shape.§#!J§,b2Shape.§^$#§);
      }
      
      public function §9#s§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§<!e§();
         var _loc4_:int = param2.§<!e§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§2"J§[_loc3_][_loc4_]).§'!E§)
         {
            _loc6_ = _loc5_.§'!E§;
            _loc5_.§'!E§ = _loc6_.§>d§;
            --_loc5_.§ !w§;
            if(_loc5_.primary)
            {
               _loc6_.§`"R§(param1,param2);
            }
            else
            {
               _loc6_.§`"R§(param2,param1);
            }
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§>!-§)).§`"R§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§>!-§)).§`"R§(param2,param1);
            _loc6_.§@$'§ = true;
            return _loc6_;
         }
         return null;
      }
      
      public function §,#?§(param1:b2Contact) : void
      {
         var _loc6_:int = 0;
         if(param1.§<"O§.§!!p§ > 0)
         {
            param1.§4"F§.m_body.SetAwake(true);
            param1.§'"n§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§4"F§.§<!e§();
         var _loc3_:int = param1.§'"n§.§<!e§();
         if(param1.§@$'§)
         {
            _loc2_ = param1.§'"n§.§<!e§();
            _loc3_ = param1.§4"F§.§<!e§();
         }
         if(_loc2_ == 0 && _loc3_ == 1)
         {
            _loc6_ = 1;
         }
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§2"J§[_loc2_][_loc3_]).§ !w§;
         param1.§>d§ = _loc4_.§'!E§;
         _loc4_.§'!E§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§>!-§);
      }
   }
}
