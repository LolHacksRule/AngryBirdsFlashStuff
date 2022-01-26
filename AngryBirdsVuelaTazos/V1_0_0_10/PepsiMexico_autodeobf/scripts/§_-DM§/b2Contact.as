package §_-DM§
{
   import §_-Et§.b2ContactID;
   import §_-Et§.b2Manifold;
   import §_-Et§.b2ManifoldPoint;
   import §_-Et§.b2TOIInput;
   import §_-Et§.b2TimeOfImpact;
   import §_-Et§.b2WorldManifold;
   import §_-I2§.b2Shape;
   import §_-Zl§.b2Sweep;
   import §_-Zl§.b2Transform;
   import §_-rg§.b2Body;
   import §_-rg§.b2ContactListener;
   import §_-rg§.b2Fixture;
   import §_-uS§.b2Settings;
   import §_-uS§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-AE§:uint = 1;
      
      b2internal static var §_-9C§:uint = 2;
      
      b2internal static var §_-9S§:uint = 4;
      
      b2internal static var §_-59§:uint = 8;
      
      b2internal static var §_-iE§:uint = 16;
      
      b2internal static var §_-2p§:uint = 32;
      
      b2internal static var §_-FE§:uint = 64;
      
      private static var §_-Ju§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-2F§:uint;
      
      b2internal var §_-M9§:b2Contact;
      
      b2internal var §_-AX§:b2Contact;
      
      b2internal var §_-o2§:b2ContactEdge;
      
      b2internal var §_-L9§:b2ContactEdge;
      
      b2internal var §_-di§:b2Fixture;
      
      b2internal var include:b2Fixture;
      
      b2internal var §_-R2§:b2Manifold;
      
      b2internal var §_-KF§:b2Manifold;
      
      b2internal var §_-t-§:Number;
      
      public function b2Contact()
      {
         this.§_-o2§ = new b2ContactEdge();
         this.§_-L9§ = new b2ContactEdge();
         this.§_-R2§ = new b2Manifold();
         this.§_-KF§ = new b2Manifold();
         super();
      }
      
      public function §_-k2§() : b2Manifold
      {
         return this.§_-R2§;
      }
      
      public function §_-sO§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-di§.GetBody();
         var _loc3_:b2Body = this.include.GetBody();
         var _loc4_:b2Shape = this.§_-di§.GetShape();
         var _loc5_:b2Shape = this.include.GetShape();
         param1.§_-E0§(this.§_-R2§,_loc2_.§_-9F§(),_loc4_.§_-Bn§,_loc3_.§_-9F§(),_loc5_.§_-Bn§);
      }
      
      public function §_-fg§() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-iE) == b2internal::_-iE;
      }
      
      public function §while§() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-9C) == b2internal::_-9C;
      }
      
      public function §_-tV§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-2F§ |= b2internal::_-AE;
         }
         else
         {
            this.§_-2F§ &= ~b2internal::_-AE;
         }
      }
      
      public function §_-Hm§() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-AE) == b2internal::_-AE;
      }
      
      public function §_-V§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-2F§ |= b2internal::_-2p;
         }
         else
         {
            this.§_-2F§ &= ~b2internal::_-2p;
         }
      }
      
      public function §_-Ko§() : Boolean
      {
         return (this.§_-2F§ & b2internal::_-2p) == b2internal::_-2p;
      }
      
      public function §_-mR§() : b2Contact
      {
         return this.§_-AX§;
      }
      
      public function §_-cW§() : b2Fixture
      {
         return this.§_-di§;
      }
      
      public function §_-q-§() : b2Fixture
      {
         return this.include;
      }
      
      public function §_-Lu§() : void
      {
         this.§_-2F§ |= b2internal::_-FE;
      }
      
      b2internal function §_-t3§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-2F§ = b2internal::_-2p;
         if(!param1 || !param2)
         {
            this.§_-di§ = null;
            this.include = null;
            return;
         }
         if(param1.§_-Hm§() || param2.§_-Hm§())
         {
            this.§_-2F§ |= b2internal::_-AE;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-Iy§() != b2Body.b2_dynamicBody || _loc3_.§_-Y6§() || _loc4_.§_-Iy§() != b2Body.b2_dynamicBody || _loc4_.§_-Y6§())
         {
            this.§_-2F§ |= b2internal::_-9C;
         }
         this.§_-di§ = param1;
         this.include = param2;
         this.§_-R2§.§_-GS§ = 0;
         this.§_-M9§ = null;
         this.§_-AX§ = null;
         this.§_-o2§.§_-vb§ = null;
         this.§_-o2§.§_-tH§ = null;
         this.§_-o2§.§_-kL§ = null;
         this.§_-o2§.§_-Vi§ = null;
         this.§_-L9§.§_-vb§ = null;
         this.§_-L9§.§_-tH§ = null;
         this.§_-L9§.§_-kL§ = null;
         this.§_-L9§.§_-Vi§ = null;
      }
      
      b2internal function §_-gI§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-KF§;
         this.§_-KF§ = this.§_-R2§;
         this.§_-R2§ = _loc2_;
         this.§_-2F§ |= b2internal::_-2p;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-2F§ & b2internal::_-iE) == b2internal::_-iE;
         var _loc5_:b2Body = this.§_-di§.m_body;
         var _loc6_:b2Body = this.include.m_body;
         var _loc7_:Boolean = this.§_-di§.§_-X1§.§_-e2§(this.include.§_-X1§);
         if(this.§_-2F§ & b2internal::_-AE)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-di§.GetShape();
               _loc9_ = this.include.GetShape();
               _loc10_ = _loc5_.§_-9F§();
               _loc11_ = _loc6_.§_-9F§();
               _loc3_ = Boolean(b2Shape.§_-e2§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-R2§.§_-GS§ = 0;
         }
         else
         {
            if(_loc5_.§_-Iy§() != b2Body.b2_dynamicBody || _loc5_.§_-Y6§() || _loc6_.§_-Iy§() != b2Body.b2_dynamicBody || _loc6_.§_-Y6§())
            {
               this.§_-2F§ |= b2internal::_-9C;
            }
            else
            {
               this.§_-2F§ &= ~b2internal::_-9C;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-R2§.§_-GS§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-R2§.§_-GS§)
               {
                  (_loc13_ = this.§_-R2§.§_-fG§[_loc12_]).§_-8L§ = 0;
                  _loc13_.§_-w-§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-KF§.§_-GS§)
                  {
                     if((_loc16_ = this.§_-KF§.§_-fG§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-8L§ = _loc16_.§_-8L§;
                        _loc13_.§_-w-§ = _loc16_.§_-w-§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-R2§.§_-GS§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-2F§ |= b2internal::_-iE;
         }
         else
         {
            this.§_-2F§ &= ~b2internal::_-iE;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-2F§ & b2internal::_-AE) == 0)
         {
            param1.PreSolve(this,this.§_-KF§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-ZT§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-Ju§.§_-LU§.Set(this.§_-di§.GetShape());
         §_-Ju§.§_-5K§.Set(this.include.GetShape());
         §_-Ju§.§_-gm§ = param1;
         §_-Ju§.§_-Gx§ = param2;
         §_-Ju§.§_-eP§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-DB§(§_-Ju§);
      }
   }
}
