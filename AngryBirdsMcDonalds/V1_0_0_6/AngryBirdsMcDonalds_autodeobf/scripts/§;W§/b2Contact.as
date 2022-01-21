package §;W§
{
   import §%!h§.b2Shape;
   import §7!5§.b2Body;
   import §7!5§.b2ContactListener;
   import §7!5§.b2Fixture;
   import §7!Y§.b2Settings;
   import §7!Y§.b2internal;
   import §8!n§.b2ContactID;
   import §8!n§.b2Manifold;
   import §8!n§.b2ManifoldPoint;
   import §8!n§.b2TOIInput;
   import §8!n§.b2TimeOfImpact;
   import §8!n§.b2WorldManifold;
   import §@![§.b2Sweep;
   import §@![§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §2!9§:uint = 1;
      
      b2internal static var §8!J§:uint = 2;
      
      b2internal static var §3!D§:uint = 4;
      
      b2internal static var §+P§:uint = 8;
      
      b2internal static var §+H§:uint = 16;
      
      b2internal static var §28§:uint = 32;
      
      b2internal static var §1?§:uint = 64;
      
      private static var §7!=§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §`M§:uint;
      
      b2internal var §;!Z§:b2Contact;
      
      b2internal var §%&§:b2Contact;
      
      b2internal var § j§:b2ContactEdge;
      
      b2internal var §!#§:b2ContactEdge;
      
      b2internal var §,o§:b2Fixture;
      
      b2internal var §0-§:b2Fixture;
      
      b2internal var §?Y§:b2Manifold;
      
      b2internal var §^!F§:b2Manifold;
      
      b2internal var §,!d§:Number;
      
      public function b2Contact()
      {
         this.§ j§ = new b2ContactEdge();
         this.§!#§ = new b2ContactEdge();
         this.§?Y§ = new b2Manifold();
         this.§^!F§ = new b2Manifold();
         super();
      }
      
      public function §@n§() : b2Manifold
      {
         return this.§?Y§;
      }
      
      public function §9!%§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§,o§.GetBody();
         var _loc3_:b2Body = this.§0-§.GetBody();
         var _loc4_:b2Shape = this.§,o§.GetShape();
         var _loc5_:b2Shape = this.§0-§.GetShape();
         param1.§1!O§(this.§?Y§,_loc2_.§@!;§(),_loc4_.§?!U§,_loc3_.§@!;§(),_loc5_.§?!U§);
      }
      
      public function §9U§() : Boolean
      {
         return (this.§`M§ & b2internal::+H) == b2internal::+H;
      }
      
      public function §;6§() : Boolean
      {
         return (this.§`M§ & b2internal::8!J) == b2internal::8!J;
      }
      
      public function §9C§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`M§ |= b2internal::2!9;
         }
         else
         {
            this.§`M§ &= ~b2internal::2!9;
         }
      }
      
      public function §1d§() : Boolean
      {
         return (this.§`M§ & b2internal::2!9) == b2internal::2!9;
      }
      
      public function §=n§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`M§ |= b2internal::28;
         }
         else
         {
            this.§`M§ &= ~b2internal::28;
         }
      }
      
      public function §-P§() : Boolean
      {
         return (this.§`M§ & b2internal::28) == b2internal::28;
      }
      
      public function §5w§() : b2Contact
      {
         return this.§%&§;
      }
      
      public function §"![§() : b2Fixture
      {
         return this.§,o§;
      }
      
      public function §5,§() : b2Fixture
      {
         return this.§0-§;
      }
      
      public function §9q§() : void
      {
         this.§`M§ |= b2internal::1?;
      }
      
      b2internal function §?!;§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§`M§ = b2internal::28;
         if(!param1 || !param2)
         {
            this.§,o§ = null;
            this.§0-§ = null;
            return;
         }
         if(param1.§1d§() || param2.§1d§())
         {
            this.§`M§ |= b2internal::2!9;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§&!B§() != b2Body.b2_dynamicBody || _loc3_.§'!_§() || _loc4_.§&!B§() != b2Body.b2_dynamicBody || _loc4_.§'!_§())
         {
            this.§`M§ |= b2internal::8!J;
         }
         this.§,o§ = param1;
         this.§0-§ = param2;
         this.§?Y§.§"e§ = 0;
         this.§;!Z§ = null;
         this.§%&§ = null;
         this.§ j§.§+!Y§ = null;
         this.§ j§.§!l§ = null;
         this.§ j§.§"!=§ = null;
         this.§ j§.§]=§ = null;
         this.§!#§.§+!Y§ = null;
         this.§!#§.§!l§ = null;
         this.§!#§.§"!=§ = null;
         this.§!#§.§]=§ = null;
      }
      
      b2internal function §`!j§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§^!F§;
         this.§^!F§ = this.§?Y§;
         this.§?Y§ = _loc2_;
         this.§`M§ |= b2internal::28;
         var _loc3_:* = false;
         var _loc4_:* = (this.§`M§ & b2internal::+H) == b2internal::+H;
         var _loc5_:b2Body = this.§,o§.m_body;
         var _loc6_:b2Body = this.§0-§.m_body;
         var _loc7_:Boolean = this.§,o§.§!1§.§!![§(this.§0-§.§!1§);
         if(this.§`M§ & b2internal::2!9)
         {
            if(_loc7_)
            {
               _loc8_ = this.§,o§.GetShape();
               _loc9_ = this.§0-§.GetShape();
               _loc10_ = _loc5_.§@!;§();
               _loc11_ = _loc6_.§@!;§();
               _loc3_ = Boolean(b2Shape.§!![§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§?Y§.§"e§ = 0;
         }
         else
         {
            if(_loc5_.§&!B§() != b2Body.b2_dynamicBody || _loc5_.§'!_§() || _loc6_.§&!B§() != b2Body.b2_dynamicBody || _loc6_.§'!_§())
            {
               this.§`M§ |= b2internal::8!J;
            }
            else
            {
               this.§`M§ &= ~b2internal::8!J;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§?Y§.§"e§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§?Y§.§"e§)
               {
                  (_loc13_ = this.§?Y§.§%Q§[_loc12_]).§ !T§ = 0;
                  _loc13_.§[!+§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§^!F§.§"e§)
                  {
                     if((_loc16_ = this.§^!F§.§%Q§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§ !T§ = _loc16_.§ !T§;
                        _loc13_.§[!+§ = _loc16_.§[!+§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§?Y§.§"e§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§`M§ |= b2internal::+H;
         }
         else
         {
            this.§`M§ &= ~b2internal::+H;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§`M§ & b2internal::2!9) == 0)
         {
            param1.PreSolve(this,this.§^!F§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §>_§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §7!=§.§1!'§.Set(this.§,o§.GetShape());
         §7!=§.§<!j§.Set(this.§0-§.GetShape());
         §7!=§.§;!7§ = param1;
         §7!=§.§@!J§ = param2;
         §7!=§.§'!o§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§ s§(§7!=§);
      }
   }
}
