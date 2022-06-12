package §;!e§
{
   import §"J§.b2Body;
   import §"J§.b2ContactListener;
   import §"J§.b2Fixture;
   import §%4§.b2ContactID;
   import §%4§.b2Manifold;
   import §%4§.b2ManifoldPoint;
   import §%4§.b2TOIInput;
   import §%4§.b2TimeOfImpact;
   import §%4§.b2WorldManifold;
   import §2k§.b2Shape;
   import §<!a§.b2Sweep;
   import §<!a§.b2Transform;
   import §<";§.b2Settings;
   import §<";§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §&,§:uint = 1;
      
      b2internal static var §8!y§:uint = 2;
      
      b2internal static var §3Q§:uint = 4;
      
      b2internal static var §>!u§:uint = 8;
      
      b2internal static var §=!M§:uint = 16;
      
      b2internal static var §#T§:uint = 32;
      
      b2internal static var §0t§:uint = 64;
      
      private static var §5"'§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §]!+§:uint;
      
      b2internal var §+!w§:b2Contact;
      
      b2internal var §7!'§:b2Contact;
      
      b2internal var §#=§:b2ContactEdge;
      
      b2internal var §="9§:b2ContactEdge;
      
      b2internal var §9!<§:b2Fixture;
      
      b2internal var §%,§:b2Fixture;
      
      b2internal var § !"§:b2Manifold;
      
      b2internal var §%$§:b2Manifold;
      
      b2internal var §1"8§:Number;
      
      public function b2Contact()
      {
         this.§#=§ = new b2ContactEdge();
         this.§="9§ = new b2ContactEdge();
         this.§ !"§ = new b2Manifold();
         this.§%$§ = new b2Manifold();
         super();
      }
      
      public function §4!V§() : b2Manifold
      {
         return this.§ !"§;
      }
      
      public function §[!d§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§9!<§.GetBody();
         var _loc3_:b2Body = this.§%,§.GetBody();
         var _loc4_:b2Shape = this.§9!<§.GetShape();
         var _loc5_:b2Shape = this.§%,§.GetShape();
         param1.§&!§(this.§ !"§,_loc2_.§60§(),_loc4_.§&!$§,_loc3_.§60§(),_loc5_.§&!$§);
      }
      
      public function §!j§() : Boolean
      {
         return (this.§]!+§ & b2internal::=!M) == b2internal::=!M;
      }
      
      public function §'!q§() : Boolean
      {
         return (this.§]!+§ & b2internal::8!y) == b2internal::8!y;
      }
      
      public function §#p§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!+§ |= b2internal::&,;
         }
         else
         {
            this.§]!+§ &= ~b2internal::&,;
         }
      }
      
      public function §;!g§() : Boolean
      {
         return (this.§]!+§ & b2internal::&,) == b2internal::&,;
      }
      
      public function §]!X§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!+§ |= b2internal::#T;
         }
         else
         {
            this.§]!+§ &= ~b2internal::#T;
         }
      }
      
      public function §4!s§() : Boolean
      {
         return (this.§]!+§ & b2internal::#T) == b2internal::#T;
      }
      
      public function §7"3§() : b2Contact
      {
         return this.§7!'§;
      }
      
      public function §&!K§() : b2Fixture
      {
         return this.§9!<§;
      }
      
      public function § 1§() : b2Fixture
      {
         return this.§%,§;
      }
      
      public function §"N§() : void
      {
         this.§]!+§ |= b2internal::0t;
      }
      
      b2internal function §+N§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§]!+§ = b2internal::#T;
         if(!param1 || !param2)
         {
            this.§9!<§ = null;
            this.§%,§ = null;
            return;
         }
         if(param1.§;!g§() || param2.§;!g§())
         {
            this.§]!+§ |= b2internal::&,;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§;!F§() != b2Body.b2_dynamicBody || _loc3_.§>S§() || _loc4_.§;!F§() != b2Body.b2_dynamicBody || _loc4_.§>S§())
         {
            this.§]!+§ |= b2internal::8!y;
         }
         this.§9!<§ = param1;
         this.§%,§ = param2;
         this.§ !"§.§`!>§ = 0;
         this.§+!w§ = null;
         this.§7!'§ = null;
         this.§#=§.§6M§ = null;
         this.§#=§.§8!?§ = null;
         this.§#=§.§>"2§ = null;
         this.§#=§.§;5§ = null;
         this.§="9§.§6M§ = null;
         this.§="9§.§8!?§ = null;
         this.§="9§.§>"2§ = null;
         this.§="9§.§;5§ = null;
      }
      
      b2internal function §]!J§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§%$§;
         this.§%$§ = this.§ !"§;
         this.§ !"§ = _loc2_;
         this.§]!+§ |= b2internal::#T;
         var _loc3_:* = false;
         var _loc4_:* = (this.§]!+§ & b2internal::=!M) == b2internal::=!M;
         var _loc5_:b2Body = this.§9!<§.m_body;
         var _loc6_:b2Body = this.§%,§.m_body;
         var _loc7_:Boolean = this.§9!<§.§%C§.§6m§(this.§%,§.§%C§);
         if(this.§]!+§ & b2internal::&,)
         {
            if(_loc7_)
            {
               _loc8_ = this.§9!<§.GetShape();
               _loc9_ = this.§%,§.GetShape();
               _loc10_ = _loc5_.§60§();
               _loc11_ = _loc6_.§60§();
               _loc3_ = Boolean(b2Shape.§6m§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§ !"§.§`!>§ = 0;
         }
         else
         {
            if(_loc5_.§;!F§() != b2Body.b2_dynamicBody || _loc5_.§>S§() || _loc6_.§;!F§() != b2Body.b2_dynamicBody || _loc6_.§>S§())
            {
               this.§]!+§ |= b2internal::8!y;
            }
            else
            {
               this.§]!+§ &= ~b2internal::8!y;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§ !"§.§`!>§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§ !"§.§`!>§)
               {
                  (_loc13_ = this.§ !"§.§5S§[_loc12_]).§8!$§ = 0;
                  _loc13_.§!""§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§%$§.§`!>§)
                  {
                     if((_loc16_ = this.§%$§.§5S§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§8!$§ = _loc16_.§8!$§;
                        _loc13_.§!""§ = _loc16_.§!""§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§ !"§.§`!>§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§]!+§ |= b2internal::=!M;
         }
         else
         {
            this.§]!+§ &= ~b2internal::=!M;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§]!+§ & b2internal::&,) == 0)
         {
            param1.PreSolve(this,this.§%$§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §+I§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §5"'§.§]!0§.Set(this.§9!<§.GetShape());
         §5"'§.§&!`§.Set(this.§%,§.GetShape());
         §5"'§.§1!w§ = param1;
         §5"'§.§7?§ = param2;
         §5"'§.§7!i§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§#B§(§5"'§);
      }
   }
}
