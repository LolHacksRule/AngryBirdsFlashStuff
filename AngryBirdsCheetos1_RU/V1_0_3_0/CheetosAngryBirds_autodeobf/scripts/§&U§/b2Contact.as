package §&U§
{
   import §"x§.b2Shape;
   import §#,§.b2Settings;
   import §#,§.b2internal;
   import §4]§.b2Body;
   import §4]§.b2ContactListener;
   import §4]§.b2Fixture;
   import §7$§.b2ContactID;
   import §7$§.b2Manifold;
   import §7$§.b2ManifoldPoint;
   import §7$§.b2TOIInput;
   import §7$§.b2TimeOfImpact;
   import §7$§.b2WorldManifold;
   import §[R§.b2Sweep;
   import §[R§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §11§:uint = 1;
      
      b2internal static var §,c§:uint = 2;
      
      b2internal static var §?$§:uint = 4;
      
      b2internal static var §3?§:uint = 8;
      
      b2internal static var §6^§:uint = 16;
      
      b2internal static var §[N§:uint = 32;
      
      b2internal static var §##§:uint = 64;
      
      private static var §+=§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §0!A§:uint;
      
      b2internal var §-%§:b2Contact;
      
      b2internal var § !P§:b2Contact;
      
      b2internal var §76§:b2ContactEdge;
      
      b2internal var §]!8§:b2ContactEdge;
      
      b2internal var §`3§:b2Fixture;
      
      b2internal var §+!D§:b2Fixture;
      
      b2internal var §]k§:b2Manifold;
      
      b2internal var §5J§:b2Manifold;
      
      b2internal var §#q§:Number;
      
      public function b2Contact()
      {
         this.§76§ = new b2ContactEdge();
         this.§]!8§ = new b2ContactEdge();
         this.§]k§ = new b2Manifold();
         this.§5J§ = new b2Manifold();
         super();
      }
      
      public function §;!'§() : b2Manifold
      {
         return this.§]k§;
      }
      
      public function §0'§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§`3§.GetBody();
         var _loc3_:b2Body = this.§+!D§.GetBody();
         var _loc4_:b2Shape = this.§`3§.GetShape();
         var _loc5_:b2Shape = this.§+!D§.GetShape();
         param1.§9!K§(this.§]k§,_loc2_.§5[§(),_loc4_.§?'§,_loc3_.§5[§(),_loc5_.§?'§);
      }
      
      public function §!!4§() : Boolean
      {
         return (this.§0!A§ & b2internal::6^) == b2internal::6^;
      }
      
      public function §`4§() : Boolean
      {
         return (this.§0!A§ & b2internal::,c) == b2internal::,c;
      }
      
      public function §@!=§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!A§ |= b2internal::11;
         }
         else
         {
            this.§0!A§ &= ~b2internal::11;
         }
      }
      
      public function §=Y§() : Boolean
      {
         return (this.§0!A§ & b2internal::11) == b2internal::11;
      }
      
      public function §;!K§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0!A§ |= b2internal::[N;
         }
         else
         {
            this.§0!A§ &= ~b2internal::[N;
         }
      }
      
      public function §=!;§() : Boolean
      {
         return (this.§0!A§ & b2internal::[N) == b2internal::[N;
      }
      
      public function §&6§() : b2Contact
      {
         return this.§ !P§;
      }
      
      public function §?O§() : b2Fixture
      {
         return this.§`3§;
      }
      
      public function §-K§() : b2Fixture
      {
         return this.§+!D§;
      }
      
      public function §4w§() : void
      {
         this.§0!A§ |= b2internal::##;
      }
      
      b2internal function §[]§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§0!A§ = b2internal::[N;
         if(!param1 || !param2)
         {
            this.§`3§ = null;
            this.§+!D§ = null;
            return;
         }
         if(param1.§=Y§() || param2.§=Y§())
         {
            this.§0!A§ |= b2internal::11;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§,!W§() != b2Body.b2_dynamicBody || _loc3_.§2!N§() || _loc4_.§,!W§() != b2Body.b2_dynamicBody || _loc4_.§2!N§())
         {
            this.§0!A§ |= b2internal::,c;
         }
         this.§`3§ = param1;
         this.§+!D§ = param2;
         this.§]k§.§<!Y§ = 0;
         this.§-%§ = null;
         this.§ !P§ = null;
         this.§76§.§#!b§ = null;
         this.§76§.§&`§ = null;
         this.§76§.§5E§ = null;
         this.§76§.§6!J§ = null;
         this.§]!8§.§#!b§ = null;
         this.§]!8§.§&`§ = null;
         this.§]!8§.§5E§ = null;
         this.§]!8§.§6!J§ = null;
      }
      
      b2internal function §4!$§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§5J§;
         this.§5J§ = this.§]k§;
         this.§]k§ = _loc2_;
         this.§0!A§ |= b2internal::[N;
         var _loc3_:* = false;
         var _loc4_:* = (this.§0!A§ & b2internal::6^) == b2internal::6^;
         var _loc5_:b2Body = this.§`3§.m_body;
         var _loc6_:b2Body = this.§+!D§.m_body;
         var _loc7_:Boolean = this.§`3§.§,!R§.§?U§(this.§+!D§.§,!R§);
         if(this.§0!A§ & b2internal::11)
         {
            if(_loc7_)
            {
               _loc8_ = this.§`3§.GetShape();
               _loc9_ = this.§+!D§.GetShape();
               _loc10_ = _loc5_.§5[§();
               _loc11_ = _loc6_.§5[§();
               _loc3_ = Boolean(b2Shape.§?U§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§]k§.§<!Y§ = 0;
         }
         else
         {
            if(_loc5_.§,!W§() != b2Body.b2_dynamicBody || _loc5_.§2!N§() || _loc6_.§,!W§() != b2Body.b2_dynamicBody || _loc6_.§2!N§())
            {
               this.§0!A§ |= b2internal::,c;
            }
            else
            {
               this.§0!A§ &= ~b2internal::,c;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§]k§.§<!Y§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§]k§.§<!Y§)
               {
                  (_loc13_ = this.§]k§.§6!"§[_loc12_]).§"!3§ = 0;
                  _loc13_.§^#§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§5J§.§<!Y§)
                  {
                     if((_loc16_ = this.§5J§.§6!"§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§"!3§ = _loc16_.§"!3§;
                        _loc13_.§^#§ = _loc16_.§^#§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§]k§.§<!Y§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§0!A§ |= b2internal::6^;
         }
         else
         {
            this.§0!A§ &= ~b2internal::6^;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§0!A§ & b2internal::11) == 0)
         {
            param1.PreSolve(this,this.§5J§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §9^§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §+=§.§@W§.Set(this.§`3§.GetShape());
         §+=§.§?!_§.Set(this.§+!D§.GetShape());
         §+=§.§[M§ = param1;
         §+=§.§'!R§ = param2;
         §+=§.§^v§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§-!_§(§+=§);
      }
   }
}
