package §'z§
{
   import §"v§.b2Settings;
   import §"v§.b2internal;
   import §&i§.b2Body;
   import §&i§.b2ContactListener;
   import §&i§.b2Fixture;
   import §5!K§.b2Sweep;
   import §5!K§.b2Transform;
   import §]M§.b2ContactID;
   import §]M§.b2Manifold;
   import §]M§.b2ManifoldPoint;
   import §]M§.b2TOIInput;
   import §]M§.b2TimeOfImpact;
   import §]M§.b2WorldManifold;
   import §each §.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §"!Y§:uint = 1;
      
      b2internal static var §<`§:uint = 2;
      
      b2internal static var §;p§:uint = 4;
      
      b2internal static var §'!Q§:uint = 8;
      
      b2internal static var §'?§:uint = 16;
      
      b2internal static var §"!=§:uint = 32;
      
      b2internal static var §?`§:uint = 64;
      
      private static var §"!L§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §7A§:uint;
      
      b2internal var §80§:b2Contact;
      
      b2internal var §`!T§:b2Contact;
      
      b2internal var §^$§:b2ContactEdge;
      
      b2internal var §7$§:b2ContactEdge;
      
      b2internal var §&L§:b2Fixture;
      
      b2internal var §8! §:b2Fixture;
      
      b2internal var §8b§:b2Manifold;
      
      b2internal var §0!P§:b2Manifold;
      
      b2internal var §1f§:Number;
      
      public function b2Contact()
      {
         this.§^$§ = new b2ContactEdge();
         this.§7$§ = new b2ContactEdge();
         this.§8b§ = new b2Manifold();
         this.§0!P§ = new b2Manifold();
         super();
      }
      
      public function §+Y§() : b2Manifold
      {
         return this.§8b§;
      }
      
      public function §;!?§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§&L§.GetBody();
         var _loc3_:b2Body = this.§8! §.GetBody();
         var _loc4_:b2Shape = this.§&L§.GetShape();
         var _loc5_:b2Shape = this.§8! §.GetShape();
         param1.§2![§(this.§8b§,_loc2_.§5!C§(),_loc4_.§>!;§,_loc3_.§5!C§(),_loc5_.§>!;§);
      }
      
      public function §4!#§() : Boolean
      {
         return (this.§7A§ & b2internal::'?) == b2internal::'?;
      }
      
      public function §+r§() : Boolean
      {
         return (this.§7A§ & b2internal::<`) == b2internal::<`;
      }
      
      public function §`c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7A§ |= b2internal::"!Y;
         }
         else
         {
            this.§7A§ &= ~b2internal::"!Y;
         }
      }
      
      public function §5P§() : Boolean
      {
         return (this.§7A§ & b2internal::"!Y) == b2internal::"!Y;
      }
      
      public function §^!9§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7A§ |= b2internal::"!=;
         }
         else
         {
            this.§7A§ &= ~b2internal::"!=;
         }
      }
      
      public function §5!H§() : Boolean
      {
         return (this.§7A§ & b2internal::"!=) == b2internal::"!=;
      }
      
      public function §%!<§() : b2Contact
      {
         return this.§`!T§;
      }
      
      public function §"q§() : b2Fixture
      {
         return this.§&L§;
      }
      
      public function §^x§() : b2Fixture
      {
         return this.§8! §;
      }
      
      public function §8!S§() : void
      {
         this.§7A§ |= b2internal::?`;
      }
      
      b2internal function §"L§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§7A§ = b2internal::"!=;
         if(!param1 || !param2)
         {
            this.§&L§ = null;
            this.§8! § = null;
            return;
         }
         if(param1.§5P§() || param2.§5P§())
         {
            this.§7A§ |= b2internal::"!Y;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§"5§() != b2Body.b2_dynamicBody || _loc3_.§,!D§() || _loc4_.§"5§() != b2Body.b2_dynamicBody || _loc4_.§,!D§())
         {
            this.§7A§ |= b2internal::<`;
         }
         this.§&L§ = param1;
         this.§8! § = param2;
         this.§8b§.§<n§ = 0;
         this.§80§ = null;
         this.§`!T§ = null;
         this.§^$§.§^@§ = null;
         this.§^$§.§`V§ = null;
         this.§^$§.§`!V§ = null;
         this.§^$§.§`!0§ = null;
         this.§7$§.§^@§ = null;
         this.§7$§.§`V§ = null;
         this.§7$§.§`!V§ = null;
         this.§7$§.§`!0§ = null;
      }
      
      b2internal function §7!>§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§0!P§;
         this.§0!P§ = this.§8b§;
         this.§8b§ = _loc2_;
         this.§7A§ |= b2internal::"!=;
         var _loc3_:* = false;
         var _loc4_:* = (this.§7A§ & b2internal::'?) == b2internal::'?;
         var _loc5_:b2Body = this.§&L§.m_body;
         var _loc6_:b2Body = this.§8! §.m_body;
         var _loc7_:Boolean = this.§&L§.§%"§.§>!4§(this.§8! §.§%"§);
         if(this.§7A§ & b2internal::"!Y)
         {
            if(_loc7_)
            {
               _loc8_ = this.§&L§.GetShape();
               _loc9_ = this.§8! §.GetShape();
               _loc10_ = _loc5_.§5!C§();
               _loc11_ = _loc6_.§5!C§();
               _loc3_ = Boolean(b2Shape.§>!4§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§8b§.§<n§ = 0;
         }
         else
         {
            if(_loc5_.§"5§() != b2Body.b2_dynamicBody || _loc5_.§,!D§() || _loc6_.§"5§() != b2Body.b2_dynamicBody || _loc6_.§,!D§())
            {
               this.§7A§ |= b2internal::<`;
            }
            else
            {
               this.§7A§ &= ~b2internal::<`;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§8b§.§<n§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§8b§.§<n§)
               {
                  (_loc13_ = this.§8b§.§!!=§[_loc12_]).§#!9§ = 0;
                  _loc13_.§1d§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§0!P§.§<n§)
                  {
                     if((_loc16_ = this.§0!P§.§!!=§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§#!9§ = _loc16_.§#!9§;
                        _loc13_.§1d§ = _loc16_.§1d§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§8b§.§<n§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§7A§ |= b2internal::'?;
         }
         else
         {
            this.§7A§ &= ~b2internal::'?;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§7A§ & b2internal::"!Y) == 0)
         {
            param1.PreSolve(this,this.§0!P§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §8!Y§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §"!L§.§&!!§.Set(this.§&L§.GetShape());
         §"!L§.§!!L§.Set(this.§8! §.GetShape());
         §"!L§.§=!!§ = param1;
         §"!L§.§^`§ = param2;
         §"!L§.§67§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§?n§(§"!L§);
      }
   }
}
