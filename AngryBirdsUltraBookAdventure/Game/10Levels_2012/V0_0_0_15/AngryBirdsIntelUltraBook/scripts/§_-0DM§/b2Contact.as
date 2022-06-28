package §_-0DM§
{
   import §_-03n§.b2Shape;
   import §_-5§.b2Settings;
   import §_-5§.b2internal;
   import §_-Yp§.b2Sweep;
   import §_-Yp§.b2Transform;
   import §_-aU§.b2Body;
   import §_-aU§.b2ContactListener;
   import §_-aU§.b2Fixture;
   import §_-gE§.b2ContactID;
   import §_-gE§.b2Manifold;
   import §_-gE§.b2ManifoldPoint;
   import §_-gE§.b2TOIInput;
   import §_-gE§.b2TimeOfImpact;
   import §_-gE§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-0D5§:uint = 1;
      
      b2internal static var §_-0Em§:uint = 2;
      
      b2internal static var §_-0AI§:uint = 4;
      
      b2internal static var §_-P1§:uint = 8;
      
      b2internal static var §_-an§:uint = 16;
      
      b2internal static var §_-8y§:uint = 32;
      
      b2internal static var §_-b1§:uint = 64;
      
      private static var §_-vs§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-7R§:uint;
      
      b2internal var §_-021§:b2Contact;
      
      b2internal var §_-oz§:b2Contact;
      
      b2internal var §_-a-§:b2ContactEdge;
      
      b2internal var §_-Gh§:b2ContactEdge;
      
      b2internal var §_-f-§:b2Fixture;
      
      b2internal var §_-N-§:b2Fixture;
      
      b2internal var §_-07u§:b2Manifold;
      
      b2internal var §_-y1§:b2Manifold;
      
      b2internal var §_-07y§:Number;
      
      public function b2Contact()
      {
         this.§_-a-§ = new b2ContactEdge();
         this.§_-Gh§ = new b2ContactEdge();
         this.§_-07u§ = new b2Manifold();
         this.§_-y1§ = new b2Manifold();
         super();
      }
      
      public function §_-4f§() : b2Manifold
      {
         return this.§_-07u§;
      }
      
      public function §null §(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-f-§.GetBody();
         var _loc3_:b2Body = this.§_-N-§.GetBody();
         var _loc4_:b2Shape = this.§_-f-§.GetShape();
         var _loc5_:b2Shape = this.§_-N-§.GetShape();
         param1.§_-bL§(this.§_-07u§,_loc2_.§_-tg§(),_loc4_.§_-0CZ§,_loc3_.§_-tg§(),_loc5_.§_-0CZ§);
      }
      
      public function §_-bU§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-an) == b2internal::_-an;
      }
      
      public function §_-05O§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-0Em) == b2internal::_-0Em;
      }
      
      public function §_-Jq§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-7R§ |= b2internal::_-0D5;
         }
         else
         {
            this.§_-7R§ &= ~b2internal::_-0D5;
         }
      }
      
      public function §_-07V§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-0D5) == b2internal::_-0D5;
      }
      
      public function §_-lG§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-7R§ |= b2internal::_-8y;
         }
         else
         {
            this.§_-7R§ &= ~b2internal::_-8y;
         }
      }
      
      public function §_-0Dw§() : Boolean
      {
         return (this.§_-7R§ & b2internal::_-8y) == b2internal::_-8y;
      }
      
      public function §_-02g§() : b2Contact
      {
         return this.§_-oz§;
      }
      
      public function §_-k-§() : b2Fixture
      {
         return this.§_-f-§;
      }
      
      public function §_-7G§() : b2Fixture
      {
         return this.§_-N-§;
      }
      
      public function §_-FN§() : void
      {
         this.§_-7R§ |= b2internal::_-b1;
      }
      
      b2internal function §_-8Y§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-7R§ = b2internal::_-8y;
         if(!param1 || !param2)
         {
            this.§_-f-§ = null;
            this.§_-N-§ = null;
            return;
         }
         if(param1.§_-07V§() || param2.§_-07V§())
         {
            this.§_-7R§ |= b2internal::_-0D5;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-oF§() != b2Body.b2_dynamicBody || _loc3_.§_-02U§() || _loc4_.§_-oF§() != b2Body.b2_dynamicBody || _loc4_.§_-02U§())
         {
            this.§_-7R§ |= b2internal::_-0Em;
         }
         this.§_-f-§ = param1;
         this.§_-N-§ = param2;
         this.§_-07u§.§_-XO§ = 0;
         this.§_-021§ = null;
         this.§_-oz§ = null;
         this.§_-a-§.§_-20§ = null;
         this.§_-a-§.§_-05Y§ = null;
         this.§_-a-§.§_-Oh§ = null;
         this.§_-a-§.§_-TK§ = null;
         this.§_-Gh§.§_-20§ = null;
         this.§_-Gh§.§_-05Y§ = null;
         this.§_-Gh§.§_-Oh§ = null;
         this.§_-Gh§.§_-TK§ = null;
      }
      
      b2internal function §_-Gb§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-y1§;
         this.§_-y1§ = this.§_-07u§;
         this.§_-07u§ = _loc2_;
         this.§_-7R§ |= b2internal::_-8y;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-7R§ & b2internal::_-an) == b2internal::_-an;
         var _loc5_:b2Body = this.§_-f-§.m_body;
         var _loc6_:b2Body = this.§_-N-§.m_body;
         var _loc7_:Boolean = this.§_-f-§.§_-bn§.§_-Rd§(this.§_-N-§.§_-bn§);
         if(this.§_-7R§ & b2internal::_-0D5)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-f-§.GetShape();
               _loc9_ = this.§_-N-§.GetShape();
               _loc10_ = _loc5_.§_-tg§();
               _loc11_ = _loc6_.§_-tg§();
               _loc3_ = Boolean(b2Shape.§_-Rd§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-07u§.§_-XO§ = 0;
         }
         else
         {
            if(_loc5_.§_-oF§() != b2Body.b2_dynamicBody || _loc5_.§_-02U§() || _loc6_.§_-oF§() != b2Body.b2_dynamicBody || _loc6_.§_-02U§())
            {
               this.§_-7R§ |= b2internal::_-0Em;
            }
            else
            {
               this.§_-7R§ &= ~b2internal::_-0Em;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-07u§.§_-XO§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-07u§.§_-XO§)
               {
                  (_loc13_ = this.§_-07u§.§_-Eg§[_loc12_]).§_-nd§ = 0;
                  _loc13_.§_-sw§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-y1§.§_-XO§)
                  {
                     if((_loc16_ = this.§_-y1§.§_-Eg§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-nd§ = _loc16_.§_-nd§;
                        _loc13_.§_-sw§ = _loc16_.§_-sw§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-07u§.§_-XO§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-7R§ |= b2internal::_-an;
         }
         else
         {
            this.§_-7R§ &= ~b2internal::_-an;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-7R§ & b2internal::_-0D5) == 0)
         {
            param1.PreSolve(this,this.§_-y1§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-gV§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-vs§.§_-05Z§.Set(this.§_-f-§.GetShape());
         §_-vs§.§_-l4§.Set(this.§_-N-§.GetShape());
         §_-vs§.§_-04k§ = param1;
         §_-vs§.§_-07c§ = param2;
         §_-vs§.§_-PB§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-e9§(§_-vs§);
      }
   }
}
