package §30§
{
   import § o§.b2Body;
   import § o§.b2ContactListener;
   import § o§.b2Fixture;
   import §"0§.b2Settings;
   import §"0§.b2internal;
   import §-r§.b2ContactID;
   import §-r§.b2Manifold;
   import §-r§.b2ManifoldPoint;
   import §-r§.b2TOIInput;
   import §-r§.b2TimeOfImpact;
   import §-r§.b2WorldManifold;
   import §6!H§.b2Sweep;
   import §6!H§.b2Transform;
   import §]!S§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §9l§:uint = 1;
      
      b2internal static var §;u§:uint = 2;
      
      b2internal static var §[!6§:uint = 4;
      
      b2internal static var §"1§:uint = 8;
      
      b2internal static var §5q§:uint = 16;
      
      b2internal static var §[!X§:uint = 32;
      
      b2internal static var §+<§:uint = 64;
      
      private static var §7#§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §0b§:uint;
      
      b2internal var §`D§:b2Contact;
      
      b2internal var §-![§:b2Contact;
      
      b2internal var §9F§:b2ContactEdge;
      
      b2internal var §5!?§:b2ContactEdge;
      
      b2internal var §45§:b2Fixture;
      
      b2internal var §?G§:b2Fixture;
      
      b2internal var §-0§:b2Manifold;
      
      b2internal var §'o§:b2Manifold;
      
      b2internal var §>&§:Number;
      
      public function b2Contact()
      {
         this.§9F§ = new b2ContactEdge();
         this.§5!?§ = new b2ContactEdge();
         this.§-0§ = new b2Manifold();
         this.§'o§ = new b2Manifold();
         super();
      }
      
      public function §3!#§() : b2Manifold
      {
         return this.§-0§;
      }
      
      public function §#h§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§45§.GetBody();
         var _loc3_:b2Body = this.§?G§.GetBody();
         var _loc4_:b2Shape = this.§45§.GetShape();
         var _loc5_:b2Shape = this.§?G§.GetShape();
         param1.§#!O§(this.§-0§,_loc2_.§2!i§(),_loc4_.§#&§,_loc3_.§2!i§(),_loc5_.§#&§);
      }
      
      public function §?5§() : Boolean
      {
         return (this.§0b§ & b2internal::5q) == b2internal::5q;
      }
      
      public function §=!F§() : Boolean
      {
         return (this.§0b§ & b2internal::;u) == b2internal::;u;
      }
      
      public function §,!W§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0b§ |= b2internal::9l;
         }
         else
         {
            this.§0b§ &= ~b2internal::9l;
         }
      }
      
      public function §;>§() : Boolean
      {
         return (this.§0b§ & b2internal::9l) == b2internal::9l;
      }
      
      public function §[!O§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0b§ |= b2internal::[!X;
         }
         else
         {
            this.§0b§ &= ~b2internal::[!X;
         }
      }
      
      public function §0!E§() : Boolean
      {
         return (this.§0b§ & b2internal::[!X) == b2internal::[!X;
      }
      
      public function §;!B§() : b2Contact
      {
         return this.§-![§;
      }
      
      public function §`u§() : b2Fixture
      {
         return this.§45§;
      }
      
      public function §7t§() : b2Fixture
      {
         return this.§?G§;
      }
      
      public function §[]§() : void
      {
         this.§0b§ |= b2internal::+<;
      }
      
      b2internal function §2'§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§0b§ = b2internal::[!X;
         if(!param1 || !param2)
         {
            this.§45§ = null;
            this.§?G§ = null;
            return;
         }
         if(param1.§;>§() || param2.§;>§())
         {
            this.§0b§ |= b2internal::9l;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§7!_§() != b2Body.b2_dynamicBody || _loc3_.§9L§() || _loc4_.§7!_§() != b2Body.b2_dynamicBody || _loc4_.§9L§())
         {
            this.§0b§ |= b2internal::;u;
         }
         this.§45§ = param1;
         this.§?G§ = param2;
         this.§-0§.§break§ = 0;
         this.§`D§ = null;
         this.§-![§ = null;
         this.§9F§.§4§ = null;
         this.§9F§.§4!N§ = null;
         this.§9F§.§23§ = null;
         this.§9F§.§'!4§ = null;
         this.§5!?§.§4§ = null;
         this.§5!?§.§4!N§ = null;
         this.§5!?§.§23§ = null;
         this.§5!?§.§'!4§ = null;
      }
      
      b2internal function §do §(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§'o§;
         this.§'o§ = this.§-0§;
         this.§-0§ = _loc2_;
         this.§0b§ |= b2internal::[!X;
         var _loc3_:* = false;
         var _loc4_:* = (this.§0b§ & b2internal::5q) == b2internal::5q;
         var _loc5_:b2Body = this.§45§.m_body;
         var _loc6_:b2Body = this.§?G§.m_body;
         var _loc7_:Boolean = this.§45§.§<D§.§"!F§(this.§?G§.§<D§);
         if(this.§0b§ & b2internal::9l)
         {
            if(_loc7_)
            {
               _loc8_ = this.§45§.GetShape();
               _loc9_ = this.§?G§.GetShape();
               _loc10_ = _loc5_.§2!i§();
               _loc11_ = _loc6_.§2!i§();
               _loc3_ = Boolean(b2Shape.§"!F§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§-0§.§break§ = 0;
         }
         else
         {
            if(_loc5_.§7!_§() != b2Body.b2_dynamicBody || _loc5_.§9L§() || _loc6_.§7!_§() != b2Body.b2_dynamicBody || _loc6_.§9L§())
            {
               this.§0b§ |= b2internal::;u;
            }
            else
            {
               this.§0b§ &= ~b2internal::;u;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§-0§.§break§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§-0§.§break§)
               {
                  (_loc13_ = this.§-0§.§@Z§[_loc12_]).§'!?§ = 0;
                  _loc13_.§,m§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§'o§.§break§)
                  {
                     if((_loc16_ = this.§'o§.§@Z§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§'!?§ = _loc16_.§'!?§;
                        _loc13_.§,m§ = _loc16_.§,m§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§-0§.§break§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§0b§ |= b2internal::5q;
         }
         else
         {
            this.§0b§ &= ~b2internal::5q;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§0b§ & b2internal::9l) == 0)
         {
            param1.PreSolve(this,this.§'o§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §[!K§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §7#§.§-C§.Set(this.§45§.GetShape());
         §7#§.§%!J§.Set(this.§?G§.GetShape());
         §7#§.§;U§ = param1;
         §7#§.§<`§ = param2;
         §7#§.§,!6§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§92§(§7#§);
      }
   }
}
