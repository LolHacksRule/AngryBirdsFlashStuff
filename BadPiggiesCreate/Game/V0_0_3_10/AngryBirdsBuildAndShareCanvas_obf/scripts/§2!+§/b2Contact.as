package §2!+§
{
   import §!S§.b2Settings;
   import §!S§.b2internal;
   import §1!1§.b2ContactID;
   import §1!1§.b2Manifold;
   import §1!1§.b2ManifoldPoint;
   import §1!1§.b2TOIInput;
   import §1!1§.b2TimeOfImpact;
   import §1!1§.b2WorldManifold;
   import §6U§.b2Shape;
   import §?!h§.b2Sweep;
   import §?!h§.b2Transform;
   import §`]§.b2Body;
   import §`]§.b2ContactListener;
   import §`]§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §`"0§:uint = 1;
      
      b2internal static var §5Z§:uint = 2;
      
      b2internal static var §7!u§:uint = 4;
      
      b2internal static var §-!M§:uint = 8;
      
      b2internal static var §&U§:uint = 16;
      
      b2internal static var §!!g§:uint = 32;
      
      b2internal static var §'P§:uint = 64;
      
      private static var §^!%§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §3u§:uint;
      
      b2internal var §0"+§:b2Contact;
      
      b2internal var §7<§:b2Contact;
      
      b2internal var §`!-§:b2ContactEdge;
      
      b2internal var §%!@§:b2ContactEdge;
      
      b2internal var §"!1§:b2Fixture;
      
      b2internal var §5!K§:b2Fixture;
      
      b2internal var §^!?§:b2Manifold;
      
      b2internal var §'!f§:b2Manifold;
      
      b2internal var §]!?§:Number;
      
      public function b2Contact()
      {
         this.§`!-§ = new b2ContactEdge();
         this.§%!@§ = new b2ContactEdge();
         this.§^!?§ = new b2Manifold();
         this.§'!f§ = new b2Manifold();
         super();
      }
      
      public function §`2§() : b2Manifold
      {
         return this.§^!?§;
      }
      
      public function §[!#§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§"!1§.GetBody();
         var _loc3_:b2Body = this.§5!K§.GetBody();
         var _loc4_:b2Shape = this.§"!1§.GetShape();
         var _loc5_:b2Shape = this.§5!K§.GetShape();
         param1.§6"8§(this.§^!?§,_loc2_.§!!f§(),_loc4_.§'O§,_loc3_.§!!f§(),_loc5_.§'O§);
      }
      
      public function §-"9§() : Boolean
      {
         return (this.§3u§ & b2internal::&U) == b2internal::&U;
      }
      
      public function §5T§() : Boolean
      {
         return (this.§3u§ & b2internal::5Z) == b2internal::5Z;
      }
      
      public function §3! §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3u§ |= b2internal::`"0;
         }
         else
         {
            this.§3u§ &= ~b2internal::`"0;
         }
      }
      
      public function §#!m§() : Boolean
      {
         return (this.§3u§ & b2internal::`"0) == b2internal::`"0;
      }
      
      public function §^!'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3u§ |= b2internal::!!g;
         }
         else
         {
            this.§3u§ &= ~b2internal::!!g;
         }
      }
      
      public function §^!v§() : Boolean
      {
         return (this.§3u§ & b2internal::!!g) == b2internal::!!g;
      }
      
      public function §&!=§() : b2Contact
      {
         return this.§7<§;
      }
      
      public function §1'§() : b2Fixture
      {
         return this.§"!1§;
      }
      
      public function §?"-§() : b2Fixture
      {
         return this.§5!K§;
      }
      
      public function §%T§() : void
      {
         this.§3u§ |= b2internal::'P;
      }
      
      b2internal function §+Q§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§3u§ = b2internal::!!g;
         if(!param1 || !param2)
         {
            this.§"!1§ = null;
            this.§5!K§ = null;
            return;
         }
         if(param1.§#!m§() || param2.§#!m§())
         {
            this.§3u§ |= b2internal::`"0;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§8!d§() != b2Body.b2_dynamicBody || _loc3_.§?=§() || _loc4_.§8!d§() != b2Body.b2_dynamicBody || _loc4_.§?=§())
         {
            this.§3u§ |= b2internal::5Z;
         }
         this.§"!1§ = param1;
         this.§5!K§ = param2;
         this.§^!?§.§]7§ = 0;
         this.§0"+§ = null;
         this.§7<§ = null;
         this.§`!-§.§!B§ = null;
         this.§`!-§.§8!U§ = null;
         this.§`!-§.§4!e§ = null;
         this.§`!-§.§47§ = null;
         this.§%!@§.§!B§ = null;
         this.§%!@§.§8!U§ = null;
         this.§%!@§.§4!e§ = null;
         this.§%!@§.§47§ = null;
      }
      
      b2internal function §;Y§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§'!f§;
         this.§'!f§ = this.§^!?§;
         this.§^!?§ = _loc2_;
         this.§3u§ |= b2internal::!!g;
         var _loc3_:* = false;
         var _loc4_:* = (this.§3u§ & b2internal::&U) == b2internal::&U;
         var _loc5_:b2Body = this.§"!1§.m_body;
         var _loc6_:b2Body = this.§5!K§.m_body;
         var _loc7_:Boolean = this.§"!1§.§,!%§.§;!p§(this.§5!K§.§,!%§);
         if(this.§3u§ & b2internal::`"0)
         {
            if(_loc7_)
            {
               _loc8_ = this.§"!1§.GetShape();
               _loc9_ = this.§5!K§.GetShape();
               _loc10_ = _loc5_.§!!f§();
               _loc11_ = _loc6_.§!!f§();
               _loc3_ = Boolean(b2Shape.§;!p§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§^!?§.§]7§ = 0;
         }
         else
         {
            if(_loc5_.§8!d§() != b2Body.b2_dynamicBody || _loc5_.§?=§() || _loc6_.§8!d§() != b2Body.b2_dynamicBody || _loc6_.§?=§())
            {
               this.§3u§ |= b2internal::5Z;
            }
            else
            {
               this.§3u§ &= ~b2internal::5Z;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§^!?§.§]7§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§^!?§.§]7§)
               {
                  (_loc13_ = this.§^!?§.§!!6§[_loc12_]).§=!F§ = 0;
                  _loc13_.§@v§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§'!f§.§]7§)
                  {
                     if((_loc16_ = this.§'!f§.§!!6§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§=!F§ = _loc16_.§=!F§;
                        _loc13_.§@v§ = _loc16_.§@v§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§^!?§.§]7§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§3u§ |= b2internal::&U;
         }
         else
         {
            this.§3u§ &= ~b2internal::&U;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§3u§ & b2internal::`"0) == 0)
         {
            param1.PreSolve(this,this.§'!f§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §5F§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §^!%§.§"!s§.Set(this.§"!1§.GetShape());
         §^!%§.§ !W§.Set(this.§5!K§.GetShape());
         §^!%§.§&!U§ = param1;
         §^!%§.§<!#§ = param2;
         §^!%§.§1!6§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§<S§(§^!%§);
      }
   }
}
