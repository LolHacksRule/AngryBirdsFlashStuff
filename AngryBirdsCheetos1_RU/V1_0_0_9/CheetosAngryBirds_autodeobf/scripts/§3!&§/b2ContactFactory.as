package §3!&§
{
   import §!!B§.*;
   import §5p§.*;
   import §7S§.*;
   import §;0§.*;
   import §;U§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var § S§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §;!Q§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§;!Q§ = param1;
         this.§[?§();
      }
      
      b2internal function §`I§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§ S§[param3][param4].createFcn = param1;
         this.§ S§[param3][param4].destroyFcn = param2;
         this.§ S§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§ S§[param4][param3].createFcn = param1;
            this.§ S§[param4][param3].destroyFcn = param2;
            this.§ S§[param4][param3].primary = false;
         }
      }
      
      b2internal function §[?§() : void
      {
         var _loc2_:int = 0;
         this.§ S§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§4%§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§4%§)
         {
            this.§ S§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§4%§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§4%§)
            {
               this.§ S§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§`I§(b2CircleContact.§=S§,b2CircleContact.§true§,b2Shape.§!E§,b2Shape.§!E§);
         this.§`I§(b2PolyAndCircleContact.§=S§,b2PolyAndCircleContact.§true§,b2Shape.§%1§,b2Shape.§!E§);
         this.§`I§(b2PolygonContact.§=S§,b2PolygonContact.§true§,b2Shape.§%1§,b2Shape.§%1§);
         this.§`I§(b2EdgeAndCircleContact.§=S§,b2EdgeAndCircleContact.§true§,b2Shape.§9!M§,b2Shape.§!E§);
         this.§`I§(b2PolyAndEdgeContact.§=S§,b2PolyAndEdgeContact.§true§,b2Shape.§%1§,b2Shape.§9!M§);
      }
      
      public function §=S§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§9o§();
         var _loc4_:int = param2.§9o§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§ S§[_loc3_][_loc4_]).§?v§)
         {
            _loc6_ = _loc5_.§?v§;
            _loc5_.§?v§ = _loc6_.§6!#§;
            --_loc5_.§4!X§;
            _loc6_.§9-§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§;!Q§)).§9-§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§;!Q§)).§9-§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §true§(param1:b2Contact) : void
      {
         if(param1.§+P§.§5f§ > 0)
         {
            param1.§=N§.m_body.SetAwake(true);
            param1.§?P§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§=N§.§9o§();
         var _loc3_:int = param1.§?P§.§9o§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§ S§[_loc2_][_loc3_]).§4!X§;
         param1.§6!#§ = _loc4_.§?v§;
         _loc4_.§?v§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§;!Q§);
      }
   }
}
