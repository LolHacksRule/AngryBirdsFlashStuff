package §6!9§
{
   import §#!"§.b2Shape;
   import §&L§.b2Sweep;
   import §&L§.b2Transform;
   import §'s§.b2ContactID;
   import §'s§.b2Manifold;
   import §'s§.b2ManifoldPoint;
   import §'s§.b2TOIInput;
   import §'s§.b2TimeOfImpact;
   import §'s§.b2WorldManifold;
   import §+!,§.b2Settings;
   import §+!,§.b2internal;
   import §]=§.b2Body;
   import §]=§.b2ContactListener;
   import §]=§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §^!?§:uint = 1;
      
      b2internal static var §62§:uint = 2;
      
      b2internal static var §'v§:uint = 4;
      
      b2internal static var §%!<§:uint = 8;
      
      b2internal static var §[z§:uint = 16;
      
      b2internal static var §25§:uint = 32;
      
      b2internal static var §%4§:uint = 64;
      
      private static var §7!'§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §3! §:uint;
      
      b2internal var §7!Q§:b2Contact;
      
      b2internal var §,1§:b2Contact;
      
      b2internal var §<b§:b2ContactEdge;
      
      b2internal var § !]§:b2ContactEdge;
      
      b2internal var §41§:b2Fixture;
      
      b2internal var §[0§:b2Fixture;
      
      b2internal var §^O§:b2Manifold;
      
      b2internal var §[@§:b2Manifold;
      
      b2internal var § !k§:Number;
      
      public function b2Contact()
      {
         this.§<b§ = new b2ContactEdge();
         this.§ !]§ = new b2ContactEdge();
         this.§^O§ = new b2Manifold();
         this.§[@§ = new b2Manifold();
         super();
      }
      
      public function §8!P§() : b2Manifold
      {
         return this.§^O§;
      }
      
      public function §2h§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§41§.GetBody();
         var _loc3_:b2Body = this.§[0§.GetBody();
         var _loc4_:b2Shape = this.§41§.GetShape();
         var _loc5_:b2Shape = this.§[0§.GetShape();
         param1.§;o§(this.§^O§,_loc2_.§%!B§(),_loc4_.§5!`§,_loc3_.§%!B§(),_loc5_.§5!`§);
      }
      
      public function §9b§() : Boolean
      {
         return (this.§3! § & §[z§) == §[z§;
      }
      
      public function §;!2§() : Boolean
      {
         return (this.§3! § & §62§) == §62§;
      }
      
      public function §`7§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3! § |= §^!?§;
         }
         else
         {
            this.§3! § &= ~§^!?§;
         }
      }
      
      public function §?!V§() : Boolean
      {
         return (this.§3! § & §^!?§) == §^!?§;
      }
      
      public function §[!_§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3! § |= §25§;
         }
         else
         {
            this.§3! § &= ~§25§;
         }
      }
      
      public function §,2§() : Boolean
      {
         return (this.§3! § & §25§) == §25§;
      }
      
      public function §70§() : b2Contact
      {
         return this.§,1§;
      }
      
      public function §2!N§() : b2Fixture
      {
         return this.§41§;
      }
      
      public function §`!Q§() : b2Fixture
      {
         return this.§[0§;
      }
      
      public function §>0§() : void
      {
         this.§3! § |= §%4§;
      }
      
      b2internal function §@!D§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§3! § = §25§;
         if(!param1 || !param2)
         {
            this.§41§ = null;
            this.§[0§ = null;
            return;
         }
         if(param1.§?!V§() || param2.§?!V§())
         {
            this.§3! § |= §^!?§;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§-V§() != b2Body.b2_dynamicBody || _loc3_.§]^§() || _loc4_.§-V§() != b2Body.b2_dynamicBody || _loc4_.§]^§())
         {
            this.§3! § |= §62§;
         }
         this.§41§ = param1;
         this.§[0§ = param2;
         this.§^O§.§'!j§ = 0;
         this.§7!Q§ = null;
         this.§,1§ = null;
         this.§<b§.§4! § = null;
         this.§<b§.§;W§ = null;
         this.§<b§.§2B§ = null;
         this.§<b§.§3z§ = null;
         this.§ !]§.§4! § = null;
         this.§ !]§.§;W§ = null;
         this.§ !]§.§2B§ = null;
         this.§ !]§.§3z§ = null;
      }
      
      b2internal function § !=§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§[@§;
         this.§[@§ = this.§^O§;
         this.§^O§ = _loc2_;
         this.§3! § |= §25§;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = (this.§3! § & §[z§) == §[z§;
         var _loc5_:b2Body = this.§41§.m_body;
         var _loc6_:b2Body = this.§[0§.m_body;
         var _loc7_:Boolean = this.§41§.§!!7§.§@w§(this.§[0§.§!!7§);
         if(this.§3! § & §^!?§)
         {
            if(_loc7_)
            {
               _loc8_ = this.§41§.GetShape();
               _loc9_ = this.§[0§.GetShape();
               _loc10_ = _loc5_.§%!B§();
               _loc11_ = _loc6_.§%!B§();
               _loc3_ = b2Shape.§@w§(_loc8_,_loc10_,_loc9_,_loc11_);
            }
            this.§^O§.§'!j§ = 0;
         }
         else
         {
            if(_loc5_.§-V§() != b2Body.b2_dynamicBody || _loc5_.§]^§() || _loc6_.§-V§() != b2Body.b2_dynamicBody || _loc6_.§]^§())
            {
               this.§3! § |= §62§;
            }
            else
            {
               this.§3! § &= ~§62§;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§^O§.§'!j§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§^O§.§'!j§)
               {
                  _loc13_ = this.§^O§.§`!$§[_loc12_];
                  _loc13_.§-!L§ = 0;
                  _loc13_.§^s§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§[@§.§'!j§)
                  {
                     _loc16_ = this.§[@§.§`!$§[_loc15_];
                     if(_loc16_.m_id.key == _loc14_.key)
                     {
                        _loc13_.§-!L§ = _loc16_.§-!L§;
                        _loc13_.§^s§ = _loc16_.§^s§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§^O§.§'!j§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§3! § |= §[z§;
         }
         else
         {
            this.§3! § &= ~§[z§;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§3! § & §^!?§) == 0)
         {
            param1.PreSolve(this,this.§[@§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §?z§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §7!'§.§5A§.Set(this.§41§.GetShape());
         §7!'§.§"T§.Set(this.§[0§.GetShape());
         §7!'§.§6!h§ = param1;
         §7!'§.§`!@§ = param2;
         §7!'§.§ !%§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§<'§(§7!'§);
      }
   }
}
