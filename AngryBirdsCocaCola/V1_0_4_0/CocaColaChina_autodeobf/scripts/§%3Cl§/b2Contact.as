package §<l§
{
   import §&!L§.b2Sweep;
   import §&!L§.b2Transform;
   import §-!<§.b2Shape;
   import §3f§.b2Body;
   import §3f§.b2ContactListener;
   import §3f§.b2Fixture;
   import §7!C§.b2Settings;
   import §7!C§.b2internal;
   import §=!!§.b2ContactID;
   import §=!!§.b2Manifold;
   import §=!!§.b2ManifoldPoint;
   import §=!!§.b2TOIInput;
   import §=!!§.b2TimeOfImpact;
   import §=!!§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §5&§:uint = 1;
      
      b2internal static var §41§:uint = 2;
      
      b2internal static var §&!9§:uint = 4;
      
      b2internal static var §3!^§:uint = 8;
      
      b2internal static var §3"§:uint = 16;
      
      b2internal static var §7v§:uint = 32;
      
      b2internal static var §,?§:uint = 64;
      
      private static var §3U§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §^!B§:uint;
      
      b2internal var §<`§:b2Contact;
      
      b2internal var §',§:b2Contact;
      
      b2internal var §'c§:b2ContactEdge;
      
      b2internal var §"!^§:b2ContactEdge;
      
      b2internal var §^v§:b2Fixture;
      
      b2internal var §>!D§:b2Fixture;
      
      b2internal var §;y§:b2Manifold;
      
      b2internal var §<m§:b2Manifold;
      
      b2internal var § M§:Number;
      
      public function b2Contact()
      {
         this.§'c§ = new b2ContactEdge();
         this.§"!^§ = new b2ContactEdge();
         this.§;y§ = new b2Manifold();
         this.§<m§ = new b2Manifold();
         super();
      }
      
      public function §9m§() : b2Manifold
      {
         return this.§;y§;
      }
      
      public function §>>§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§^v§.GetBody();
         var _loc3_:b2Body = this.§>!D§.GetBody();
         var _loc4_:b2Shape = this.§^v§.GetShape();
         var _loc5_:b2Shape = this.§>!D§.GetShape();
         param1.§1!5§(this.§;y§,_loc2_.§ g§(),_loc4_.§=W§,_loc3_.§ g§(),_loc5_.§=W§);
      }
      
      public function §#!]§() : Boolean
      {
         return (this.§^!B§ & b2internal::3") == b2internal::3";
      }
      
      public function §]y§() : Boolean
      {
         return (this.§^!B§ & b2internal::41) == b2internal::41;
      }
      
      public function §8!'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!B§ |= b2internal::5&;
         }
         else
         {
            this.§^!B§ &= ~b2internal::5&;
         }
      }
      
      public function §=!S§() : Boolean
      {
         return (this.§^!B§ & b2internal::5&) == b2internal::5&;
      }
      
      public function §#!3§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!B§ |= b2internal::7v;
         }
         else
         {
            this.§^!B§ &= ~b2internal::7v;
         }
      }
      
      public function §7#§() : Boolean
      {
         return (this.§^!B§ & b2internal::7v) == b2internal::7v;
      }
      
      public function § O§() : b2Contact
      {
         return this.§',§;
      }
      
      public function §'+§() : b2Fixture
      {
         return this.§^v§;
      }
      
      public function §&4§() : b2Fixture
      {
         return this.§>!D§;
      }
      
      public function §7!=§() : void
      {
         this.§^!B§ |= b2internal::,?;
      }
      
      b2internal function §0c§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§^!B§ = b2internal::7v;
         if(!param1 || !param2)
         {
            this.§^v§ = null;
            this.§>!D§ = null;
            return;
         }
         if(param1.§=!S§() || param2.§=!S§())
         {
            this.§^!B§ |= b2internal::5&;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§6`§() != b2Body.b2_dynamicBody || _loc3_.§<!9§() || _loc4_.§6`§() != b2Body.b2_dynamicBody || _loc4_.§<!9§())
         {
            this.§^!B§ |= b2internal::41;
         }
         this.§^v§ = param1;
         this.§>!D§ = param2;
         this.§;y§.§#!H§ = 0;
         this.§<`§ = null;
         this.§',§ = null;
         this.§'c§.§+!Q§ = null;
         this.§'c§.§;C§ = null;
         this.§'c§.§`2§ = null;
         this.§'c§.§8g§ = null;
         this.§"!^§.§+!Q§ = null;
         this.§"!^§.§;C§ = null;
         this.§"!^§.§`2§ = null;
         this.§"!^§.§8g§ = null;
      }
      
      b2internal function §^!J§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§<m§;
         this.§<m§ = this.§;y§;
         this.§;y§ = _loc2_;
         this.§^!B§ |= b2internal::7v;
         var _loc3_:* = false;
         var _loc4_:* = (this.§^!B§ & b2internal::3") == b2internal::3";
         var _loc5_:b2Body = this.§^v§.m_body;
         var _loc6_:b2Body = this.§>!D§.m_body;
         var _loc7_:Boolean = this.§^v§.§=!R§.§-2§(this.§>!D§.§=!R§);
         if(this.§^!B§ & b2internal::5&)
         {
            if(_loc7_)
            {
               _loc8_ = this.§^v§.GetShape();
               _loc9_ = this.§>!D§.GetShape();
               _loc10_ = _loc5_.§ g§();
               _loc11_ = _loc6_.§ g§();
               _loc3_ = Boolean(b2Shape.§-2§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§;y§.§#!H§ = 0;
         }
         else
         {
            if(_loc5_.§6`§() != b2Body.b2_dynamicBody || _loc5_.§<!9§() || _loc6_.§6`§() != b2Body.b2_dynamicBody || _loc6_.§<!9§())
            {
               this.§^!B§ |= b2internal::41;
            }
            else
            {
               this.§^!B§ &= ~b2internal::41;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§;y§.§#!H§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§;y§.§#!H§)
               {
                  (_loc13_ = this.§;y§.§7i§[_loc12_]).§&M§ = 0;
                  _loc13_.§']§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§<m§.§#!H§)
                  {
                     if((_loc16_ = this.§<m§.§7i§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§&M§ = _loc16_.§&M§;
                        _loc13_.§']§ = _loc16_.§']§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§;y§.§#!H§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§^!B§ |= b2internal::3";
         }
         else
         {
            this.§^!B§ &= ~b2internal::3";
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§^!B§ & b2internal::5&) == 0)
         {
            param1.PreSolve(this,this.§<m§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §4d§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §3U§.§%!-§.Set(this.§^v§.GetShape());
         §3U§.§ !D§.Set(this.§>!D§.GetShape());
         §3U§.§8!J§ = param1;
         §3U§.§'§ = param2;
         §3U§.§`1§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§%V§(§3U§);
      }
   }
}
