package §#!0§
{
   import §!m§.b2ContactID;
   import §!m§.b2Manifold;
   import §!m§.b2ManifoldPoint;
   import §!m§.b2TOIInput;
   import §!m§.b2TimeOfImpact;
   import §!m§.b2WorldManifold;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §0!3§.b2Shape;
   import §>!8§.b2Sweep;
   import §>!8§.b2Transform;
   import §>!L§.b2Body;
   import §>!L§.b2ContactListener;
   import §>!L§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §-1§:uint = 1;
      
      b2internal static var §8'§:uint = 2;
      
      b2internal static var §%!d§:uint = 4;
      
      b2internal static var §;![§:uint = 8;
      
      b2internal static var § !'§:uint = 16;
      
      b2internal static var §15§:uint = 32;
      
      b2internal static var §'!I§:uint = 64;
      
      private static var §!!+§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §]!D§:uint;
      
      b2internal var §<!9§:b2Contact;
      
      b2internal var §,!Z§:b2Contact;
      
      b2internal var §6+§:b2ContactEdge;
      
      b2internal var §%W§:b2ContactEdge;
      
      b2internal var §7d§:b2Fixture;
      
      b2internal var §-F§:b2Fixture;
      
      b2internal var §,S§:b2Manifold;
      
      b2internal var § !1§:b2Manifold;
      
      b2internal var §+!E§:Number;
      
      public function b2Contact()
      {
         this.§6+§ = new b2ContactEdge();
         this.§%W§ = new b2ContactEdge();
         this.§,S§ = new b2Manifold();
         this.§ !1§ = new b2Manifold();
         super();
      }
      
      public function §1!4§() : b2Manifold
      {
         return this.§,S§;
      }
      
      public function §>S§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§7d§.GetBody();
         var _loc3_:b2Body = this.§-F§.GetBody();
         var _loc4_:b2Shape = this.§7d§.GetShape();
         var _loc5_:b2Shape = this.§-F§.GetShape();
         param1.§2@§(this.§,S§,_loc2_.§1?§(),_loc4_.§!@§,_loc3_.§1?§(),_loc5_.§!@§);
      }
      
      public function §%&§() : Boolean
      {
         return (this.§]!D§ & § !'§) == § !'§;
      }
      
      public function §<!P§() : Boolean
      {
         return (this.§]!D§ & §8'§) == §8'§;
      }
      
      public function §,!!§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!D§ |= §-1§;
         }
         else
         {
            this.§]!D§ &= ~§-1§;
         }
      }
      
      public function §[j§() : Boolean
      {
         return (this.§]!D§ & §-1§) == §-1§;
      }
      
      public function §`U§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!D§ |= §15§;
         }
         else
         {
            this.§]!D§ &= ~§15§;
         }
      }
      
      public function §`-§() : Boolean
      {
         return (this.§]!D§ & §15§) == §15§;
      }
      
      public function §'!;§() : b2Contact
      {
         return this.§,!Z§;
      }
      
      public function §'$§() : b2Fixture
      {
         return this.§7d§;
      }
      
      public function §<!2§() : b2Fixture
      {
         return this.§-F§;
      }
      
      public function §"T§() : void
      {
         this.§]!D§ |= §'!I§;
      }
      
      b2internal function §9=§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§]!D§ = §15§;
         if(!param1 || !param2)
         {
            this.§7d§ = null;
            this.§-F§ = null;
            return;
         }
         if(param1.§[j§() || param2.§[j§())
         {
            this.§]!D§ |= §-1§;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§6!-§() != b2Body.b2_dynamicBody || _loc3_.§%q§() || _loc4_.§6!-§() != b2Body.b2_dynamicBody || _loc4_.§%q§())
         {
            this.§]!D§ |= §8'§;
         }
         this.§7d§ = param1;
         this.§-F§ = param2;
         this.§,S§.§5<§ = 0;
         this.§<!9§ = null;
         this.§,!Z§ = null;
         this.§6+§.§7![§ = null;
         this.§6+§.§3!j§ = null;
         this.§6+§.§<!D§ = null;
         this.§6+§.§@X§ = null;
         this.§%W§.§7![§ = null;
         this.§%W§.§3!j§ = null;
         this.§%W§.§<!D§ = null;
         this.§%W§.§@X§ = null;
      }
      
      b2internal function §%!-§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§ !1§;
         this.§ !1§ = this.§,S§;
         this.§,S§ = _loc2_;
         this.§]!D§ |= §15§;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = (this.§]!D§ & § !'§) == § !'§;
         var _loc5_:b2Body = this.§7d§.m_body;
         var _loc6_:b2Body = this.§-F§.m_body;
         var _loc7_:Boolean = this.§7d§.§'!Y§.§ V§(this.§-F§.§'!Y§);
         if(this.§]!D§ & §-1§)
         {
            if(_loc7_)
            {
               _loc8_ = this.§7d§.GetShape();
               _loc9_ = this.§-F§.GetShape();
               _loc10_ = _loc5_.§1?§();
               _loc11_ = _loc6_.§1?§();
               _loc3_ = b2Shape.§ V§(_loc8_,_loc10_,_loc9_,_loc11_);
            }
            this.§,S§.§5<§ = 0;
         }
         else
         {
            if(_loc5_.§6!-§() != b2Body.b2_dynamicBody || _loc5_.§%q§() || _loc6_.§6!-§() != b2Body.b2_dynamicBody || _loc6_.§%q§())
            {
               this.§]!D§ |= §8'§;
            }
            else
            {
               this.§]!D§ &= ~§8'§;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§,S§.§5<§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§,S§.§5<§)
               {
                  _loc13_ = this.§,S§.§&!2§[_loc12_];
                  _loc13_.§#!Y§ = 0;
                  _loc13_.§!B§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§ !1§.§5<§)
                  {
                     _loc16_ = this.§ !1§.§&!2§[_loc15_];
                     if(_loc16_.m_id.key == _loc14_.key)
                     {
                        _loc13_.§#!Y§ = _loc16_.§#!Y§;
                        _loc13_.§!B§ = _loc16_.§!B§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§,S§.§5<§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§]!D§ |= § !'§;
         }
         else
         {
            this.§]!D§ &= ~§ !'§;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§]!D§ & §-1§) == 0)
         {
            param1.PreSolve(this,this.§ !1§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §with§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §!!+§.§'[§.Set(this.§7d§.GetShape());
         §!!+§.§4P§.Set(this.§-F§.GetShape());
         §!!+§.§=!S§ = param1;
         §!!+§.§&+§ = param2;
         §!!+§.§@O§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§@! §(§!!+§);
      }
   }
}
