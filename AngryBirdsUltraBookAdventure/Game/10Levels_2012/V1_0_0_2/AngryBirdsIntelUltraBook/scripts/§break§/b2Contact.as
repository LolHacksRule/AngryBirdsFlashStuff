package §break§
{
   import §2!+§.b2Shape;
   import §7!u§.b2Settings;
   import §7!u§.b2internal;
   import §72§.b2ContactID;
   import §72§.b2Manifold;
   import §72§.b2ManifoldPoint;
   import §72§.b2TOIInput;
   import §72§.b2TimeOfImpact;
   import §72§.b2WorldManifold;
   import §>H§.b2Sweep;
   import §>H§.b2Transform;
   import §`w§.b2Body;
   import §`w§.b2ContactListener;
   import §`w§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §7!a§:uint = 1;
      
      b2internal static var §?!P§:uint = 2;
      
      b2internal static var §#!`§:uint = 4;
      
      b2internal static var §;,§:uint = 8;
      
      b2internal static var §^B§:uint = 16;
      
      b2internal static var §&$§:uint = 32;
      
      b2internal static var §8,§:uint = 64;
      
      private static var §1B§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §;!R§:uint;
      
      b2internal var §-!I§:b2Contact;
      
      b2internal var §3=§:b2Contact;
      
      b2internal var §6X§:b2ContactEdge;
      
      b2internal var §#!T§:b2ContactEdge;
      
      b2internal var §50§:b2Fixture;
      
      b2internal var §'z§:b2Fixture;
      
      b2internal var §"!m§:b2Manifold;
      
      b2internal var §07§:b2Manifold;
      
      b2internal var §7!W§:Number;
      
      public function b2Contact()
      {
         this.§6X§ = new b2ContactEdge();
         this.§#!T§ = new b2ContactEdge();
         this.§"!m§ = new b2Manifold();
         this.§07§ = new b2Manifold();
         super();
      }
      
      public function §=!0§() : b2Manifold
      {
         return this.§"!m§;
      }
      
      public function §0n§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§50§.GetBody();
         var _loc3_:b2Body = this.§'z§.GetBody();
         var _loc4_:b2Shape = this.§50§.GetShape();
         var _loc5_:b2Shape = this.§'z§.GetShape();
         param1.§%%§(this.§"!m§,_loc2_.§2!0§(),_loc4_.§9!A§,_loc3_.§2!0§(),_loc5_.§9!A§);
      }
      
      public function §!u§() : Boolean
      {
         return (this.§;!R§ & b2internal::^B) == b2internal::^B;
      }
      
      public function §else§() : Boolean
      {
         return (this.§;!R§ & b2internal::?!P) == b2internal::?!P;
      }
      
      public function §[!G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!R§ |= b2internal::7!a;
         }
         else
         {
            this.§;!R§ &= ~b2internal::7!a;
         }
      }
      
      public function §2r§() : Boolean
      {
         return (this.§;!R§ & b2internal::7!a) == b2internal::7!a;
      }
      
      public function §8K§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!R§ |= b2internal::&$;
         }
         else
         {
            this.§;!R§ &= ~b2internal::&$;
         }
      }
      
      public function §&Y§() : Boolean
      {
         return (this.§;!R§ & b2internal::&$) == b2internal::&$;
      }
      
      public function §+!N§() : b2Contact
      {
         return this.§3=§;
      }
      
      public function §?!l§() : b2Fixture
      {
         return this.§50§;
      }
      
      public function §0+§() : b2Fixture
      {
         return this.§'z§;
      }
      
      public function §=!<§() : void
      {
         this.§;!R§ |= b2internal::8,;
      }
      
      b2internal function §<!e§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§;!R§ = b2internal::&$;
         if(!param1 || !param2)
         {
            this.§50§ = null;
            this.§'z§ = null;
            return;
         }
         if(param1.§2r§() || param2.§2r§())
         {
            this.§;!R§ |= b2internal::7!a;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§2!r§() != b2Body.b2_dynamicBody || _loc3_.§<!l§() || _loc4_.§2!r§() != b2Body.b2_dynamicBody || _loc4_.§<!l§())
         {
            this.§;!R§ |= b2internal::?!P;
         }
         this.§50§ = param1;
         this.§'z§ = param2;
         this.§"!m§.§63§ = 0;
         this.§-!I§ = null;
         this.§3=§ = null;
         this.§6X§.§+2§ = null;
         this.§6X§.§;+§ = null;
         this.§6X§.§-!3§ = null;
         this.§6X§.§,H§ = null;
         this.§#!T§.§+2§ = null;
         this.§#!T§.§;+§ = null;
         this.§#!T§.§-!3§ = null;
         this.§#!T§.§,H§ = null;
      }
      
      b2internal function §6!^§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§07§;
         this.§07§ = this.§"!m§;
         this.§"!m§ = _loc2_;
         this.§;!R§ |= b2internal::&$;
         var _loc3_:* = false;
         var _loc4_:* = (this.§;!R§ & b2internal::^B) == b2internal::^B;
         var _loc5_:b2Body = this.§50§.m_body;
         var _loc6_:b2Body = this.§'z§.m_body;
         var _loc7_:Boolean = this.§50§.§^!5§.§7l§(this.§'z§.§^!5§);
         if(this.§;!R§ & b2internal::7!a)
         {
            if(_loc7_)
            {
               _loc8_ = this.§50§.GetShape();
               _loc9_ = this.§'z§.GetShape();
               _loc10_ = _loc5_.§2!0§();
               _loc11_ = _loc6_.§2!0§();
               _loc3_ = Boolean(b2Shape.§7l§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§"!m§.§63§ = 0;
         }
         else
         {
            if(_loc5_.§2!r§() != b2Body.b2_dynamicBody || _loc5_.§<!l§() || _loc6_.§2!r§() != b2Body.b2_dynamicBody || _loc6_.§<!l§())
            {
               this.§;!R§ |= b2internal::?!P;
            }
            else
            {
               this.§;!R§ &= ~b2internal::?!P;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§"!m§.§63§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§"!m§.§63§)
               {
                  (_loc13_ = this.§"!m§.§,!f§[_loc12_]).§`!k§ = 0;
                  _loc13_.§?!+§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§07§.§63§)
                  {
                     if((_loc16_ = this.§07§.§,!f§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§`!k§ = _loc16_.§`!k§;
                        _loc13_.§?!+§ = _loc16_.§?!+§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§"!m§.§63§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§;!R§ |= b2internal::^B;
         }
         else
         {
            this.§;!R§ &= ~b2internal::^B;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§;!R§ & b2internal::7!a) == 0)
         {
            param1.PreSolve(this,this.§07§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §0_§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §1B§.§]!O§.Set(this.§50§.GetShape());
         §1B§.§&d§.Set(this.§'z§.GetShape());
         §1B§.§'!S§ = param1;
         §1B§.§?X§ = param2;
         §1B§.§0%§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§+U§(§1B§);
      }
   }
}
