package §[K§
{
   import §'I§.b2Settings;
   import §'I§.b2internal;
   import §7!&§.b2ContactID;
   import §7!&§.b2Manifold;
   import §7!&§.b2ManifoldPoint;
   import §7!&§.b2TOIInput;
   import §7!&§.b2TimeOfImpact;
   import §7!&§.b2WorldManifold;
   import §9!Z§.b2Body;
   import §9!Z§.b2ContactListener;
   import §9!Z§.b2Fixture;
   import §?"'§.b2Sweep;
   import §?"'§.b2Transform;
   import §`!C§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §"!S§:uint = 1;
      
      b2internal static var §%A§:uint = 2;
      
      b2internal static var §6'§:uint = 4;
      
      b2internal static var § "2§:uint = 8;
      
      b2internal static var §+!r§:uint = 16;
      
      b2internal static var §<!2§:uint = 32;
      
      b2internal static var §'§:uint = 64;
      
      private static var §^Q§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var § !E§:uint;
      
      b2internal var §<!u§:b2Contact;
      
      b2internal var §>7§:b2Contact;
      
      b2internal var §#?§:b2ContactEdge;
      
      b2internal var §&!s§:b2ContactEdge;
      
      b2internal var §,!V§:b2Fixture;
      
      b2internal var §-"0§:b2Fixture;
      
      b2internal var §1!&§:b2Manifold;
      
      b2internal var §>O§:b2Manifold;
      
      b2internal var §[A§:Number;
      
      public function b2Contact()
      {
         this.§#?§ = new b2ContactEdge();
         this.§&!s§ = new b2ContactEdge();
         this.§1!&§ = new b2Manifold();
         this.§>O§ = new b2Manifold();
         super();
      }
      
      public function §]2§() : b2Manifold
      {
         return this.§1!&§;
      }
      
      public function §5!z§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§,!V§.GetBody();
         var _loc3_:b2Body = this.§-"0§.GetBody();
         var _loc4_:b2Shape = this.§,!V§.GetShape();
         var _loc5_:b2Shape = this.§-"0§.GetShape();
         param1.§implements§(this.§1!&§,_loc2_.§0!z§(),_loc4_.§>"§,_loc3_.§0!z§(),_loc5_.§>"§);
      }
      
      public function §"Z§() : Boolean
      {
         return (this.§ !E§ & b2internal::+!r) == b2internal::+!r;
      }
      
      public function §#!-§() : Boolean
      {
         return (this.§ !E§ & b2internal::%A) == b2internal::%A;
      }
      
      public function §91§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !E§ |= b2internal::"!S;
         }
         else
         {
            this.§ !E§ &= ~b2internal::"!S;
         }
      }
      
      public function §9!@§() : Boolean
      {
         return (this.§ !E§ & b2internal::"!S) == b2internal::"!S;
      }
      
      public function §=[§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !E§ |= b2internal::<!2;
         }
         else
         {
            this.§ !E§ &= ~b2internal::<!2;
         }
      }
      
      public function §`!+§() : Boolean
      {
         return (this.§ !E§ & b2internal::<!2) == b2internal::<!2;
      }
      
      public function §&!B§() : b2Contact
      {
         return this.§>7§;
      }
      
      public function §@"0§() : b2Fixture
      {
         return this.§,!V§;
      }
      
      public function §!!Z§() : b2Fixture
      {
         return this.§-"0§;
      }
      
      public function §->§() : void
      {
         this.§ !E§ |= b2internal::';
      }
      
      b2internal function §`p§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§ !E§ = b2internal::<!2;
         if(!param1 || !param2)
         {
            this.§,!V§ = null;
            this.§-"0§ = null;
            return;
         }
         if(param1.§9!@§() || param2.§9!@§())
         {
            this.§ !E§ |= b2internal::"!S;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§&r§() != b2Body.b2_dynamicBody || _loc3_.§"!C§() || _loc4_.§&r§() != b2Body.b2_dynamicBody || _loc4_.§"!C§())
         {
            this.§ !E§ |= b2internal::%A;
         }
         this.§,!V§ = param1;
         this.§-"0§ = param2;
         this.§1!&§.§<X§ = 0;
         this.§<!u§ = null;
         this.§>7§ = null;
         this.§#?§.§1!z§ = null;
         this.§#?§.§`!o§ = null;
         this.§#?§.next = null;
         this.§#?§.§"!$§ = null;
         this.§&!s§.§1!z§ = null;
         this.§&!s§.§`!o§ = null;
         this.§&!s§.next = null;
         this.§&!s§.§"!$§ = null;
      }
      
      b2internal function §09§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§>O§;
         this.§>O§ = this.§1!&§;
         this.§1!&§ = _loc2_;
         this.§ !E§ |= b2internal::<!2;
         var _loc3_:* = false;
         var _loc4_:* = (this.§ !E§ & b2internal::+!r) == b2internal::+!r;
         var _loc5_:b2Body = this.§,!V§.m_body;
         var _loc6_:b2Body = this.§-"0§.m_body;
         var _loc7_:Boolean = this.§,!V§.§4"3§.§ "0§(this.§-"0§.§4"3§);
         if(this.§ !E§ & b2internal::"!S)
         {
            if(_loc7_)
            {
               _loc8_ = this.§,!V§.GetShape();
               _loc9_ = this.§-"0§.GetShape();
               _loc10_ = _loc5_.§0!z§();
               _loc11_ = _loc6_.§0!z§();
               _loc3_ = Boolean(b2Shape.§ "0§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§1!&§.§<X§ = 0;
         }
         else
         {
            if(_loc5_.§&r§() != b2Body.b2_dynamicBody || _loc5_.§"!C§() || _loc6_.§&r§() != b2Body.b2_dynamicBody || _loc6_.§"!C§())
            {
               this.§ !E§ |= b2internal::%A;
            }
            else
            {
               this.§ !E§ &= ~b2internal::%A;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§1!&§.§<X§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§1!&§.§<X§)
               {
                  (_loc13_ = this.§1!&§.§#$§[_loc12_]).§6![§ = 0;
                  _loc13_.§1!l§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§>O§.§<X§)
                  {
                     if((_loc16_ = this.§>O§.§#$§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§6![§ = _loc16_.§6![§;
                        _loc13_.§1!l§ = _loc16_.§1!l§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§1!&§.§<X§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§ !E§ |= b2internal::+!r;
         }
         else
         {
            this.§ !E§ &= ~b2internal::+!r;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§ !E§ & b2internal::"!S) == 0)
         {
            param1.PreSolve(this,this.§>O§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §;!@§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §^Q§.§@!n§.Set(this.§,!V§.GetShape());
         §^Q§.§[!D§.Set(this.§-"0§.GetShape());
         §^Q§.§]!Z§ = param1;
         §^Q§.§,"'§ = param2;
         §^Q§.§[!%§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§5!%§(§^Q§);
      }
   }
}
