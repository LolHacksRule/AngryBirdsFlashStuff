package §_-l7§
{
   import §_-Pu§.b2Shape;
   import §_-bA§.b2Sweep;
   import §_-bA§.b2Transform;
   import §_-mg§.b2ContactID;
   import §_-mg§.b2Manifold;
   import §_-mg§.b2ManifoldPoint;
   import §_-mg§.b2TOIInput;
   import §_-mg§.b2TimeOfImpact;
   import §_-mg§.b2WorldManifold;
   import §_-rz§.b2Settings;
   import §_-rz§.b2internal;
   import §_-vk§.b2Body;
   import §_-vk§.b2ContactListener;
   import §_-vk§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-En§:uint = 1;
      
      b2internal static var §_-92§:uint = 2;
      
      b2internal static var §_-N2§:uint = 4;
      
      b2internal static var §_-vi§:uint = 8;
      
      b2internal static var §_-yI§:uint = 16;
      
      b2internal static var §_-2S§:uint = 32;
      
      b2internal static var §_-8D§:uint = 64;
      
      private static var §_-H8§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-xk§:uint;
      
      b2internal var §_-Fg§:b2Contact;
      
      b2internal var §_-np§:b2Contact;
      
      b2internal var §_-0g§:b2ContactEdge;
      
      b2internal var §_-X§:b2ContactEdge;
      
      b2internal var §_-lE§:b2Fixture;
      
      b2internal var §_-Qr§:b2Fixture;
      
      b2internal var §_-tS§:b2Manifold;
      
      b2internal var §_-JK§:b2Manifold;
      
      b2internal var §_-2j§:Number;
      
      public function b2Contact()
      {
         this.§_-0g§ = new b2ContactEdge();
         this.§_-X§ = new b2ContactEdge();
         this.§_-tS§ = new b2Manifold();
         this.§_-JK§ = new b2Manifold();
         super();
      }
      
      public function §_-26§() : b2Manifold
      {
         return this.§_-tS§;
      }
      
      public function §_-l1§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-lE§.GetBody();
         var _loc3_:b2Body = this.§_-Qr§.GetBody();
         var _loc4_:b2Shape = this.§_-lE§.GetShape();
         var _loc5_:b2Shape = this.§_-Qr§.GetShape();
         param1.§_-95§(this.§_-tS§,_loc2_.§_-ow§(),_loc4_.§_-Cv§,_loc3_.§_-ow§(),_loc5_.§_-Cv§);
      }
      
      public function §_-gC§() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-yI) == b2internal::_-yI;
      }
      
      public function §_-c-§() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-92) == b2internal::_-92;
      }
      
      public function §_-5U§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-xk§ |= b2internal::_-En;
         }
         else
         {
            this.§_-xk§ &= ~b2internal::_-En;
         }
      }
      
      public function §_-Nn§() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-En) == b2internal::_-En;
      }
      
      public function §_-8m§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-xk§ |= b2internal::_-2S;
         }
         else
         {
            this.§_-xk§ &= ~b2internal::_-2S;
         }
      }
      
      public function §_-WO§() : Boolean
      {
         return (this.§_-xk§ & b2internal::_-2S) == b2internal::_-2S;
      }
      
      public function §_-9Y§() : b2Contact
      {
         return this.§_-np§;
      }
      
      public function §_-bX§() : b2Fixture
      {
         return this.§_-lE§;
      }
      
      public function §_-sy§() : b2Fixture
      {
         return this.§_-Qr§;
      }
      
      public function §_-HV§() : void
      {
         this.§_-xk§ |= b2internal::_-8D;
      }
      
      b2internal function §_-2d§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-xk§ = b2internal::_-2S;
         if(!param1 || !param2)
         {
            this.§_-lE§ = null;
            this.§_-Qr§ = null;
            return;
         }
         if(param1.§_-Nn§() || param2.§_-Nn§())
         {
            this.§_-xk§ |= b2internal::_-En;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-Wx§() != b2Body.b2_dynamicBody || _loc3_.§_-3N§() || _loc4_.§_-Wx§() != b2Body.b2_dynamicBody || _loc4_.§_-3N§())
         {
            this.§_-xk§ |= b2internal::_-92;
         }
         this.§_-lE§ = param1;
         this.§_-Qr§ = param2;
         this.§_-tS§.§_-HT§ = 0;
         this.§_-Fg§ = null;
         this.§_-np§ = null;
         this.§_-0g§.§_-AG§ = null;
         this.§_-0g§.§_-SO§ = null;
         this.§_-0g§.§_-PP§ = null;
         this.§_-0g§.§_-uw§ = null;
         this.§_-X§.§_-AG§ = null;
         this.§_-X§.§_-SO§ = null;
         this.§_-X§.§_-PP§ = null;
         this.§_-X§.§_-uw§ = null;
      }
      
      b2internal function §_-Ht§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-JK§;
         this.§_-JK§ = this.§_-tS§;
         this.§_-tS§ = _loc2_;
         this.§_-xk§ |= b2internal::_-2S;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-xk§ & b2internal::_-yI) == b2internal::_-yI;
         var _loc5_:b2Body = this.§_-lE§.m_body;
         var _loc6_:b2Body = this.§_-Qr§.m_body;
         var _loc7_:Boolean = this.§_-lE§.§_-pT§.§_-lP§(this.§_-Qr§.§_-pT§);
         if(this.§_-xk§ & b2internal::_-En)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-lE§.GetShape();
               _loc9_ = this.§_-Qr§.GetShape();
               _loc10_ = _loc5_.§_-ow§();
               _loc11_ = _loc6_.§_-ow§();
               _loc3_ = Boolean(b2Shape.§_-lP§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-tS§.§_-HT§ = 0;
         }
         else
         {
            if(_loc5_.§_-Wx§() != b2Body.b2_dynamicBody || _loc5_.§_-3N§() || _loc6_.§_-Wx§() != b2Body.b2_dynamicBody || _loc6_.§_-3N§())
            {
               this.§_-xk§ |= b2internal::_-92;
            }
            else
            {
               this.§_-xk§ &= ~b2internal::_-92;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-tS§.§_-HT§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-tS§.§_-HT§)
               {
                  (_loc13_ = this.§_-tS§.§_-Eb§[_loc12_]).§_-iI§ = 0;
                  _loc13_.§_-Zm§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-JK§.§_-HT§)
                  {
                     if((_loc16_ = this.§_-JK§.§_-Eb§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-iI§ = _loc16_.§_-iI§;
                        _loc13_.§_-Zm§ = _loc16_.§_-Zm§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-tS§.§_-HT§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-xk§ |= b2internal::_-yI;
         }
         else
         {
            this.§_-xk§ &= ~b2internal::_-yI;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-xk§ & b2internal::_-En) == 0)
         {
            param1.PreSolve(this,this.§_-JK§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-3X§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-H8§.§_-tt§.Set(this.§_-lE§.GetShape());
         §_-H8§.§_-co§.Set(this.§_-Qr§.GetShape());
         §_-H8§.§_-pp§ = param1;
         §_-H8§.§_-da§ = param2;
         §_-H8§.§_-zz§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-ar§(§_-H8§);
      }
   }
}
