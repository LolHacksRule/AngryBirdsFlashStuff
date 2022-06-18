package §[#L§
{
   import §%!9§.b2Sweep;
   import §%!9§.b2Transform;
   import §+#f§.b2Shape;
   import §1!+§.b2Body;
   import §1!+§.b2ContactListener;
   import §1!+§.b2Fixture;
   import §7"^§.b2ContactID;
   import §7"^§.b2Manifold;
   import §7"^§.b2ManifoldPoint;
   import §7"^§.b2TOIInput;
   import §7"^§.b2TimeOfImpact;
   import §7"^§.b2WorldManifold;
   import §9#K§.b2Settings;
   import §9#K§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §"2§:uint = 1;
      
      b2internal static var §63§:uint = 2;
      
      b2internal static var §>?§:uint = 4;
      
      b2internal static var §>U§:uint = 8;
      
      b2internal static var §`A§:uint = 16;
      
      b2internal static var §?$1§:uint = 32;
      
      b2internal static var §9S§:uint = 64;
      
      private static var §^#;§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §9"i§:uint;
      
      b2internal var §6T§:b2Contact;
      
      b2internal var §3!=§:b2Contact;
      
      b2internal var § #l§:b2ContactEdge;
      
      b2internal var §;#c§:b2ContactEdge;
      
      b2internal var §'!9§:b2Fixture;
      
      b2internal var §%#h§:b2Fixture;
      
      b2internal var §4#`§:Boolean = false;
      
      b2internal var §%#B§:b2Manifold;
      
      b2internal var §&!P§:b2Manifold;
      
      b2internal var §>!F§:Number;
      
      public function b2Contact()
      {
         this.§ #l§ = new b2ContactEdge();
         this.§;#c§ = new b2ContactEdge();
         this.§%#B§ = new b2Manifold();
         this.§&!P§ = new b2Manifold();
         super();
      }
      
      public function §!!P§() : b2Manifold
      {
         return this.§%#B§;
      }
      
      public function §`!k§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§'!9§.GetBody();
         var _loc3_:b2Body = this.§%#h§.GetBody();
         var _loc4_:b2Shape = this.§'!9§.GetShape();
         var _loc5_:b2Shape = this.§%#h§.GetShape();
         param1.§6#Y§(this.§%#B§,_loc2_.GetTransform(),_loc4_.§[1§,_loc3_.GetTransform(),_loc5_.§[1§);
      }
      
      public function §1$2§() : Boolean
      {
         return (this.§9"i§ & b2internal::`A) == b2internal::`A;
      }
      
      public function §4!2§() : Boolean
      {
         return (this.§9"i§ & b2internal::63) == b2internal::63;
      }
      
      public function §9!`§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9"i§ |= b2internal::"2;
         }
         else
         {
            this.§9"i§ &= ~b2internal::"2;
         }
      }
      
      public function §1!`§() : Boolean
      {
         return (this.§9"i§ & b2internal::"2) == b2internal::"2;
      }
      
      public function §^!m§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9"i§ |= b2internal::?$1;
         }
         else
         {
            this.§9"i§ &= ~b2internal::?$1;
         }
      }
      
      public function §&#%§() : Boolean
      {
         return (this.§9"i§ & b2internal::?$1) == b2internal::?$1;
      }
      
      public function §,=§() : b2Contact
      {
         return this.§3!=§;
      }
      
      public function §]"v§() : b2Fixture
      {
         return this.§'!9§;
      }
      
      public function §4!i§() : b2Fixture
      {
         return this.§%#h§;
      }
      
      public function §8#x§() : void
      {
         this.§9"i§ |= b2internal::9S;
      }
      
      b2internal function §=!H§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§9"i§ = b2internal::?$1;
         if(!param1 || !param2)
         {
            this.§'!9§ = null;
            this.§%#h§ = null;
            return;
         }
         if(param1.§1!`§() || param2.§1!`§())
         {
            this.§9"i§ |= b2internal::"2;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§%"+§() != b2Body.b2_dynamicBody || _loc3_.§?Z§() || _loc4_.§%"+§() != b2Body.b2_dynamicBody || _loc4_.§?Z§())
         {
            this.§9"i§ |= b2internal::63;
         }
         this.§'!9§ = param1;
         this.§%#h§ = param2;
         this.§%#B§.§@"i§ = 0;
         this.§6T§ = null;
         this.§3!=§ = null;
         this.§ #l§.§,#v§ = null;
         this.§ #l§.§+"`§ = null;
         this.§ #l§.§+!e§ = null;
         this.§ #l§.§-#J§ = null;
         this.§;#c§.§,#v§ = null;
         this.§;#c§.§+"`§ = null;
         this.§;#c§.§+!e§ = null;
         this.§;#c§.§-#J§ = null;
      }
      
      b2internal function §#!2§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§&!P§;
         this.§&!P§ = this.§%#B§;
         this.§%#B§ = _loc2_;
         this.§9"i§ |= b2internal::?$1;
         var _loc3_:* = false;
         var _loc4_:* = (this.§9"i§ & b2internal::`A) == b2internal::`A;
         var _loc5_:b2Body = this.§'!9§.m_body;
         var _loc6_:b2Body = this.§%#h§.m_body;
         var _loc7_:Boolean = this.§'!9§.§;#8§.§+$&§(this.§%#h§.§;#8§);
         if(this.§9"i§ & b2internal::"2)
         {
            if(_loc7_)
            {
               _loc8_ = this.§'!9§.GetShape();
               _loc9_ = this.§%#h§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§+$&§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§%#B§.§@"i§ = 0;
         }
         else
         {
            if(_loc5_.§%"+§() != b2Body.b2_dynamicBody || _loc5_.§?Z§() || _loc6_.§%"+§() != b2Body.b2_dynamicBody || _loc6_.§?Z§())
            {
               this.§9"i§ |= b2internal::63;
            }
            else
            {
               this.§9"i§ &= ~b2internal::63;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§%#B§.§@"i§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§%#B§.§@"i§)
               {
                  (_loc13_ = this.§%#B§.§,"m§[_loc12_]).§,"$§ = 0;
                  _loc13_.§@M§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§&!P§.§@"i§)
                  {
                     if((_loc16_ = this.§&!P§.§,"m§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§,"$§ = _loc16_.§,"$§;
                        _loc13_.§@M§ = _loc16_.§@M§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§%#B§.§@"i§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§9"i§ |= b2internal::`A;
         }
         else
         {
            this.§9"i§ &= ~b2internal::`A;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§9"i§ & b2internal::"2) == 0)
         {
            param1.PreSolve(this,this.§&!P§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §@t§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §^#;§.§7"'§.Set(this.§'!9§.GetShape());
         §^#;§.§>z§.Set(this.§%#h§.GetShape());
         §^#;§.§-C§ = param1;
         §^#;§.§[!<§ = param2;
         §^#;§.§0b§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§2"2§(§^#;§);
      }
   }
}
