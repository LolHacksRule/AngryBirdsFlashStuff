package §3!&§
{
   import §!!B§.b2Body;
   import §!!B§.b2ContactListener;
   import §!!B§.b2Fixture;
   import §5p§.b2Shape;
   import §7S§.b2ContactID;
   import §7S§.b2Manifold;
   import §7S§.b2ManifoldPoint;
   import §7S§.b2TOIInput;
   import §7S§.b2TimeOfImpact;
   import §7S§.b2WorldManifold;
   import §;0§.b2Settings;
   import §;0§.b2internal;
   import §;U§.b2Sweep;
   import §;U§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §18§:uint = 1;
      
      b2internal static var §[!%§:uint = 2;
      
      b2internal static var §0§:uint = 4;
      
      b2internal static var §>!>§:uint = 8;
      
      b2internal static var §[![§:uint = 16;
      
      b2internal static var §6r§:uint = 32;
      
      b2internal static var §`!+§:uint = 64;
      
      private static var §,0§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §5!9§:uint;
      
      b2internal var §6+§:b2Contact;
      
      b2internal var §6!#§:b2Contact;
      
      b2internal var §4'§:b2ContactEdge;
      
      b2internal var §<!0§:b2ContactEdge;
      
      b2internal var §=N§:b2Fixture;
      
      b2internal var §?P§:b2Fixture;
      
      b2internal var §+P§:b2Manifold;
      
      b2internal var §&!+§:b2Manifold;
      
      b2internal var §"!S§:Number;
      
      public function b2Contact()
      {
         this.§4'§ = new b2ContactEdge();
         this.§<!0§ = new b2ContactEdge();
         this.§+P§ = new b2Manifold();
         this.§&!+§ = new b2Manifold();
         super();
      }
      
      public function §3a§() : b2Manifold
      {
         return this.§+P§;
      }
      
      public function §%?§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§=N§.GetBody();
         var _loc3_:b2Body = this.§?P§.GetBody();
         var _loc4_:b2Shape = this.§=N§.GetShape();
         var _loc5_:b2Shape = this.§?P§.GetShape();
         param1.§`!0§(this.§+P§,_loc2_.§4>§(),_loc4_.§8!!§,_loc3_.§4>§(),_loc5_.§8!!§);
      }
      
      public function §"!A§() : Boolean
      {
         return (this.§5!9§ & b2internal::[![) == b2internal::[![;
      }
      
      public function §#_§() : Boolean
      {
         return (this.§5!9§ & b2internal::[!%) == b2internal::[!%;
      }
      
      public function §!!]§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!9§ |= b2internal::18;
         }
         else
         {
            this.§5!9§ &= ~b2internal::18;
         }
      }
      
      public function §&!'§() : Boolean
      {
         return (this.§5!9§ & b2internal::18) == b2internal::18;
      }
      
      public function §>!&§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!9§ |= b2internal::6r;
         }
         else
         {
            this.§5!9§ &= ~b2internal::6r;
         }
      }
      
      public function §6b§() : Boolean
      {
         return (this.§5!9§ & b2internal::6r) == b2internal::6r;
      }
      
      public function §3q§() : b2Contact
      {
         return this.§6!#§;
      }
      
      public function §-!V§() : b2Fixture
      {
         return this.§=N§;
      }
      
      public function §0&§() : b2Fixture
      {
         return this.§?P§;
      }
      
      public function §4y§() : void
      {
         this.§5!9§ |= b2internal::`!+;
      }
      
      b2internal function §9-§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§5!9§ = b2internal::6r;
         if(!param1 || !param2)
         {
            this.§=N§ = null;
            this.§?P§ = null;
            return;
         }
         if(param1.§&!'§() || param2.§&!'§())
         {
            this.§5!9§ |= b2internal::18;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§9o§() != b2Body.b2_dynamicBody || _loc3_.§@#§() || _loc4_.§9o§() != b2Body.b2_dynamicBody || _loc4_.§@#§())
         {
            this.§5!9§ |= b2internal::[!%;
         }
         this.§=N§ = param1;
         this.§?P§ = param2;
         this.§+P§.§5f§ = 0;
         this.§6+§ = null;
         this.§6!#§ = null;
         this.§4'§.§ C§ = null;
         this.§4'§.§+!E§ = null;
         this.§4'§.§@!I§ = null;
         this.§4'§.§%-§ = null;
         this.§<!0§.§ C§ = null;
         this.§<!0§.§+!E§ = null;
         this.§<!0§.§@!I§ = null;
         this.§<!0§.§%-§ = null;
      }
      
      b2internal function §2!X§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§&!+§;
         this.§&!+§ = this.§+P§;
         this.§+P§ = _loc2_;
         this.§5!9§ |= b2internal::6r;
         var _loc3_:* = false;
         var _loc4_:* = (this.§5!9§ & b2internal::[![) == b2internal::[![;
         var _loc5_:b2Body = this.§=N§.m_body;
         var _loc6_:b2Body = this.§?P§.m_body;
         var _loc7_:Boolean = this.§=N§.§;X§.§=o§(this.§?P§.§;X§);
         if(this.§5!9§ & b2internal::18)
         {
            if(_loc7_)
            {
               _loc8_ = this.§=N§.GetShape();
               _loc9_ = this.§?P§.GetShape();
               _loc10_ = _loc5_.§4>§();
               _loc11_ = _loc6_.§4>§();
               _loc3_ = Boolean(b2Shape.§=o§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§+P§.§5f§ = 0;
         }
         else
         {
            if(_loc5_.§9o§() != b2Body.b2_dynamicBody || _loc5_.§@#§() || _loc6_.§9o§() != b2Body.b2_dynamicBody || _loc6_.§@#§())
            {
               this.§5!9§ |= b2internal::[!%;
            }
            else
            {
               this.§5!9§ &= ~b2internal::[!%;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§+P§.§5f§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§+P§.§5f§)
               {
                  (_loc13_ = this.§+P§.§6!_§[_loc12_]).§">§ = 0;
                  _loc13_.§@!8§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§&!+§.§5f§)
                  {
                     if((_loc16_ = this.§&!+§.§6!_§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§">§ = _loc16_.§">§;
                        _loc13_.§@!8§ = _loc16_.§@!8§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§+P§.§5f§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§5!9§ |= b2internal::[![;
         }
         else
         {
            this.§5!9§ &= ~b2internal::[![;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§5!9§ & b2internal::18) == 0)
         {
            param1.PreSolve(this,this.§&!+§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §]c§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §,0§.§,!]§.Set(this.§=N§.GetShape());
         §,0§.§#!;§.Set(this.§?P§.GetShape());
         §,0§.§[r§ = param1;
         §,0§.§;!<§ = param2;
         §,0§.§ d§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§!!J§(§,0§);
      }
   }
}
