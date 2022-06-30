package §=_§
{
   import § !_§.b2Sweep;
   import § !_§.b2Transform;
   import §+&§.b2Settings;
   import §+&§.b2internal;
   import §-!!§.b2Shape;
   import §^!Z§.b2Body;
   import §^!Z§.b2ContactListener;
   import §^!Z§.b2Fixture;
   import §^t§.b2ContactID;
   import §^t§.b2Manifold;
   import §^t§.b2ManifoldPoint;
   import §^t§.b2TOIInput;
   import §^t§.b2TimeOfImpact;
   import §^t§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §6!0§:uint = 1;
      
      b2internal static var §[2§:uint = 2;
      
      b2internal static var § !5§:uint = 4;
      
      b2internal static var §+!,§:uint = 8;
      
      b2internal static var §+w§:uint = 16;
      
      b2internal static var §`!G§:uint = 32;
      
      b2internal static var §"%§:uint = 64;
      
      private static var §4R§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §=?§:uint;
      
      b2internal var §9!@§:b2Contact;
      
      b2internal var §]!8§:b2Contact;
      
      b2internal var §>3§:b2ContactEdge;
      
      b2internal var §2^§:b2ContactEdge;
      
      b2internal var §"!V§:b2Fixture;
      
      b2internal var §[!§:b2Fixture;
      
      b2internal var §%`§:b2Manifold;
      
      b2internal var §36§:b2Manifold;
      
      b2internal var §%0§:Number;
      
      public function b2Contact()
      {
         this.§>3§ = new b2ContactEdge();
         this.§2^§ = new b2ContactEdge();
         this.§%`§ = new b2Manifold();
         this.§36§ = new b2Manifold();
         super();
      }
      
      public function §2!I§() : b2Manifold
      {
         return this.§%`§;
      }
      
      public function §&[§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§"!V§.GetBody();
         var _loc3_:b2Body = this.§[!§.GetBody();
         var _loc4_:b2Shape = this.§"!V§.GetShape();
         var _loc5_:b2Shape = this.§[!§.GetShape();
         param1.§8_§(this.§%`§,_loc2_.§<!2§(),_loc4_.§?T§,_loc3_.§<!2§(),_loc5_.§?T§);
      }
      
      public function §5!!§() : Boolean
      {
         return (this.§=?§ & b2internal::+w) == b2internal::+w;
      }
      
      public function §5s§() : Boolean
      {
         return (this.§=?§ & b2internal::[2) == b2internal::[2;
      }
      
      public function §+!Q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=?§ |= b2internal::6!0;
         }
         else
         {
            this.§=?§ &= ~b2internal::6!0;
         }
      }
      
      public function §1!4§() : Boolean
      {
         return (this.§=?§ & b2internal::6!0) == b2internal::6!0;
      }
      
      public function §?9§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§=?§ |= b2internal::`!G;
         }
         else
         {
            this.§=?§ &= ~b2internal::`!G;
         }
      }
      
      public function §+!N§() : Boolean
      {
         return (this.§=?§ & b2internal::`!G) == b2internal::`!G;
      }
      
      public function §1![§() : b2Contact
      {
         return this.§]!8§;
      }
      
      public function §]!4§() : b2Fixture
      {
         return this.§"!V§;
      }
      
      public function §5#§() : b2Fixture
      {
         return this.§[!§;
      }
      
      public function §#!N§() : void
      {
         this.§=?§ |= b2internal::"%;
      }
      
      b2internal function §=s§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§=?§ = b2internal::`!G;
         if(!param1 || !param2)
         {
            this.§"!V§ = null;
            this.§[!§ = null;
            return;
         }
         if(param1.§1!4§() || param2.§1!4§())
         {
            this.§=?§ |= b2internal::6!0;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§6+§() != b2Body.b2_dynamicBody || _loc3_.§8Q§() || _loc4_.§6+§() != b2Body.b2_dynamicBody || _loc4_.§8Q§())
         {
            this.§=?§ |= b2internal::[2;
         }
         this.§"!V§ = param1;
         this.§[!§ = param2;
         this.§%`§.§ use§ = 0;
         this.§9!@§ = null;
         this.§]!8§ = null;
         this.§>3§.§6!e§ = null;
         this.§>3§.§]!Q§ = null;
         this.§>3§.§9e§ = null;
         this.§>3§.§-!_§ = null;
         this.§2^§.§6!e§ = null;
         this.§2^§.§]!Q§ = null;
         this.§2^§.§9e§ = null;
         this.§2^§.§-!_§ = null;
      }
      
      b2internal function §;!&§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§36§;
         this.§36§ = this.§%`§;
         this.§%`§ = _loc2_;
         this.§=?§ |= b2internal::`!G;
         var _loc3_:* = false;
         var _loc4_:* = (this.§=?§ & b2internal::+w) == b2internal::+w;
         var _loc5_:b2Body = this.§"!V§.m_body;
         var _loc6_:b2Body = this.§[!§.m_body;
         var _loc7_:Boolean = this.§"!V§.§,!D§.§"!=§(this.§[!§.§,!D§);
         if(this.§=?§ & b2internal::6!0)
         {
            if(_loc7_)
            {
               _loc8_ = this.§"!V§.GetShape();
               _loc9_ = this.§[!§.GetShape();
               _loc10_ = _loc5_.§<!2§();
               _loc11_ = _loc6_.§<!2§();
               _loc3_ = Boolean(b2Shape.§"!=§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§%`§.§ use§ = 0;
         }
         else
         {
            if(_loc5_.§6+§() != b2Body.b2_dynamicBody || _loc5_.§8Q§() || _loc6_.§6+§() != b2Body.b2_dynamicBody || _loc6_.§8Q§())
            {
               this.§=?§ |= b2internal::[2;
            }
            else
            {
               this.§=?§ &= ~b2internal::[2;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§%`§.§ use§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§%`§.§ use§)
               {
                  (_loc13_ = this.§%`§.§]!G§[_loc12_]).§,!F§ = 0;
                  _loc13_.§>!4§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§36§.§ use§)
                  {
                     if((_loc16_ = this.§36§.§]!G§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§,!F§ = _loc16_.§,!F§;
                        _loc13_.§>!4§ = _loc16_.§>!4§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§%`§.§ use§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§=?§ |= b2internal::+w;
         }
         else
         {
            this.§=?§ &= ~b2internal::+w;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§=?§ & b2internal::6!0) == 0)
         {
            param1.PreSolve(this,this.§36§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §`R§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §4R§.§[3§.Set(this.§"!V§.GetShape());
         §4R§.§3p§.Set(this.§[!§.GetShape());
         §4R§.§^!,§ = param1;
         §4R§.§=i§ = param2;
         §4R§.§`!2§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§5!,§(§4R§);
      }
   }
}
