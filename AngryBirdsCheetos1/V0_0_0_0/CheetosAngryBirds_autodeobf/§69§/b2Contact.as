package §69§
{
   import § G§.b2ContactID;
   import § G§.b2Manifold;
   import § G§.b2ManifoldPoint;
   import § G§.b2TOIInput;
   import § G§.b2TimeOfImpact;
   import § G§.b2WorldManifold;
   import §&!"§.b2Body;
   import §&!"§.b2ContactListener;
   import §&!"§.b2Fixture;
   import §-!C§.b2Shape;
   import §9"§.b2Sweep;
   import §9"§.b2Transform;
   import §>!@§.b2Settings;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §4!$§:uint = 1;
      
      b2internal static var §<?§:uint = 2;
      
      b2internal static var §"!X§:uint = 4;
      
      b2internal static var §0N§:uint = 8;
      
      b2internal static var §%!J§:uint = 16;
      
      b2internal static var §5A§:uint = 32;
      
      b2internal static var §62§:uint = 64;
      
      private static var §-u§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §?z§:uint;
      
      b2internal var §3U§:b2Contact;
      
      b2internal var §0]§:b2Contact;
      
      b2internal var § !D§:b2ContactEdge;
      
      b2internal var §@s§:b2ContactEdge;
      
      b2internal var §<D§:b2Fixture;
      
      b2internal var §+p§:b2Fixture;
      
      b2internal var §'&§:b2Manifold;
      
      b2internal var §2!M§:b2Manifold;
      
      b2internal var §3!8§:Number;
      
      public function b2Contact()
      {
         this.§ !D§ = new b2ContactEdge();
         this.§@s§ = new b2ContactEdge();
         this.§'&§ = new b2Manifold();
         this.§2!M§ = new b2Manifold();
         super();
      }
      
      public function §7!B§() : b2Manifold
      {
         return this.§'&§;
      }
      
      public function §;=§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§<D§.GetBody();
         var _loc3_:b2Body = this.§+p§.GetBody();
         var _loc4_:b2Shape = this.§<D§.GetShape();
         var _loc5_:b2Shape = this.§+p§.GetShape();
         param1.§1D§(this.§'&§,_loc2_.§>B§(),_loc4_.§=!W§,_loc3_.§>B§(),_loc5_.§=!W§);
      }
      
      public function § !I§() : Boolean
      {
         return (this.§?z§ & b2internal::%!J) == b2internal::%!J;
      }
      
      public function §[!X§() : Boolean
      {
         return (this.§?z§ & b2internal::<?) == b2internal::<?;
      }
      
      public function §4!N§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?z§ |= b2internal::4!$;
         }
         else
         {
            this.§?z§ &= ~b2internal::4!$;
         }
      }
      
      public function §2'§() : Boolean
      {
         return (this.§?z§ & b2internal::4!$) == b2internal::4!$;
      }
      
      public function §^3§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?z§ |= b2internal::5A;
         }
         else
         {
            this.§?z§ &= ~b2internal::5A;
         }
      }
      
      public function §!C§() : Boolean
      {
         return (this.§?z§ & b2internal::5A) == b2internal::5A;
      }
      
      public function §`!R§() : b2Contact
      {
         return this.§0]§;
      }
      
      public function §"&§() : b2Fixture
      {
         return this.§<D§;
      }
      
      public function §7!Z§() : b2Fixture
      {
         return this.§+p§;
      }
      
      public function §>!A§() : void
      {
         this.§?z§ |= b2internal::62;
      }
      
      b2internal function §"o§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§?z§ = b2internal::5A;
         if(!param1 || !param2)
         {
            this.§<D§ = null;
            this.§+p§ = null;
            return;
         }
         if(param1.§2'§() || param2.§2'§())
         {
            this.§?z§ |= b2internal::4!$;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§0!$§() != b2Body.b2_dynamicBody || _loc3_.§&_§() || _loc4_.§0!$§() != b2Body.b2_dynamicBody || _loc4_.§&_§())
         {
            this.§?z§ |= b2internal::<?;
         }
         this.§<D§ = param1;
         this.§+p§ = param2;
         this.§'&§.§in § = 0;
         this.§3U§ = null;
         this.§0]§ = null;
         this.§ !D§.§^<§ = null;
         this.§ !D§.§"W§ = null;
         this.§ !D§.§8L§ = null;
         this.§ !D§.§!!Y§ = null;
         this.§@s§.§^<§ = null;
         this.§@s§.§"W§ = null;
         this.§@s§.§8L§ = null;
         this.§@s§.§!!Y§ = null;
      }
      
      b2internal function §8!C§(param1:b2ContactListener) : void
      {
         var _loc8_:b2Shape = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:b2Transform = null;
         var _loc12_:int = 0;
         var _loc13_:b2ManifoldPoint = null;
         var _loc14_:b2ContactID = null;
         var _loc15_:int = 0;
         var _loc16_:b2ManifoldPoint = null;
         var _loc2_:b2Manifold = this.§2!M§;
         this.§2!M§ = this.§'&§;
         this.§'&§ = _loc2_;
         this.§?z§ |= b2internal::5A;
         var _loc3_:* = false;
         var _loc4_:* = (this.§?z§ & b2internal::%!J) == b2internal::%!J;
         var _loc5_:b2Body = this.§<D§.m_body;
         var _loc6_:b2Body = this.§+p§.m_body;
         var _loc7_:Boolean = this.§<D§.§-!B§.§;!4§(this.§+p§.§-!B§);
         if(this.§?z§ & b2internal::4!$)
         {
            if(_loc7_)
            {
               _loc8_ = this.§<D§.GetShape();
               _loc9_ = this.§+p§.GetShape();
               _loc10_ = _loc5_.§>B§();
               _loc11_ = _loc6_.§>B§();
               _loc3_ = Boolean(b2Shape.§;!4§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§'&§.§in § = 0;
         }
         else
         {
            if(_loc5_.§0!$§() != b2Body.b2_dynamicBody || _loc5_.§&_§() || _loc6_.§0!$§() != b2Body.b2_dynamicBody || _loc6_.§&_§())
            {
               this.§?z§ |= b2internal::<?;
            }
            else
            {
               this.§?z§ &= ~b2internal::<?;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§'&§.§in § > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§'&§.§in §)
               {
                  (_loc13_ = this.§'&§.§+!S§[_loc12_]).§+7§ = 0;
                  _loc13_.§?!M§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§2!M§.§in §)
                  {
                     if((_loc16_ = this.§2!M§.§+!S§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§+7§ = _loc16_.§+7§;
                        _loc13_.§?!M§ = _loc16_.§?!M§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§'&§.§in § = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§?z§ |= b2internal::%!J;
         }
         else
         {
            this.§?z§ &= ~b2internal::%!J;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§?z§ & b2internal::4!$) == 0)
         {
            param1.PreSolve(this,this.§2!M§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §,"§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §-u§.§;!?§.Set(this.§<D§.GetShape());
         §-u§.§&z§.Set(this.§+p§.GetShape());
         §-u§.§<T§ = param1;
         §-u§.§^Y§ = param2;
         §-u§.§]U§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§=J§(§-u§);
      }
   }
}
