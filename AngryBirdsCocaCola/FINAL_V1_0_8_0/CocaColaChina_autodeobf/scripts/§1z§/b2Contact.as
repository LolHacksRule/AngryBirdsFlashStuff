package §1z§
{
   import § Y§.b2Shape;
   import §6V§.b2Sweep;
   import §6V§.b2Transform;
   import §<!L§.b2Body;
   import §<!L§.b2ContactListener;
   import §<!L§.b2Fixture;
   import §?F§.b2ContactID;
   import §?F§.b2Manifold;
   import §?F§.b2ManifoldPoint;
   import §?F§.b2TOIInput;
   import §?F§.b2TimeOfImpact;
   import §?F§.b2WorldManifold;
   import §[!$§.b2Settings;
   import §[!$§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var § `§:uint = 1;
      
      b2internal static var §%E§:uint = 2;
      
      b2internal static var §1!E§:uint = 4;
      
      b2internal static var §1!O§:uint = 8;
      
      b2internal static var §=9§:uint = 16;
      
      b2internal static var §%!V§:uint = 32;
      
      b2internal static var §8!@§:uint = 64;
      
      private static var §`!=§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §0=§:uint;
      
      b2internal var §4=§:b2Contact;
      
      b2internal var §!!U§:b2Contact;
      
      b2internal var §;!=§:b2ContactEdge;
      
      b2internal var §=r§:b2ContactEdge;
      
      b2internal var §[![§:b2Fixture;
      
      b2internal var §1J§:b2Fixture;
      
      b2internal var §%Q§:b2Manifold;
      
      b2internal var §8+§:b2Manifold;
      
      b2internal var §4y§:Number;
      
      public function b2Contact()
      {
         this.§;!=§ = new b2ContactEdge();
         this.§=r§ = new b2ContactEdge();
         this.§%Q§ = new b2Manifold();
         this.§8+§ = new b2Manifold();
         super();
      }
      
      public function §3!T§() : b2Manifold
      {
         return this.§%Q§;
      }
      
      public function §0;§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§[![§.GetBody();
         var _loc3_:b2Body = this.§1J§.GetBody();
         var _loc4_:b2Shape = this.§[![§.GetShape();
         var _loc5_:b2Shape = this.§1J§.GetShape();
         param1.§2#§(this.§%Q§,_loc2_.§`!E§(),_loc4_.§ !!§,_loc3_.§`!E§(),_loc5_.§ !!§);
      }
      
      public function §1!0§() : Boolean
      {
         return (this.§0=§ & b2internal::=9) == b2internal::=9;
      }
      
      public function §7x§() : Boolean
      {
         return (this.§0=§ & b2internal::%E) == b2internal::%E;
      }
      
      public function §=%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0=§ |= b2internal:: `;
         }
         else
         {
            this.§0=§ &= ~b2internal:: `;
         }
      }
      
      public function §2J§() : Boolean
      {
         return (this.§0=§ & b2internal:: `) == b2internal:: `;
      }
      
      public function §9%§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0=§ |= b2internal::%!V;
         }
         else
         {
            this.§0=§ &= ~b2internal::%!V;
         }
      }
      
      public function §<3§() : Boolean
      {
         return (this.§0=§ & b2internal::%!V) == b2internal::%!V;
      }
      
      public function §4"§() : b2Contact
      {
         return this.§!!U§;
      }
      
      public function §&+§() : b2Fixture
      {
         return this.§[![§;
      }
      
      public function §0!!§() : b2Fixture
      {
         return this.§1J§;
      }
      
      public function §2H§() : void
      {
         this.§0=§ |= b2internal::8!@;
      }
      
      b2internal function §>[§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§0=§ = b2internal::%!V;
         if(!param1 || !param2)
         {
            this.§[![§ = null;
            this.§1J§ = null;
            return;
         }
         if(param1.§2J§() || param2.§2J§())
         {
            this.§0=§ |= b2internal:: `;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§1k§() != b2Body.b2_dynamicBody || _loc3_.§3!?§() || _loc4_.§1k§() != b2Body.b2_dynamicBody || _loc4_.§3!?§())
         {
            this.§0=§ |= b2internal::%E;
         }
         this.§[![§ = param1;
         this.§1J§ = param2;
         this.§%Q§.§6p§ = 0;
         this.§4=§ = null;
         this.§!!U§ = null;
         this.§;!=§.§'4§ = null;
         this.§;!=§.§',§ = null;
         this.§;!=§.§+!P§ = null;
         this.§;!=§.§5n§ = null;
         this.§=r§.§'4§ = null;
         this.§=r§.§',§ = null;
         this.§=r§.§+!P§ = null;
         this.§=r§.§5n§ = null;
      }
      
      b2internal function §8!1§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§8+§;
         this.§8+§ = this.§%Q§;
         this.§%Q§ = _loc2_;
         this.§0=§ |= b2internal::%!V;
         var _loc3_:* = false;
         var _loc4_:* = (this.§0=§ & b2internal::=9) == b2internal::=9;
         var _loc5_:b2Body = this.§[![§.m_body;
         var _loc6_:b2Body = this.§1J§.m_body;
         var _loc7_:Boolean = this.§[![§.§&!-§.§13§(this.§1J§.§&!-§);
         if(this.§0=§ & b2internal:: `)
         {
            if(_loc7_)
            {
               _loc8_ = this.§[![§.GetShape();
               _loc9_ = this.§1J§.GetShape();
               _loc10_ = _loc5_.§`!E§();
               _loc11_ = _loc6_.§`!E§();
               _loc3_ = Boolean(b2Shape.§13§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§%Q§.§6p§ = 0;
         }
         else
         {
            if(_loc5_.§1k§() != b2Body.b2_dynamicBody || _loc5_.§3!?§() || _loc6_.§1k§() != b2Body.b2_dynamicBody || _loc6_.§3!?§())
            {
               this.§0=§ |= b2internal::%E;
            }
            else
            {
               this.§0=§ &= ~b2internal::%E;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§%Q§.§6p§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§%Q§.§6p§)
               {
                  (_loc13_ = this.§%Q§.§1!§[_loc12_]).§,!5§ = 0;
                  _loc13_.§"!=§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§8+§.§6p§)
                  {
                     if((_loc16_ = this.§8+§.§1!§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§,!5§ = _loc16_.§,!5§;
                        _loc13_.§"!=§ = _loc16_.§"!=§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§%Q§.§6p§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§0=§ |= b2internal::=9;
         }
         else
         {
            this.§0=§ &= ~b2internal::=9;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§0=§ & b2internal:: `) == 0)
         {
            param1.PreSolve(this,this.§8+§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §]1§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §`!=§.§^!F§.Set(this.§[![§.GetShape());
         §`!=§.§`!S§.Set(this.§1J§.GetShape());
         §`!=§.§>_§ = param1;
         §`!=§.§`%§ = param2;
         §`!=§.§;!b§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§?!K§(§`!=§);
      }
   }
}
