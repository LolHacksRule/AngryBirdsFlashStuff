package §'!#§
{
   import §'!3§.b2Settings;
   import §'!3§.b2internal;
   import §3q§.b2Sweep;
   import §3q§.b2Transform;
   import §9!$§.b2ContactID;
   import §9!$§.b2Manifold;
   import §9!$§.b2ManifoldPoint;
   import §9!$§.b2TOIInput;
   import §9!$§.b2TimeOfImpact;
   import §9!$§.b2WorldManifold;
   import §?0§.b2Body;
   import §?0§.b2ContactListener;
   import §?0§.b2Fixture;
   import §@,§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var § 3§:uint = 1;
      
      b2internal static var §2!!§:uint = 2;
      
      b2internal static var §^n§:uint = 4;
      
      b2internal static var §'T§:uint = 8;
      
      b2internal static var §=!I§:uint = 16;
      
      b2internal static var §-!&§:uint = 32;
      
      b2internal static var §2!4§:uint = 64;
      
      private static var §'!&§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §0n§:uint;
      
      b2internal var §"5§:b2Contact;
      
      b2internal var §>!W§:b2Contact;
      
      b2internal var §9+§:b2ContactEdge;
      
      b2internal var §@z§:b2ContactEdge;
      
      b2internal var §8!7§:b2Fixture;
      
      b2internal var §86§:b2Fixture;
      
      b2internal var §0!M§:b2Manifold;
      
      b2internal var §01§:b2Manifold;
      
      b2internal var §%>§:Number;
      
      public function b2Contact()
      {
         this.§9+§ = new b2ContactEdge();
         this.§@z§ = new b2ContactEdge();
         this.§0!M§ = new b2Manifold();
         this.§01§ = new b2Manifold();
         super();
      }
      
      public function §]!?§() : b2Manifold
      {
         return this.§0!M§;
      }
      
      public function §3!L§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§8!7§.GetBody();
         var _loc3_:b2Body = this.§86§.GetBody();
         var _loc4_:b2Shape = this.§8!7§.GetShape();
         var _loc5_:b2Shape = this.§86§.GetShape();
         param1.§;!W§(this.§0!M§,_loc2_.§[!4§(),_loc4_.§!R§,_loc3_.§[!4§(),_loc5_.§!R§);
      }
      
      public function §&!K§() : Boolean
      {
         return (this.§0n§ & b2internal::=!I) == b2internal::=!I;
      }
      
      public function §%!@§() : Boolean
      {
         return (this.§0n§ & b2internal::2!!) == b2internal::2!!;
      }
      
      public function §>w§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0n§ |= b2internal:: 3;
         }
         else
         {
            this.§0n§ &= ~b2internal:: 3;
         }
      }
      
      public function §]W§() : Boolean
      {
         return (this.§0n§ & b2internal:: 3) == b2internal:: 3;
      }
      
      public function §3!'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0n§ |= b2internal::-!&;
         }
         else
         {
            this.§0n§ &= ~b2internal::-!&;
         }
      }
      
      public function §1y§() : Boolean
      {
         return (this.§0n§ & b2internal::-!&) == b2internal::-!&;
      }
      
      public function §%W§() : b2Contact
      {
         return this.§>!W§;
      }
      
      public function §40§() : b2Fixture
      {
         return this.§8!7§;
      }
      
      public function §2!F§() : b2Fixture
      {
         return this.§86§;
      }
      
      public function §"D§() : void
      {
         this.§0n§ |= b2internal::2!4;
      }
      
      b2internal function §5!X§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§0n§ = b2internal::-!&;
         if(!param1 || !param2)
         {
            this.§8!7§ = null;
            this.§86§ = null;
            return;
         }
         if(param1.§]W§() || param2.§]W§())
         {
            this.§0n§ |= b2internal:: 3;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§1!A§() != b2Body.b2_dynamicBody || _loc3_.§=!?§() || _loc4_.§1!A§() != b2Body.b2_dynamicBody || _loc4_.§=!?§())
         {
            this.§0n§ |= b2internal::2!!;
         }
         this.§8!7§ = param1;
         this.§86§ = param2;
         this.§0!M§.§+!K§ = 0;
         this.§"5§ = null;
         this.§>!W§ = null;
         this.§9+§.§2j§ = null;
         this.§9+§.§7!A§ = null;
         this.§9+§.§20§ = null;
         this.§9+§.§#C§ = null;
         this.§@z§.§2j§ = null;
         this.§@z§.§7!A§ = null;
         this.§@z§.§20§ = null;
         this.§@z§.§#C§ = null;
      }
      
      b2internal function §]!E§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§01§;
         this.§01§ = this.§0!M§;
         this.§0!M§ = _loc2_;
         this.§0n§ |= b2internal::-!&;
         var _loc3_:* = false;
         var _loc4_:* = (this.§0n§ & b2internal::=!I) == b2internal::=!I;
         var _loc5_:b2Body = this.§8!7§.m_body;
         var _loc6_:b2Body = this.§86§.m_body;
         var _loc7_:Boolean = this.§8!7§.§'k§.§1?§(this.§86§.§'k§);
         if(this.§0n§ & b2internal:: 3)
         {
            if(_loc7_)
            {
               _loc8_ = this.§8!7§.GetShape();
               _loc9_ = this.§86§.GetShape();
               _loc10_ = _loc5_.§[!4§();
               _loc11_ = _loc6_.§[!4§();
               _loc3_ = Boolean(b2Shape.§1?§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§0!M§.§+!K§ = 0;
         }
         else
         {
            if(_loc5_.§1!A§() != b2Body.b2_dynamicBody || _loc5_.§=!?§() || _loc6_.§1!A§() != b2Body.b2_dynamicBody || _loc6_.§=!?§())
            {
               this.§0n§ |= b2internal::2!!;
            }
            else
            {
               this.§0n§ &= ~b2internal::2!!;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§0!M§.§+!K§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§0!M§.§+!K§)
               {
                  (_loc13_ = this.§0!M§.§^G§[_loc12_]).§;L§ = 0;
                  _loc13_.§2f§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§01§.§+!K§)
                  {
                     if((_loc16_ = this.§01§.§^G§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§;L§ = _loc16_.§;L§;
                        _loc13_.§2f§ = _loc16_.§2f§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§0!M§.§+!K§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§0n§ |= b2internal::=!I;
         }
         else
         {
            this.§0n§ &= ~b2internal::=!I;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§0n§ & b2internal:: 3) == 0)
         {
            param1.PreSolve(this,this.§01§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §^b§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §'!&§.§;`§.Set(this.§8!7§.GetShape());
         §'!&§.§?!5§.Set(this.§86§.GetShape());
         §'!&§.§7!2§ = param1;
         §'!&§.§ !a§ = param2;
         §'!&§.§^!A§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§?k§(§'!&§);
      }
   }
}
