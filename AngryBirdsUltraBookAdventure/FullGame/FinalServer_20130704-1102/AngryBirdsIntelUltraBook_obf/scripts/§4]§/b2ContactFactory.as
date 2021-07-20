package §4]§
{
   import §#I§.*;
   import §&H§.*;
   import §3b§.*;
   import §>!Z§.*;
   import §@!3§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §^m§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §'!H§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§'!H§ = param1;
         this.§+-§();
      }
      
      b2internal function §8"#§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§^m§[param3][param4].createFcn = param1;
         this.§^m§[param3][param4].destroyFcn = param2;
         this.§^m§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§^m§[param4][param3].createFcn = param1;
            this.§^m§[param4][param3].destroyFcn = param2;
            this.§^m§[param4][param3].primary = false;
         }
      }
      
      b2internal function §+-§() : void
      {
         var _loc2_:int = 0;
         this.§^m§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§=!#§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§=!#§)
         {
            this.§^m§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§=!#§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§=!#§)
            {
               this.§^m§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§8"#§(b2CircleContact.§1!Y§,b2CircleContact.§=_§,b2Shape.§^!6§,b2Shape.§^!6§);
         this.§8"#§(b2PolyAndCircleContact.§1!Y§,b2PolyAndCircleContact.§=_§,b2Shape.§=&§,b2Shape.§^!6§);
         this.§8"#§(b2PolygonContact.§1!Y§,b2PolygonContact.§=_§,b2Shape.§=&§,b2Shape.§=&§);
         this.§8"#§(b2EdgeAndCircleContact.§1!Y§,b2EdgeAndCircleContact.§=_§,b2Shape.§=n§,b2Shape.§^!6§);
         this.§8"#§(b2PolyAndEdgeContact.§1!Y§,b2PolyAndEdgeContact.§=_§,b2Shape.§=&§,b2Shape.§=n§);
      }
      
      public function §1!Y§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§ 5§();
         var _loc4_:int = param2.§ 5§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§^m§[_loc3_][_loc4_]).§5!H§)
         {
            _loc6_ = _loc5_.§5!H§;
            _loc5_.§5!H§ = _loc6_.§=!8§;
            --_loc5_.§2!i§;
            _loc6_.§2I§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§'!H§)).§2I§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§'!H§)).§2I§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §=_§(param1:b2Contact) : void
      {
         if(param1.§7!l§.§&!h§ > 0)
         {
            param1.§]V§.m_body.SetAwake(true);
            param1.§!j§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§]V§.§ 5§();
         var _loc3_:int = param1.§!j§.§ 5§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§^m§[_loc2_][_loc3_]).§2!i§;
         param1.§=!8§ = _loc4_.§5!H§;
         _loc4_.§5!H§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§'!H§);
      }
   }
}
