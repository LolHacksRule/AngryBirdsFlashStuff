package §0# §
{
   import §0J§.b2ContactID;
   import §0J§.b2Manifold;
   import §0J§.b2ManifoldPoint;
   import §0J§.b2TOIInput;
   import §0J§.b2TimeOfImpact;
   import §0J§.b2WorldManifold;
   import §8#t§.b2Body;
   import §8#t§.b2ContactListener;
   import §8#t§.b2Fixture;
   import §[!3§.b2Settings;
   import §[!3§.b2internal;
   import §]!o§.b2Shape;
   import §`# §.b2Sweep;
   import §`# §.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §=!s§:uint = 1;
      
      b2internal static var §=#<§:uint = 2;
      
      b2internal static var §'#L§:uint = 4;
      
      b2internal static var §>E§:uint = 8;
      
      b2internal static var §4"C§:uint = 16;
      
      b2internal static var §+#"§:uint = 32;
      
      b2internal static var §?!=§:uint = 64;
      
      private static var §5!u§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §;!O§:uint;
      
      b2internal var §@!w§:b2Contact;
      
      b2internal var §0$9§:b2Contact;
      
      b2internal var §26§:b2ContactEdge;
      
      b2internal var § !Q§:b2ContactEdge;
      
      b2internal var §7";§:b2Fixture;
      
      b2internal var §4"J§:b2Fixture;
      
      b2internal var §2!I§:Boolean = false;
      
      b2internal var §0!T§:b2Manifold;
      
      b2internal var §%s§:b2Manifold;
      
      b2internal var §%"B§:Number;
      
      public function b2Contact()
      {
         this.§26§ = new b2ContactEdge();
         this.§ !Q§ = new b2ContactEdge();
         this.§0!T§ = new b2Manifold();
         this.§%s§ = new b2Manifold();
         super();
      }
      
      public function §8#2§() : b2Manifold
      {
         return this.§0!T§;
      }
      
      public function §9# §(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§7";§.GetBody();
         var _loc3_:b2Body = this.§4"J§.GetBody();
         var _loc4_:b2Shape = this.§7";§.GetShape();
         var _loc5_:b2Shape = this.§4"J§.GetShape();
         param1.§7##§(this.§0!T§,_loc2_.GetTransform(),_loc4_.§,"k§,_loc3_.GetTransform(),_loc5_.§,"k§);
      }
      
      public function §9r§() : Boolean
      {
         return (this.§;!O§ & b2internal::4"C) == b2internal::4"C;
      }
      
      public function §+$!§() : Boolean
      {
         return (this.§;!O§ & b2internal::=#<) == b2internal::=#<;
      }
      
      public function §'" §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!O§ |= b2internal::=!s;
         }
         else
         {
            this.§;!O§ &= ~b2internal::=!s;
         }
      }
      
      public function §?"]§() : Boolean
      {
         return (this.§;!O§ & b2internal::=!s) == b2internal::=!s;
      }
      
      public function §6!0§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!O§ |= b2internal::+#";
         }
         else
         {
            this.§;!O§ &= ~b2internal::+#";
         }
      }
      
      public function §@!v§() : Boolean
      {
         return (this.§;!O§ & b2internal::+#") == b2internal::+#";
      }
      
      public function §+c§() : b2Contact
      {
         return this.§0$9§;
      }
      
      public function §7"-§() : b2Fixture
      {
         return this.§7";§;
      }
      
      public function §5"7§() : b2Fixture
      {
         return this.§4"J§;
      }
      
      public function §?"8§() : void
      {
         this.§;!O§ |= b2internal::?!=;
      }
      
      b2internal function §9#t§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§;!O§ = b2internal::+#";
         if(!param1 || !param2)
         {
            this.§7";§ = null;
            this.§4"J§ = null;
            return;
         }
         if(param1.§?"]§() || param2.§?"]§())
         {
            this.§;!O§ |= b2internal::=!s;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§52§() != b2Body.b2_dynamicBody || _loc3_.§ #H§() || _loc4_.§52§() != b2Body.b2_dynamicBody || _loc4_.§ #H§())
         {
            this.§;!O§ |= b2internal::=#<;
         }
         this.§7";§ = param1;
         this.§4"J§ = param2;
         this.§0!T§.§?!j§ = 0;
         this.§@!w§ = null;
         this.§0$9§ = null;
         this.§26§.§?"B§ = null;
         this.§26§.§5§ = null;
         this.§26§.§0!>§ = null;
         this.§26§.§2#§ = null;
         this.§ !Q§.§?"B§ = null;
         this.§ !Q§.§5§ = null;
         this.§ !Q§.§0!>§ = null;
         this.§ !Q§.§2#§ = null;
      }
      
      b2internal function §-"$§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§%s§;
         this.§%s§ = this.§0!T§;
         this.§0!T§ = _loc2_;
         this.§;!O§ |= b2internal::+#";
         var _loc3_:* = false;
         var _loc4_:* = (this.§;!O§ & b2internal::4"C) == b2internal::4"C;
         var _loc5_:b2Body = this.§7";§.m_body;
         var _loc6_:b2Body = this.§4"J§.m_body;
         var _loc7_:Boolean = this.§7";§.§2$1§.§!"5§(this.§4"J§.§2$1§);
         if(this.§;!O§ & b2internal::=!s)
         {
            if(_loc7_)
            {
               _loc8_ = this.§7";§.GetShape();
               _loc9_ = this.§4"J§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§!"5§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§0!T§.§?!j§ = 0;
         }
         else
         {
            if(_loc5_.§52§() != b2Body.b2_dynamicBody || _loc5_.§ #H§() || _loc6_.§52§() != b2Body.b2_dynamicBody || _loc6_.§ #H§())
            {
               this.§;!O§ |= b2internal::=#<;
            }
            else
            {
               this.§;!O§ &= ~b2internal::=#<;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§0!T§.§?!j§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§0!T§.§?!j§)
               {
                  (_loc13_ = this.§0!T§.§%R§[_loc12_]).§+#[§ = 0;
                  _loc13_.§[!+§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§%s§.§?!j§)
                  {
                     if((_loc16_ = this.§%s§.§%R§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§+#[§ = _loc16_.§+#[§;
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
               this.§0!T§.§?!j§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§;!O§ |= b2internal::4"C;
         }
         else
         {
            this.§;!O§ &= ~b2internal::4"C;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§;!O§ & b2internal::=!s) == 0)
         {
            param1.PreSolve(this,this.§%s§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §5#%§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §5!u§.§[#G§.Set(this.§7";§.GetShape());
         §5!u§.§[$@§.Set(this.§4"J§.GetShape());
         §5!u§.§@!+§ = param1;
         §5!u§.§<!N§ = param2;
         §5!u§.§`!M§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§"$+§(§5!u§);
      }
   }
}
