package §0b§
{
   import § y§.b2Body;
   import § y§.b2ContactListener;
   import § y§.b2Fixture;
   import §!u§.b2ContactID;
   import §!u§.b2Manifold;
   import §!u§.b2ManifoldPoint;
   import §!u§.b2TOIInput;
   import §!u§.b2TimeOfImpact;
   import §!u§.b2WorldManifold;
   import §54§.b2Settings;
   import §54§.b2internal;
   import §;h§.b2Sweep;
   import §;h§.b2Transform;
   import §]!7§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §3q§:uint = 1;
      
      b2internal static var §<!'§:uint = 2;
      
      b2internal static var §!P§:uint = 4;
      
      b2internal static var §6=§:uint = 8;
      
      b2internal static var §]f§:uint = 16;
      
      b2internal static var §,!L§:uint = 32;
      
      b2internal static var §!o§:uint = 64;
      
      private static var §'!d§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §"N§:uint;
      
      b2internal var §7G§:b2Contact;
      
      b2internal var §&!+§:b2Contact;
      
      b2internal var §"!5§:b2ContactEdge;
      
      b2internal var § 6§:b2ContactEdge;
      
      b2internal var §31§:b2Fixture;
      
      b2internal var §`>§:b2Fixture;
      
      b2internal var §=!c§:b2Manifold;
      
      b2internal var §'!@§:b2Manifold;
      
      b2internal var §,]§:Number;
      
      public function b2Contact()
      {
         this.§"!5§ = new b2ContactEdge();
         this.§ 6§ = new b2ContactEdge();
         this.§=!c§ = new b2Manifold();
         this.§'!@§ = new b2Manifold();
         super();
      }
      
      public function §7!%§() : b2Manifold
      {
         return this.§=!c§;
      }
      
      public function §else§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§31§.GetBody();
         var _loc3_:b2Body = this.§`>§.GetBody();
         var _loc4_:b2Shape = this.§31§.GetShape();
         var _loc5_:b2Shape = this.§`>§.GetShape();
         param1.§#§(this.§=!c§,_loc2_.§0!S§(),_loc4_.§,!3§,_loc3_.§0!S§(),_loc5_.§,!3§);
      }
      
      public function §,!E§() : Boolean
      {
         return (this.§"N§ & b2internal::]f) == b2internal::]f;
      }
      
      public function §8!0§() : Boolean
      {
         return (this.§"N§ & b2internal::<!') == b2internal::<!';
      }
      
      public function §%!6§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"N§ |= b2internal::3q;
         }
         else
         {
            this.§"N§ &= ~b2internal::3q;
         }
      }
      
      public function §6!Z§() : Boolean
      {
         return (this.§"N§ & b2internal::3q) == b2internal::3q;
      }
      
      public function §'!_§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"N§ |= b2internal::,!L;
         }
         else
         {
            this.§"N§ &= ~b2internal::,!L;
         }
      }
      
      public function §&0§() : Boolean
      {
         return (this.§"N§ & b2internal::,!L) == b2internal::,!L;
      }
      
      public function §3!I§() : b2Contact
      {
         return this.§&!+§;
      }
      
      public function §^Z§() : b2Fixture
      {
         return this.§31§;
      }
      
      public function §3<§() : b2Fixture
      {
         return this.§`>§;
      }
      
      public function §7!^§() : void
      {
         this.§"N§ |= b2internal::!o;
      }
      
      b2internal function §+!K§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§"N§ = b2internal::,!L;
         if(!param1 || !param2)
         {
            this.§31§ = null;
            this.§`>§ = null;
            return;
         }
         if(param1.§6!Z§() || param2.§6!Z§())
         {
            this.§"N§ |= b2internal::3q;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§`!Q§() != b2Body.b2_dynamicBody || _loc3_.§9+§() || _loc4_.§`!Q§() != b2Body.b2_dynamicBody || _loc4_.§9+§())
         {
            this.§"N§ |= b2internal::<!';
         }
         this.§31§ = param1;
         this.§`>§ = param2;
         this.§=!c§.§72§ = 0;
         this.§7G§ = null;
         this.§&!+§ = null;
         this.§"!5§.§`!T§ = null;
         this.§"!5§.§#!F§ = null;
         this.§"!5§.§'_§ = null;
         this.§"!5§.§3m§ = null;
         this.§ 6§.§`!T§ = null;
         this.§ 6§.§#!F§ = null;
         this.§ 6§.§'_§ = null;
         this.§ 6§.§3m§ = null;
      }
      
      b2internal function §[<§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§'!@§;
         this.§'!@§ = this.§=!c§;
         this.§=!c§ = _loc2_;
         this.§"N§ |= b2internal::,!L;
         var _loc3_:* = false;
         var _loc4_:* = (this.§"N§ & b2internal::]f) == b2internal::]f;
         var _loc5_:b2Body = this.§31§.m_body;
         var _loc6_:b2Body = this.§`>§.m_body;
         var _loc7_:Boolean = this.§31§.§^D§.§"!a§(this.§`>§.§^D§);
         if(this.§"N§ & b2internal::3q)
         {
            if(_loc7_)
            {
               _loc8_ = this.§31§.GetShape();
               _loc9_ = this.§`>§.GetShape();
               _loc10_ = _loc5_.§0!S§();
               _loc11_ = _loc6_.§0!S§();
               _loc3_ = Boolean(b2Shape.§"!a§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§=!c§.§72§ = 0;
         }
         else
         {
            if(_loc5_.§`!Q§() != b2Body.b2_dynamicBody || _loc5_.§9+§() || _loc6_.§`!Q§() != b2Body.b2_dynamicBody || _loc6_.§9+§())
            {
               this.§"N§ |= b2internal::<!';
            }
            else
            {
               this.§"N§ &= ~b2internal::<!';
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§=!c§.§72§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§=!c§.§72§)
               {
                  (_loc13_ = this.§=!c§.§+!]§[_loc12_]).§'!E§ = 0;
                  _loc13_.§>4§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§'!@§.§72§)
                  {
                     if((_loc16_ = this.§'!@§.§+!]§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§'!E§ = _loc16_.§'!E§;
                        _loc13_.§>4§ = _loc16_.§>4§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§=!c§.§72§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§"N§ |= b2internal::]f;
         }
         else
         {
            this.§"N§ &= ~b2internal::]f;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§"N§ & b2internal::3q) == 0)
         {
            param1.PreSolve(this,this.§'!@§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §;!=§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §'!d§.§8G§.Set(this.§31§.GetShape());
         §'!d§.§@e§.Set(this.§`>§.GetShape());
         §'!d§.§5!R§ = param1;
         §'!d§.§6!8§ = param2;
         §'!d§.§+g§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§3u§(§'!d§);
      }
   }
}
