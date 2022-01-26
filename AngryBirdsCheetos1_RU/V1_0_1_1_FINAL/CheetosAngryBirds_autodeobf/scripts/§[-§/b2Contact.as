package §[-§
{
   import §!!#§.b2ContactID;
   import §!!#§.b2Manifold;
   import §!!#§.b2ManifoldPoint;
   import §!!#§.b2TOIInput;
   import §!!#§.b2TimeOfImpact;
   import §!!#§.b2WorldManifold;
   import §4! §.b2Settings;
   import §4! §.b2internal;
   import §9t§.b2Body;
   import §9t§.b2ContactListener;
   import §9t§.b2Fixture;
   import §[!E§.b2Shape;
   import §^q§.b2Sweep;
   import §^q§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §6!T§:uint = 1;
      
      b2internal static var §+8§:uint = 2;
      
      b2internal static var §"`§:uint = 4;
      
      b2internal static var §;p§:uint = 8;
      
      b2internal static var §>2§:uint = 16;
      
      b2internal static var §^!X§:uint = 32;
      
      b2internal static var § <§:uint = 64;
      
      private static var § !B§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var § -§:uint;
      
      b2internal var §&J§:b2Contact;
      
      b2internal var §%m§:b2Contact;
      
      b2internal var §`!C§:b2ContactEdge;
      
      b2internal var §8!_§:b2ContactEdge;
      
      b2internal var §@! §:b2Fixture;
      
      b2internal var §>d§:b2Fixture;
      
      b2internal var §@!O§:b2Manifold;
      
      b2internal var §8!W§:b2Manifold;
      
      b2internal var §!!Q§:Number;
      
      public function b2Contact()
      {
         this.§`!C§ = new b2ContactEdge();
         this.§8!_§ = new b2ContactEdge();
         this.§@!O§ = new b2Manifold();
         this.§8!W§ = new b2Manifold();
         super();
      }
      
      public function §]!9§() : b2Manifold
      {
         return this.§@!O§;
      }
      
      public function §"!$§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§@! §.GetBody();
         var _loc3_:b2Body = this.§>d§.GetBody();
         var _loc4_:b2Shape = this.§@! §.GetShape();
         var _loc5_:b2Shape = this.§>d§.GetShape();
         param1.§in §(this.§@!O§,_loc2_.§%!c§(),_loc4_.§9@§,_loc3_.§%!c§(),_loc5_.§9@§);
      }
      
      public function §3C§() : Boolean
      {
         return (this.§ -§ & b2internal::>2) == b2internal::>2;
      }
      
      public function §,t§() : Boolean
      {
         return (this.§ -§ & b2internal::+8) == b2internal::+8;
      }
      
      public function §,g§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ -§ |= b2internal::6!T;
         }
         else
         {
            this.§ -§ &= ~b2internal::6!T;
         }
      }
      
      public function §@M§() : Boolean
      {
         return (this.§ -§ & b2internal::6!T) == b2internal::6!T;
      }
      
      public function §1i§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ -§ |= b2internal::^!X;
         }
         else
         {
            this.§ -§ &= ~b2internal::^!X;
         }
      }
      
      public function §2<§() : Boolean
      {
         return (this.§ -§ & b2internal::^!X) == b2internal::^!X;
      }
      
      public function §&!V§() : b2Contact
      {
         return this.§%m§;
      }
      
      public function §>!b§() : b2Fixture
      {
         return this.§@! §;
      }
      
      public function §1t§() : b2Fixture
      {
         return this.§>d§;
      }
      
      public function §0!3§() : void
      {
         this.§ -§ |= b2internal:: <;
      }
      
      b2internal function § Z§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§ -§ = b2internal::^!X;
         if(!param1 || !param2)
         {
            this.§@! § = null;
            this.§>d§ = null;
            return;
         }
         if(param1.§@M§() || param2.§@M§())
         {
            this.§ -§ |= b2internal::6!T;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§9P§() != b2Body.b2_dynamicBody || _loc3_.§5m§() || _loc4_.§9P§() != b2Body.b2_dynamicBody || _loc4_.§5m§())
         {
            this.§ -§ |= b2internal::+8;
         }
         this.§@! § = param1;
         this.§>d§ = param2;
         this.§@!O§.§^d§ = 0;
         this.§&J§ = null;
         this.§%m§ = null;
         this.§`!C§.§2L§ = null;
         this.§`!C§.§3t§ = null;
         this.§`!C§.§1!V§ = null;
         this.§`!C§.§5C§ = null;
         this.§8!_§.§2L§ = null;
         this.§8!_§.§3t§ = null;
         this.§8!_§.§1!V§ = null;
         this.§8!_§.§5C§ = null;
      }
      
      b2internal function §%M§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§8!W§;
         this.§8!W§ = this.§@!O§;
         this.§@!O§ = _loc2_;
         this.§ -§ |= b2internal::^!X;
         var _loc3_:* = false;
         var _loc4_:* = (this.§ -§ & b2internal::>2) == b2internal::>2;
         var _loc5_:b2Body = this.§@! §.m_body;
         var _loc6_:b2Body = this.§>d§.m_body;
         var _loc7_:Boolean = this.§@! §.§5w§.§?`§(this.§>d§.§5w§);
         if(this.§ -§ & b2internal::6!T)
         {
            if(_loc7_)
            {
               _loc8_ = this.§@! §.GetShape();
               _loc9_ = this.§>d§.GetShape();
               _loc10_ = _loc5_.§%!c§();
               _loc11_ = _loc6_.§%!c§();
               _loc3_ = Boolean(b2Shape.§?`§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§@!O§.§^d§ = 0;
         }
         else
         {
            if(_loc5_.§9P§() != b2Body.b2_dynamicBody || _loc5_.§5m§() || _loc6_.§9P§() != b2Body.b2_dynamicBody || _loc6_.§5m§())
            {
               this.§ -§ |= b2internal::+8;
            }
            else
            {
               this.§ -§ &= ~b2internal::+8;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§@!O§.§^d§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§@!O§.§^d§)
               {
                  (_loc13_ = this.§@!O§.§"!_§[_loc12_]).§return§ = 0;
                  _loc13_.§'!V§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§8!W§.§^d§)
                  {
                     if((_loc16_ = this.§8!W§.§"!_§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§return§ = _loc16_.§return§;
                        _loc13_.§'!V§ = _loc16_.§'!V§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§@!O§.§^d§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§ -§ |= b2internal::>2;
         }
         else
         {
            this.§ -§ &= ~b2internal::>2;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§ -§ & b2internal::6!T) == 0)
         {
            param1.PreSolve(this,this.§8!W§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §?!"§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         § !B§.§'!@§.Set(this.§@! §.GetShape());
         § !B§.§5!4§.Set(this.§>d§.GetShape());
         § !B§.§3!<§ = param1;
         § !B§.§;K§ = param2;
         § !B§.§6L§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§8R§(§ !B§);
      }
   }
}
