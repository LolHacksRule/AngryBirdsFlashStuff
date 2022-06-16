package §`!k§
{
   import § "%§.b2Sweep;
   import § "%§.b2Transform;
   import §"#i§.b2Shape;
   import §'"$§.b2ContactID;
   import §'"$§.b2Manifold;
   import §'"$§.b2ManifoldPoint;
   import §'"$§.b2TOIInput;
   import §'"$§.b2TimeOfImpact;
   import §'"$§.b2WorldManifold;
   import §,!s§.b2Settings;
   import §,!s§.b2internal;
   import §4"O§.b2Body;
   import §4"O§.b2ContactListener;
   import §4"O§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §7!M§:uint = 1;
      
      b2internal static var §%y§:uint = 2;
      
      b2internal static var §1!0§:uint = 4;
      
      b2internal static var §&"r§:uint = 8;
      
      b2internal static var §1!c§:uint = 16;
      
      b2internal static var §8<§:uint = 32;
      
      b2internal static var §6&§:uint = 64;
      
      private static var §"#a§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var § $8§:uint;
      
      b2internal var §,p§:b2Contact;
      
      b2internal var §-!l§:b2Contact;
      
      b2internal var §5#n§:b2ContactEdge;
      
      b2internal var §`n§:b2ContactEdge;
      
      b2internal var §##y§:b2Fixture;
      
      b2internal var §0!m§:b2Fixture;
      
      b2internal var §9!p§:Boolean = false;
      
      b2internal var §1"j§:b2Manifold;
      
      b2internal var §@"b§:b2Manifold;
      
      b2internal var §>C§:Number;
      
      public function b2Contact()
      {
         this.§5#n§ = new b2ContactEdge();
         this.§`n§ = new b2ContactEdge();
         this.§1"j§ = new b2Manifold();
         this.§@"b§ = new b2Manifold();
         super();
      }
      
      public function §3!;§() : b2Manifold
      {
         return this.§1"j§;
      }
      
      public function §?!W§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§##y§.GetBody();
         var _loc3_:b2Body = this.§0!m§.GetBody();
         var _loc4_:b2Shape = this.§##y§.GetShape();
         var _loc5_:b2Shape = this.§0!m§.GetShape();
         param1.§?#W§(this.§1"j§,_loc2_.GetTransform(),_loc4_.§?!>§,_loc3_.GetTransform(),_loc5_.§?!>§);
      }
      
      public function §7!1§() : Boolean
      {
         return (this.§ $8§ & b2internal::1!c) == b2internal::1!c;
      }
      
      public function §,!o§() : Boolean
      {
         return (this.§ $8§ & b2internal::%y) == b2internal::%y;
      }
      
      public function §3$5§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ $8§ |= b2internal::7!M;
         }
         else
         {
            this.§ $8§ &= ~b2internal::7!M;
         }
      }
      
      public function §8r§() : Boolean
      {
         return (this.§ $8§ & b2internal::7!M) == b2internal::7!M;
      }
      
      public function §7<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ $8§ |= b2internal::8<;
         }
         else
         {
            this.§ $8§ &= ~b2internal::8<;
         }
      }
      
      public function §>!7§() : Boolean
      {
         return (this.§ $8§ & b2internal::8<) == b2internal::8<;
      }
      
      public function §^"y§() : b2Contact
      {
         return this.§-!l§;
      }
      
      public function §60§() : b2Fixture
      {
         return this.§##y§;
      }
      
      public function §#"Y§() : b2Fixture
      {
         return this.§0!m§;
      }
      
      public function §##Y§() : void
      {
         this.§ $8§ |= b2internal::6&;
      }
      
      b2internal function §1!M§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§ $8§ = b2internal::8<;
         if(!param1 || !param2)
         {
            this.§##y§ = null;
            this.§0!m§ = null;
            return;
         }
         if(param1.§8r§() || param2.§8r§())
         {
            this.§ $8§ |= b2internal::7!M;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§+L§() != b2Body.b2_dynamicBody || _loc3_.§!"L§() || _loc4_.§+L§() != b2Body.b2_dynamicBody || _loc4_.§!"L§())
         {
            this.§ $8§ |= b2internal::%y;
         }
         this.§##y§ = param1;
         this.§0!m§ = param2;
         this.§1"j§.§%!+§ = 0;
         this.§,p§ = null;
         this.§-!l§ = null;
         this.§5#n§.§%#d§ = null;
         this.§5#n§.§&"^§ = null;
         this.§5#n§.§%I§ = null;
         this.§5#n§.§!y§ = null;
         this.§`n§.§%#d§ = null;
         this.§`n§.§&"^§ = null;
         this.§`n§.§%I§ = null;
         this.§`n§.§!y§ = null;
      }
      
      b2internal function §4"`§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§@"b§;
         this.§@"b§ = this.§1"j§;
         this.§1"j§ = _loc2_;
         this.§ $8§ |= b2internal::8<;
         var _loc3_:* = false;
         var _loc4_:* = (this.§ $8§ & b2internal::1!c) == b2internal::1!c;
         var _loc5_:b2Body = this.§##y§.m_body;
         var _loc6_:b2Body = this.§0!m§.m_body;
         var _loc7_:Boolean = this.§##y§.§?"%§.§4"-§(this.§0!m§.§?"%§);
         if(this.§ $8§ & b2internal::7!M)
         {
            if(_loc7_)
            {
               _loc8_ = this.§##y§.GetShape();
               _loc9_ = this.§0!m§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§4"-§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§1"j§.§%!+§ = 0;
         }
         else
         {
            if(_loc5_.§+L§() != b2Body.b2_dynamicBody || _loc5_.§!"L§() || _loc6_.§+L§() != b2Body.b2_dynamicBody || _loc6_.§!"L§())
            {
               this.§ $8§ |= b2internal::%y;
            }
            else
            {
               this.§ $8§ &= ~b2internal::%y;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§1"j§.§%!+§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§1"j§.§%!+§)
               {
                  (_loc13_ = this.§1"j§.§"!e§[_loc12_]).§@#t§ = 0;
                  _loc13_.§2!x§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§@"b§.§%!+§)
                  {
                     if((_loc16_ = this.§@"b§.§"!e§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§@#t§ = _loc16_.§@#t§;
                        _loc13_.§2!x§ = _loc16_.§2!x§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§1"j§.§%!+§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§ $8§ |= b2internal::1!c;
         }
         else
         {
            this.§ $8§ &= ~b2internal::1!c;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§ $8§ & b2internal::7!M) == 0)
         {
            param1.PreSolve(this,this.§@"b§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §%p§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §"#a§.§6"e§.Set(this.§##y§.GetShape());
         §"#a§.§1#_§.Set(this.§0!m§.GetShape());
         §"#a§.§0!^§ = param1;
         §"#a§.§']§ = param2;
         §"#a§.§+#z§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§4#r§(§"#a§);
      }
   }
}
