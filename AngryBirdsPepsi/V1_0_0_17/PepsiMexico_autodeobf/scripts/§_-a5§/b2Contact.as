package §_-a5§
{
   import §_-Iw§.b2Body;
   import §_-Iw§.b2ContactListener;
   import §_-Iw§.b2Fixture;
   import §_-Ja§.b2Sweep;
   import §_-Ja§.b2Transform;
   import §_-Kt§.b2Shape;
   import §_-lh§.b2Settings;
   import §_-lh§.b2internal;
   import §_-qg§.b2ContactID;
   import §_-qg§.b2Manifold;
   import §_-qg§.b2ManifoldPoint;
   import §_-qg§.b2TOIInput;
   import §_-qg§.b2TimeOfImpact;
   import §_-qg§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-4c§:uint = 1;
      
      b2internal static var §_-QI§:uint = 2;
      
      b2internal static var §_-rW§:uint = 4;
      
      b2internal static var §_-Sn§:uint = 8;
      
      b2internal static var §_-u§:uint = 16;
      
      b2internal static var §_-tD§:uint = 32;
      
      b2internal static var §_-cT§:uint = 64;
      
      private static var §_-4L§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-Il§:uint;
      
      b2internal var §_-VL§:b2Contact;
      
      b2internal var §_-NA§:b2Contact;
      
      b2internal var §_-UU§:b2ContactEdge;
      
      b2internal var §_-f-§:b2ContactEdge;
      
      b2internal var §_-NZ§:b2Fixture;
      
      b2internal var §_-xL§:b2Fixture;
      
      b2internal var §_-Xg§:b2Manifold;
      
      b2internal var §false§:b2Manifold;
      
      b2internal var §_-fE§:Number;
      
      public function b2Contact()
      {
         this.§_-UU§ = new b2ContactEdge();
         this.§_-f-§ = new b2ContactEdge();
         this.§_-Xg§ = new b2Manifold();
         this.§false§ = new b2Manifold();
         super();
      }
      
      public function §_-jt§() : b2Manifold
      {
         return this.§_-Xg§;
      }
      
      public function §_-u1§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-NZ§.GetBody();
         var _loc3_:b2Body = this.§_-xL§.GetBody();
         var _loc4_:b2Shape = this.§_-NZ§.GetShape();
         var _loc5_:b2Shape = this.§_-xL§.GetShape();
         param1.§_-lc§(this.§_-Xg§,_loc2_.§_-ZO§(),_loc4_.§_-Q2§,_loc3_.§_-ZO§(),_loc5_.§_-Q2§);
      }
      
      public function §_-ps§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-u) == b2internal::_-u;
      }
      
      public function §_-UV§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-QI) == b2internal::_-QI;
      }
      
      public function §_-uP§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Il§ |= b2internal::_-4c;
         }
         else
         {
            this.§_-Il§ &= ~b2internal::_-4c;
         }
      }
      
      public function §_-YU§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-4c) == b2internal::_-4c;
      }
      
      public function §_-pv§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-Il§ |= b2internal::_-tD;
         }
         else
         {
            this.§_-Il§ &= ~b2internal::_-tD;
         }
      }
      
      public function §_-v7§() : Boolean
      {
         return (this.§_-Il§ & b2internal::_-tD) == b2internal::_-tD;
      }
      
      public function §_-tx§() : b2Contact
      {
         return this.§_-NA§;
      }
      
      public function §_-8S§() : b2Fixture
      {
         return this.§_-NZ§;
      }
      
      public function §_-16§() : b2Fixture
      {
         return this.§_-xL§;
      }
      
      public function §_-om§() : void
      {
         this.§_-Il§ |= b2internal::_-cT;
      }
      
      b2internal function §_-i0§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-Il§ = b2internal::_-tD;
         if(!param1 || !param2)
         {
            this.§_-NZ§ = null;
            this.§_-xL§ = null;
            return;
         }
         if(param1.§_-YU§() || param2.§_-YU§())
         {
            this.§_-Il§ |= b2internal::_-4c;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-ww§() != b2Body.b2_dynamicBody || _loc3_.§_-60§() || _loc4_.§_-ww§() != b2Body.b2_dynamicBody || _loc4_.§_-60§())
         {
            this.§_-Il§ |= b2internal::_-QI;
         }
         this.§_-NZ§ = param1;
         this.§_-xL§ = param2;
         this.§_-Xg§.§_-Tu§ = 0;
         this.§_-VL§ = null;
         this.§_-NA§ = null;
         this.§_-UU§.§_-bX§ = null;
         this.§_-UU§.§_-M0§ = null;
         this.§_-UU§.§_-Jr§ = null;
         this.§_-UU§.§_-dr§ = null;
         this.§_-f-§.§_-bX§ = null;
         this.§_-f-§.§_-M0§ = null;
         this.§_-f-§.§_-Jr§ = null;
         this.§_-f-§.§_-dr§ = null;
      }
      
      b2internal function §_-r-§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§false§;
         this.§false§ = this.§_-Xg§;
         this.§_-Xg§ = _loc2_;
         this.§_-Il§ |= b2internal::_-tD;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-Il§ & b2internal::_-u) == b2internal::_-u;
         var _loc5_:b2Body = this.§_-NZ§.m_body;
         var _loc6_:b2Body = this.§_-xL§.m_body;
         var _loc7_:Boolean = this.§_-NZ§.§_-xI§.§_-pb§(this.§_-xL§.§_-xI§);
         if(this.§_-Il§ & b2internal::_-4c)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-NZ§.GetShape();
               _loc9_ = this.§_-xL§.GetShape();
               _loc10_ = _loc5_.§_-ZO§();
               _loc11_ = _loc6_.§_-ZO§();
               _loc3_ = Boolean(b2Shape.§_-pb§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-Xg§.§_-Tu§ = 0;
         }
         else
         {
            if(_loc5_.§_-ww§() != b2Body.b2_dynamicBody || _loc5_.§_-60§() || _loc6_.§_-ww§() != b2Body.b2_dynamicBody || _loc6_.§_-60§())
            {
               this.§_-Il§ |= b2internal::_-QI;
            }
            else
            {
               this.§_-Il§ &= ~b2internal::_-QI;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-Xg§.§_-Tu§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-Xg§.§_-Tu§)
               {
                  (_loc13_ = this.§_-Xg§.§_-hn§[_loc12_]).§_-JQ§ = 0;
                  _loc13_.§_-RC§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§false§.§_-Tu§)
                  {
                     if((_loc16_ = this.§false§.§_-hn§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-JQ§ = _loc16_.§_-JQ§;
                        _loc13_.§_-RC§ = _loc16_.§_-RC§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-Xg§.§_-Tu§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-Il§ |= b2internal::_-u;
         }
         else
         {
            this.§_-Il§ &= ~b2internal::_-u;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-Il§ & b2internal::_-4c) == 0)
         {
            param1.PreSolve(this,this.§false§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-cy§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-4L§.§ do§.Set(this.§_-NZ§.GetShape());
         §_-4L§.§_-q9§.Set(this.§_-xL§.GetShape());
         §_-4L§.§_-nQ§ = param1;
         §_-4L§.§_-OY§ = param2;
         §_-4L§.§_-hR§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-d1§(§_-4L§);
      }
   }
}
