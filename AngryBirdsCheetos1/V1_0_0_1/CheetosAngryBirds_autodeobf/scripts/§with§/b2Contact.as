package §with§
{
   import §_-b4§.b2Settings;
   import §_-b4§.b2internal;
   import §_-cG§.b2Shape;
   import §_-cP§.b2Sweep;
   import §_-cP§.b2Transform;
   import §_-yI§.b2ContactID;
   import §_-yI§.b2Manifold;
   import §_-yI§.b2ManifoldPoint;
   import §_-yI§.b2TOIInput;
   import §_-yI§.b2TimeOfImpact;
   import §_-yI§.b2WorldManifold;
   import §try§.b2Body;
   import §try§.b2ContactListener;
   import §try§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-Lv§:uint = 1;
      
      b2internal static var §_-aI§:uint = 2;
      
      b2internal static var §_-J§:uint = 4;
      
      b2internal static var §_-Z3§:uint = 8;
      
      b2internal static var §_-WV§:uint = 16;
      
      b2internal static var §_-3B§:uint = 32;
      
      b2internal static var §_-Ti§:uint = 64;
      
      private static var §_-z0§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-L9§:uint;
      
      b2internal var §_-o2§:b2Contact;
      
      b2internal var §_-QK§:b2Contact;
      
      b2internal var §_-Iq§:b2ContactEdge;
      
      b2internal var §_-sW§:b2ContactEdge;
      
      b2internal var §_-6B§:b2Fixture;
      
      b2internal var §_-lO§:b2Fixture;
      
      b2internal var §_-Fp§:b2Manifold;
      
      b2internal var §_-47§:b2Manifold;
      
      b2internal var §_-C5§:Number;
      
      public function b2Contact()
      {
         this.§_-Iq§ = new b2ContactEdge();
         this.§_-sW§ = new b2ContactEdge();
         this.§_-Fp§ = new b2Manifold();
         this.§_-47§ = new b2Manifold();
         super();
      }
      
      public function §_-3T§() : b2Manifold
      {
         return this.§_-Fp§;
      }
      
      public function §_-XD§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-6B§.GetBody();
         var _loc3_:b2Body = this.§_-lO§.GetBody();
         var _loc4_:b2Shape = this.§_-6B§.GetShape();
         var _loc5_:b2Shape = this.§_-lO§.GetShape();
         param1.§_-Qz§(this.§_-Fp§,_loc2_.§_-KR§(),_loc4_.§_-EO§,_loc3_.§_-KR§(),_loc5_.§_-EO§);
      }
      
      public function §_-oy§() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-WV) == b2internal::_-WV;
      }
      
      public function §_-nc§() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-aI) == b2internal::_-aI;
      }
      
      public function §_-i7§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-L9§ |= b2internal::_-Lv;
         }
         else
         {
            this.§_-L9§ &= ~b2internal::_-Lv;
         }
      }
      
      public function §_-6i§() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-Lv) == b2internal::_-Lv;
      }
      
      public function §_-OK§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-L9§ |= b2internal::_-3B;
         }
         else
         {
            this.§_-L9§ &= ~b2internal::_-3B;
         }
      }
      
      public function §_-Ye§() : Boolean
      {
         return (this.§_-L9§ & b2internal::_-3B) == b2internal::_-3B;
      }
      
      public function §_-go§() : b2Contact
      {
         return this.§_-QK§;
      }
      
      public function §_-79§() : b2Fixture
      {
         return this.§_-6B§;
      }
      
      public function §_-mq§() : b2Fixture
      {
         return this.§_-lO§;
      }
      
      public function §_-nM§() : void
      {
         this.§_-L9§ |= b2internal::_-Ti;
      }
      
      b2internal function §_-Ji§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-L9§ = b2internal::_-3B;
         if(!param1 || !param2)
         {
            this.§_-6B§ = null;
            this.§_-lO§ = null;
            return;
         }
         if(param1.§_-6i§() || param2.§_-6i§())
         {
            this.§_-L9§ |= b2internal::_-Lv;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-sl§() != b2Body.b2_dynamicBody || _loc3_.§_-sV§() || _loc4_.§_-sl§() != b2Body.b2_dynamicBody || _loc4_.§_-sV§())
         {
            this.§_-L9§ |= b2internal::_-aI;
         }
         this.§_-6B§ = param1;
         this.§_-lO§ = param2;
         this.§_-Fp§.§_-KL§ = 0;
         this.§_-o2§ = null;
         this.§_-QK§ = null;
         this.§_-Iq§.§_-3P§ = null;
         this.§_-Iq§.§_-0-V§ = null;
         this.§_-Iq§.§_-TE§ = null;
         this.§_-Iq§.§_-u9§ = null;
         this.§_-sW§.§_-3P§ = null;
         this.§_-sW§.§_-0-V§ = null;
         this.§_-sW§.§_-TE§ = null;
         this.§_-sW§.§_-u9§ = null;
      }
      
      b2internal function §_-cE§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-47§;
         this.§_-47§ = this.§_-Fp§;
         this.§_-Fp§ = _loc2_;
         this.§_-L9§ |= b2internal::_-3B;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-L9§ & b2internal::_-WV) == b2internal::_-WV;
         var _loc5_:b2Body = this.§_-6B§.m_body;
         var _loc6_:b2Body = this.§_-lO§.m_body;
         var _loc7_:Boolean = this.§_-6B§.§_-f0§.§_-wT§(this.§_-lO§.§_-f0§);
         if(this.§_-L9§ & b2internal::_-Lv)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-6B§.GetShape();
               _loc9_ = this.§_-lO§.GetShape();
               _loc10_ = _loc5_.§_-KR§();
               _loc11_ = _loc6_.§_-KR§();
               _loc3_ = Boolean(b2Shape.§_-wT§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-Fp§.§_-KL§ = 0;
         }
         else
         {
            if(_loc5_.§_-sl§() != b2Body.b2_dynamicBody || _loc5_.§_-sV§() || _loc6_.§_-sl§() != b2Body.b2_dynamicBody || _loc6_.§_-sV§())
            {
               this.§_-L9§ |= b2internal::_-aI;
            }
            else
            {
               this.§_-L9§ &= ~b2internal::_-aI;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-Fp§.§_-KL§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-Fp§.§_-KL§)
               {
                  (_loc13_ = this.§_-Fp§.§_-B0§[_loc12_]).§_-vk§ = 0;
                  _loc13_.§_-kw§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-47§.§_-KL§)
                  {
                     if((_loc16_ = this.§_-47§.§_-B0§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-vk§ = _loc16_.§_-vk§;
                        _loc13_.§_-kw§ = _loc16_.§_-kw§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-Fp§.§_-KL§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-L9§ |= b2internal::_-WV;
         }
         else
         {
            this.§_-L9§ &= ~b2internal::_-WV;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-L9§ & b2internal::_-Lv) == 0)
         {
            param1.PreSolve(this,this.§_-47§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-RQ§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-z0§.§_-s1§.Set(this.§_-6B§.GetShape());
         §_-z0§.§_-vt§.Set(this.§_-lO§.GetShape());
         §_-z0§.§_-Qu§ = param1;
         §_-z0§.§_-vS§ = param2;
         §_-z0§.§_-zz§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-Ry§(§_-z0§);
      }
   }
}
