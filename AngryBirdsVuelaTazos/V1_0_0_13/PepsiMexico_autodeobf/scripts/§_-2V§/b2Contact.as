package §_-2V§
{
   import §_-8i§.b2Shape;
   import §_-SM§.b2Settings;
   import §_-SM§.b2internal;
   import §_-qW§.b2Body;
   import §_-qW§.b2ContactListener;
   import §_-qW§.b2Fixture;
   import §_-wZ§.b2ContactID;
   import §_-wZ§.b2Manifold;
   import §_-wZ§.b2ManifoldPoint;
   import §_-wZ§.b2TOIInput;
   import §_-wZ§.b2TimeOfImpact;
   import §_-wZ§.b2WorldManifold;
   import §var§.b2Sweep;
   import §var§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-hp§:uint = 1;
      
      b2internal static var §_-QJ§:uint = 2;
      
      b2internal static var §_-CI§:uint = 4;
      
      b2internal static var §_-6w§:uint = 8;
      
      b2internal static var §_-BQ§:uint = 16;
      
      b2internal static var §_-LW§:uint = 32;
      
      b2internal static var §_-3U§:uint = 64;
      
      private static var §_-Od§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-X3§:uint;
      
      b2internal var §_-ft§:b2Contact;
      
      b2internal var §_-4b§:b2Contact;
      
      b2internal var §_-c2§:b2ContactEdge;
      
      b2internal var §_-5w§:b2ContactEdge;
      
      b2internal var §_-ow§:b2Fixture;
      
      b2internal var §_-10§:b2Fixture;
      
      b2internal var §_-iN§:b2Manifold;
      
      b2internal var §_-St§:b2Manifold;
      
      b2internal var §_-aZ§:Number;
      
      public function b2Contact()
      {
         this.§_-c2§ = new b2ContactEdge();
         this.§_-5w§ = new b2ContactEdge();
         this.§_-iN§ = new b2Manifold();
         this.§_-St§ = new b2Manifold();
         super();
      }
      
      public function §_-gQ§() : b2Manifold
      {
         return this.§_-iN§;
      }
      
      public function §_-2m§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-ow§.GetBody();
         var _loc3_:b2Body = this.§_-10§.GetBody();
         var _loc4_:b2Shape = this.§_-ow§.GetShape();
         var _loc5_:b2Shape = this.§_-10§.GetShape();
         param1.§_-PU§(this.§_-iN§,_loc2_.§_-tx§(),_loc4_.§_-uG§,_loc3_.§_-tx§(),_loc5_.§_-uG§);
      }
      
      public function §_-m5§() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-BQ) == b2internal::_-BQ;
      }
      
      public function §_-d0§() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-QJ) == b2internal::_-QJ;
      }
      
      public function §_-3l§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-X3§ |= b2internal::_-hp;
         }
         else
         {
            this.§_-X3§ &= ~b2internal::_-hp;
         }
      }
      
      public function § null§() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-hp) == b2internal::_-hp;
      }
      
      public function §_-NZ§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-X3§ |= b2internal::_-LW;
         }
         else
         {
            this.§_-X3§ &= ~b2internal::_-LW;
         }
      }
      
      public function §_-Jw§() : Boolean
      {
         return (this.§_-X3§ & b2internal::_-LW) == b2internal::_-LW;
      }
      
      public function §_-lA§() : b2Contact
      {
         return this.§_-4b§;
      }
      
      public function §_-5M§() : b2Fixture
      {
         return this.§_-ow§;
      }
      
      public function §_-w4§() : b2Fixture
      {
         return this.§_-10§;
      }
      
      public function §_-KG§() : void
      {
         this.§_-X3§ |= b2internal::_-3U;
      }
      
      b2internal function §_-ut§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-X3§ = b2internal::_-LW;
         if(!param1 || !param2)
         {
            this.§_-ow§ = null;
            this.§_-10§ = null;
            return;
         }
         if(param1.§ null§() || param2.§ null§())
         {
            this.§_-X3§ |= b2internal::_-hp;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-kK§() != b2Body.b2_dynamicBody || _loc3_.§_-tD§() || _loc4_.§_-kK§() != b2Body.b2_dynamicBody || _loc4_.§_-tD§())
         {
            this.§_-X3§ |= b2internal::_-QJ;
         }
         this.§_-ow§ = param1;
         this.§_-10§ = param2;
         this.§_-iN§.§_-QB§ = 0;
         this.§_-ft§ = null;
         this.§_-4b§ = null;
         this.§_-c2§.§_-k9§ = null;
         this.§_-c2§.§_-6c§ = null;
         this.§_-c2§.§_-PT§ = null;
         this.§_-c2§.§_-r7§ = null;
         this.§_-5w§.§_-k9§ = null;
         this.§_-5w§.§_-6c§ = null;
         this.§_-5w§.§_-PT§ = null;
         this.§_-5w§.§_-r7§ = null;
      }
      
      b2internal function §_-IM§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-St§;
         this.§_-St§ = this.§_-iN§;
         this.§_-iN§ = _loc2_;
         this.§_-X3§ |= b2internal::_-LW;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-X3§ & b2internal::_-BQ) == b2internal::_-BQ;
         var _loc5_:b2Body = this.§_-ow§.m_body;
         var _loc6_:b2Body = this.§_-10§.m_body;
         var _loc7_:Boolean = this.§_-ow§.§_-kM§.§_-db§(this.§_-10§.§_-kM§);
         if(this.§_-X3§ & b2internal::_-hp)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-ow§.GetShape();
               _loc9_ = this.§_-10§.GetShape();
               _loc10_ = _loc5_.§_-tx§();
               _loc11_ = _loc6_.§_-tx§();
               _loc3_ = Boolean(b2Shape.§_-db§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-iN§.§_-QB§ = 0;
         }
         else
         {
            if(_loc5_.§_-kK§() != b2Body.b2_dynamicBody || _loc5_.§_-tD§() || _loc6_.§_-kK§() != b2Body.b2_dynamicBody || _loc6_.§_-tD§())
            {
               this.§_-X3§ |= b2internal::_-QJ;
            }
            else
            {
               this.§_-X3§ &= ~b2internal::_-QJ;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-iN§.§_-QB§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-iN§.§_-QB§)
               {
                  (_loc13_ = this.§_-iN§.§_-KA§[_loc12_]).§_-up§ = 0;
                  _loc13_.§_-jI§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-St§.§_-QB§)
                  {
                     if((_loc16_ = this.§_-St§.§_-KA§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-up§ = _loc16_.§_-up§;
                        _loc13_.§_-jI§ = _loc16_.§_-jI§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-iN§.§_-QB§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-X3§ |= b2internal::_-BQ;
         }
         else
         {
            this.§_-X3§ &= ~b2internal::_-BQ;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-X3§ & b2internal::_-hp) == 0)
         {
            param1.PreSolve(this,this.§_-St§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-ML§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-Od§.§_-RO§.Set(this.§_-ow§.GetShape());
         §_-Od§.§_-5J§.Set(this.§_-10§.GetShape());
         §_-Od§.§_-21§ = param1;
         §_-Od§.§_-b-§ = param2;
         §_-Od§.§_-p1§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-A1§(§_-Od§);
      }
   }
}
