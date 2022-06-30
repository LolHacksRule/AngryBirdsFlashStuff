package §%E§
{
   import §+d§.b2Body;
   import §+d§.b2ContactListener;
   import §+d§.b2Fixture;
   import §6%§.b2Settings;
   import §6%§.b2internal;
   import §8`§.b2Shape;
   import §=n§.b2ContactID;
   import §=n§.b2Manifold;
   import §=n§.b2ManifoldPoint;
   import §=n§.b2TOIInput;
   import §=n§.b2TimeOfImpact;
   import §=n§.b2WorldManifold;
   import §`!^§.b2Sweep;
   import §`!^§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §1!6§:uint = 1;
      
      b2internal static var §`Z§:uint = 2;
      
      b2internal static var §^!W§:uint = 4;
      
      b2internal static var §'z§:uint = 8;
      
      b2internal static var §+T§:uint = 16;
      
      b2internal static var §8!d§:uint = 32;
      
      b2internal static var §6!J§:uint = 64;
      
      private static var §`%§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §?!?§:uint;
      
      b2internal var §;h§:b2Contact;
      
      b2internal var §8A§:b2Contact;
      
      b2internal var §?4§:b2ContactEdge;
      
      b2internal var §>!0§:b2ContactEdge;
      
      b2internal var §[!d§:b2Fixture;
      
      b2internal var §#!^§:b2Fixture;
      
      b2internal var §>!b§:b2Manifold;
      
      b2internal var §else§:b2Manifold;
      
      b2internal var § !c§:Number;
      
      public function b2Contact()
      {
         this.§?4§ = new b2ContactEdge();
         this.§>!0§ = new b2ContactEdge();
         this.§>!b§ = new b2Manifold();
         this.§else§ = new b2Manifold();
         super();
      }
      
      public function §]!5§() : b2Manifold
      {
         return this.§>!b§;
      }
      
      public function §-B§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§[!d§.GetBody();
         var _loc3_:b2Body = this.§#!^§.GetBody();
         var _loc4_:b2Shape = this.§[!d§.GetShape();
         var _loc5_:b2Shape = this.§#!^§.GetShape();
         param1.§9!M§(this.§>!b§,_loc2_.§3!d§(),_loc4_.§]U§,_loc3_.§3!d§(),_loc5_.§]U§);
      }
      
      public function §!v§() : Boolean
      {
         return (this.§?!?§ & b2internal::+T) == b2internal::+T;
      }
      
      public function §4!U§() : Boolean
      {
         return (this.§?!?§ & b2internal::`Z) == b2internal::`Z;
      }
      
      public function §5S§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?!?§ |= b2internal::1!6;
         }
         else
         {
            this.§?!?§ &= ~b2internal::1!6;
         }
      }
      
      public function §8f§() : Boolean
      {
         return (this.§?!?§ & b2internal::1!6) == b2internal::1!6;
      }
      
      public function §5!?§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§?!?§ |= b2internal::8!d;
         }
         else
         {
            this.§?!?§ &= ~b2internal::8!d;
         }
      }
      
      public function §&!=§() : Boolean
      {
         return (this.§?!?§ & b2internal::8!d) == b2internal::8!d;
      }
      
      public function §%;§() : b2Contact
      {
         return this.§8A§;
      }
      
      public function §5m§() : b2Fixture
      {
         return this.§[!d§;
      }
      
      public function §3t§() : b2Fixture
      {
         return this.§#!^§;
      }
      
      public function § !6§() : void
      {
         this.§?!?§ |= b2internal::6!J;
      }
      
      b2internal function §"!K§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§?!?§ = b2internal::8!d;
         if(!param1 || !param2)
         {
            this.§[!d§ = null;
            this.§#!^§ = null;
            return;
         }
         if(param1.§8f§() || param2.§8f§())
         {
            this.§?!?§ |= b2internal::1!6;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§,!d§() != b2Body.b2_dynamicBody || _loc3_.§7t§() || _loc4_.§,!d§() != b2Body.b2_dynamicBody || _loc4_.§7t§())
         {
            this.§?!?§ |= b2internal::`Z;
         }
         this.§[!d§ = param1;
         this.§#!^§ = param2;
         this.§>!b§.§;!e§ = 0;
         this.§;h§ = null;
         this.§8A§ = null;
         this.§?4§.§!d§ = null;
         this.§?4§.§;8§ = null;
         this.§?4§.§-w§ = null;
         this.§?4§.§ !a§ = null;
         this.§>!0§.§!d§ = null;
         this.§>!0§.§;8§ = null;
         this.§>!0§.§-w§ = null;
         this.§>!0§.§ !a§ = null;
      }
      
      b2internal function § ?§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§else§;
         this.§else§ = this.§>!b§;
         this.§>!b§ = _loc2_;
         this.§?!?§ |= b2internal::8!d;
         var _loc3_:* = false;
         var _loc4_:* = (this.§?!?§ & b2internal::+T) == b2internal::+T;
         var _loc5_:b2Body = this.§[!d§.m_body;
         var _loc6_:b2Body = this.§#!^§.m_body;
         var _loc7_:Boolean = this.§[!d§.§7G§.§-!§(this.§#!^§.§7G§);
         if(this.§?!?§ & b2internal::1!6)
         {
            if(_loc7_)
            {
               _loc8_ = this.§[!d§.GetShape();
               _loc9_ = this.§#!^§.GetShape();
               _loc10_ = _loc5_.§3!d§();
               _loc11_ = _loc6_.§3!d§();
               _loc3_ = Boolean(b2Shape.§-!§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§>!b§.§;!e§ = 0;
         }
         else
         {
            if(_loc5_.§,!d§() != b2Body.b2_dynamicBody || _loc5_.§7t§() || _loc6_.§,!d§() != b2Body.b2_dynamicBody || _loc6_.§7t§())
            {
               this.§?!?§ |= b2internal::`Z;
            }
            else
            {
               this.§?!?§ &= ~b2internal::`Z;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§>!b§.§;!e§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§>!b§.§;!e§)
               {
                  (_loc13_ = this.§>!b§.§0F§[_loc12_]).§ 9§ = 0;
                  _loc13_.§?9§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§else§.§;!e§)
                  {
                     if((_loc16_ = this.§else§.§0F§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§ 9§ = _loc16_.§ 9§;
                        _loc13_.§?9§ = _loc16_.§?9§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§>!b§.§;!e§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§?!?§ |= b2internal::+T;
         }
         else
         {
            this.§?!?§ &= ~b2internal::+T;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§?!?§ & b2internal::1!6) == 0)
         {
            param1.PreSolve(this,this.§else§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §@!6§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §`%§.§!!H§.Set(this.§[!d§.GetShape());
         §`%§.§]!]§.Set(this.§#!^§.GetShape());
         §`%§.§?r§ = param1;
         §`%§.§^3§ = param2;
         §`%§.§?T§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§ !g§(§`%§);
      }
   }
}
