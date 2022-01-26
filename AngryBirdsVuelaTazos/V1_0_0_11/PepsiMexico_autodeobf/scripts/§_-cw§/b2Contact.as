package §_-cw§
{
   import §_-26§.b2Shape;
   import §_-WW§.b2Body;
   import §_-WW§.b2ContactListener;
   import §_-WW§.b2Fixture;
   import §_-dx§.b2Sweep;
   import §_-dx§.b2Transform;
   import §_-iO§.b2Settings;
   import §_-iO§.b2internal;
   import §_-tK§.b2ContactID;
   import §_-tK§.b2Manifold;
   import §_-tK§.b2ManifoldPoint;
   import §_-tK§.b2TOIInput;
   import §_-tK§.b2TimeOfImpact;
   import §_-tK§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-4S§:uint = 1;
      
      b2internal static var §_-qo§:uint = 2;
      
      b2internal static var §_-MQ§:uint = 4;
      
      b2internal static var §_-aq§:uint = 8;
      
      b2internal static var §_-qR§:uint = 16;
      
      b2internal static var §_-xC§:uint = 32;
      
      b2internal static var §_-wL§:uint = 64;
      
      private static var §_-vT§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-Sr§:uint;
      
      b2internal var §_-mb§:b2Contact;
      
      b2internal var §_-Lg§:b2Contact;
      
      b2internal var §_-N3§:b2ContactEdge;
      
      b2internal var §_-kg§:b2ContactEdge;
      
      b2internal var §_-Ny§:b2Fixture;
      
      b2internal var §_-83§:b2Fixture;
      
      b2internal var §_-Er§:b2Manifold;
      
      b2internal var §_-ue§:b2Manifold;
      
      b2internal var §_-xM§:Number;
      
      public function b2Contact()
      {
         this.§_-N3§ = new b2ContactEdge();
         this.§_-kg§ = new b2ContactEdge();
         this.§_-Er§ = new b2Manifold();
         this.§_-ue§ = new b2Manifold();
         super();
      }
      
      public function §_-XR§() : b2Manifold
      {
         return this.§_-Er§;
      }
      
      public function §_-Xn§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-Ny§.GetBody();
         var _loc3_:b2Body = this.§_-83§.GetBody();
         var _loc4_:b2Shape = this.§_-Ny§.GetShape();
         var _loc5_:b2Shape = this.§_-83§.GetShape();
         param1.§_-t1§(this.§_-Er§,_loc2_.§_-LW§(),_loc4_.§_-8z§,_loc3_.§_-LW§(),_loc5_.§_-8z§);
      }
      
      public function §_-2W§() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-qR) == b2internal::_-qR;
      }
      
      public function §_-0w§() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-qo) == b2internal::_-qo;
      }
      
      public function §_-Hy§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Sr§ |= b2internal::_-4S;
         }
         else
         {
            this.§_-Sr§ &= ~b2internal::_-4S;
         }
      }
      
      public function §_-gA§() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-4S) == b2internal::_-4S;
      }
      
      public function §_-Bw§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Sr§ |= b2internal::_-xC;
         }
         else
         {
            this.§_-Sr§ &= ~b2internal::_-xC;
         }
      }
      
      public function §_-CN§() : Boolean
      {
         return (this.§_-Sr§ & b2internal::_-xC) == b2internal::_-xC;
      }
      
      public function §_-7P§() : b2Contact
      {
         return this.§_-Lg§;
      }
      
      public function §_-8a§() : b2Fixture
      {
         return this.§_-Ny§;
      }
      
      public function §_-tA§() : b2Fixture
      {
         return this.§_-83§;
      }
      
      public function §_-1l§() : void
      {
         this.§_-Sr§ |= b2internal::_-wL;
      }
      
      b2internal function §_-Mm§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-Sr§ = b2internal::_-xC;
         if(!param1 || !param2)
         {
            this.§_-Ny§ = null;
            this.§_-83§ = null;
            return;
         }
         if(param1.§_-gA§() || param2.§_-gA§())
         {
            this.§_-Sr§ |= b2internal::_-4S;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-AY§() != b2Body.b2_dynamicBody || _loc3_.§_-2u§() || _loc4_.§_-AY§() != b2Body.b2_dynamicBody || _loc4_.§_-2u§())
         {
            this.§_-Sr§ |= b2internal::_-qo;
         }
         this.§_-Ny§ = param1;
         this.§_-83§ = param2;
         this.§_-Er§.§_-sx§ = 0;
         this.§_-mb§ = null;
         this.§_-Lg§ = null;
         this.§_-N3§.§_-xH§ = null;
         this.§_-N3§.§_-Kz§ = null;
         this.§_-N3§.§_-70§ = null;
         this.§_-N3§.§_-ik§ = null;
         this.§_-kg§.§_-xH§ = null;
         this.§_-kg§.§_-Kz§ = null;
         this.§_-kg§.§_-70§ = null;
         this.§_-kg§.§_-ik§ = null;
      }
      
      b2internal function §_-XS§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-ue§;
         this.§_-ue§ = this.§_-Er§;
         this.§_-Er§ = _loc2_;
         this.§_-Sr§ |= b2internal::_-xC;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-Sr§ & b2internal::_-qR) == b2internal::_-qR;
         var _loc5_:b2Body = this.§_-Ny§.m_body;
         var _loc6_:b2Body = this.§_-83§.m_body;
         var _loc7_:Boolean = this.§_-Ny§.§_-gf§.§_-9u§(this.§_-83§.§_-gf§);
         if(this.§_-Sr§ & b2internal::_-4S)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-Ny§.GetShape();
               _loc9_ = this.§_-83§.GetShape();
               _loc10_ = _loc5_.§_-LW§();
               _loc11_ = _loc6_.§_-LW§();
               _loc3_ = Boolean(b2Shape.§_-9u§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-Er§.§_-sx§ = 0;
         }
         else
         {
            if(_loc5_.§_-AY§() != b2Body.b2_dynamicBody || _loc5_.§_-2u§() || _loc6_.§_-AY§() != b2Body.b2_dynamicBody || _loc6_.§_-2u§())
            {
               this.§_-Sr§ |= b2internal::_-qo;
            }
            else
            {
               this.§_-Sr§ &= ~b2internal::_-qo;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-Er§.§_-sx§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-Er§.§_-sx§)
               {
                  (_loc13_ = this.§_-Er§.§_-of§[_loc12_]).§_-au§ = 0;
                  _loc13_.§_-Pq§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-ue§.§_-sx§)
                  {
                     if((_loc16_ = this.§_-ue§.§_-of§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-au§ = _loc16_.§_-au§;
                        _loc13_.§_-Pq§ = _loc16_.§_-Pq§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-Er§.§_-sx§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-Sr§ |= b2internal::_-qR;
         }
         else
         {
            this.§_-Sr§ &= ~b2internal::_-qR;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-Sr§ & b2internal::_-4S) == 0)
         {
            param1.PreSolve(this,this.§_-ue§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-ao§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-vT§.§_-sM§.Set(this.§_-Ny§.GetShape());
         §_-vT§.§_-cZ§.Set(this.§_-83§.GetShape());
         §_-vT§.§_-n2§ = param1;
         §_-vT§.§_-SM§ = param2;
         §_-vT§.§_-pC§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-LU§(§_-vT§);
      }
   }
}
