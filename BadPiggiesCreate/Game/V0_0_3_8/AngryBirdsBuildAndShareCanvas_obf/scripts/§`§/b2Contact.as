package §`§
{
   import §&!n§.b2ContactID;
   import §&!n§.b2Manifold;
   import §&!n§.b2ManifoldPoint;
   import §&!n§.b2TOIInput;
   import §&!n§.b2TimeOfImpact;
   import §&!n§.b2WorldManifold;
   import §2!Q§.b2Shape;
   import §8,§.b2Settings;
   import §8,§.b2internal;
   import §9v§.b2Sweep;
   import §9v§.b2Transform;
   import §?!E§.b2Body;
   import §?!E§.b2ContactListener;
   import §?!E§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §2!j§:uint = 1;
      
      b2internal static var §;!I§:uint = 2;
      
      b2internal static var §3!h§:uint = 4;
      
      b2internal static var §0!<§:uint = 8;
      
      b2internal static var §@F§:uint = 16;
      
      b2internal static var § ",§:uint = 32;
      
      b2internal static var §+%§:uint = 64;
      
      private static var §;$§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §5"4§:uint;
      
      b2internal var §2<§:b2Contact;
      
      b2internal var §-!7§:b2Contact;
      
      b2internal var §0p§:b2ContactEdge;
      
      b2internal var §;X§:b2ContactEdge;
      
      b2internal var §+!u§:b2Fixture;
      
      b2internal var §6h§:b2Fixture;
      
      b2internal var §7`§:b2Manifold;
      
      b2internal var §5!P§:b2Manifold;
      
      b2internal var §^! §:Number;
      
      public function b2Contact()
      {
         this.§0p§ = new b2ContactEdge();
         this.§;X§ = new b2ContactEdge();
         this.§7`§ = new b2Manifold();
         this.§5!P§ = new b2Manifold();
         super();
      }
      
      public function §@"§() : b2Manifold
      {
         return this.§7`§;
      }
      
      public function §7!v§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§+!u§.GetBody();
         var _loc3_:b2Body = this.§6h§.GetBody();
         var _loc4_:b2Shape = this.§+!u§.GetShape();
         var _loc5_:b2Shape = this.§6h§.GetShape();
         param1.§`!&§(this.§7`§,_loc2_.§@w§(),_loc4_.§&!o§,_loc3_.§@w§(),_loc5_.§&!o§);
      }
      
      public function §," §() : Boolean
      {
         return (this.§5"4§ & b2internal::@F) == b2internal::@F;
      }
      
      public function §;e§() : Boolean
      {
         return (this.§5"4§ & b2internal::;!I) == b2internal::;!I;
      }
      
      public function § "6§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5"4§ |= b2internal::2!j;
         }
         else
         {
            this.§5"4§ &= ~b2internal::2!j;
         }
      }
      
      public function §`!F§() : Boolean
      {
         return (this.§5"4§ & b2internal::2!j) == b2internal::2!j;
      }
      
      public function §0!D§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5"4§ |= b2internal:: ",;
         }
         else
         {
            this.§5"4§ &= ~b2internal:: ",;
         }
      }
      
      public function §3Y§() : Boolean
      {
         return (this.§5"4§ & b2internal:: ",) == b2internal:: ",;
      }
      
      public function §%T§() : b2Contact
      {
         return this.§-!7§;
      }
      
      public function §2&§() : b2Fixture
      {
         return this.§+!u§;
      }
      
      public function §=!C§() : b2Fixture
      {
         return this.§6h§;
      }
      
      public function §^G§() : void
      {
         this.§5"4§ |= b2internal::+%;
      }
      
      b2internal function §8!<§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§5"4§ = b2internal:: ",;
         if(!param1 || !param2)
         {
            this.§+!u§ = null;
            this.§6h§ = null;
            return;
         }
         if(param1.§`!F§() || param2.§`!F§())
         {
            this.§5"4§ |= b2internal::2!j;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§7![§() != b2Body.b2_dynamicBody || _loc3_.§6!?§() || _loc4_.§7![§() != b2Body.b2_dynamicBody || _loc4_.§6!?§())
         {
            this.§5"4§ |= b2internal::;!I;
         }
         this.§+!u§ = param1;
         this.§6h§ = param2;
         this.§7`§.§@!p§ = 0;
         this.§2<§ = null;
         this.§-!7§ = null;
         this.§0p§.§^!;§ = null;
         this.§0p§.§,"4§ = null;
         this.§0p§.§9"#§ = null;
         this.§0p§.§6!,§ = null;
         this.§;X§.§^!;§ = null;
         this.§;X§.§,"4§ = null;
         this.§;X§.§9"#§ = null;
         this.§;X§.§6!,§ = null;
      }
      
      b2internal function §0a§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§5!P§;
         this.§5!P§ = this.§7`§;
         this.§7`§ = _loc2_;
         this.§5"4§ |= b2internal:: ",;
         var _loc3_:* = false;
         var _loc4_:* = (this.§5"4§ & b2internal::@F) == b2internal::@F;
         var _loc5_:b2Body = this.§+!u§.m_body;
         var _loc6_:b2Body = this.§6h§.m_body;
         var _loc7_:Boolean = this.§+!u§.§+R§.§=!1§(this.§6h§.§+R§);
         if(this.§5"4§ & b2internal::2!j)
         {
            if(_loc7_)
            {
               _loc8_ = this.§+!u§.GetShape();
               _loc9_ = this.§6h§.GetShape();
               _loc10_ = _loc5_.§@w§();
               _loc11_ = _loc6_.§@w§();
               _loc3_ = Boolean(b2Shape.§=!1§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§7`§.§@!p§ = 0;
         }
         else
         {
            if(_loc5_.§7![§() != b2Body.b2_dynamicBody || _loc5_.§6!?§() || _loc6_.§7![§() != b2Body.b2_dynamicBody || _loc6_.§6!?§())
            {
               this.§5"4§ |= b2internal::;!I;
            }
            else
            {
               this.§5"4§ &= ~b2internal::;!I;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§7`§.§@!p§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§7`§.§@!p§)
               {
                  (_loc13_ = this.§7`§.§'!N§[_loc12_]).§1M§ = 0;
                  _loc13_.§4!M§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§5!P§.§@!p§)
                  {
                     if((_loc16_ = this.§5!P§.§'!N§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§1M§ = _loc16_.§1M§;
                        _loc13_.§4!M§ = _loc16_.§4!M§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§7`§.§@!p§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§5"4§ |= b2internal::@F;
         }
         else
         {
            this.§5"4§ &= ~b2internal::@F;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§5"4§ & b2internal::2!j) == 0)
         {
            param1.PreSolve(this,this.§5!P§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §;n§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §;$§.§+!k§.Set(this.§+!u§.GetShape());
         §;$§.§"!^§.Set(this.§6h§.GetShape());
         §;$§.§'!f§ = param1;
         §;$§.§`!m§ = param2;
         §;$§.§0!z§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§2!0§(§;$§);
      }
   }
}
