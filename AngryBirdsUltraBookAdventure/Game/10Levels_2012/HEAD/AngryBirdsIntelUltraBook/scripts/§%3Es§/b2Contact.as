package §>s§
{
   import §,X§.b2Shape;
   import §1%§.b2Body;
   import §1%§.b2ContactListener;
   import §1%§.b2Fixture;
   import §8!H§.b2Settings;
   import §8!H§.b2internal;
   import §?!&§.b2Sweep;
   import §?!&§.b2Transform;
   import §`!H§.b2ContactID;
   import §`!H§.b2Manifold;
   import §`!H§.b2ManifoldPoint;
   import §`!H§.b2TOIInput;
   import §`!H§.b2TimeOfImpact;
   import §`!H§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §-!T§:uint = 1;
      
      b2internal static var §%!9§:uint = 2;
      
      b2internal static var §8s§:uint = 4;
      
      b2internal static var §'!=§:uint = 8;
      
      b2internal static var §5q§:uint = 16;
      
      b2internal static var §=S§:uint = 32;
      
      b2internal static var §;S§:uint = 64;
      
      private static var §7!E§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §8A§:uint;
      
      b2internal var §4!0§:b2Contact;
      
      b2internal var §!J§:b2Contact;
      
      b2internal var §`P§:b2ContactEdge;
      
      b2internal var §%'§:b2ContactEdge;
      
      b2internal var §]r§:b2Fixture;
      
      b2internal var §"!F§:b2Fixture;
      
      b2internal var §]0§:b2Manifold;
      
      b2internal var §7!3§:b2Manifold;
      
      b2internal var §?G§:Number;
      
      public function b2Contact()
      {
         this.§`P§ = new b2ContactEdge();
         this.§%'§ = new b2ContactEdge();
         this.§]0§ = new b2Manifold();
         this.§7!3§ = new b2Manifold();
         super();
      }
      
      public function §%8§() : b2Manifold
      {
         return this.§]0§;
      }
      
      public function §]!j§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§]r§.GetBody();
         var _loc3_:b2Body = this.§"!F§.GetBody();
         var _loc4_:b2Shape = this.§]r§.GetShape();
         var _loc5_:b2Shape = this.§"!F§.GetShape();
         param1.§3!a§(this.§]0§,_loc2_.§?Q§(),_loc4_.§&!N§,_loc3_.§?Q§(),_loc5_.§&!N§);
      }
      
      public function §%!T§() : Boolean
      {
         return (this.§8A§ & §5q§) == §5q§;
      }
      
      public function §[!Q§() : Boolean
      {
         return (this.§8A§ & §%!9§) == §%!9§;
      }
      
      public function §1[§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8A§ |= §-!T§;
         }
         else
         {
            this.§8A§ &= ~§-!T§;
         }
      }
      
      public function §@!L§() : Boolean
      {
         return (this.§8A§ & §-!T§) == §-!T§;
      }
      
      public function §^!3§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8A§ |= §=S§;
         }
         else
         {
            this.§8A§ &= ~§=S§;
         }
      }
      
      public function §@f§() : Boolean
      {
         return (this.§8A§ & §=S§) == §=S§;
      }
      
      public function §5<§() : b2Contact
      {
         return this.§!J§;
      }
      
      public function §%! §() : b2Fixture
      {
         return this.§]r§;
      }
      
      public function §4#§() : b2Fixture
      {
         return this.§"!F§;
      }
      
      public function §+! §() : void
      {
         this.§8A§ |= §;S§;
      }
      
      b2internal function §`!B§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§8A§ = §=S§;
         if(!param1 || !param2)
         {
            this.§]r§ = null;
            this.§"!F§ = null;
            return;
         }
         if(param1.§@!L§() || param2.§@!L§())
         {
            this.§8A§ |= §-!T§;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§3r§() != b2Body.b2_dynamicBody || _loc3_.§"#§() || _loc4_.§3r§() != b2Body.b2_dynamicBody || _loc4_.§"#§())
         {
            this.§8A§ |= §%!9§;
         }
         this.§]r§ = param1;
         this.§"!F§ = param2;
         this.§]0§.§7I§ = 0;
         this.§4!0§ = null;
         this.§!J§ = null;
         this.§`P§.§#!#§ = null;
         this.§`P§.§9§ = null;
         this.§`P§.§86§ = null;
         this.§`P§.§;-§ = null;
         this.§%'§.§#!#§ = null;
         this.§%'§.§9§ = null;
         this.§%'§.§86§ = null;
         this.§%'§.§;-§ = null;
      }
      
      b2internal function §&7§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§7!3§;
         this.§7!3§ = this.§]0§;
         this.§]0§ = _loc2_;
         this.§8A§ |= §=S§;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = (this.§8A§ & §5q§) == §5q§;
         var _loc5_:b2Body = this.§]r§.m_body;
         var _loc6_:b2Body = this.§"!F§.m_body;
         var _loc7_:Boolean = this.§]r§.§,L§.§>!N§(this.§"!F§.§,L§);
         if(this.§8A§ & §-!T§)
         {
            if(_loc7_)
            {
               _loc8_ = this.§]r§.GetShape();
               _loc9_ = this.§"!F§.GetShape();
               _loc10_ = _loc5_.§?Q§();
               _loc11_ = _loc6_.§?Q§();
               _loc3_ = b2Shape.§>!N§(_loc8_,_loc10_,_loc9_,_loc11_);
            }
            this.§]0§.§7I§ = 0;
         }
         else
         {
            if(_loc5_.§3r§() != b2Body.b2_dynamicBody || _loc5_.§"#§() || _loc6_.§3r§() != b2Body.b2_dynamicBody || _loc6_.§"#§())
            {
               this.§8A§ |= §%!9§;
            }
            else
            {
               this.§8A§ &= ~§%!9§;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§]0§.§7I§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§]0§.§7I§)
               {
                  _loc13_ = this.§]0§.§ 2§[_loc12_];
                  _loc13_.§8!L§ = 0;
                  _loc13_.§-!V§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§7!3§.§7I§)
                  {
                     _loc16_ = this.§7!3§.§ 2§[_loc15_];
                     if(_loc16_.m_id.key == _loc14_.key)
                     {
                        _loc13_.§8!L§ = _loc16_.§8!L§;
                        _loc13_.§-!V§ = _loc16_.§-!V§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§]0§.§7I§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§8A§ |= §5q§;
         }
         else
         {
            this.§8A§ &= ~§5q§;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§8A§ & §-!T§) == 0)
         {
            param1.PreSolve(this,this.§7!3§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §+N§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §7!E§.§1&§.Set(this.§]r§.GetShape());
         §7!E§.§5!f§.Set(this.§"!F§.GetShape());
         §7!E§.§>$§ = param1;
         §7!E§.§^q§ = param2;
         §7!E§.§8!K§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§9A§(§7!E§);
      }
   }
}
