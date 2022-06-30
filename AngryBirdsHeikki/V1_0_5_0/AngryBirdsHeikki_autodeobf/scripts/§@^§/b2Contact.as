package §@^§
{
   import §%]§.b2ContactID;
   import §%]§.b2Manifold;
   import §%]§.b2ManifoldPoint;
   import §%]§.b2TOIInput;
   import §%]§.b2TimeOfImpact;
   import §%]§.b2WorldManifold;
   import §,!3§.b2Sweep;
   import §,!3§.b2Transform;
   import §3'§.b2Settings;
   import §3'§.b2internal;
   import §=u§.b2Shape;
   import §?!F§.b2Body;
   import §?!F§.b2ContactListener;
   import §?!F§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §,$§:uint = 1;
      
      b2internal static var § <§:uint = 2;
      
      b2internal static var §?j§:uint = 4;
      
      b2internal static var §"!=§:uint = 8;
      
      b2internal static var §?"§:uint = 16;
      
      b2internal static var §+!X§:uint = 32;
      
      b2internal static var §0s§:uint = 64;
      
      private static var §,!I§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §+o§:uint;
      
      b2internal var §8§:b2Contact;
      
      b2internal var §+[§:b2Contact;
      
      b2internal var §-!0§:b2ContactEdge;
      
      b2internal var §,Q§:b2ContactEdge;
      
      b2internal var §9!0§:b2Fixture;
      
      b2internal var §#;§:b2Fixture;
      
      b2internal var §#!"§:b2Manifold;
      
      b2internal var §@j§:b2Manifold;
      
      b2internal var §&Y§:Number;
      
      public function b2Contact()
      {
         this.§-!0§ = new b2ContactEdge();
         this.§,Q§ = new b2ContactEdge();
         this.§#!"§ = new b2Manifold();
         this.§@j§ = new b2Manifold();
         super();
      }
      
      public function §8!G§() : b2Manifold
      {
         return this.§#!"§;
      }
      
      public function §9]§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§9!0§.GetBody();
         var _loc3_:b2Body = this.§#;§.GetBody();
         var _loc4_:b2Shape = this.§9!0§.GetShape();
         var _loc5_:b2Shape = this.§#;§.GetShape();
         param1.§^!R§(this.§#!"§,_loc2_.§50§(),_loc4_.§ !W§,_loc3_.§50§(),_loc5_.§ !W§);
      }
      
      public function §-Y§() : Boolean
      {
         return (this.§+o§ & b2internal::?") == b2internal::?";
      }
      
      public function §!!J§() : Boolean
      {
         return (this.§+o§ & b2internal:: <) == b2internal:: <;
      }
      
      public function §<!P§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+o§ |= b2internal::,$;
         }
         else
         {
            this.§+o§ &= ~b2internal::,$;
         }
      }
      
      public function §&!O§() : Boolean
      {
         return (this.§+o§ & b2internal::,$) == b2internal::,$;
      }
      
      public function §&i§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+o§ |= b2internal::+!X;
         }
         else
         {
            this.§+o§ &= ~b2internal::+!X;
         }
      }
      
      public function §4!$§() : Boolean
      {
         return (this.§+o§ & b2internal::+!X) == b2internal::+!X;
      }
      
      public function §'Q§() : b2Contact
      {
         return this.§+[§;
      }
      
      public function §@!$§() : b2Fixture
      {
         return this.§9!0§;
      }
      
      public function §1!+§() : b2Fixture
      {
         return this.§#;§;
      }
      
      public function §,!'§() : void
      {
         this.§+o§ |= b2internal::0s;
      }
      
      b2internal function §super§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§+o§ = b2internal::+!X;
         if(!param1 || !param2)
         {
            this.§9!0§ = null;
            this.§#;§ = null;
            return;
         }
         if(param1.§&!O§() || param2.§&!O§())
         {
            this.§+o§ |= b2internal::,$;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§[!H§() != b2Body.b2_dynamicBody || _loc3_.§try §() || _loc4_.§[!H§() != b2Body.b2_dynamicBody || _loc4_.§try §())
         {
            this.§+o§ |= b2internal:: <;
         }
         this.§9!0§ = param1;
         this.§#;§ = param2;
         this.§#!"§.§in § = 0;
         this.§8§ = null;
         this.§+[§ = null;
         this.§-!0§.§;![§ = null;
         this.§-!0§.§>[§ = null;
         this.§-!0§.§"R§ = null;
         this.§-!0§.§%!R§ = null;
         this.§,Q§.§;![§ = null;
         this.§,Q§.§>[§ = null;
         this.§,Q§.§"R§ = null;
         this.§,Q§.§%!R§ = null;
      }
      
      b2internal function §`!b§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§@j§;
         this.§@j§ = this.§#!"§;
         this.§#!"§ = _loc2_;
         this.§+o§ |= b2internal::+!X;
         var _loc3_:* = false;
         var _loc4_:* = (this.§+o§ & b2internal::?") == b2internal::?";
         var _loc5_:b2Body = this.§9!0§.m_body;
         var _loc6_:b2Body = this.§#;§.m_body;
         var _loc7_:Boolean = this.§9!0§.§2l§.§#8§(this.§#;§.§2l§);
         if(this.§+o§ & b2internal::,$)
         {
            if(_loc7_)
            {
               _loc8_ = this.§9!0§.GetShape();
               _loc9_ = this.§#;§.GetShape();
               _loc10_ = _loc5_.§50§();
               _loc11_ = _loc6_.§50§();
               _loc3_ = Boolean(b2Shape.§#8§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§#!"§.§in § = 0;
         }
         else
         {
            if(_loc5_.§[!H§() != b2Body.b2_dynamicBody || _loc5_.§try §() || _loc6_.§[!H§() != b2Body.b2_dynamicBody || _loc6_.§try §())
            {
               this.§+o§ |= b2internal:: <;
            }
            else
            {
               this.§+o§ &= ~b2internal:: <;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§#!"§.§in § > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§#!"§.§in §)
               {
                  (_loc13_ = this.§#!"§.§1N§[_loc12_]).§@T§ = 0;
                  _loc13_.§8!3§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§@j§.§in §)
                  {
                     if((_loc16_ = this.§@j§.§1N§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§@T§ = _loc16_.§@T§;
                        _loc13_.§8!3§ = _loc16_.§8!3§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§#!"§.§in § = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§+o§ |= b2internal::?";
         }
         else
         {
            this.§+o§ &= ~b2internal::?";
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§+o§ & b2internal::,$) == 0)
         {
            param1.PreSolve(this,this.§@j§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §;<§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §,!I§.§`!0§.Set(this.§9!0§.GetShape());
         §,!I§.§?!2§.Set(this.§#;§.GetShape());
         §,!I§.§ -§ = param1;
         §,!I§.§,!F§ = param2;
         §,!I§.§%u§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§#!W§(§,!I§);
      }
   }
}
