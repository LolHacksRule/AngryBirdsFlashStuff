package §3!O§
{
   import § !5§.b2Settings;
   import § !5§.b2internal;
   import §+,§.b2Sweep;
   import §+,§.b2Transform;
   import §-!$§.b2Shape;
   import §?§.b2ContactID;
   import §?§.b2Manifold;
   import §?§.b2ManifoldPoint;
   import §?§.b2TOIInput;
   import §?§.b2TimeOfImpact;
   import §?§.b2WorldManifold;
   import §[W§.b2Body;
   import §[W§.b2ContactListener;
   import §[W§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §,3§:uint = 1;
      
      b2internal static var §!?§:uint = 2;
      
      b2internal static var §0!2§:uint = 4;
      
      b2internal static var §7?§:uint = 8;
      
      b2internal static var §]!1§:uint = 16;
      
      b2internal static var §+w§:uint = 32;
      
      b2internal static var §]K§:uint = 64;
      
      private static var §"!W§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §;>§:uint;
      
      b2internal var §<]§:b2Contact;
      
      b2internal var §60§:b2Contact;
      
      b2internal var § ;§:b2ContactEdge;
      
      b2internal var §-^§:b2ContactEdge;
      
      b2internal var §-"§:b2Fixture;
      
      b2internal var §@8§:b2Fixture;
      
      b2internal var §'!,§:b2Manifold;
      
      b2internal var §<4§:b2Manifold;
      
      b2internal var §?!R§:Number;
      
      public function b2Contact()
      {
         this.§ ;§ = new b2ContactEdge();
         this.§-^§ = new b2ContactEdge();
         this.§'!,§ = new b2Manifold();
         this.§<4§ = new b2Manifold();
         super();
      }
      
      public function §4a§() : b2Manifold
      {
         return this.§'!,§;
      }
      
      public function §<!Z§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§-"§.GetBody();
         var _loc3_:b2Body = this.§@8§.GetBody();
         var _loc4_:b2Shape = this.§-"§.GetShape();
         var _loc5_:b2Shape = this.§@8§.GetShape();
         param1.§+!R§(this.§'!,§,_loc2_.§@#§(),_loc4_.each,_loc3_.§@#§(),_loc5_.each);
      }
      
      public function §>w§() : Boolean
      {
         return (this.§;>§ & b2internal::]!1) == b2internal::]!1;
      }
      
      public function §,!G§() : Boolean
      {
         return (this.§;>§ & b2internal::!?) == b2internal::!?;
      }
      
      public function §!Z§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;>§ |= b2internal::,3;
         }
         else
         {
            this.§;>§ &= ~b2internal::,3;
         }
      }
      
      public function §3!S§() : Boolean
      {
         return (this.§;>§ & b2internal::,3) == b2internal::,3;
      }
      
      public function §[!;§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;>§ |= b2internal::+w;
         }
         else
         {
            this.§;>§ &= ~b2internal::+w;
         }
      }
      
      public function §2u§() : Boolean
      {
         return (this.§;>§ & b2internal::+w) == b2internal::+w;
      }
      
      public function §25§() : b2Contact
      {
         return this.§60§;
      }
      
      public function §6!?§() : b2Fixture
      {
         return this.§-"§;
      }
      
      public function §4v§() : b2Fixture
      {
         return this.§@8§;
      }
      
      public function §@m§() : void
      {
         this.§;>§ |= b2internal::]K;
      }
      
      b2internal function §[X§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§;>§ = b2internal::+w;
         if(!param1 || !param2)
         {
            this.§-"§ = null;
            this.§@8§ = null;
            return;
         }
         if(param1.§3!S§() || param2.§3!S§())
         {
            this.§;>§ |= b2internal::,3;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§@i§() != b2Body.b2_dynamicBody || _loc3_.§@C§() || _loc4_.§@i§() != b2Body.b2_dynamicBody || _loc4_.§@C§())
         {
            this.§;>§ |= b2internal::!?;
         }
         this.§-"§ = param1;
         this.§@8§ = param2;
         this.§'!,§.§6!G§ = 0;
         this.§<]§ = null;
         this.§60§ = null;
         this.§ ;§.§1!=§ = null;
         this.§ ;§.§#h§ = null;
         this.§ ;§.§"!+§ = null;
         this.§ ;§.§]!7§ = null;
         this.§-^§.§1!=§ = null;
         this.§-^§.§#h§ = null;
         this.§-^§.§"!+§ = null;
         this.§-^§.§]!7§ = null;
      }
      
      b2internal function §6!O§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§<4§;
         this.§<4§ = this.§'!,§;
         this.§'!,§ = _loc2_;
         this.§;>§ |= b2internal::+w;
         var _loc3_:* = false;
         var _loc4_:* = (this.§;>§ & b2internal::]!1) == b2internal::]!1;
         var _loc5_:b2Body = this.§-"§.m_body;
         var _loc6_:b2Body = this.§@8§.m_body;
         var _loc7_:Boolean = this.§-"§.§'A§.§@!Z§(this.§@8§.§'A§);
         if(this.§;>§ & b2internal::,3)
         {
            if(_loc7_)
            {
               _loc8_ = this.§-"§.GetShape();
               _loc9_ = this.§@8§.GetShape();
               _loc10_ = _loc5_.§@#§();
               _loc11_ = _loc6_.§@#§();
               _loc3_ = Boolean(b2Shape.§@!Z§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§'!,§.§6!G§ = 0;
         }
         else
         {
            if(_loc5_.§@i§() != b2Body.b2_dynamicBody || _loc5_.§@C§() || _loc6_.§@i§() != b2Body.b2_dynamicBody || _loc6_.§@C§())
            {
               this.§;>§ |= b2internal::!?;
            }
            else
            {
               this.§;>§ &= ~b2internal::!?;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§'!,§.§6!G§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§'!,§.§6!G§)
               {
                  (_loc13_ = this.§'!,§.§,O§[_loc12_]).§>l§ = 0;
                  _loc13_.§+!O§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§<4§.§6!G§)
                  {
                     if((_loc16_ = this.§<4§.§,O§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§>l§ = _loc16_.§>l§;
                        _loc13_.§+!O§ = _loc16_.§+!O§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§'!,§.§6!G§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§;>§ |= b2internal::]!1;
         }
         else
         {
            this.§;>§ &= ~b2internal::]!1;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§;>§ & b2internal::,3) == 0)
         {
            param1.PreSolve(this,this.§<4§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §"-§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §"!W§.§,]§.Set(this.§-"§.GetShape());
         §"!W§.§ !&§.Set(this.§@8§.GetShape());
         §"!W§.§3Z§ = param1;
         §"!W§.§[h§ = param2;
         §"!W§.§1$§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§;!#§(§"!W§);
      }
   }
}
