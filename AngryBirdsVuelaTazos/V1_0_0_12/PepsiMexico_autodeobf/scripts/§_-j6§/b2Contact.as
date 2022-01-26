package §_-j6§
{
   import §_-9z§.b2Sweep;
   import §_-9z§.b2Transform;
   import §_-Bt§.b2Shape;
   import §_-EH§.b2Body;
   import §_-EH§.b2ContactListener;
   import §_-EH§.b2Fixture;
   import §_-Nw§.b2ContactID;
   import §_-Nw§.b2Manifold;
   import §_-Nw§.b2ManifoldPoint;
   import §_-Nw§.b2TOIInput;
   import §_-Nw§.b2TimeOfImpact;
   import §_-Nw§.b2WorldManifold;
   import §_-sU§.b2Settings;
   import §_-sU§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-Oc§:uint = 1;
      
      b2internal static var §_-5q§:uint = 2;
      
      b2internal static var §_-7w§:uint = 4;
      
      b2internal static var §_-wc§:uint = 8;
      
      b2internal static var §_-KG§:uint = 16;
      
      b2internal static var §_-j§:uint = 32;
      
      b2internal static var §_-fI§:uint = 64;
      
      private static var §_-rm§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-QK§:uint;
      
      b2internal var §_-3w§:b2Contact;
      
      b2internal var §_-GH§:b2Contact;
      
      b2internal var §_-vp§:b2ContactEdge;
      
      b2internal var §_-kF§:b2ContactEdge;
      
      b2internal var §_-om§:b2Fixture;
      
      b2internal var §_-X8§:b2Fixture;
      
      b2internal var §_-x9§:b2Manifold;
      
      b2internal var §_-jP§:b2Manifold;
      
      b2internal var §_-6Y§:Number;
      
      public function b2Contact()
      {
         this.§_-vp§ = new b2ContactEdge();
         this.§_-kF§ = new b2ContactEdge();
         this.§_-x9§ = new b2Manifold();
         this.§_-jP§ = new b2Manifold();
         super();
      }
      
      public function §_-pE§() : b2Manifold
      {
         return this.§_-x9§;
      }
      
      public function §_-VT§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-om§.GetBody();
         var _loc3_:b2Body = this.§_-X8§.GetBody();
         var _loc4_:b2Shape = this.§_-om§.GetShape();
         var _loc5_:b2Shape = this.§_-X8§.GetShape();
         param1.§_-fn§(this.§_-x9§,_loc2_.§return§(),_loc4_.§_-uB§,_loc3_.§return§(),_loc5_.§_-uB§);
      }
      
      public function §_-3n§() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-KG) == b2internal::_-KG;
      }
      
      public function §_-jZ§() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-5q) == b2internal::_-5q;
      }
      
      public function §_-mh§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-QK§ |= b2internal::_-Oc;
         }
         else
         {
            this.§_-QK§ &= ~b2internal::_-Oc;
         }
      }
      
      public function §_-Jr§() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-Oc) == b2internal::_-Oc;
      }
      
      public function §_-jH§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-QK§ |= b2internal::_-j;
         }
         else
         {
            this.§_-QK§ &= ~b2internal::_-j;
         }
      }
      
      public function §_-Zv§() : Boolean
      {
         return (this.§_-QK§ & b2internal::_-j) == b2internal::_-j;
      }
      
      public function §_-nc§() : b2Contact
      {
         return this.§_-GH§;
      }
      
      public function §_-uy§() : b2Fixture
      {
         return this.§_-om§;
      }
      
      public function §_-WC§() : b2Fixture
      {
         return this.§_-X8§;
      }
      
      public function §_-lp§() : void
      {
         this.§_-QK§ |= b2internal::_-fI;
      }
      
      b2internal function §_-7h§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-QK§ = b2internal::_-j;
         if(!param1 || !param2)
         {
            this.§_-om§ = null;
            this.§_-X8§ = null;
            return;
         }
         if(param1.§_-Jr§() || param2.§_-Jr§())
         {
            this.§_-QK§ |= b2internal::_-Oc;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-7L§() != b2Body.b2_dynamicBody || _loc3_.§_-sA§() || _loc4_.§_-7L§() != b2Body.b2_dynamicBody || _loc4_.§_-sA§())
         {
            this.§_-QK§ |= b2internal::_-5q;
         }
         this.§_-om§ = param1;
         this.§_-X8§ = param2;
         this.§_-x9§.§_-pT§ = 0;
         this.§_-3w§ = null;
         this.§_-GH§ = null;
         this.§_-vp§.§_-CT§ = null;
         this.§_-vp§.§_-ZN§ = null;
         this.§_-vp§.§_-3N§ = null;
         this.§_-vp§.§_-og§ = null;
         this.§_-kF§.§_-CT§ = null;
         this.§_-kF§.§_-ZN§ = null;
         this.§_-kF§.§_-3N§ = null;
         this.§_-kF§.§_-og§ = null;
      }
      
      b2internal function §_-3c§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-jP§;
         this.§_-jP§ = this.§_-x9§;
         this.§_-x9§ = _loc2_;
         this.§_-QK§ |= b2internal::_-j;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-QK§ & b2internal::_-KG) == b2internal::_-KG;
         var _loc5_:b2Body = this.§_-om§.m_body;
         var _loc6_:b2Body = this.§_-X8§.m_body;
         var _loc7_:Boolean = this.§_-om§.§_-I9§.§_-4S§(this.§_-X8§.§_-I9§);
         if(this.§_-QK§ & b2internal::_-Oc)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-om§.GetShape();
               _loc9_ = this.§_-X8§.GetShape();
               _loc10_ = _loc5_.§return§();
               _loc11_ = _loc6_.§return§();
               _loc3_ = Boolean(b2Shape.§_-4S§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-x9§.§_-pT§ = 0;
         }
         else
         {
            if(_loc5_.§_-7L§() != b2Body.b2_dynamicBody || _loc5_.§_-sA§() || _loc6_.§_-7L§() != b2Body.b2_dynamicBody || _loc6_.§_-sA§())
            {
               this.§_-QK§ |= b2internal::_-5q;
            }
            else
            {
               this.§_-QK§ &= ~b2internal::_-5q;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-x9§.§_-pT§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-x9§.§_-pT§)
               {
                  (_loc13_ = this.§_-x9§.§_-Xy§[_loc12_]).§_-KD§ = 0;
                  _loc13_.§_-WW§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-jP§.§_-pT§)
                  {
                     if((_loc16_ = this.§_-jP§.§_-Xy§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-KD§ = _loc16_.§_-KD§;
                        _loc13_.§_-WW§ = _loc16_.§_-WW§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-x9§.§_-pT§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-QK§ |= b2internal::_-KG;
         }
         else
         {
            this.§_-QK§ &= ~b2internal::_-KG;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-QK§ & b2internal::_-Oc) == 0)
         {
            param1.PreSolve(this,this.§_-jP§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-GW§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-rm§.§_-gv§.Set(this.§_-om§.GetShape());
         §_-rm§.§_-KQ§.Set(this.§_-X8§.GetShape());
         §_-rm§.§_-EY§ = param1;
         §_-rm§.§_-G1§ = param2;
         §_-rm§.§_-WU§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-Zo§(§_-rm§);
      }
   }
}
