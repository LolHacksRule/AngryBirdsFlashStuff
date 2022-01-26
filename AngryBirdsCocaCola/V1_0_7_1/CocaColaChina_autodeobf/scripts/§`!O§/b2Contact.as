package §`!O§
{
   import § Y§.b2ContactID;
   import § Y§.b2Manifold;
   import § Y§.b2ManifoldPoint;
   import § Y§.b2TOIInput;
   import § Y§.b2TimeOfImpact;
   import § Y§.b2WorldManifold;
   import §#!M§.b2Settings;
   import §#!M§.b2internal;
   import §4U§.b2Body;
   import §4U§.b2ContactListener;
   import §4U§.b2Fixture;
   import §<!8§.b2Sweep;
   import §<!8§.b2Transform;
   import §>![§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §<m§:uint = 1;
      
      b2internal static var § M§:uint = 2;
      
      b2internal static var §5&§:uint = 4;
      
      b2internal static var §41§:uint = 8;
      
      b2internal static var §&!9§:uint = 16;
      
      b2internal static var §3!^§:uint = 32;
      
      b2internal static var §3"§:uint = 64;
      
      private static var §7v§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §^!J§:uint;
      
      b2internal var §4d§:b2Contact;
      
      b2internal var §^!B§:b2Contact;
      
      b2internal var §<`§:b2ContactEdge;
      
      b2internal var §',§:b2ContactEdge;
      
      b2internal var §'c§:b2Fixture;
      
      b2internal var §"!^§:b2Fixture;
      
      b2internal var §^v§:b2Manifold;
      
      b2internal var §>!D§:b2Manifold;
      
      b2internal var §;y§:Number;
      
      public function b2Contact()
      {
         this.§<`§ = new b2ContactEdge();
         this.§',§ = new b2ContactEdge();
         this.§^v§ = new b2Manifold();
         this.§>!D§ = new b2Manifold();
         super();
      }
      
      public function §;C§() : b2Manifold
      {
         return this.§^v§;
      }
      
      public function §`2§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§'c§.GetBody();
         var _loc3_:b2Body = this.§"!^§.GetBody();
         var _loc4_:b2Shape = this.§'c§.GetShape();
         var _loc5_:b2Shape = this.§"!^§.GetShape();
         param1.§,?§(this.§^v§,_loc2_.§1!J§(),_loc4_.§2B§,_loc3_.§1!J§(),_loc5_.§2B§);
      }
      
      public function §9m§() : Boolean
      {
         return (this.§^!J§ & b2internal::&!9) == b2internal::&!9;
      }
      
      public function §>>§() : Boolean
      {
         return (this.§^!J§ & b2internal:: M) == b2internal:: M;
      }
      
      public function §#!]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!J§ |= b2internal::<m;
         }
         else
         {
            this.§^!J§ &= ~b2internal::<m;
         }
      }
      
      public function §]y§() : Boolean
      {
         return (this.§^!J§ & b2internal::<m) == b2internal::<m;
      }
      
      public function §8!'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^!J§ |= b2internal::3!^;
         }
         else
         {
            this.§^!J§ &= ~b2internal::3!^;
         }
      }
      
      public function §=!S§() : Boolean
      {
         return (this.§^!J§ & b2internal::3!^) == b2internal::3!^;
      }
      
      public function §#!3§() : b2Contact
      {
         return this.§^!B§;
      }
      
      public function §7#§() : b2Fixture
      {
         return this.§'c§;
      }
      
      public function § O§() : b2Fixture
      {
         return this.§"!^§;
      }
      
      public function §'+§() : void
      {
         this.§^!J§ |= b2internal::3";
      }
      
      b2internal function §&4§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§^!J§ = b2internal::3!^;
         if(!param1 || !param2)
         {
            this.§'c§ = null;
            this.§"!^§ = null;
            return;
         }
         if(param1.§]y§() || param2.§]y§())
         {
            this.§^!J§ |= b2internal::<m;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§6`§() != b2Body.b2_dynamicBody || _loc3_.§"K§() || _loc4_.§6`§() != b2Body.b2_dynamicBody || _loc4_.§"K§())
         {
            this.§^!J§ |= b2internal:: M;
         }
         this.§'c§ = param1;
         this.§"!^§ = param2;
         this.§^v§.§!L§ = 0;
         this.§4d§ = null;
         this.§^!B§ = null;
         this.§<`§.§<l§ = null;
         this.§<`§.§8g§ = null;
         this.§<`§.§+!Q§ = null;
         this.§<`§.§<!H§ = null;
         this.§',§.§<l§ = null;
         this.§',§.§8g§ = null;
         this.§',§.§+!Q§ = null;
         this.§',§.§<!H§ = null;
      }
      
      b2internal function §7!=§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§>!D§;
         this.§>!D§ = this.§^v§;
         this.§^v§ = _loc2_;
         this.§^!J§ |= b2internal::3!^;
         var _loc3_:* = false;
         var _loc4_:* = (this.§^!J§ & b2internal::&!9) == b2internal::&!9;
         var _loc5_:b2Body = this.§'c§.m_body;
         var _loc6_:b2Body = this.§"!^§.m_body;
         var _loc7_:Boolean = this.§'c§.§<!Y§.§#!J§(this.§"!^§.§<!Y§);
         if(this.§^!J§ & b2internal::<m)
         {
            if(_loc7_)
            {
               _loc8_ = this.§'c§.GetShape();
               _loc9_ = this.§"!^§.GetShape();
               _loc10_ = _loc5_.§1!J§();
               _loc11_ = _loc6_.§1!J§();
               _loc3_ = Boolean(b2Shape.§#!J§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§^v§.§!L§ = 0;
         }
         else
         {
            if(_loc5_.§6`§() != b2Body.b2_dynamicBody || _loc5_.§"K§() || _loc6_.§6`§() != b2Body.b2_dynamicBody || _loc6_.§"K§())
            {
               this.§^!J§ |= b2internal:: M;
            }
            else
            {
               this.§^!J§ &= ~b2internal:: M;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§^v§.§!L§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§^v§.§!L§)
               {
                  (_loc13_ = this.§^v§.§>!B§[_loc12_]).§6z§ = 0;
                  _loc13_.§&M§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§>!D§.§!L§)
                  {
                     if((_loc16_ = this.§>!D§.§>!B§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§6z§ = _loc16_.§6z§;
                        _loc13_.§&M§ = _loc16_.§&M§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§^v§.§!L§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§^!J§ |= b2internal::&!9;
         }
         else
         {
            this.§^!J§ &= ~b2internal::&!9;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§^!J§ & b2internal::<m) == 0)
         {
            param1.PreSolve(this,this.§>!D§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §0c§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §7v§.§+!L§.Set(this.§'c§.GetShape());
         §7v§.§%!-§.Set(this.§"!^§.GetShape());
         §7v§.§%V§ = param1;
         §7v§.§8!J§ = param2;
         §7v§.§'§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§5!-§(§7v§);
      }
   }
}
