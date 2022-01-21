package §'!J§
{
   import §&x§.b2Body;
   import §&x§.b2ContactListener;
   import §&x§.b2Fixture;
   import §-!T§.b2ContactID;
   import §-!T§.b2Manifold;
   import §-!T§.b2ManifoldPoint;
   import §-!T§.b2TOIInput;
   import §-!T§.b2TimeOfImpact;
   import §-!T§.b2WorldManifold;
   import §0,§.b2Sweep;
   import §0,§.b2Transform;
   import §3o§.b2Settings;
   import §3o§.b2internal;
   import §8!b§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §@G§:uint = 1;
      
      b2internal static var §7!0§:uint = 2;
      
      b2internal static var §=7§:uint = 4;
      
      b2internal static var §#[§:uint = 8;
      
      b2internal static var §&!"§:uint = 16;
      
      b2internal static var §9§:uint = 32;
      
      b2internal static var §!!l§:uint = 64;
      
      private static var §-Q§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var § 3§:uint;
      
      b2internal var §=!W§:b2Contact;
      
      b2internal var §18§:b2Contact;
      
      b2internal var §15§:b2ContactEdge;
      
      b2internal var §`!A§:b2ContactEdge;
      
      b2internal var § `§:b2Fixture;
      
      b2internal var §"!9§:b2Fixture;
      
      b2internal var §1z§:b2Manifold;
      
      b2internal var §^!<§:b2Manifold;
      
      b2internal var §[Q§:Number;
      
      public function b2Contact()
      {
         this.§15§ = new b2ContactEdge();
         this.§`!A§ = new b2ContactEdge();
         this.§1z§ = new b2Manifold();
         this.§^!<§ = new b2Manifold();
         super();
      }
      
      public function § I§() : b2Manifold
      {
         return this.§1z§;
      }
      
      public function §,!5§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§ `§.GetBody();
         var _loc3_:b2Body = this.§"!9§.GetBody();
         var _loc4_:b2Shape = this.§ `§.GetShape();
         var _loc5_:b2Shape = this.§"!9§.GetShape();
         param1.§,!p§(this.§1z§,_loc2_.§<9§(),_loc4_.§=V§,_loc3_.§<9§(),_loc5_.§=V§);
      }
      
      public function §@`§() : Boolean
      {
         return (this.§ 3§ & b2internal::&!") == b2internal::&!";
      }
      
      public function § true§() : Boolean
      {
         return (this.§ 3§ & b2internal::7!0) == b2internal::7!0;
      }
      
      public function §1h§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ 3§ |= b2internal::@G;
         }
         else
         {
            this.§ 3§ &= ~b2internal::@G;
         }
      }
      
      public function §#K§() : Boolean
      {
         return (this.§ 3§ & b2internal::@G) == b2internal::@G;
      }
      
      public function §&I§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ 3§ |= b2internal::9;
         }
         else
         {
            this.§ 3§ &= ~b2internal::9;
         }
      }
      
      public function §%0§() : Boolean
      {
         return (this.§ 3§ & b2internal::9) == b2internal::9;
      }
      
      public function §@!^§() : b2Contact
      {
         return this.§18§;
      }
      
      public function §+!m§() : b2Fixture
      {
         return this.§ `§;
      }
      
      public function §4j§() : b2Fixture
      {
         return this.§"!9§;
      }
      
      public function §>T§() : void
      {
         this.§ 3§ |= b2internal::!!l;
      }
      
      b2internal function §?r§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§ 3§ = b2internal::9;
         if(!param1 || !param2)
         {
            this.§ `§ = null;
            this.§"!9§ = null;
            return;
         }
         if(param1.§#K§() || param2.§#K§())
         {
            this.§ 3§ |= b2internal::@G;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§"!I§() != b2Body.b2_dynamicBody || _loc3_.§>b§() || _loc4_.§"!I§() != b2Body.b2_dynamicBody || _loc4_.§>b§())
         {
            this.§ 3§ |= b2internal::7!0;
         }
         this.§ `§ = param1;
         this.§"!9§ = param2;
         this.§1z§.§'q§ = 0;
         this.§=!W§ = null;
         this.§18§ = null;
         this.§15§.§&!L§ = null;
         this.§15§.§"!6§ = null;
         this.§15§.§1t§ = null;
         this.§15§.§ W§ = null;
         this.§`!A§.§&!L§ = null;
         this.§`!A§.§"!6§ = null;
         this.§`!A§.§1t§ = null;
         this.§`!A§.§ W§ = null;
      }
      
      b2internal function §3!P§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§^!<§;
         this.§^!<§ = this.§1z§;
         this.§1z§ = _loc2_;
         this.§ 3§ |= b2internal::9;
         var _loc3_:* = false;
         var _loc4_:* = (this.§ 3§ & b2internal::&!") == b2internal::&!";
         var _loc5_:b2Body = this.§ `§.m_body;
         var _loc6_:b2Body = this.§"!9§.m_body;
         var _loc7_:Boolean = this.§ `§.§ p§.§7q§(this.§"!9§.§ p§);
         if(this.§ 3§ & b2internal::@G)
         {
            if(_loc7_)
            {
               _loc8_ = this.§ `§.GetShape();
               _loc9_ = this.§"!9§.GetShape();
               _loc10_ = _loc5_.§<9§();
               _loc11_ = _loc6_.§<9§();
               _loc3_ = Boolean(b2Shape.§7q§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§1z§.§'q§ = 0;
         }
         else
         {
            if(_loc5_.§"!I§() != b2Body.b2_dynamicBody || _loc5_.§>b§() || _loc6_.§"!I§() != b2Body.b2_dynamicBody || _loc6_.§>b§())
            {
               this.§ 3§ |= b2internal::7!0;
            }
            else
            {
               this.§ 3§ &= ~b2internal::7!0;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§1z§.§'q§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§1z§.§'q§)
               {
                  (_loc13_ = this.§1z§.§0!4§[_loc12_]).§&V§ = 0;
                  _loc13_.§,!B§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§^!<§.§'q§)
                  {
                     if((_loc16_ = this.§^!<§.§0!4§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§&V§ = _loc16_.§&V§;
                        _loc13_.§,!B§ = _loc16_.§,!B§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§1z§.§'q§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§ 3§ |= b2internal::&!";
         }
         else
         {
            this.§ 3§ &= ~b2internal::&!";
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§ 3§ & b2internal::@G) == 0)
         {
            param1.PreSolve(this,this.§^!<§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §`d§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §-Q§.§'w§.Set(this.§ `§.GetShape());
         §-Q§.§+!S§.Set(this.§"!9§.GetShape());
         §-Q§.§8Y§ = param1;
         §-Q§.§1a§ = param2;
         §-Q§.§>!g§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§ !A§(§-Q§);
      }
   }
}
