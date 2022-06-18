package §6"0§
{
   import §,!T§.b2Shape;
   import §1#F§.b2Settings;
   import §1#F§.b2internal;
   import §3#h§.b2Body;
   import §3#h§.b2ContactListener;
   import §3#h§.b2Fixture;
   import §6!R§.b2Sweep;
   import §6!R§.b2Transform;
   import §9$A§.b2ContactID;
   import §9$A§.b2Manifold;
   import §9$A§.b2ManifoldPoint;
   import §9$A§.b2TOIInput;
   import §9$A§.b2TimeOfImpact;
   import §9$A§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §7!P§:uint = 1;
      
      b2internal static var §0$5§:uint = 2;
      
      b2internal static var §#"L§:uint = 4;
      
      b2internal static var §-s§:uint = 8;
      
      b2internal static var §#!8§:uint = 16;
      
      b2internal static var §+!X§:uint = 32;
      
      b2internal static var §`Z§:uint = 64;
      
      private static var §]!h§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §#!E§:uint;
      
      b2internal var §2Y§:b2Contact;
      
      b2internal var §7<§:b2Contact;
      
      b2internal var §0#J§:b2ContactEdge;
      
      b2internal var §]$6§:b2ContactEdge;
      
      b2internal var §#";§:b2Fixture;
      
      b2internal var §0#0§:b2Fixture;
      
      b2internal var §+,§:Boolean = false;
      
      b2internal var §[!2§:b2Manifold;
      
      b2internal var §17§:b2Manifold;
      
      b2internal var §+#]§:Number;
      
      public function b2Contact()
      {
         this.§0#J§ = new b2ContactEdge();
         this.§]$6§ = new b2ContactEdge();
         this.§[!2§ = new b2Manifold();
         this.§17§ = new b2Manifold();
         super();
      }
      
      public function §1"[§() : b2Manifold
      {
         return this.§[!2§;
      }
      
      public function §%!I§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§#";§.GetBody();
         var _loc3_:b2Body = this.§0#0§.GetBody();
         var _loc4_:b2Shape = this.§#";§.GetShape();
         var _loc5_:b2Shape = this.§0#0§.GetShape();
         param1.§80§(this.§[!2§,_loc2_.GetTransform(),_loc4_.§?#o§,_loc3_.GetTransform(),_loc5_.§?#o§);
      }
      
      public function §;#9§() : Boolean
      {
         return (this.§#!E§ & b2internal::#!8) == b2internal::#!8;
      }
      
      public function §7#m§() : Boolean
      {
         return (this.§#!E§ & b2internal::0$5) == b2internal::0$5;
      }
      
      public function §3# §(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!E§ |= b2internal::7!P;
         }
         else
         {
            this.§#!E§ &= ~b2internal::7!P;
         }
      }
      
      public function §9D§() : Boolean
      {
         return (this.§#!E§ & b2internal::7!P) == b2internal::7!P;
      }
      
      public function §+#'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!E§ |= b2internal::+!X;
         }
         else
         {
            this.§#!E§ &= ~b2internal::+!X;
         }
      }
      
      public function §%#I§() : Boolean
      {
         return (this.§#!E§ & b2internal::+!X) == b2internal::+!X;
      }
      
      public function §6"t§() : b2Contact
      {
         return this.§7<§;
      }
      
      public function §#"^§() : b2Fixture
      {
         return this.§#";§;
      }
      
      public function §4$E§() : b2Fixture
      {
         return this.§0#0§;
      }
      
      public function §4"[§() : void
      {
         this.§#!E§ |= b2internal::`Z;
      }
      
      b2internal function §14§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§#!E§ = b2internal::+!X;
         if(!param1 || !param2)
         {
            this.§#";§ = null;
            this.§0#0§ = null;
            return;
         }
         if(param1.§9D§() || param2.§9D§())
         {
            this.§#!E§ |= b2internal::7!P;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§!"k§() != b2Body.b2_dynamicBody || _loc3_.§1"m§() || _loc4_.§!"k§() != b2Body.b2_dynamicBody || _loc4_.§1"m§())
         {
            this.§#!E§ |= b2internal::0$5;
         }
         this.§#";§ = param1;
         this.§0#0§ = param2;
         this.§[!2§.§?#Z§ = 0;
         this.§2Y§ = null;
         this.§7<§ = null;
         this.§0#J§.§&$-§ = null;
         this.§0#J§.§^!p§ = null;
         this.§0#J§.next = null;
         this.§0#J§.§5"&§ = null;
         this.§]$6§.§&$-§ = null;
         this.§]$6§.§^!p§ = null;
         this.§]$6§.next = null;
         this.§]$6§.§5"&§ = null;
      }
      
      b2internal function §&#`§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§17§;
         this.§17§ = this.§[!2§;
         this.§[!2§ = _loc2_;
         this.§#!E§ |= b2internal::+!X;
         var _loc3_:* = false;
         var _loc4_:* = (this.§#!E§ & b2internal::#!8) == b2internal::#!8;
         var _loc5_:b2Body = this.§#";§.m_body;
         var _loc6_:b2Body = this.§0#0§.m_body;
         var _loc7_:Boolean = this.§#";§.§;?§.§!"j§(this.§0#0§.§;?§);
         if(this.§#!E§ & b2internal::7!P)
         {
            if(_loc7_)
            {
               _loc8_ = this.§#";§.GetShape();
               _loc9_ = this.§0#0§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§!"j§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§[!2§.§?#Z§ = 0;
         }
         else
         {
            if(_loc5_.§!"k§() != b2Body.b2_dynamicBody || _loc5_.§1"m§() || _loc6_.§!"k§() != b2Body.b2_dynamicBody || _loc6_.§1"m§())
            {
               this.§#!E§ |= b2internal::0$5;
            }
            else
            {
               this.§#!E§ &= ~b2internal::0$5;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§[!2§.§?#Z§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§[!2§.§?#Z§)
               {
                  (_loc13_ = this.§[!2§.§7#K§[_loc12_]).§8"r§ = 0;
                  _loc13_.§-[§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§17§.§?#Z§)
                  {
                     if((_loc16_ = this.§17§.§7#K§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§8"r§ = _loc16_.§8"r§;
                        _loc13_.§-[§ = _loc16_.§-[§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§[!2§.§?#Z§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§#!E§ |= b2internal::#!8;
         }
         else
         {
            this.§#!E§ &= ~b2internal::#!8;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§#!E§ & b2internal::7!P) == 0)
         {
            param1.PreSolve(this,this.§17§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §";§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §]!h§.§,"?§.Set(this.§#";§.GetShape());
         §]!h§.§!S§.Set(this.§0#0§.GetShape());
         §]!h§.§9# § = param1;
         §]!h§.§?#G§ = param2;
         §]!h§.§&&§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§8!§(§]!h§);
      }
   }
}
