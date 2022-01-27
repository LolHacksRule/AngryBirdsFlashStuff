package
{
   import §1!2§.b2Shape;
   import §7!I§.b2Settings;
   import §7!I§.b2internal;
   import §7"A§.b2Sweep;
   import §7"A§.b2Transform;
   import §>"_§.b2Body;
   import §>"_§.b2ContactListener;
   import §>"_§.b2Fixture;
   import §>r§.b2ContactID;
   import §>r§.b2Manifold;
   import §>r§.b2ManifoldPoint;
   import §>r§.b2TOIInput;
   import §>r§.b2TimeOfImpact;
   import §>r§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §%C§:uint = 1;
      
      b2internal static var §7![§:uint = 2;
      
      b2internal static var §]"5§:uint = 4;
      
      b2internal static var §+!_§:uint = 8;
      
      b2internal static var §;"6§:uint = 16;
      
      b2internal static var §+#%§:uint = 32;
      
      b2internal static var §[&§:uint = 64;
      
      private static var §6T§:b2TOIInput = new b2TOIInput();
       
      
      private var §["K§:Boolean = false;
      
      b2internal var §7!D§:uint;
      
      b2internal var §%" §:b2Contact;
      
      b2internal var §?"Z§:b2Contact;
      
      b2internal var §'!J§:b2ContactEdge;
      
      b2internal var §@!'§:b2ContactEdge;
      
      b2internal var §,"2§:b2Fixture;
      
      b2internal var §1M§:b2Fixture;
      
      b2internal var §-#3§:b2Manifold;
      
      b2internal var §"#+§:b2Manifold;
      
      b2internal var §1!x§:Number;
      
      public function b2Contact()
      {
         this.§'!J§ = new b2ContactEdge();
         this.§@!'§ = new b2ContactEdge();
         this.§-#3§ = new b2Manifold();
         this.§"#+§ = new b2Manifold();
         super();
      }
      
      public function §3@§() : b2Manifold
      {
         return this.§-#3§;
      }
      
      public function §&<§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§,"2§.GetBody();
         var _loc3_:b2Body = this.§1M§.GetBody();
         var _loc4_:b2Shape = this.§,"2§.GetShape();
         var _loc5_:b2Shape = this.§1M§.GetShape();
         param1.§>D§(this.§-#3§,_loc2_.GetTransform(),_loc4_.§#J§,_loc3_.GetTransform(),_loc5_.§#J§);
      }
      
      public function §=#4§() : Boolean
      {
         return (this.§7!D§ & b2internal::;"6) == b2internal::;"6;
      }
      
      public function §+w§() : Boolean
      {
         return (this.§7!D§ & b2internal::7![) == b2internal::7![;
      }
      
      public function §9"[§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7!D§ |= b2internal::%C;
         }
         else
         {
            this.§7!D§ &= ~b2internal::%C;
         }
      }
      
      public function §]!a§() : Boolean
      {
         return (this.§7!D§ & b2internal::%C) == b2internal::%C;
      }
      
      public function §2"3§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7!D§ |= b2internal::+#%;
         }
         else
         {
            this.§7!D§ &= ~b2internal::+#%;
         }
      }
      
      public function §6",§() : Boolean
      {
         return (this.§7!D§ & b2internal::+#%) == b2internal::+#%;
      }
      
      public function §^a§() : b2Contact
      {
         return this.§?"Z§;
      }
      
      public function §%"<§() : b2Fixture
      {
         return this.§,"2§;
      }
      
      public function §&"!§() : b2Fixture
      {
         return this.§1M§;
      }
      
      public function §]!U§() : void
      {
         this.§7!D§ |= b2internal::[&;
      }
      
      b2internal function §`"v§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§7!D§ = b2internal::+#%;
         if(!param1 || !param2)
         {
            this.§,"2§ = null;
            this.§1M§ = null;
            return;
         }
         if(param1.§]!a§() || param2.§]!a§())
         {
            this.§7!D§ |= b2internal::%C;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§+"M§() != b2Body.b2_dynamicBody || _loc3_.§+"R§() || _loc4_.§+"M§() != b2Body.b2_dynamicBody || _loc4_.§+"R§())
         {
            this.§7!D§ |= b2internal::7![;
         }
         this.§,"2§ = param1;
         this.§1M§ = param2;
         this.§-#3§.§="#§ = 0;
         this.§%" § = null;
         this.§?"Z§ = null;
         this.§'!J§.§;!@§ = null;
         this.§'!J§.§>!p§ = null;
         this.§'!J§.§7u§ = null;
         this.§'!J§.other = null;
         this.§@!'§.§;!@§ = null;
         this.§@!'§.§>!p§ = null;
         this.§@!'§.§7u§ = null;
         this.§@!'§.other = null;
      }
      
      b2internal function §@=§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§"#+§;
         this.§"#+§ = this.§-#3§;
         this.§-#3§ = _loc2_;
         this.§7!D§ |= b2internal::+#%;
         var _loc3_:* = false;
         var _loc4_:* = (this.§7!D§ & b2internal::;"6) == b2internal::;"6;
         if(this.§["K§ && _loc4_)
         {
            param1.EndContact(this);
            _loc4_ = false;
            this.§7!D§ &= ~b2internal::;"6;
            this.§["K§ = false;
         }
         var _loc5_:b2Body = this.§,"2§.m_body;
         var _loc6_:b2Body = this.§1M§.m_body;
         var _loc7_:Boolean = this.§,"2§.§&#0§.§+">§(this.§1M§.§&#0§);
         if(this.§7!D§ & b2internal::%C)
         {
            if(_loc7_)
            {
               _loc8_ = this.§,"2§.GetShape();
               _loc9_ = this.§1M§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§+">§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§-#3§.§="#§ = 0;
         }
         else
         {
            if(_loc5_.§+"M§() != b2Body.b2_dynamicBody || _loc5_.§+"R§() || _loc6_.§+"M§() != b2Body.b2_dynamicBody || _loc6_.§+"R§())
            {
               this.§7!D§ |= b2internal::7![;
            }
            else
            {
               this.§7!D§ &= ~b2internal::7![;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§-#3§.§="#§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§-#3§.§="#§)
               {
                  (_loc13_ = this.§-#3§.§+"5§[_loc12_]).§^"B§ = 0;
                  _loc13_.§switch§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§"#+§.§="#§)
                  {
                     if((_loc16_ = this.§"#+§.§+"5§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§^"B§ = _loc16_.§^"B§;
                        _loc13_.§switch§ = _loc16_.§switch§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§-#3§.§="#§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§7!D§ |= b2internal::;"6;
         }
         else
         {
            this.§7!D§ &= ~b2internal::;"6;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§7!D§ & b2internal::%C) == 0)
         {
            param1.PreSolve(this,this.§"#+§);
         }
      }
      
      public function reset() : void
      {
         this.§["K§ = true;
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §'4§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §6T§.§'"d§.Set(this.§,"2§.GetShape());
         §6T§.§ "l§.Set(this.§1M§.GetShape());
         §6T§.§3!K§ = param1;
         §6T§.§`!q§ = param2;
         §6T§.§5"l§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§0#4§(§6T§);
      }
   }
}
