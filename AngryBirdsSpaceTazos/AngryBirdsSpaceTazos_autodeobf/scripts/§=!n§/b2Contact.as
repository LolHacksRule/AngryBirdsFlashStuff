package §=!n§
{
   import §'!&§.b2Body;
   import §'!&§.b2ContactListener;
   import §'!&§.b2Fixture;
   import §,Z§.b2Shape;
   import §3c§.b2ContactID;
   import §3c§.b2Manifold;
   import §3c§.b2ManifoldPoint;
   import §3c§.b2TOIInput;
   import §3c§.b2TimeOfImpact;
   import §3c§.b2WorldManifold;
   import §9t§.b2Sweep;
   import §9t§.b2Transform;
   import §@!'§.b2Settings;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §0"&§:uint = 1;
      
      b2internal static var § "3§:uint = 2;
      
      b2internal static var §]9§:uint = 4;
      
      b2internal static var §-j§:uint = 8;
      
      b2internal static var §`!&§:uint = 16;
      
      b2internal static var §#!&§:uint = 32;
      
      b2internal static var §+a§:uint = 64;
      
      private static var §%!'§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §0" §:uint;
      
      b2internal var §20§:b2Contact;
      
      b2internal var §+!o§:b2Contact;
      
      b2internal var §?s§:b2ContactEdge;
      
      b2internal var § E§:b2ContactEdge;
      
      b2internal var §;"B§:b2Fixture;
      
      b2internal var §8q§:b2Fixture;
      
      b2internal var §8!?§:b2Manifold;
      
      b2internal var §0!9§:b2Manifold;
      
      b2internal var §0H§:Number;
      
      public function b2Contact()
      {
         this.§?s§ = new b2ContactEdge();
         this.§ E§ = new b2ContactEdge();
         this.§8!?§ = new b2Manifold();
         this.§0!9§ = new b2Manifold();
         super();
      }
      
      public function §,X§() : b2Manifold
      {
         return this.§8!?§;
      }
      
      public function §=7§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§;"B§.GetBody();
         var _loc3_:b2Body = this.§8q§.GetBody();
         var _loc4_:b2Shape = this.§;"B§.GetShape();
         var _loc5_:b2Shape = this.§8q§.GetShape();
         param1.§>`§(this.§8!?§,_loc2_.§>u§(),_loc4_.§7!m§,_loc3_.§>u§(),_loc5_.§7!m§);
      }
      
      public function §]Q§() : Boolean
      {
         return (this.§0" § & b2internal::`!&) == b2internal::`!&;
      }
      
      public function §9a§() : Boolean
      {
         return (this.§0" § & b2internal:: "3) == b2internal:: "3;
      }
      
      public function §2!Z§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0" § |= b2internal::0"&;
         }
         else
         {
            this.§0" § &= ~b2internal::0"&;
         }
      }
      
      public function §]w§() : Boolean
      {
         return (this.§0" § & b2internal::0"&) == b2internal::0"&;
      }
      
      public function §`"!§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§0" § |= b2internal::#!&;
         }
         else
         {
            this.§0" § &= ~b2internal::#!&;
         }
      }
      
      public function §0!?§() : Boolean
      {
         return (this.§0" § & b2internal::#!&) == b2internal::#!&;
      }
      
      public function §`!y§() : b2Contact
      {
         return this.§+!o§;
      }
      
      public function §'J§() : b2Fixture
      {
         return this.§;"B§;
      }
      
      public function §#"%§() : b2Fixture
      {
         return this.§8q§;
      }
      
      public function §0]§() : void
      {
         this.§0" § |= b2internal::+a;
      }
      
      b2internal function §`"<§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§0" § = b2internal::#!&;
         if(!param1 || !param2)
         {
            this.§;"B§ = null;
            this.§8q§ = null;
            return;
         }
         if(param1.§]w§() || param2.§]w§())
         {
            this.§0" § |= b2internal::0"&;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§@!N§() != b2Body.b2_dynamicBody || _loc3_.§9!0§() || _loc4_.§@!N§() != b2Body.b2_dynamicBody || _loc4_.§9!0§())
         {
            this.§0" § |= b2internal:: "3;
         }
         this.§;"B§ = param1;
         this.§8q§ = param2;
         this.§8!?§.§[!J§ = 0;
         this.§20§ = null;
         this.§+!o§ = null;
         this.§?s§.§%!b§ = null;
         this.§?s§.§8!$§ = null;
         this.§?s§.§ X§ = null;
         this.§?s§.§1!>§ = null;
         this.§ E§.§%!b§ = null;
         this.§ E§.§8!$§ = null;
         this.§ E§.§ X§ = null;
         this.§ E§.§1!>§ = null;
      }
      
      b2internal function §]P§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§0!9§;
         this.§0!9§ = this.§8!?§;
         this.§8!?§ = _loc2_;
         this.§0" § |= b2internal::#!&;
         var _loc3_:* = false;
         var _loc4_:* = (this.§0" § & b2internal::`!&) == b2internal::`!&;
         var _loc5_:b2Body = this.§;"B§.m_body;
         var _loc6_:b2Body = this.§8q§.m_body;
         var _loc7_:Boolean = this.§;"B§.§9G§.§5"0§(this.§8q§.§9G§);
         if(this.§0" § & b2internal::0"&)
         {
            if(_loc7_)
            {
               _loc8_ = this.§;"B§.GetShape();
               _loc9_ = this.§8q§.GetShape();
               _loc10_ = _loc5_.§>u§();
               _loc11_ = _loc6_.§>u§();
               _loc3_ = Boolean(b2Shape.§5"0§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§8!?§.§[!J§ = 0;
         }
         else
         {
            if(_loc5_.§@!N§() != b2Body.b2_dynamicBody || _loc5_.§9!0§() || _loc6_.§@!N§() != b2Body.b2_dynamicBody || _loc6_.§9!0§())
            {
               this.§0" § |= b2internal:: "3;
            }
            else
            {
               this.§0" § &= ~b2internal:: "3;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§8!?§.§[!J§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§8!?§.§[!J§)
               {
                  (_loc13_ = this.§8!?§.§,!T§[_loc12_]).§?P§ = 0;
                  _loc13_.§["&§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§0!9§.§[!J§)
                  {
                     if((_loc16_ = this.§0!9§.§,!T§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§?P§ = _loc16_.§?P§;
                        _loc13_.§["&§ = _loc16_.§["&§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§8!?§.§[!J§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§0" § |= b2internal::`!&;
         }
         else
         {
            this.§0" § &= ~b2internal::`!&;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§0" § & b2internal::0"&) == 0)
         {
            param1.PreSolve(this,this.§0!9§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §?!l§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §%!'§.§3">§.Set(this.§;"B§.GetShape());
         §%!'§.§&!"§.Set(this.§8q§.GetShape());
         §%!'§.§3v§ = param1;
         §%!'§.§]x§ = param2;
         §%!'§.§>s§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§9Y§(§%!'§);
      }
   }
}
