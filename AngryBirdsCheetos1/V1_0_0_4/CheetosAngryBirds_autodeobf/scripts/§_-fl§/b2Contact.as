package §_-fl§
{
   import §_-00B§.b2Body;
   import §_-00B§.b2ContactListener;
   import §_-00B§.b2Fixture;
   import §_-Jf§.b2Settings;
   import §_-Jf§.b2internal;
   import §_-Kz§.b2ContactID;
   import §_-Kz§.b2Manifold;
   import §_-Kz§.b2ManifoldPoint;
   import §_-Kz§.b2TOIInput;
   import §_-Kz§.b2TimeOfImpact;
   import §_-Kz§.b2WorldManifold;
   import §_-OY§.b2Shape;
   import §_-Vn§.b2Sweep;
   import §_-Vn§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-OA§:uint = 1;
      
      b2internal static var §_-dt§:uint = 2;
      
      b2internal static var §_-VA§:uint = 4;
      
      b2internal static var §_-0B§:uint = 8;
      
      b2internal static var §switch§:uint = 16;
      
      b2internal static var §_-qR§:uint = 32;
      
      b2internal static var §_-ye§:uint = 64;
      
      private static var §_-bv§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-Tw§:uint;
      
      b2internal var §_-u6§:b2Contact;
      
      b2internal var §_-E1§:b2Contact;
      
      b2internal var §_-Ui§:b2ContactEdge;
      
      b2internal var §_-4J§:b2ContactEdge;
      
      b2internal var §_-a9§:b2Fixture;
      
      b2internal var §_-2b§:b2Fixture;
      
      b2internal var §_-LF§:b2Manifold;
      
      b2internal var §_-1S§:b2Manifold;
      
      b2internal var §_-zt§:Number;
      
      public function b2Contact()
      {
         this.§_-Ui§ = new b2ContactEdge();
         this.§_-4J§ = new b2ContactEdge();
         this.§_-LF§ = new b2Manifold();
         this.§_-1S§ = new b2Manifold();
         super();
      }
      
      public function §_-vK§() : b2Manifold
      {
         return this.§_-LF§;
      }
      
      public function §_-F1§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-a9§.GetBody();
         var _loc3_:b2Body = this.§_-2b§.GetBody();
         var _loc4_:b2Shape = this.§_-a9§.GetShape();
         var _loc5_:b2Shape = this.§_-2b§.GetShape();
         param1.§_-yN§(this.§_-LF§,_loc2_.§_-fs§(),_loc4_.§_-EG§,_loc3_.§_-fs§(),_loc5_.§_-EG§);
      }
      
      public function §_-yI§() : Boolean
      {
         return (this.§_-Tw§ & b2internal::switch) == b2internal::switch;
      }
      
      public function §_-he§() : Boolean
      {
         return (this.§_-Tw§ & b2internal::_-dt) == b2internal::_-dt;
      }
      
      public function §_-tu§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Tw§ |= b2internal::_-OA;
         }
         else
         {
            this.§_-Tw§ &= ~b2internal::_-OA;
         }
      }
      
      public function §_-z0§() : Boolean
      {
         return (this.§_-Tw§ & b2internal::_-OA) == b2internal::_-OA;
      }
      
      public function §_-n3§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Tw§ |= b2internal::_-qR;
         }
         else
         {
            this.§_-Tw§ &= ~b2internal::_-qR;
         }
      }
      
      public function §_-00q§() : Boolean
      {
         return (this.§_-Tw§ & b2internal::_-qR) == b2internal::_-qR;
      }
      
      public function §_-si§() : b2Contact
      {
         return this.§_-E1§;
      }
      
      public function §_-tb§() : b2Fixture
      {
         return this.§_-a9§;
      }
      
      public function §_-Ix§() : b2Fixture
      {
         return this.§_-2b§;
      }
      
      public function §_-SC§() : void
      {
         this.§_-Tw§ |= b2internal::_-ye;
      }
      
      b2internal function §_-ej§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-Tw§ = b2internal::_-qR;
         if(!param1 || !param2)
         {
            this.§_-a9§ = null;
            this.§_-2b§ = null;
            return;
         }
         if(param1.§_-z0§() || param2.§_-z0§())
         {
            this.§_-Tw§ |= b2internal::_-OA;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-n§() != b2Body.b2_dynamicBody || _loc3_.§else§() || _loc4_.§_-n§() != b2Body.b2_dynamicBody || _loc4_.§else§())
         {
            this.§_-Tw§ |= b2internal::_-dt;
         }
         this.§_-a9§ = param1;
         this.§_-2b§ = param2;
         this.§_-LF§.§_-BX§ = 0;
         this.§_-u6§ = null;
         this.§_-E1§ = null;
         this.§_-Ui§.§_-NB§ = null;
         this.§_-Ui§.§_-ey§ = null;
         this.§_-Ui§.§_-WK§ = null;
         this.§_-Ui§.§_-4o§ = null;
         this.§_-4J§.§_-NB§ = null;
         this.§_-4J§.§_-ey§ = null;
         this.§_-4J§.§_-WK§ = null;
         this.§_-4J§.§_-4o§ = null;
      }
      
      b2internal function §_-0-8§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-1S§;
         this.§_-1S§ = this.§_-LF§;
         this.§_-LF§ = _loc2_;
         this.§_-Tw§ |= b2internal::_-qR;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-Tw§ & b2internal::switch) == b2internal::switch;
         var _loc5_:b2Body = this.§_-a9§.m_body;
         var _loc6_:b2Body = this.§_-2b§.m_body;
         var _loc7_:Boolean = this.§_-a9§.§_-Nk§.§_-wl§(this.§_-2b§.§_-Nk§);
         if(this.§_-Tw§ & b2internal::_-OA)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-a9§.GetShape();
               _loc9_ = this.§_-2b§.GetShape();
               _loc10_ = _loc5_.§_-fs§();
               _loc11_ = _loc6_.§_-fs§();
               _loc3_ = Boolean(b2Shape.§_-wl§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-LF§.§_-BX§ = 0;
         }
         else
         {
            if(_loc5_.§_-n§() != b2Body.b2_dynamicBody || _loc5_.§else§() || _loc6_.§_-n§() != b2Body.b2_dynamicBody || _loc6_.§else§())
            {
               this.§_-Tw§ |= b2internal::_-dt;
            }
            else
            {
               this.§_-Tw§ &= ~b2internal::_-dt;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-LF§.§_-BX§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-LF§.§_-BX§)
               {
                  (_loc13_ = this.§_-LF§.§_-rg§[_loc12_]).§_-K6§ = 0;
                  _loc13_.§_-44§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-1S§.§_-BX§)
                  {
                     if((_loc16_ = this.§_-1S§.§_-rg§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-K6§ = _loc16_.§_-K6§;
                        _loc13_.§_-44§ = _loc16_.§_-44§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-LF§.§_-BX§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-Tw§ |= b2internal::switch;
         }
         else
         {
            this.§_-Tw§ &= ~b2internal::switch;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-Tw§ & b2internal::_-OA) == 0)
         {
            param1.PreSolve(this,this.§_-1S§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-F4§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-bv§.§_-t6§.Set(this.§_-a9§.GetShape());
         §_-bv§.§_-iZ§.Set(this.§_-2b§.GetShape());
         §_-bv§.§_-gQ§ = param1;
         §_-bv§.§_-Es§ = param2;
         §_-bv§.§_-O5§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-qL§(§_-bv§);
      }
   }
}
