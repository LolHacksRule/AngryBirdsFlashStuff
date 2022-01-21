package §>!'§
{
   import §!R§.b2Sweep;
   import §!R§.b2Transform;
   import §1B§.b2Body;
   import §1B§.b2ContactListener;
   import §1B§.b2Fixture;
   import §9i§.b2Settings;
   import §9i§.b2internal;
   import §]7§.b2ContactID;
   import §]7§.b2Manifold;
   import §]7§.b2ManifoldPoint;
   import §]7§.b2TOIInput;
   import §]7§.b2TimeOfImpact;
   import §]7§.b2WorldManifold;
   import §]q§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §^![§:uint = 1;
      
      b2internal static var §?G§:uint = 2;
      
      b2internal static var §^!b§:uint = 4;
      
      b2internal static var §8!V§:uint = 8;
      
      b2internal static var §5!L§:uint = 16;
      
      b2internal static var §9!D§:uint = 32;
      
      b2internal static var §&!c§:uint = 64;
      
      private static var §@!c§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §%!%§:uint;
      
      b2internal var §]!K§:b2Contact;
      
      b2internal var §>y§:b2Contact;
      
      b2internal var §9k§:b2ContactEdge;
      
      b2internal var §[!$§:b2ContactEdge;
      
      b2internal var §7c§:b2Fixture;
      
      b2internal var §!!@§:b2Fixture;
      
      b2internal var §?!N§:b2Manifold;
      
      b2internal var §2!a§:b2Manifold;
      
      b2internal var §?Q§:Number;
      
      public function b2Contact()
      {
         this.§9k§ = new b2ContactEdge();
         this.§[!$§ = new b2ContactEdge();
         this.§?!N§ = new b2Manifold();
         this.§2!a§ = new b2Manifold();
         super();
      }
      
      public function §&m§() : b2Manifold
      {
         return this.§?!N§;
      }
      
      public function §=&§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§7c§.GetBody();
         var _loc3_:b2Body = this.§!!@§.GetBody();
         var _loc4_:b2Shape = this.§7c§.GetShape();
         var _loc5_:b2Shape = this.§!!@§.GetShape();
         param1.§4G§(this.§?!N§,_loc2_.§&0§(),_loc4_.§!C§,_loc3_.§&0§(),_loc5_.§!C§);
      }
      
      public function §<+§() : Boolean
      {
         return (this.§%!%§ & b2internal::5!L) == b2internal::5!L;
      }
      
      public function §1!1§() : Boolean
      {
         return (this.§%!%§ & b2internal::?G) == b2internal::?G;
      }
      
      public function §^@§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%!%§ |= b2internal::^![;
         }
         else
         {
            this.§%!%§ &= ~b2internal::^![;
         }
      }
      
      public function §%a§() : Boolean
      {
         return (this.§%!%§ & b2internal::^![) == b2internal::^![;
      }
      
      public function §`c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%!%§ |= b2internal::9!D;
         }
         else
         {
            this.§%!%§ &= ~b2internal::9!D;
         }
      }
      
      public function §]!_§() : Boolean
      {
         return (this.§%!%§ & b2internal::9!D) == b2internal::9!D;
      }
      
      public function §-7§() : b2Contact
      {
         return this.§>y§;
      }
      
      public function §>C§() : b2Fixture
      {
         return this.§7c§;
      }
      
      public function §3y§() : b2Fixture
      {
         return this.§!!@§;
      }
      
      public function §each §() : void
      {
         this.§%!%§ |= b2internal::&!c;
      }
      
      b2internal function §<! §(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§%!%§ = b2internal::9!D;
         if(!param1 || !param2)
         {
            this.§7c§ = null;
            this.§!!@§ = null;
            return;
         }
         if(param1.§%a§() || param2.§%a§())
         {
            this.§%!%§ |= b2internal::^![;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§#+§() != b2Body.b2_dynamicBody || _loc3_.§^!=§() || _loc4_.§#+§() != b2Body.b2_dynamicBody || _loc4_.§^!=§())
         {
            this.§%!%§ |= b2internal::?G;
         }
         this.§7c§ = param1;
         this.§!!@§ = param2;
         this.§?!N§.§,!!§ = 0;
         this.§]!K§ = null;
         this.§>y§ = null;
         this.§9k§.§"!3§ = null;
         this.§9k§.§<!C§ = null;
         this.§9k§.§6W§ = null;
         this.§9k§.§>!B§ = null;
         this.§[!$§.§"!3§ = null;
         this.§[!$§.§<!C§ = null;
         this.§[!$§.§6W§ = null;
         this.§[!$§.§>!B§ = null;
      }
      
      b2internal function §7!]§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§2!a§;
         this.§2!a§ = this.§?!N§;
         this.§?!N§ = _loc2_;
         this.§%!%§ |= b2internal::9!D;
         var _loc3_:* = false;
         var _loc4_:* = (this.§%!%§ & b2internal::5!L) == b2internal::5!L;
         var _loc5_:b2Body = this.§7c§.m_body;
         var _loc6_:b2Body = this.§!!@§.m_body;
         var _loc7_:Boolean = this.§7c§.§6!h§.§6!_§(this.§!!@§.§6!h§);
         if(this.§%!%§ & b2internal::^![)
         {
            if(_loc7_)
            {
               _loc8_ = this.§7c§.GetShape();
               _loc9_ = this.§!!@§.GetShape();
               _loc10_ = _loc5_.§&0§();
               _loc11_ = _loc6_.§&0§();
               _loc3_ = Boolean(b2Shape.§6!_§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§?!N§.§,!!§ = 0;
         }
         else
         {
            if(_loc5_.§#+§() != b2Body.b2_dynamicBody || _loc5_.§^!=§() || _loc6_.§#+§() != b2Body.b2_dynamicBody || _loc6_.§^!=§())
            {
               this.§%!%§ |= b2internal::?G;
            }
            else
            {
               this.§%!%§ &= ~b2internal::?G;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§?!N§.§,!!§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§?!N§.§,!!§)
               {
                  (_loc13_ = this.§?!N§.§55§[_loc12_]).§^!a§ = 0;
                  _loc13_.§?!b§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§2!a§.§,!!§)
                  {
                     if((_loc16_ = this.§2!a§.§55§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§^!a§ = _loc16_.§^!a§;
                        _loc13_.§?!b§ = _loc16_.§?!b§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§?!N§.§,!!§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§%!%§ |= b2internal::5!L;
         }
         else
         {
            this.§%!%§ &= ~b2internal::5!L;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§%!%§ & b2internal::^![) == 0)
         {
            param1.PreSolve(this,this.§2!a§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §]!o§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §@!c§.§9s§.Set(this.§7c§.GetShape());
         §@!c§.§4!S§.Set(this.§!!@§.GetShape());
         §@!c§.§0!K§ = param1;
         §@!c§.§<i§ = param2;
         §@!c§.§,!m§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§+#§(§@!c§);
      }
   }
}
