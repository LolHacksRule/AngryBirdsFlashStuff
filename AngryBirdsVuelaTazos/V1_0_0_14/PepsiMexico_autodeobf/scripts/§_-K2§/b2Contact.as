package §_-K2§
{
   import §_-4n§.b2Sweep;
   import §_-4n§.b2Transform;
   import §_-bW§.b2Settings;
   import §_-bW§.b2internal;
   import §_-iw§.b2ContactID;
   import §_-iw§.b2Manifold;
   import §_-iw§.b2ManifoldPoint;
   import §_-iw§.b2TOIInput;
   import §_-iw§.b2TimeOfImpact;
   import §_-iw§.b2WorldManifold;
   import §_-yJ§.b2Shape;
   import §const§.b2Body;
   import §const§.b2ContactListener;
   import §const§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-i§:uint = 1;
      
      b2internal static var §_-1O§:uint = 2;
      
      b2internal static var §_-Xv§:uint = 4;
      
      b2internal static var §_-eq§:uint = 8;
      
      b2internal static var §_-yo§:uint = 16;
      
      b2internal static var §_-6w§:uint = 32;
      
      b2internal static var §_-w1§:uint = 64;
      
      private static var §_-L6§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-rY§:uint;
      
      b2internal var §_-nr§:b2Contact;
      
      b2internal var §_-1k§:b2Contact;
      
      b2internal var §_-yh§:b2ContactEdge;
      
      b2internal var §_-hV§:b2ContactEdge;
      
      b2internal var §_-S9§:b2Fixture;
      
      b2internal var §_-Z7§:b2Fixture;
      
      b2internal var §_-Vd§:b2Manifold;
      
      b2internal var §_-5v§:b2Manifold;
      
      b2internal var §_-X0§:Number;
      
      public function b2Contact()
      {
         this.§_-yh§ = new b2ContactEdge();
         this.§_-hV§ = new b2ContactEdge();
         this.§_-Vd§ = new b2Manifold();
         this.§_-5v§ = new b2Manifold();
         super();
      }
      
      public function §_-SF§() : b2Manifold
      {
         return this.§_-Vd§;
      }
      
      public function §_-Lj§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-S9§.GetBody();
         var _loc3_:b2Body = this.§_-Z7§.GetBody();
         var _loc4_:b2Shape = this.§_-S9§.GetShape();
         var _loc5_:b2Shape = this.§_-Z7§.GetShape();
         param1.§_-Vy§(this.§_-Vd§,_loc2_.§_-XD§(),_loc4_.§_-9H§,_loc3_.§_-XD§(),_loc5_.§_-9H§);
      }
      
      public function §_-i9§() : Boolean
      {
         return (this.§_-rY§ & b2internal::_-yo) == b2internal::_-yo;
      }
      
      public function §_-0K§() : Boolean
      {
         return (this.§_-rY§ & b2internal::_-1O) == b2internal::_-1O;
      }
      
      public function §_-ij§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-rY§ |= b2internal::_-i;
         }
         else
         {
            this.§_-rY§ &= ~b2internal::_-i;
         }
      }
      
      public function §switch§() : Boolean
      {
         return (this.§_-rY§ & b2internal::_-i) == b2internal::_-i;
      }
      
      public function §_-ZN§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-rY§ |= b2internal::_-6w;
         }
         else
         {
            this.§_-rY§ &= ~b2internal::_-6w;
         }
      }
      
      public function §_-JZ§() : Boolean
      {
         return (this.§_-rY§ & b2internal::_-6w) == b2internal::_-6w;
      }
      
      public function §_-e4§() : b2Contact
      {
         return this.§_-1k§;
      }
      
      public function §_-IQ§() : b2Fixture
      {
         return this.§_-S9§;
      }
      
      public function §_-6f§() : b2Fixture
      {
         return this.§_-Z7§;
      }
      
      public function §_-yN§() : void
      {
         this.§_-rY§ |= b2internal::_-w1;
      }
      
      b2internal function §_-iK§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-rY§ = b2internal::_-6w;
         if(!param1 || !param2)
         {
            this.§_-S9§ = null;
            this.§_-Z7§ = null;
            return;
         }
         if(param1.§switch§() || param2.§switch§())
         {
            this.§_-rY§ |= b2internal::_-i;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-hZ§() != b2Body.b2_dynamicBody || _loc3_.§_-Uw§() || _loc4_.§_-hZ§() != b2Body.b2_dynamicBody || _loc4_.§_-Uw§())
         {
            this.§_-rY§ |= b2internal::_-1O;
         }
         this.§_-S9§ = param1;
         this.§_-Z7§ = param2;
         this.§_-Vd§.§_-9g§ = 0;
         this.§_-nr§ = null;
         this.§_-1k§ = null;
         this.§_-yh§.§_-Mc§ = null;
         this.§_-yh§.§_-zv§ = null;
         this.§_-yh§.§_-Q2§ = null;
         this.§_-yh§.§_-Z3§ = null;
         this.§_-hV§.§_-Mc§ = null;
         this.§_-hV§.§_-zv§ = null;
         this.§_-hV§.§_-Q2§ = null;
         this.§_-hV§.§_-Z3§ = null;
      }
      
      b2internal function §_-Fw§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-5v§;
         this.§_-5v§ = this.§_-Vd§;
         this.§_-Vd§ = _loc2_;
         this.§_-rY§ |= b2internal::_-6w;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-rY§ & b2internal::_-yo) == b2internal::_-yo;
         var _loc5_:b2Body = this.§_-S9§.m_body;
         var _loc6_:b2Body = this.§_-Z7§.m_body;
         var _loc7_:Boolean = this.§_-S9§.§_-T7§.§_-va§(this.§_-Z7§.§_-T7§);
         if(this.§_-rY§ & b2internal::_-i)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-S9§.GetShape();
               _loc9_ = this.§_-Z7§.GetShape();
               _loc10_ = _loc5_.§_-XD§();
               _loc11_ = _loc6_.§_-XD§();
               _loc3_ = Boolean(b2Shape.§_-va§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-Vd§.§_-9g§ = 0;
         }
         else
         {
            if(_loc5_.§_-hZ§() != b2Body.b2_dynamicBody || _loc5_.§_-Uw§() || _loc6_.§_-hZ§() != b2Body.b2_dynamicBody || _loc6_.§_-Uw§())
            {
               this.§_-rY§ |= b2internal::_-1O;
            }
            else
            {
               this.§_-rY§ &= ~b2internal::_-1O;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-Vd§.§_-9g§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-Vd§.§_-9g§)
               {
                  (_loc13_ = this.§_-Vd§.§_-n0§[_loc12_]).§_-er§ = 0;
                  _loc13_.§_-zU§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-5v§.§_-9g§)
                  {
                     if((_loc16_ = this.§_-5v§.§_-n0§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-er§ = _loc16_.§_-er§;
                        _loc13_.§_-zU§ = _loc16_.§_-zU§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-Vd§.§_-9g§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-rY§ |= b2internal::_-yo;
         }
         else
         {
            this.§_-rY§ &= ~b2internal::_-yo;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-rY§ & b2internal::_-i) == 0)
         {
            param1.PreSolve(this,this.§_-5v§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-k5§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-L6§.§_-uI§.Set(this.§_-S9§.GetShape());
         §_-L6§.§_-Hj§.Set(this.§_-Z7§.GetShape());
         §_-L6§.§_-vd§ = param1;
         §_-L6§.§_-tl§ = param2;
         §_-L6§.§_-La§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-OG§(§_-L6§);
      }
   }
}
