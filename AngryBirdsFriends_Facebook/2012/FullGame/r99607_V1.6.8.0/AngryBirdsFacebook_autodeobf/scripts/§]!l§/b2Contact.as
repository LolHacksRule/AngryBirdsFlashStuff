package §]!l§
{
   import § !k§.b2Body;
   import § !k§.b2ContactListener;
   import § !k§.b2Fixture;
   import §!"8§.b2Sweep;
   import §!"8§.b2Transform;
   import §&I§.b2Shape;
   import §6!d§.b2ContactID;
   import §6!d§.b2Manifold;
   import §6!d§.b2ManifoldPoint;
   import §6!d§.b2TOIInput;
   import §6!d§.b2TimeOfImpact;
   import §6!d§.b2WorldManifold;
   import §in§.b2Settings;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §8W§:uint = 1;
      
      b2internal static var §7!S§:uint = 2;
      
      b2internal static var §,!v§:uint = 4;
      
      b2internal static var §[r§:uint = 8;
      
      b2internal static var §]"$§:uint = 16;
      
      b2internal static var §4!Y§:uint = 32;
      
      b2internal static var §1!8§:uint = 64;
      
      private static var §3S§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §%$§:uint;
      
      b2internal var §=>§:b2Contact;
      
      b2internal var §7"@§:b2Contact;
      
      b2internal var §!!I§:b2ContactEdge;
      
      b2internal var §^""§:b2ContactEdge;
      
      b2internal var §'!u§:b2Fixture;
      
      b2internal var § !X§:b2Fixture;
      
      b2internal var §"t§:b2Manifold;
      
      b2internal var §=!x§:b2Manifold;
      
      b2internal var §7D§:Number;
      
      public function b2Contact()
      {
         this.§!!I§ = new b2ContactEdge();
         this.§^""§ = new b2ContactEdge();
         this.§"t§ = new b2Manifold();
         this.§=!x§ = new b2Manifold();
         super();
      }
      
      public function §-!]§() : b2Manifold
      {
         return this.§"t§;
      }
      
      public function §&!N§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§'!u§.GetBody();
         var _loc3_:b2Body = this.§ !X§.GetBody();
         var _loc4_:b2Shape = this.§'!u§.GetShape();
         var _loc5_:b2Shape = this.§ !X§.GetShape();
         param1.§&!j§(this.§"t§,_loc2_.§[H§(),_loc4_.§^s§,_loc3_.§[H§(),_loc5_.§^s§);
      }
      
      public function §;b§() : Boolean
      {
         return (this.§%$§ & b2internal::]"$) == b2internal::]"$;
      }
      
      public function §+g§() : Boolean
      {
         return (this.§%$§ & b2internal::7!S) == b2internal::7!S;
      }
      
      public function §?O§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%$§ |= b2internal::8W;
         }
         else
         {
            this.§%$§ &= ~b2internal::8W;
         }
      }
      
      public function §8E§() : Boolean
      {
         return (this.§%$§ & b2internal::8W) == b2internal::8W;
      }
      
      public function §+p§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§%$§ |= b2internal::4!Y;
         }
         else
         {
            this.§%$§ &= ~b2internal::4!Y;
         }
      }
      
      public function §%!§() : Boolean
      {
         return (this.§%$§ & b2internal::4!Y) == b2internal::4!Y;
      }
      
      public function §&A§() : b2Contact
      {
         return this.§7"@§;
      }
      
      public function §9!&§() : b2Fixture
      {
         return this.§'!u§;
      }
      
      public function §2%§() : b2Fixture
      {
         return this.§ !X§;
      }
      
      public function §9_§() : void
      {
         this.§%$§ |= b2internal::1!8;
      }
      
      b2internal function §`!r§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§%$§ = b2internal::4!Y;
         if(!param1 || !param2)
         {
            this.§'!u§ = null;
            this.§ !X§ = null;
            return;
         }
         if(param1.§8E§() || param2.§8E§())
         {
            this.§%$§ |= b2internal::8W;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§9!j§() != b2Body.b2_dynamicBody || _loc3_.§4t§() || _loc4_.§9!j§() != b2Body.b2_dynamicBody || _loc4_.§4t§())
         {
            this.§%$§ |= b2internal::7!S;
         }
         this.§'!u§ = param1;
         this.§ !X§ = param2;
         this.§"t§.§`p§ = 0;
         this.§=>§ = null;
         this.§7"@§ = null;
         this.§!!I§.§4!M§ = null;
         this.§!!I§.§ ?§ = null;
         this.§!!I§.§%!8§ = null;
         this.§!!I§.§%"C§ = null;
         this.§^""§.§4!M§ = null;
         this.§^""§.§ ?§ = null;
         this.§^""§.§%!8§ = null;
         this.§^""§.§%"C§ = null;
      }
      
      b2internal function §"n§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§=!x§;
         this.§=!x§ = this.§"t§;
         this.§"t§ = _loc2_;
         this.§%$§ |= b2internal::4!Y;
         var _loc3_:* = false;
         var _loc4_:* = (this.§%$§ & b2internal::]"$) == b2internal::]"$;
         var _loc5_:b2Body = this.§'!u§.m_body;
         var _loc6_:b2Body = this.§ !X§.m_body;
         var _loc7_:Boolean = this.§'!u§.§[g§.§6!v§(this.§ !X§.§[g§);
         if(this.§%$§ & b2internal::8W)
         {
            if(_loc7_)
            {
               _loc8_ = this.§'!u§.GetShape();
               _loc9_ = this.§ !X§.GetShape();
               _loc10_ = _loc5_.§[H§();
               _loc11_ = _loc6_.§[H§();
               _loc3_ = Boolean(b2Shape.§6!v§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§"t§.§`p§ = 0;
         }
         else
         {
            if(_loc5_.§9!j§() != b2Body.b2_dynamicBody || _loc5_.§4t§() || _loc6_.§9!j§() != b2Body.b2_dynamicBody || _loc6_.§4t§())
            {
               this.§%$§ |= b2internal::7!S;
            }
            else
            {
               this.§%$§ &= ~b2internal::7!S;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§"t§.§`p§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§"t§.§`p§)
               {
                  (_loc13_ = this.§"t§.§"r§[_loc12_]).§,![§ = 0;
                  _loc13_.§6"&§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§=!x§.§`p§)
                  {
                     if((_loc16_ = this.§=!x§.§"r§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§,![§ = _loc16_.§,![§;
                        _loc13_.§6"&§ = _loc16_.§6"&§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§"t§.§`p§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§%$§ |= b2internal::]"$;
         }
         else
         {
            this.§%$§ &= ~b2internal::]"$;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§%$§ & b2internal::8W) == 0)
         {
            param1.PreSolve(this,this.§=!x§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §-E§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §3S§.§`+§.Set(this.§'!u§.GetShape());
         §3S§.§%!i§.Set(this.§ !X§.GetShape());
         §3S§.§,F§ = param1;
         §3S§.§-!h§ = param2;
         §3S§.§>!"§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§>"B§(§3S§);
      }
   }
}
