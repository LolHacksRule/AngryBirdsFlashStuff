package §;!U§
{
   import §!O§.b2Shape;
   import §0!=§.b2Sweep;
   import §0!=§.b2Transform;
   import §0!?§.b2Body;
   import §0!?§.b2ContactListener;
   import §0!?§.b2Fixture;
   import §0^§.b2Settings;
   import §0^§.b2internal;
   import §`!E§.b2ContactID;
   import §`!E§.b2Manifold;
   import §`!E§.b2ManifoldPoint;
   import §`!E§.b2TOIInput;
   import §`!E§.b2TimeOfImpact;
   import §`!E§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §6#§:uint = 1;
      
      b2internal static var §?!e§:uint = 2;
      
      b2internal static var §^n§:uint = 4;
      
      b2internal static var §<u§:uint = 8;
      
      b2internal static var §]!Y§:uint = 16;
      
      b2internal static var §0X§:uint = 32;
      
      b2internal static var §1C§:uint = 64;
      
      private static var §-!&§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §&W§:uint;
      
      b2internal var §4!_§:b2Contact;
      
      b2internal var §=!T§:b2Contact;
      
      b2internal var §2t§:b2ContactEdge;
      
      b2internal var §7Q§:b2ContactEdge;
      
      b2internal var §&'§:b2Fixture;
      
      b2internal var §[!d§:b2Fixture;
      
      b2internal var §8g§:b2Manifold;
      
      b2internal var §0,§:b2Manifold;
      
      b2internal var §%!^§:Number;
      
      public function b2Contact()
      {
         this.§2t§ = new b2ContactEdge();
         this.§7Q§ = new b2ContactEdge();
         this.§8g§ = new b2Manifold();
         this.§0,§ = new b2Manifold();
         super();
      }
      
      public function §75§() : b2Manifold
      {
         return this.§8g§;
      }
      
      public function §4! §(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§&'§.GetBody();
         var _loc3_:b2Body = this.§[!d§.GetBody();
         var _loc4_:b2Shape = this.§&'§.GetShape();
         var _loc5_:b2Shape = this.§[!d§.GetShape();
         param1.§8!6§(this.§8g§,_loc2_.§6!a§(),_loc4_.§]!5§,_loc3_.§6!a§(),_loc5_.§]!5§);
      }
      
      public function §%j§() : Boolean
      {
         return (this.§&W§ & b2internal::]!Y) == b2internal::]!Y;
      }
      
      public function §3l§() : Boolean
      {
         return (this.§&W§ & b2internal::?!e) == b2internal::?!e;
      }
      
      public function §2f§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&W§ |= b2internal::6#;
         }
         else
         {
            this.§&W§ &= ~b2internal::6#;
         }
      }
      
      public function §5M§() : Boolean
      {
         return (this.§&W§ & b2internal::6#) == b2internal::6#;
      }
      
      public function § +§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§&W§ |= b2internal::0X;
         }
         else
         {
            this.§&W§ &= ~b2internal::0X;
         }
      }
      
      public function § !f§() : Boolean
      {
         return (this.§&W§ & b2internal::0X) == b2internal::0X;
      }
      
      public function §=t§() : b2Contact
      {
         return this.§=!T§;
      }
      
      public function §!^§() : b2Fixture
      {
         return this.§&'§;
      }
      
      public function §"P§() : b2Fixture
      {
         return this.§[!d§;
      }
      
      public function §#<§() : void
      {
         this.§&W§ |= b2internal::1C;
      }
      
      b2internal function §@%§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§&W§ = b2internal::0X;
         if(!param1 || !param2)
         {
            this.§&'§ = null;
            this.§[!d§ = null;
            return;
         }
         if(param1.§5M§() || param2.§5M§())
         {
            this.§&W§ |= b2internal::6#;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§7"§() != b2Body.b2_dynamicBody || _loc3_.§^R§() || _loc4_.§7"§() != b2Body.b2_dynamicBody || _loc4_.§^R§())
         {
            this.§&W§ |= b2internal::?!e;
         }
         this.§&'§ = param1;
         this.§[!d§ = param2;
         this.§8g§.§+#§ = 0;
         this.§4!_§ = null;
         this.§=!T§ = null;
         this.§2t§.§<!C§ = null;
         this.§2t§.§1!"§ = null;
         this.§2t§.§^T§ = null;
         this.§2t§.§5d§ = null;
         this.§7Q§.§<!C§ = null;
         this.§7Q§.§1!"§ = null;
         this.§7Q§.§^T§ = null;
         this.§7Q§.§5d§ = null;
      }
      
      b2internal function §7!Q§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§0,§;
         this.§0,§ = this.§8g§;
         this.§8g§ = _loc2_;
         this.§&W§ |= b2internal::0X;
         var _loc3_:* = false;
         var _loc4_:* = (this.§&W§ & b2internal::]!Y) == b2internal::]!Y;
         var _loc5_:b2Body = this.§&'§.m_body;
         var _loc6_:b2Body = this.§[!d§.m_body;
         var _loc7_:Boolean = this.§&'§.§ !c§.§&!?§(this.§[!d§.§ !c§);
         if(this.§&W§ & b2internal::6#)
         {
            if(_loc7_)
            {
               _loc8_ = this.§&'§.GetShape();
               _loc9_ = this.§[!d§.GetShape();
               _loc10_ = _loc5_.§6!a§();
               _loc11_ = _loc6_.§6!a§();
               _loc3_ = Boolean(b2Shape.§&!?§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§8g§.§+#§ = 0;
         }
         else
         {
            if(_loc5_.§7"§() != b2Body.b2_dynamicBody || _loc5_.§^R§() || _loc6_.§7"§() != b2Body.b2_dynamicBody || _loc6_.§^R§())
            {
               this.§&W§ |= b2internal::?!e;
            }
            else
            {
               this.§&W§ &= ~b2internal::?!e;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§8g§.§+#§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§8g§.§+#§)
               {
                  (_loc13_ = this.§8g§.§!&§[_loc12_]).§;!=§ = 0;
                  _loc13_.§@!7§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§0,§.§+#§)
                  {
                     if((_loc16_ = this.§0,§.§!&§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§;!=§ = _loc16_.§;!=§;
                        _loc13_.§@!7§ = _loc16_.§@!7§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§8g§.§+#§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§&W§ |= b2internal::]!Y;
         }
         else
         {
            this.§&W§ &= ~b2internal::]!Y;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§&W§ & b2internal::6#) == 0)
         {
            param1.PreSolve(this,this.§0,§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §[+§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §-!&§.§0!f§.Set(this.§&'§.GetShape());
         §-!&§.§<!I§.Set(this.§[!d§.GetShape());
         §-!&§.§6z§ = param1;
         §-!&§.§]i§ = param2;
         §-!&§.§&!2§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§4]§(§-!&§);
      }
   }
}
