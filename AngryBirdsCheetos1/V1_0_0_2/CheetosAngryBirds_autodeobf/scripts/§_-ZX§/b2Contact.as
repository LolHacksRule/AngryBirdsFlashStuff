package §_-ZX§
{
   import § if§.b2Shape;
   import §_-43§.b2Body;
   import §_-43§.b2ContactListener;
   import §_-43§.b2Fixture;
   import §_-F2§.b2Sweep;
   import §_-F2§.b2Transform;
   import §_-Jx§.b2ContactID;
   import §_-Jx§.b2Manifold;
   import §_-Jx§.b2ManifoldPoint;
   import §_-Jx§.b2TOIInput;
   import §_-Jx§.b2TimeOfImpact;
   import §_-Jx§.b2WorldManifold;
   import §_-d6§.b2Settings;
   import §_-d6§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §_-Ox§:uint = 1;
      
      b2internal static var §_-KO§:uint = 2;
      
      b2internal static var §_-0-q§:uint = 4;
      
      b2internal static var §_-vI§:uint = 8;
      
      b2internal static var §_-0-0§:uint = 16;
      
      b2internal static var §_-z0§:uint = 32;
      
      b2internal static var §_-J6§:uint = 64;
      
      private static var §_-65§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §_-o4§:uint;
      
      b2internal var §_-Nc§:b2Contact;
      
      b2internal var §_-4N§:b2Contact;
      
      b2internal var §_-Kl§:b2ContactEdge;
      
      b2internal var §_-C2§:b2ContactEdge;
      
      b2internal var §_-pQ§:b2Fixture;
      
      b2internal var §_-mY§:b2Fixture;
      
      b2internal var §_-GH§:b2Manifold;
      
      b2internal var §_-Yk§:b2Manifold;
      
      b2internal var §_-CH§:Number;
      
      public function b2Contact()
      {
         this.§_-Kl§ = new b2ContactEdge();
         this.§_-C2§ = new b2ContactEdge();
         this.§_-GH§ = new b2Manifold();
         this.§_-Yk§ = new b2Manifold();
         super();
      }
      
      public function §_-mX§() : b2Manifold
      {
         return this.§_-GH§;
      }
      
      public function §_-hb§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§_-pQ§.GetBody();
         var _loc3_:b2Body = this.§_-mY§.GetBody();
         var _loc4_:b2Shape = this.§_-pQ§.GetShape();
         var _loc5_:b2Shape = this.§_-mY§.GetShape();
         param1.§_-M0§(this.§_-GH§,_loc2_.§_-lD§(),_loc4_.§_-KL§,_loc3_.§_-lD§(),_loc5_.§_-KL§);
      }
      
      public function §_-ax§() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-0-0) == b2internal::_-0-0;
      }
      
      public function §_-H0§() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-KO) == b2internal::_-KO;
      }
      
      public function §_-Q2§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-o4§ |= b2internal::_-Ox;
         }
         else
         {
            this.§_-o4§ &= ~b2internal::_-Ox;
         }
      }
      
      public function §_-wi§() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-Ox) == b2internal::_-Ox;
      }
      
      public function §_-HK§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§_-o4§ |= b2internal::_-z0;
         }
         else
         {
            this.§_-o4§ &= ~b2internal::_-z0;
         }
      }
      
      public function §_-Ey§() : Boolean
      {
         return (this.§_-o4§ & b2internal::_-z0) == b2internal::_-z0;
      }
      
      public function §_-4A§() : b2Contact
      {
         return this.§_-4N§;
      }
      
      public function §_-ml§() : b2Fixture
      {
         return this.§_-pQ§;
      }
      
      public function §_-s9§() : b2Fixture
      {
         return this.§_-mY§;
      }
      
      public function §_-0-5§() : void
      {
         this.§_-o4§ |= b2internal::_-J6;
      }
      
      b2internal function §_-1c§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§_-o4§ = b2internal::_-z0;
         if(!param1 || !param2)
         {
            this.§_-pQ§ = null;
            this.§_-mY§ = null;
            return;
         }
         if(param1.§_-wi§() || param2.§_-wi§())
         {
            this.§_-o4§ |= b2internal::_-Ox;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§_-cT§() != b2Body.b2_dynamicBody || _loc3_.§_-kz§() || _loc4_.§_-cT§() != b2Body.b2_dynamicBody || _loc4_.§_-kz§())
         {
            this.§_-o4§ |= b2internal::_-KO;
         }
         this.§_-pQ§ = param1;
         this.§_-mY§ = param2;
         this.§_-GH§.§_-002§ = 0;
         this.§_-Nc§ = null;
         this.§_-4N§ = null;
         this.§_-Kl§.§_-50§ = null;
         this.§_-Kl§.§_-rm§ = null;
         this.§_-Kl§.§_-Rk§ = null;
         this.§_-Kl§.§_-f3§ = null;
         this.§_-C2§.§_-50§ = null;
         this.§_-C2§.§_-rm§ = null;
         this.§_-C2§.§_-Rk§ = null;
         this.§_-C2§.§_-f3§ = null;
      }
      
      b2internal function §_-gk§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§_-Yk§;
         this.§_-Yk§ = this.§_-GH§;
         this.§_-GH§ = _loc2_;
         this.§_-o4§ |= b2internal::_-z0;
         var _loc3_:* = false;
         var _loc4_:* = (this.§_-o4§ & b2internal::_-0-0) == b2internal::_-0-0;
         var _loc5_:b2Body = this.§_-pQ§.m_body;
         var _loc6_:b2Body = this.§_-mY§.m_body;
         var _loc7_:Boolean = this.§_-pQ§.§_-Kh§.§_-LO§(this.§_-mY§.§_-Kh§);
         if(this.§_-o4§ & b2internal::_-Ox)
         {
            if(_loc7_)
            {
               _loc8_ = this.§_-pQ§.GetShape();
               _loc9_ = this.§_-mY§.GetShape();
               _loc10_ = _loc5_.§_-lD§();
               _loc11_ = _loc6_.§_-lD§();
               _loc3_ = Boolean(b2Shape.§_-LO§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§_-GH§.§_-002§ = 0;
         }
         else
         {
            if(_loc5_.§_-cT§() != b2Body.b2_dynamicBody || _loc5_.§_-kz§() || _loc6_.§_-cT§() != b2Body.b2_dynamicBody || _loc6_.§_-kz§())
            {
               this.§_-o4§ |= b2internal::_-KO;
            }
            else
            {
               this.§_-o4§ &= ~b2internal::_-KO;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§_-GH§.§_-002§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§_-GH§.§_-002§)
               {
                  (_loc13_ = this.§_-GH§.§_-wz§[_loc12_]).§_-xf§ = 0;
                  _loc13_.§_-Gq§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§_-Yk§.§_-002§)
                  {
                     if((_loc16_ = this.§_-Yk§.§_-wz§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§_-xf§ = _loc16_.§_-xf§;
                        _loc13_.§_-Gq§ = _loc16_.§_-Gq§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§_-GH§.§_-002§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§_-o4§ |= b2internal::_-0-0;
         }
         else
         {
            this.§_-o4§ &= ~b2internal::_-0-0;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§_-o4§ & b2internal::_-Ox) == 0)
         {
            param1.PreSolve(this,this.§_-Yk§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §_-lh§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §_-65§.§_-WA§.Set(this.§_-pQ§.GetShape());
         §_-65§.§_-tr§.Set(this.§_-mY§.GetShape());
         §_-65§.§_-J8§ = param1;
         §_-65§.§_-Jk§ = param2;
         §_-65§.§_-Mj§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§_-G0§(§_-65§);
      }
   }
}
