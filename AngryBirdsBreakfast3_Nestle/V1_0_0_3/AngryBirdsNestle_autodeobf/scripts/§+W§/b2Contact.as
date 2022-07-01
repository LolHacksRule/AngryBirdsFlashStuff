package §+W§
{
   import § !%§.b2Settings;
   import § !%§.b2internal;
   import §,!k§.b2Sweep;
   import §,!k§.b2Transform;
   import §6f§.b2ContactID;
   import §6f§.b2Manifold;
   import §6f§.b2ManifoldPoint;
   import §6f§.b2TOIInput;
   import §6f§.b2TimeOfImpact;
   import §6f§.b2WorldManifold;
   import §;'§.b2Body;
   import §;'§.b2ContactListener;
   import §;'§.b2Fixture;
   import §?m§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §3N§:uint = 1;
      
      b2internal static var §']§:uint = 2;
      
      b2internal static var §2p§:uint = 4;
      
      b2internal static var §!W§:uint = 8;
      
      b2internal static var §+!T§:uint = 16;
      
      b2internal static var §&i§:uint = 32;
      
      b2internal static var §<B§:uint = 64;
      
      private static var §;!e§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §"!4§:uint;
      
      b2internal var §!!h§:b2Contact;
      
      b2internal var §1F§:b2Contact;
      
      b2internal var §@Y§:b2ContactEdge;
      
      b2internal var §95§:b2ContactEdge;
      
      b2internal var §+"'§:b2Fixture;
      
      b2internal var §;!Z§:b2Fixture;
      
      b2internal var §8!;§:b2Manifold;
      
      b2internal var §8!D§:b2Manifold;
      
      b2internal var § g§:Number;
      
      public function b2Contact()
      {
         this.§@Y§ = new b2ContactEdge();
         this.§95§ = new b2ContactEdge();
         this.§8!;§ = new b2Manifold();
         this.§8!D§ = new b2Manifold();
         super();
      }
      
      public function §=!&§() : b2Manifold
      {
         return this.§8!;§;
      }
      
      public function §-!X§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§+"'§.GetBody();
         var _loc3_:b2Body = this.§;!Z§.GetBody();
         var _loc4_:b2Shape = this.§+"'§.GetShape();
         var _loc5_:b2Shape = this.§;!Z§.GetShape();
         param1.§2f§(this.§8!;§,_loc2_.§6!>§(),_loc4_.§["2§,_loc3_.§6!>§(),_loc5_.§["2§);
      }
      
      public function § 1§() : Boolean
      {
         return (this.§"!4§ & b2internal::+!T) == b2internal::+!T;
      }
      
      public function §0$§() : Boolean
      {
         return (this.§"!4§ & b2internal::']) == b2internal::'];
      }
      
      public function §!!t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"!4§ |= b2internal::3N;
         }
         else
         {
            this.§"!4§ &= ~b2internal::3N;
         }
      }
      
      public function §=!§() : Boolean
      {
         return (this.§"!4§ & b2internal::3N) == b2internal::3N;
      }
      
      public function §'!^§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"!4§ |= b2internal::&i;
         }
         else
         {
            this.§"!4§ &= ~b2internal::&i;
         }
      }
      
      public function §!K§() : Boolean
      {
         return (this.§"!4§ & b2internal::&i) == b2internal::&i;
      }
      
      public function §6P§() : b2Contact
      {
         return this.§1F§;
      }
      
      public function §6_§() : b2Fixture
      {
         return this.§+"'§;
      }
      
      public function §9!R§() : b2Fixture
      {
         return this.§;!Z§;
      }
      
      public function §#!2§() : void
      {
         this.§"!4§ |= b2internal::<B;
      }
      
      b2internal function §,E§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§"!4§ = b2internal::&i;
         if(!param1 || !param2)
         {
            this.§+"'§ = null;
            this.§;!Z§ = null;
            return;
         }
         if(param1.§=!§() || param2.§=!§())
         {
            this.§"!4§ |= b2internal::3N;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§]"$§() != b2Body.b2_dynamicBody || _loc3_.§#!f§() || _loc4_.§]"$§() != b2Body.b2_dynamicBody || _loc4_.§#!f§())
         {
            this.§"!4§ |= b2internal::'];
         }
         this.§+"'§ = param1;
         this.§;!Z§ = param2;
         this.§8!;§.§%!x§ = 0;
         this.§!!h§ = null;
         this.§1F§ = null;
         this.§@Y§.§5T§ = null;
         this.§@Y§.§+g§ = null;
         this.§@Y§.next = null;
         this.§@Y§.§^!,§ = null;
         this.§95§.§5T§ = null;
         this.§95§.§+g§ = null;
         this.§95§.next = null;
         this.§95§.§^!,§ = null;
      }
      
      b2internal function §&A§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§8!D§;
         this.§8!D§ = this.§8!;§;
         this.§8!;§ = _loc2_;
         this.§"!4§ |= b2internal::&i;
         var _loc3_:* = false;
         var _loc4_:* = (this.§"!4§ & b2internal::+!T) == b2internal::+!T;
         var _loc5_:b2Body = this.§+"'§.m_body;
         var _loc6_:b2Body = this.§;!Z§.m_body;
         var _loc7_:Boolean = this.§+"'§.§-R§.§;!s§(this.§;!Z§.§-R§);
         if(this.§"!4§ & b2internal::3N)
         {
            if(_loc7_)
            {
               _loc8_ = this.§+"'§.GetShape();
               _loc9_ = this.§;!Z§.GetShape();
               _loc10_ = _loc5_.§6!>§();
               _loc11_ = _loc6_.§6!>§();
               _loc3_ = Boolean(b2Shape.§;!s§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§8!;§.§%!x§ = 0;
         }
         else
         {
            if(_loc5_.§]"$§() != b2Body.b2_dynamicBody || _loc5_.§#!f§() || _loc6_.§]"$§() != b2Body.b2_dynamicBody || _loc6_.§#!f§())
            {
               this.§"!4§ |= b2internal::'];
            }
            else
            {
               this.§"!4§ &= ~b2internal::'];
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§8!;§.§%!x§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§8!;§.§%!x§)
               {
                  (_loc13_ = this.§8!;§.§;!O§[_loc12_]).§<5§ = 0;
                  _loc13_.§#!u§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§8!D§.§%!x§)
                  {
                     if((_loc16_ = this.§8!D§.§;!O§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§<5§ = _loc16_.§<5§;
                        _loc13_.§#!u§ = _loc16_.§#!u§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§8!;§.§%!x§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§"!4§ |= b2internal::+!T;
         }
         else
         {
            this.§"!4§ &= ~b2internal::+!T;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§"!4§ & b2internal::3N) == 0)
         {
            param1.PreSolve(this,this.§8!D§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §9^§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §;!e§.§1!J§.Set(this.§+"'§.GetShape());
         §;!e§.§-!?§.Set(this.§;!Z§.GetShape());
         §;!e§.§@!B§ = param1;
         §;!e§.§<d§ = param2;
         §;!e§.§ x§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§@!W§(§;!e§);
      }
   }
}
