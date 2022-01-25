package §@M§
{
   import §"!R§.b2Settings;
   import §"!R§.b2internal;
   import §'&§.b2Shape;
   import §;!7§.b2ContactID;
   import §;!7§.b2Manifold;
   import §;!7§.b2ManifoldPoint;
   import §;!7§.b2TOIInput;
   import §;!7§.b2TimeOfImpact;
   import §;!7§.b2WorldManifold;
   import §=!U§.b2Body;
   import §=!U§.b2ContactListener;
   import §=!U§.b2Fixture;
   import §implements§.b2Sweep;
   import §implements§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §8W§:uint = 1;
      
      b2internal static var §+=§:uint = 2;
      
      b2internal static var §#!]§:uint = 4;
      
      b2internal static var §9!-§:uint = 8;
      
      b2internal static var §"I§:uint = 16;
      
      b2internal static var §6!P§:uint = 32;
      
      b2internal static var §<!6§:uint = 64;
      
      private static var §!H§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §"_§:uint;
      
      b2internal var §-s§:b2Contact;
      
      b2internal var §9`§:b2Contact;
      
      b2internal var §%4§:b2ContactEdge;
      
      b2internal var §%P§:b2ContactEdge;
      
      b2internal var §'M§:b2Fixture;
      
      b2internal var §=!A§:b2Fixture;
      
      b2internal var §=,§:b2Manifold;
      
      b2internal var §=n§:b2Manifold;
      
      b2internal var §`9§:Number;
      
      public function b2Contact()
      {
         this.§%4§ = new b2ContactEdge();
         this.§%P§ = new b2ContactEdge();
         this.§=,§ = new b2Manifold();
         this.§=n§ = new b2Manifold();
         super();
      }
      
      public function §@,§() : b2Manifold
      {
         return this.§=,§;
      }
      
      public function §6!^§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§'M§.GetBody();
         var _loc3_:b2Body = this.§=!A§.GetBody();
         var _loc4_:b2Shape = this.§'M§.GetShape();
         var _loc5_:b2Shape = this.§=!A§.GetShape();
         param1.§4$§(this.§=,§,_loc2_.§'_§(),_loc4_.§[8§,_loc3_.§'_§(),_loc5_.§[8§);
      }
      
      public function §0! §() : Boolean
      {
         return (this.§"_§ & b2internal::"I) == b2internal::"I;
      }
      
      public function §+@§() : Boolean
      {
         return (this.§"_§ & b2internal::+=) == b2internal::+=;
      }
      
      public function native(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"_§ |= b2internal::8W;
         }
         else
         {
            this.§"_§ &= ~b2internal::8W;
         }
      }
      
      public function §const§() : Boolean
      {
         return (this.§"_§ & b2internal::8W) == b2internal::8W;
      }
      
      public function §<!Q§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§"_§ |= b2internal::6!P;
         }
         else
         {
            this.§"_§ &= ~b2internal::6!P;
         }
      }
      
      public function §9!E§() : Boolean
      {
         return (this.§"_§ & b2internal::6!P) == b2internal::6!P;
      }
      
      public function §^r§() : b2Contact
      {
         return this.§9`§;
      }
      
      public function § !N§() : b2Fixture
      {
         return this.§'M§;
      }
      
      public function §^9§() : b2Fixture
      {
         return this.§=!A§;
      }
      
      public function §%!=§() : void
      {
         this.§"_§ |= b2internal::<!6;
      }
      
      b2internal function §8^§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§"_§ = b2internal::6!P;
         if(!param1 || !param2)
         {
            this.§'M§ = null;
            this.§=!A§ = null;
            return;
         }
         if(param1.§const§() || param2.§const§())
         {
            this.§"_§ |= b2internal::8W;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§@e§() != b2Body.b2_dynamicBody || _loc3_.§6u§() || _loc4_.§@e§() != b2Body.b2_dynamicBody || _loc4_.§6u§())
         {
            this.§"_§ |= b2internal::+=;
         }
         this.§'M§ = param1;
         this.§=!A§ = param2;
         this.§=,§.§!!_§ = 0;
         this.§-s§ = null;
         this.§9`§ = null;
         this.§%4§.§#^§ = null;
         this.§%4§.§6!=§ = null;
         this.§%4§.§>C§ = null;
         this.§%4§.§0!=§ = null;
         this.§%P§.§#^§ = null;
         this.§%P§.§6!=§ = null;
         this.§%P§.§>C§ = null;
         this.§%P§.§0!=§ = null;
      }
      
      b2internal function §%R§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§=n§;
         this.§=n§ = this.§=,§;
         this.§=,§ = _loc2_;
         this.§"_§ |= b2internal::6!P;
         var _loc3_:* = false;
         var _loc4_:* = (this.§"_§ & b2internal::"I) == b2internal::"I;
         var _loc5_:b2Body = this.§'M§.m_body;
         var _loc6_:b2Body = this.§=!A§.m_body;
         var _loc7_:Boolean = this.§'M§.§3a§.§2<§(this.§=!A§.§3a§);
         if(this.§"_§ & b2internal::8W)
         {
            if(_loc7_)
            {
               _loc8_ = this.§'M§.GetShape();
               _loc9_ = this.§=!A§.GetShape();
               _loc10_ = _loc5_.§'_§();
               _loc11_ = _loc6_.§'_§();
               _loc3_ = Boolean(b2Shape.§2<§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§=,§.§!!_§ = 0;
         }
         else
         {
            if(_loc5_.§@e§() != b2Body.b2_dynamicBody || _loc5_.§6u§() || _loc6_.§@e§() != b2Body.b2_dynamicBody || _loc6_.§6u§())
            {
               this.§"_§ |= b2internal::+=;
            }
            else
            {
               this.§"_§ &= ~b2internal::+=;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§=,§.§!!_§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§=,§.§!!_§)
               {
                  (_loc13_ = this.§=,§.§9;§[_loc12_]).§%z§ = 0;
                  _loc13_.§+!<§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§=n§.§!!_§)
                  {
                     if((_loc16_ = this.§=n§.§9;§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§%z§ = _loc16_.§%z§;
                        _loc13_.§+!<§ = _loc16_.§+!<§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§=,§.§!!_§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§"_§ |= b2internal::"I;
         }
         else
         {
            this.§"_§ &= ~b2internal::"I;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§"_§ & b2internal::8W) == 0)
         {
            param1.PreSolve(this,this.§=n§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §&[§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §!H§.§9b§.Set(this.§'M§.GetShape());
         §!H§.§'o§.Set(this.§=!A§.GetShape());
         §!H§.§9!§ = param1;
         §!H§.§-!K§ = param2;
         §!H§.§<q§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§-!O§(§!H§);
      }
   }
}
