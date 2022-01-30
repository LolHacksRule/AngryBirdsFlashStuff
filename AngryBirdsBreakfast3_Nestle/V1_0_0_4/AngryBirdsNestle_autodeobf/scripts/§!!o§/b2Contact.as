package §!!o§
{
   import §,P§.b2ContactID;
   import §,P§.b2Manifold;
   import §,P§.b2ManifoldPoint;
   import §,P§.b2TOIInput;
   import §,P§.b2TimeOfImpact;
   import §,P§.b2WorldManifold;
   import §-%§.b2Sweep;
   import §-%§.b2Transform;
   import §9"5§.b2Body;
   import §9"5§.b2ContactListener;
   import §9"5§.b2Fixture;
   import §>!R§.b2Settings;
   import §>!R§.b2internal;
   import §>"&§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §9[§:uint = 1;
      
      b2internal static var §%+§:uint = 2;
      
      b2internal static var §%!=§:uint = 4;
      
      b2internal static var §0"3§:uint = 8;
      
      b2internal static var §#!E§:uint = 16;
      
      b2internal static var § E§:uint = 32;
      
      b2internal static var §^2§:uint = 64;
      
      private static var §>![§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §&!G§:uint;
      
      b2internal var §'"5§:b2Contact;
      
      b2internal var §]4§:b2Contact;
      
      b2internal var §=!L§:b2ContactEdge;
      
      b2internal var §6d§:b2ContactEdge;
      
      b2internal var §4<§:b2Fixture;
      
      b2internal var §6%§:b2Fixture;
      
      b2internal var §@"$§:b2Manifold;
      
      b2internal var §4!_§:b2Manifold;
      
      b2internal var §@!V§:Number;
      
      public function b2Contact()
      {
         this.§=!L§ = new b2ContactEdge();
         this.§6d§ = new b2ContactEdge();
         this.§@"$§ = new b2Manifold();
         this.§4!_§ = new b2Manifold();
         super();
      }
      
      public function §3!5§() : b2Manifold
      {
         return this.§@"$§;
      }
      
      public function §@L§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§4<§.GetBody();
         var _loc3_:b2Body = this.§6%§.GetBody();
         var _loc4_:b2Shape = this.§4<§.GetShape();
         var _loc5_:b2Shape = this.§6%§.GetShape();
         param1.§,n§(this.§@"$§,_loc2_.§,!h§(),_loc4_.§4=§,_loc3_.§,!h§(),_loc5_.§4=§);
      }
      
      public function each() : Boolean
      {
         return (this.§&!G§ & b2internal::#!E) == b2internal::#!E;
      }
      
      public function §^!R§() : Boolean
      {
         return (this.§&!G§ & b2internal::%+) == b2internal::%+;
      }
      
      public function §>'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!G§ |= b2internal::9[;
         }
         else
         {
            this.§&!G§ &= ~b2internal::9[;
         }
      }
      
      public function §0!;§() : Boolean
      {
         return (this.§&!G§ & b2internal::9[) == b2internal::9[;
      }
      
      public function §^!5§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&!G§ |= b2internal:: E;
         }
         else
         {
            this.§&!G§ &= ~b2internal:: E;
         }
      }
      
      public function § "0§() : Boolean
      {
         return (this.§&!G§ & b2internal:: E) == b2internal:: E;
      }
      
      public function §+"3§() : b2Contact
      {
         return this.§]4§;
      }
      
      public function §?s§() : b2Fixture
      {
         return this.§4<§;
      }
      
      public function §^!q§() : b2Fixture
      {
         return this.§6%§;
      }
      
      public function §?%§() : void
      {
         this.§&!G§ |= b2internal::^2;
      }
      
      b2internal function §=a§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§&!G§ = b2internal:: E;
         if(!param1 || !param2)
         {
            this.§4<§ = null;
            this.§6%§ = null;
            return;
         }
         if(param1.§0!;§() || param2.§0!;§())
         {
            this.§&!G§ |= b2internal::9[;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§4!C§() != b2Body.b2_dynamicBody || _loc3_.§^"0§() || _loc4_.§4!C§() != b2Body.b2_dynamicBody || _loc4_.§^"0§())
         {
            this.§&!G§ |= b2internal::%+;
         }
         this.§4<§ = param1;
         this.§6%§ = param2;
         this.§@"$§.§"!;§ = 0;
         this.§'"5§ = null;
         this.§]4§ = null;
         this.§=!L§.§4%§ = null;
         this.§=!L§.§[!?§ = null;
         this.§=!L§.next = null;
         this.§=!L§.§8`§ = null;
         this.§6d§.§4%§ = null;
         this.§6d§.§[!?§ = null;
         this.§6d§.next = null;
         this.§6d§.§8`§ = null;
      }
      
      b2internal function §!#§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§4!_§;
         this.§4!_§ = this.§@"$§;
         this.§@"$§ = _loc2_;
         this.§&!G§ |= b2internal:: E;
         var _loc3_:* = false;
         var _loc4_:* = (this.§&!G§ & b2internal::#!E) == b2internal::#!E;
         var _loc5_:b2Body = this.§4<§.m_body;
         var _loc6_:b2Body = this.§6%§.m_body;
         var _loc7_:Boolean = this.§4<§.§<!7§.§1`§(this.§6%§.§<!7§);
         if(this.§&!G§ & b2internal::9[)
         {
            if(_loc7_)
            {
               _loc8_ = this.§4<§.GetShape();
               _loc9_ = this.§6%§.GetShape();
               _loc10_ = _loc5_.§,!h§();
               _loc11_ = _loc6_.§,!h§();
               _loc3_ = Boolean(b2Shape.§1`§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§@"$§.§"!;§ = 0;
         }
         else
         {
            if(_loc5_.§4!C§() != b2Body.b2_dynamicBody || _loc5_.§^"0§() || _loc6_.§4!C§() != b2Body.b2_dynamicBody || _loc6_.§^"0§())
            {
               this.§&!G§ |= b2internal::%+;
            }
            else
            {
               this.§&!G§ &= ~b2internal::%+;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§@"$§.§"!;§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§@"$§.§"!;§)
               {
                  (_loc13_ = this.§@"$§.§@!_§[_loc12_]).§-!V§ = 0;
                  _loc13_.§#G§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§4!_§.§"!;§)
                  {
                     if((_loc16_ = this.§4!_§.§@!_§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§-!V§ = _loc16_.§-!V§;
                        _loc13_.§#G§ = _loc16_.§#G§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§@"$§.§"!;§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§&!G§ |= b2internal::#!E;
         }
         else
         {
            this.§&!G§ &= ~b2internal::#!E;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§&!G§ & b2internal::9[) == 0)
         {
            param1.PreSolve(this,this.§4!_§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §]!E§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §>![§.§,"4§.Set(this.§4<§.GetShape());
         §>![§.§0S§.Set(this.§6%§.GetShape());
         §>![§.§5j§ = param1;
         §>![§.§?!Y§ = param2;
         §>![§.§[!$§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§^!D§(§>![§);
      }
   }
}
