package §8!D§
{
   import §-!G§.b2Sweep;
   import §-!G§.b2Transform;
   import §7"'§.b2Settings;
   import §7"'§.b2internal;
   import §<!j§.b2Shape;
   import §=9§.b2Body;
   import §=9§.b2ContactListener;
   import §=9§.b2Fixture;
   import §[!Z§.b2ContactID;
   import §[!Z§.b2Manifold;
   import §[!Z§.b2ManifoldPoint;
   import §[!Z§.b2TOIInput;
   import §[!Z§.b2TimeOfImpact;
   import §[!Z§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §,f§:uint = 1;
      
      b2internal static var §+" §:uint = 2;
      
      b2internal static var §&!Z§:uint = 4;
      
      b2internal static var §7"5§:uint = 8;
      
      b2internal static var §5m§:uint = 16;
      
      b2internal static var §1V§:uint = 32;
      
      b2internal static var §['§:uint = 64;
      
      private static var §<J§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §1z§:uint;
      
      b2internal var §7%§:b2Contact;
      
      b2internal var §1""§:b2Contact;
      
      b2internal var § !C§:b2ContactEdge;
      
      b2internal var §>!T§:b2ContactEdge;
      
      b2internal var §'!$§:b2Fixture;
      
      b2internal var §>!#§:b2Fixture;
      
      b2internal var §7!W§:b2Manifold;
      
      b2internal var §@"+§:b2Manifold;
      
      b2internal var §-!J§:Number;
      
      public function b2Contact()
      {
         this.§ !C§ = new b2ContactEdge();
         this.§>!T§ = new b2ContactEdge();
         this.§7!W§ = new b2Manifold();
         this.§@"+§ = new b2Manifold();
         super();
      }
      
      public function §[x§() : b2Manifold
      {
         return this.§7!W§;
      }
      
      public function §>!A§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§'!$§.GetBody();
         var _loc3_:b2Body = this.§>!#§.GetBody();
         var _loc4_:b2Shape = this.§'!$§.GetShape();
         var _loc5_:b2Shape = this.§>!#§.GetShape();
         param1.§+"'§(this.§7!W§,_loc2_.§5G§(),_loc4_.§7!1§,_loc3_.§5G§(),_loc5_.§7!1§);
      }
      
      public function §6r§() : Boolean
      {
         return (this.§1z§ & b2internal::5m) == b2internal::5m;
      }
      
      public function §%!k§() : Boolean
      {
         return (this.§1z§ & b2internal::+" ) == b2internal::+" ;
      }
      
      public function §1"4§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1z§ |= b2internal::,f;
         }
         else
         {
            this.§1z§ &= ~b2internal::,f;
         }
      }
      
      public function §?x§() : Boolean
      {
         return (this.§1z§ & b2internal::,f) == b2internal::,f;
      }
      
      public function § !X§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1z§ |= b2internal::1V;
         }
         else
         {
            this.§1z§ &= ~b2internal::1V;
         }
      }
      
      public function §5U§() : Boolean
      {
         return (this.§1z§ & b2internal::1V) == b2internal::1V;
      }
      
      public function §9!]§() : b2Contact
      {
         return this.§1""§;
      }
      
      public function §1!j§() : b2Fixture
      {
         return this.§'!$§;
      }
      
      public function §!!'§() : b2Fixture
      {
         return this.§>!#§;
      }
      
      public function §[!,§() : void
      {
         this.§1z§ |= b2internal::[';
      }
      
      b2internal function §8d§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§1z§ = b2internal::1V;
         if(!param1 || !param2)
         {
            this.§'!$§ = null;
            this.§>!#§ = null;
            return;
         }
         if(param1.§?x§() || param2.§?x§())
         {
            this.§1z§ |= b2internal::,f;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.get() != b2Body.b2_dynamicBody || _loc3_.§&"4§() || _loc4_.get() != b2Body.b2_dynamicBody || _loc4_.§&"4§())
         {
            this.§1z§ |= b2internal::+" ;
         }
         this.§'!$§ = param1;
         this.§>!#§ = param2;
         this.§7!W§.§[!3§ = 0;
         this.§7%§ = null;
         this.§1""§ = null;
         this.§ !C§.§@K§ = null;
         this.§ !C§.§7! § = null;
         this.§ !C§.§ J§ = null;
         this.§ !C§.§?g§ = null;
         this.§>!T§.§@K§ = null;
         this.§>!T§.§7! § = null;
         this.§>!T§.§ J§ = null;
         this.§>!T§.§?g§ = null;
      }
      
      b2internal function §8"5§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§@"+§;
         this.§@"+§ = this.§7!W§;
         this.§7!W§ = _loc2_;
         this.§1z§ |= b2internal::1V;
         var _loc3_:* = false;
         var _loc4_:* = (this.§1z§ & b2internal::5m) == b2internal::5m;
         var _loc5_:b2Body = this.§'!$§.m_body;
         var _loc6_:b2Body = this.§>!#§.m_body;
         var _loc7_:Boolean = this.§'!$§.§import§.§<!O§(this.§>!#§.§import§);
         if(this.§1z§ & b2internal::,f)
         {
            if(_loc7_)
            {
               _loc8_ = this.§'!$§.GetShape();
               _loc9_ = this.§>!#§.GetShape();
               _loc10_ = _loc5_.§5G§();
               _loc11_ = _loc6_.§5G§();
               _loc3_ = Boolean(b2Shape.§<!O§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§7!W§.§[!3§ = 0;
         }
         else
         {
            if(_loc5_.get() != b2Body.b2_dynamicBody || _loc5_.§&"4§() || _loc6_.get() != b2Body.b2_dynamicBody || _loc6_.§&"4§())
            {
               this.§1z§ |= b2internal::+" ;
            }
            else
            {
               this.§1z§ &= ~b2internal::+" ;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§7!W§.§[!3§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§7!W§.§[!3§)
               {
                  (_loc13_ = this.§7!W§.§3J§[_loc12_]).§'!u§ = 0;
                  _loc13_.§3A§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§@"+§.§[!3§)
                  {
                     if((_loc16_ = this.§@"+§.§3J§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§'!u§ = _loc16_.§'!u§;
                        _loc13_.§3A§ = _loc16_.§3A§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§7!W§.§[!3§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§1z§ |= b2internal::5m;
         }
         else
         {
            this.§1z§ &= ~b2internal::5m;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§1z§ & b2internal::,f) == 0)
         {
            param1.PreSolve(this,this.§@"+§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §8!?§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §<J§.§=!#§.Set(this.§'!$§.GetShape());
         §<J§.§ 3§.Set(this.§>!#§.GetShape());
         §<J§.§^!k§ = param1;
         §<J§.§=!y§ = param2;
         §<J§.§,"$§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§>`§(§<J§);
      }
   }
}
