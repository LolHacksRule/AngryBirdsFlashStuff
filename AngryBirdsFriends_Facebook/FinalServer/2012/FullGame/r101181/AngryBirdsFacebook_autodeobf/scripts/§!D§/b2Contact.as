package §!D§
{
   import §#]§.b2Sweep;
   import §#]§.b2Transform;
   import §4!!§.b2Settings;
   import §4!!§.b2internal;
   import §48§.b2Body;
   import §48§.b2ContactListener;
   import §48§.b2Fixture;
   import §55§.b2ContactID;
   import §55§.b2Manifold;
   import §55§.b2ManifoldPoint;
   import §55§.b2TOIInput;
   import §55§.b2TimeOfImpact;
   import §55§.b2WorldManifold;
   import §<!`§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §["2§:uint = 1;
      
      b2internal static var §1!<§:uint = 2;
      
      b2internal static var §1!t§:uint = 4;
      
      b2internal static var §?8§:uint = 8;
      
      b2internal static var §7!V§:uint = 16;
      
      b2internal static var §@5§:uint = 32;
      
      b2internal static var §;! §:uint = 64;
      
      private static var §1"3§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §`">§:uint;
      
      b2internal var §-!Q§:b2Contact;
      
      b2internal var §%"@§:b2Contact;
      
      b2internal var §-v§:b2ContactEdge;
      
      b2internal var §1a§:b2ContactEdge;
      
      b2internal var §3t§:b2Fixture;
      
      b2internal var §?!p§:b2Fixture;
      
      b2internal var §@! §:b2Manifold;
      
      b2internal var §]""§:b2Manifold;
      
      b2internal var §`!>§:Number;
      
      public function b2Contact()
      {
         this.§-v§ = new b2ContactEdge();
         this.§1a§ = new b2ContactEdge();
         this.§@! § = new b2Manifold();
         this.§]""§ = new b2Manifold();
         super();
      }
      
      public function §1t§() : b2Manifold
      {
         return this.§@! §;
      }
      
      public function §!!c§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§3t§.GetBody();
         var _loc3_:b2Body = this.§?!p§.GetBody();
         var _loc4_:b2Shape = this.§3t§.GetShape();
         var _loc5_:b2Shape = this.§?!p§.GetShape();
         param1.§`!r§(this.§@! §,_loc2_.GetTransform(),_loc4_.§%I§,_loc3_.GetTransform(),_loc5_.§%I§);
      }
      
      public function §[l§() : Boolean
      {
         return (this.§`">§ & b2internal::7!V) == b2internal::7!V;
      }
      
      public function §^O§() : Boolean
      {
         return (this.§`">§ & b2internal::1!<) == b2internal::1!<;
      }
      
      public function §>B§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`">§ |= b2internal::["2;
         }
         else
         {
            this.§`">§ &= ~b2internal::["2;
         }
      }
      
      public function § !,§() : Boolean
      {
         return (this.§`">§ & b2internal::["2) == b2internal::["2;
      }
      
      public function §2s§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`">§ |= b2internal::@5;
         }
         else
         {
            this.§`">§ &= ~b2internal::@5;
         }
      }
      
      public function §#e§() : Boolean
      {
         return (this.§`">§ & b2internal::@5) == b2internal::@5;
      }
      
      public function §8!+§() : b2Contact
      {
         return this.§%"@§;
      }
      
      public function §5§() : b2Fixture
      {
         return this.§3t§;
      }
      
      public function §]h§() : b2Fixture
      {
         return this.§?!p§;
      }
      
      public function §6"F§() : void
      {
         this.§`">§ |= b2internal::;! ;
      }
      
      b2internal function §<t§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§`">§ = b2internal::@5;
         if(!param1 || !param2)
         {
            this.§3t§ = null;
            this.§?!p§ = null;
            return;
         }
         if(param1.§ !,§() || param2.§ !,§())
         {
            this.§`">§ |= b2internal::["2;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§"r§() != b2Body.b2_dynamicBody || _loc3_.§^!O§() || _loc4_.§"r§() != b2Body.b2_dynamicBody || _loc4_.§^!O§())
         {
            this.§`">§ |= b2internal::1!<;
         }
         this.§3t§ = param1;
         this.§?!p§ = param2;
         this.§@! §.§^M§ = 0;
         this.§-!Q§ = null;
         this.§%"@§ = null;
         this.§-v§.§0q§ = null;
         this.§-v§.§[g§ = null;
         this.§-v§.§5"&§ = null;
         this.§-v§.§ `§ = null;
         this.§1a§.§0q§ = null;
         this.§1a§.§[g§ = null;
         this.§1a§.§5"&§ = null;
         this.§1a§.§ `§ = null;
      }
      
      b2internal function §?"!§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§]""§;
         this.§]""§ = this.§@! §;
         this.§@! § = _loc2_;
         this.§`">§ |= b2internal::@5;
         var _loc3_:* = false;
         var _loc4_:* = (this.§`">§ & b2internal::7!V) == b2internal::7!V;
         var _loc5_:b2Body = this.§3t§.m_body;
         var _loc6_:b2Body = this.§?!p§.m_body;
         var _loc7_:Boolean = this.§3t§.§#M§.§3§(this.§?!p§.§#M§);
         if(this.§`">§ & b2internal::["2)
         {
            if(_loc7_)
            {
               _loc8_ = this.§3t§.GetShape();
               _loc9_ = this.§?!p§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§3§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§@! §.§^M§ = 0;
         }
         else
         {
            if(_loc5_.§"r§() != b2Body.b2_dynamicBody || _loc5_.§^!O§() || _loc6_.§"r§() != b2Body.b2_dynamicBody || _loc6_.§^!O§())
            {
               this.§`">§ |= b2internal::1!<;
            }
            else
            {
               this.§`">§ &= ~b2internal::1!<;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§@! §.§^M§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§@! §.§^M§)
               {
                  (_loc13_ = this.§@! §.§1!d§[_loc12_]).§[!h§ = 0;
                  _loc13_.§%!7§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§]""§.§^M§)
                  {
                     if((_loc16_ = this.§]""§.§1!d§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§[!h§ = _loc16_.§[!h§;
                        _loc13_.§%!7§ = _loc16_.§%!7§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§@! §.§^M§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§`">§ |= b2internal::7!V;
         }
         else
         {
            this.§`">§ &= ~b2internal::7!V;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§`">§ & b2internal::["2) == 0)
         {
            param1.PreSolve(this,this.§]""§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §7!M§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §1"3§.§7!p§.Set(this.§3t§.GetShape());
         §1"3§.§["@§.Set(this.§?!p§.GetShape());
         §1"3§.§[!'§ = param1;
         §1"3§.§8x§ = param2;
         §1"3§.§42§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§2z§(§1"3§);
      }
   }
}
