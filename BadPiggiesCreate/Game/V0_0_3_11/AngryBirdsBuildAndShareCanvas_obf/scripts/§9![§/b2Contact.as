package §9![§
{
   import § 6§.b2ContactID;
   import § 6§.b2Manifold;
   import § 6§.b2ManifoldPoint;
   import § 6§.b2TOIInput;
   import § 6§.b2TimeOfImpact;
   import § 6§.b2WorldManifold;
   import §+L§.b2Sweep;
   import §+L§.b2Transform;
   import §1!3§.b2Shape;
   import §7z§.b2Body;
   import §7z§.b2ContactListener;
   import §7z§.b2Fixture;
   import §^+§.b2Settings;
   import §^+§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §;!=§:uint = 1;
      
      b2internal static var §,!U§:uint = 2;
      
      b2internal static var §9!N§:uint = 4;
      
      b2internal static var §2o§:uint = 8;
      
      b2internal static var §`!]§:uint = 16;
      
      b2internal static var §0+§:uint = 32;
      
      b2internal static var §<!K§:uint = 64;
      
      private static var §&=§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §]!4§:uint;
      
      b2internal var §;!F§:b2Contact;
      
      b2internal var §7t§:b2Contact;
      
      b2internal var §'z§:b2ContactEdge;
      
      b2internal var § !h§:b2ContactEdge;
      
      b2internal var §2G§:b2Fixture;
      
      b2internal var §]![§:b2Fixture;
      
      b2internal var §7"-§:b2Manifold;
      
      b2internal var §>!f§:b2Manifold;
      
      b2internal var §&![§:Number;
      
      public function b2Contact()
      {
         this.§'z§ = new b2ContactEdge();
         this.§ !h§ = new b2ContactEdge();
         this.§7"-§ = new b2Manifold();
         this.§>!f§ = new b2Manifold();
         super();
      }
      
      public function §3J§() : b2Manifold
      {
         return this.§7"-§;
      }
      
      public function §3i§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§2G§.GetBody();
         var _loc3_:b2Body = this.§]![§.GetBody();
         var _loc4_:b2Shape = this.§2G§.GetShape();
         var _loc5_:b2Shape = this.§]![§.GetShape();
         param1.§5$§(this.§7"-§,_loc2_.§7V§(),_loc4_.§5^§,_loc3_.§7V§(),_loc5_.§5^§);
      }
      
      public function §false§() : Boolean
      {
         return (this.§]!4§ & b2internal::`!]) == b2internal::`!];
      }
      
      public function §[-§() : Boolean
      {
         return (this.§]!4§ & b2internal::,!U) == b2internal::,!U;
      }
      
      public function §!!'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!4§ |= b2internal::;!=;
         }
         else
         {
            this.§]!4§ &= ~b2internal::;!=;
         }
      }
      
      public function §0!!§() : Boolean
      {
         return (this.§]!4§ & b2internal::;!=) == b2internal::;!=;
      }
      
      public function §`]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!4§ |= b2internal::0+;
         }
         else
         {
            this.§]!4§ &= ~b2internal::0+;
         }
      }
      
      public function §@x§() : Boolean
      {
         return (this.§]!4§ & b2internal::0+) == b2internal::0+;
      }
      
      public function §9!P§() : b2Contact
      {
         return this.§7t§;
      }
      
      public function §^!U§() : b2Fixture
      {
         return this.§2G§;
      }
      
      public function §`[§() : b2Fixture
      {
         return this.§]![§;
      }
      
      public function §4n§() : void
      {
         this.§]!4§ |= b2internal::<!K;
      }
      
      b2internal function §^m§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§]!4§ = b2internal::0+;
         if(!param1 || !param2)
         {
            this.§2G§ = null;
            this.§]![§ = null;
            return;
         }
         if(param1.§0!!§() || param2.§0!!§())
         {
            this.§]!4§ |= b2internal::;!=;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§,!B§() != b2Body.b2_dynamicBody || _loc3_.§>R§() || _loc4_.§,!B§() != b2Body.b2_dynamicBody || _loc4_.§>R§())
         {
            this.§]!4§ |= b2internal::,!U;
         }
         this.§2G§ = param1;
         this.§]![§ = param2;
         this.§7"-§.§7i§ = 0;
         this.§;!F§ = null;
         this.§7t§ = null;
         this.§'z§.§["9§ = null;
         this.§'z§.§>!t§ = null;
         this.§'z§.§1C§ = null;
         this.§'z§.§1!D§ = null;
         this.§ !h§.§["9§ = null;
         this.§ !h§.§>!t§ = null;
         this.§ !h§.§1C§ = null;
         this.§ !h§.§1!D§ = null;
      }
      
      b2internal function §-!?§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§>!f§;
         this.§>!f§ = this.§7"-§;
         this.§7"-§ = _loc2_;
         this.§]!4§ |= b2internal::0+;
         var _loc3_:* = false;
         var _loc4_:* = (this.§]!4§ & b2internal::`!]) == b2internal::`!];
         var _loc5_:b2Body = this.§2G§.m_body;
         var _loc6_:b2Body = this.§]![§.m_body;
         var _loc7_:Boolean = this.§2G§.§3o§.§&!P§(this.§]![§.§3o§);
         if(this.§]!4§ & b2internal::;!=)
         {
            if(_loc7_)
            {
               _loc8_ = this.§2G§.GetShape();
               _loc9_ = this.§]![§.GetShape();
               _loc10_ = _loc5_.§7V§();
               _loc11_ = _loc6_.§7V§();
               _loc3_ = Boolean(b2Shape.§&!P§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§7"-§.§7i§ = 0;
         }
         else
         {
            if(_loc5_.§,!B§() != b2Body.b2_dynamicBody || _loc5_.§>R§() || _loc6_.§,!B§() != b2Body.b2_dynamicBody || _loc6_.§>R§())
            {
               this.§]!4§ |= b2internal::,!U;
            }
            else
            {
               this.§]!4§ &= ~b2internal::,!U;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§7"-§.§7i§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§7"-§.§7i§)
               {
                  (_loc13_ = this.§7"-§.§;r§[_loc12_]).§=W§ = 0;
                  _loc13_.§?!@§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§>!f§.§7i§)
                  {
                     if((_loc16_ = this.§>!f§.§;r§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§=W§ = _loc16_.§=W§;
                        _loc13_.§?!@§ = _loc16_.§?!@§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§7"-§.§7i§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§]!4§ |= b2internal::`!];
         }
         else
         {
            this.§]!4§ &= ~b2internal::`!];
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§]!4§ & b2internal::;!=) == 0)
         {
            param1.PreSolve(this,this.§>!f§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §3!x§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §&=§.§#!=§.Set(this.§2G§.GetShape());
         §&=§.§;P§.Set(this.§]![§.GetShape());
         §&=§.§0! § = param1;
         §&=§.§]" § = param2;
         §&=§.§ !?§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§&R§(§&=§);
      }
   }
}
