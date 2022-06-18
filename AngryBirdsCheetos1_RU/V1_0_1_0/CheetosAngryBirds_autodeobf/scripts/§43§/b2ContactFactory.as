package §43§
{
   import §#b§.*;
   import §%!B§.*;
   import §&!B§.*;
   import §[x§.*;
   import §^<§.*;
   
   use namespace b2internal;
   
   public class b2ContactFactory
   {
       
      
      private var §'r§:Vector.<Vector.<b2ContactRegister>>;
      
      private var §;!S§;
      
      public function b2ContactFactory(param1:*)
      {
         super();
         this.§;!S§ = param1;
         this.§#;§();
      }
      
      b2internal function §@!6§(param1:Function, param2:Function, param3:int, param4:int) : void
      {
         this.§'r§[param3][param4].createFcn = param1;
         this.§'r§[param3][param4].destroyFcn = param2;
         this.§'r§[param3][param4].primary = true;
         if(param3 != param4)
         {
            this.§'r§[param4][param3].createFcn = param1;
            this.§'r§[param4][param3].destroyFcn = param2;
            this.§'r§[param4][param3].primary = false;
         }
      }
      
      b2internal function §#;§() : void
      {
         var _loc2_:int = 0;
         this.§'r§ = new Vector.<Vector.<b2ContactRegister>>(b2Shape.§;!A§);
         var _loc1_:int = 0;
         while(_loc1_ < b2Shape.§;!A§)
         {
            this.§'r§[_loc1_] = new Vector.<b2ContactRegister>(b2Shape.§;!A§);
            _loc2_ = 0;
            while(_loc2_ < b2Shape.§;!A§)
            {
               this.§'r§[_loc1_][_loc2_] = new b2ContactRegister();
               _loc2_++;
            }
            _loc1_++;
         }
         this.§@!6§(b2CircleContact.§[?§,b2CircleContact.§58§,b2Shape.§,_§,b2Shape.§,_§);
         this.§@!6§(b2PolyAndCircleContact.§[?§,b2PolyAndCircleContact.§58§,b2Shape.§2f§,b2Shape.§,_§);
         this.§@!6§(b2PolygonContact.§[?§,b2PolygonContact.§58§,b2Shape.§2f§,b2Shape.§2f§);
         this.§@!6§(b2EdgeAndCircleContact.§[?§,b2EdgeAndCircleContact.§58§,b2Shape.§ !&§,b2Shape.§,_§);
         this.§@!6§(b2PolyAndEdgeContact.§[?§,b2PolyAndEdgeContact.§58§,b2Shape.§2f§,b2Shape.§ !&§);
      }
      
      public function §[?§(param1:b2Fixture, param2:b2Fixture) : b2Contact
      {
         var _loc6_:b2Contact = null;
         var _loc3_:int = param1.§=!,§();
         var _loc4_:int = param2.§=!,§();
         var _loc5_:b2ContactRegister;
         if((_loc5_ = this.§'r§[_loc3_][_loc4_]).§2w§)
         {
            _loc6_ = _loc5_.§2w§;
            _loc5_.§2w§ = _loc6_.§83§;
            --_loc5_.§ `§;
            _loc6_.§^5§(param1,param2);
            return _loc6_;
         }
         var _loc7_:Function;
         if((_loc7_ = _loc5_.createFcn) != null)
         {
            if(_loc5_.primary)
            {
               (_loc6_ = _loc7_(this.§;!S§)).§^5§(param1,param2);
               return _loc6_;
            }
            (_loc6_ = _loc7_(this.§;!S§)).§^5§(param2,param1);
            return _loc6_;
         }
         return null;
      }
      
      public function §58§(param1:b2Contact) : void
      {
         if(param1.§2'§.§>#§ > 0)
         {
            param1.§1!I§.m_body.SetAwake(true);
            param1.§1i§.m_body.SetAwake(true);
         }
         var _loc2_:int = param1.§1!I§.§=!,§();
         var _loc3_:int = param1.§1i§.§=!,§();
         var _loc4_:b2ContactRegister;
         ++(_loc4_ = this.§'r§[_loc2_][_loc3_]).§ `§;
         param1.§83§ = _loc4_.§2w§;
         _loc4_.§2w§ = param1;
         var _loc5_:Function;
         (_loc5_ = _loc4_.destroyFcn)(param1,this.§;!S§);
      }
   }
}
