package §5t§
{
   import §!;§.b2ContactID;
   import §!;§.b2Manifold;
   import §!;§.b2ManifoldPoint;
   import §!;§.b2TOIInput;
   import §!;§.b2TimeOfImpact;
   import §!;§.b2WorldManifold;
   import §,v§.b2Body;
   import §,v§.b2ContactListener;
   import §,v§.b2Fixture;
   import §-!A§.b2Sweep;
   import §-!A§.b2Transform;
   import §3!4§.b2Shape;
   import §@h§.b2Settings;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §9!L§:uint = 1;
      
      b2internal static var §=!q§:uint = 2;
      
      b2internal static var §;B§:uint = 4;
      
      b2internal static var §="3§:uint = 8;
      
      b2internal static var §<!r§:uint = 16;
      
      b2internal static var §!y§:uint = 32;
      
      b2internal static var §?&§:uint = 64;
      
      private static var § !I§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §@!5§:uint;
      
      b2internal var §true§:b2Contact;
      
      b2internal var §7!+§:b2Contact;
      
      b2internal var §?!0§:b2ContactEdge;
      
      b2internal var §9f§:b2ContactEdge;
      
      b2internal var §6!$§:b2Fixture;
      
      b2internal var §37§:b2Fixture;
      
      b2internal var §^I§:b2Manifold;
      
      b2internal var §8"2§:b2Manifold;
      
      b2internal var §7y§:Number;
      
      public function b2Contact()
      {
         this.§?!0§ = new b2ContactEdge();
         this.§9f§ = new b2ContactEdge();
         this.§^I§ = new b2Manifold();
         this.§8"2§ = new b2Manifold();
         super();
      }
      
      public function §5!y§() : b2Manifold
      {
         return this.§^I§;
      }
      
      public function §""%§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§6!$§.GetBody();
         var _loc3_:b2Body = this.§37§.GetBody();
         var _loc4_:b2Shape = this.§6!$§.GetShape();
         var _loc5_:b2Shape = this.§37§.GetShape();
         param1.§"!o§(this.§^I§,_loc2_.§^!G§(),_loc4_.§`!,§,_loc3_.§^!G§(),_loc5_.§`!,§);
      }
      
      public function §>!9§() : Boolean
      {
         return (this.§@!5§ & b2internal::<!r) == b2internal::<!r;
      }
      
      public function §"!h§() : Boolean
      {
         return (this.§@!5§ & b2internal::=!q) == b2internal::=!q;
      }
      
      public function §09§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@!5§ |= b2internal::9!L;
         }
         else
         {
            this.§@!5§ &= ~b2internal::9!L;
         }
      }
      
      public function § &§() : Boolean
      {
         return (this.§@!5§ & b2internal::9!L) == b2internal::9!L;
      }
      
      public function §2z§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@!5§ |= b2internal::!y;
         }
         else
         {
            this.§@!5§ &= ~b2internal::!y;
         }
      }
      
      public function §^M§() : Boolean
      {
         return (this.§@!5§ & b2internal::!y) == b2internal::!y;
      }
      
      public function §,h§() : b2Contact
      {
         return this.§7!+§;
      }
      
      public function §=q§() : b2Fixture
      {
         return this.§6!$§;
      }
      
      public function §^!z§() : b2Fixture
      {
         return this.§37§;
      }
      
      public function §<d§() : void
      {
         this.§@!5§ |= b2internal::?&;
      }
      
      b2internal function §6m§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§@!5§ = b2internal::!y;
         if(!param1 || !param2)
         {
            this.§6!$§ = null;
            this.§37§ = null;
            return;
         }
         if(param1.§ &§() || param2.§ &§())
         {
            this.§@!5§ |= b2internal::9!L;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§@!D§() != b2Body.b2_dynamicBody || _loc3_.§ M§() || _loc4_.§@!D§() != b2Body.b2_dynamicBody || _loc4_.§ M§())
         {
            this.§@!5§ |= b2internal::=!q;
         }
         this.§6!$§ = param1;
         this.§37§ = param2;
         this.§^I§.§8!S§ = 0;
         this.§true§ = null;
         this.§7!+§ = null;
         this.§?!0§.§@!"§ = null;
         this.§?!0§.§9!A§ = null;
         this.§?!0§.next = null;
         this.§?!0§.§+!J§ = null;
         this.§9f§.§@!"§ = null;
         this.§9f§.§9!A§ = null;
         this.§9f§.next = null;
         this.§9f§.§+!J§ = null;
      }
      
      b2internal function §^§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§8"2§;
         this.§8"2§ = this.§^I§;
         this.§^I§ = _loc2_;
         this.§@!5§ |= b2internal::!y;
         var _loc3_:* = false;
         var _loc4_:* = (this.§@!5§ & b2internal::<!r) == b2internal::<!r;
         var _loc5_:b2Body = this.§6!$§.m_body;
         var _loc6_:b2Body = this.§37§.m_body;
         var _loc7_:Boolean = this.§6!$§.§@"!§.§&!^§(this.§37§.§@"!§);
         if(this.§@!5§ & b2internal::9!L)
         {
            if(_loc7_)
            {
               _loc8_ = this.§6!$§.GetShape();
               _loc9_ = this.§37§.GetShape();
               _loc10_ = _loc5_.§^!G§();
               _loc11_ = _loc6_.§^!G§();
               _loc3_ = Boolean(b2Shape.§&!^§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§^I§.§8!S§ = 0;
         }
         else
         {
            if(_loc5_.§@!D§() != b2Body.b2_dynamicBody || _loc5_.§ M§() || _loc6_.§@!D§() != b2Body.b2_dynamicBody || _loc6_.§ M§())
            {
               this.§@!5§ |= b2internal::=!q;
            }
            else
            {
               this.§@!5§ &= ~b2internal::=!q;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§^I§.§8!S§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§^I§.§8!S§)
               {
                  (_loc13_ = this.§^I§.§&"#§[_loc12_]).§#3§ = 0;
                  _loc13_.§ !v§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§8"2§.§8!S§)
                  {
                     if((_loc16_ = this.§8"2§.§&"#§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§#3§ = _loc16_.§#3§;
                        _loc13_.§ !v§ = _loc16_.§ !v§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§^I§.§8!S§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§@!5§ |= b2internal::<!r;
         }
         else
         {
            this.§@!5§ &= ~b2internal::<!r;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§@!5§ & b2internal::9!L) == 0)
         {
            param1.PreSolve(this,this.§8"2§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §&!'§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         § !I§.§"!Z§.Set(this.§6!$§.GetShape());
         § !I§.§^_§.Set(this.§37§.GetShape());
         § !I§.§3"§ = param1;
         § !I§.§7"2§ = param2;
         § !I§.§21§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§=p§(§ !I§);
      }
   }
}
