package §8[§
{
   import §+#$§.b2Body;
   import §+#$§.b2ContactListener;
   import §+#$§.b2Fixture;
   import §3"5§.b2ContactID;
   import §3"5§.b2Manifold;
   import §3"5§.b2ManifoldPoint;
   import §3"5§.b2TOIInput;
   import §3"5§.b2TimeOfImpact;
   import §3"5§.b2WorldManifold;
   import §4!$§.b2Shape;
   import §5"i§.b2Settings;
   import §5"i§.b2internal;
   import §[R§.b2Sweep;
   import §[R§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §?>§:uint = 1;
      
      b2internal static var §[[§:uint = 2;
      
      b2internal static var §96§:uint = 4;
      
      b2internal static var §##R§:uint = 8;
      
      b2internal static var §8!O§:uint = 16;
      
      b2internal static var §4!K§:uint = 32;
      
      b2internal static var §#!=§:uint = 64;
      
      private static var §="v§:b2TOIInput = new b2TOIInput();
       
      
      private var §1"F§:Boolean = false;
      
      b2internal var §6b§:uint;
      
      b2internal var § #&§:b2Contact;
      
      b2internal var §!"!§:b2Contact;
      
      b2internal var §`g§:b2ContactEdge;
      
      b2internal var §["[§:b2ContactEdge;
      
      b2internal var §8"Q§:b2Fixture;
      
      b2internal var §?# §:b2Fixture;
      
      b2internal var §!#Y§:b2Manifold;
      
      b2internal var §89§:b2Manifold;
      
      b2internal var §8"J§:Number;
      
      public function b2Contact()
      {
         this.§`g§ = new b2ContactEdge();
         this.§["[§ = new b2ContactEdge();
         this.§!#Y§ = new b2Manifold();
         this.§89§ = new b2Manifold();
         super();
      }
      
      public function §2;§() : b2Manifold
      {
         return this.§!#Y§;
      }
      
      public function §<"Q§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§8"Q§.GetBody();
         var _loc3_:b2Body = this.§?# §.GetBody();
         var _loc4_:b2Shape = this.§8"Q§.GetShape();
         var _loc5_:b2Shape = this.§?# §.GetShape();
         param1.§8#5§(this.§!#Y§,_loc2_.GetTransform(),_loc4_.§ "^§,_loc3_.GetTransform(),_loc5_.§ "^§);
      }
      
      public function §[#B§() : Boolean
      {
         return (this.§6b§ & b2internal::8!O) == b2internal::8!O;
      }
      
      public function §;!g§() : Boolean
      {
         return (this.§6b§ & b2internal::[[) == b2internal::[[;
      }
      
      public function §"!I§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6b§ |= b2internal::?>;
         }
         else
         {
            this.§6b§ &= ~b2internal::?>;
         }
      }
      
      public function §!W§() : Boolean
      {
         return (this.§6b§ & b2internal::?>) == b2internal::?>;
      }
      
      public function §5G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§6b§ |= b2internal::4!K;
         }
         else
         {
            this.§6b§ &= ~b2internal::4!K;
         }
      }
      
      public function §0"p§() : Boolean
      {
         return (this.§6b§ & b2internal::4!K) == b2internal::4!K;
      }
      
      public function §>!>§() : b2Contact
      {
         return this.§!"!§;
      }
      
      public function §?!@§() : b2Fixture
      {
         return this.§8"Q§;
      }
      
      public function §;"R§() : b2Fixture
      {
         return this.§?# §;
      }
      
      public function §=y§() : void
      {
         this.§6b§ |= b2internal::#!=;
      }
      
      b2internal function §'B§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§6b§ = b2internal::4!K;
         if(!param1 || !param2)
         {
            this.§8"Q§ = null;
            this.§?# § = null;
            return;
         }
         if(param1.§!W§() || param2.§!W§())
         {
            this.§6b§ |= b2internal::?>;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§8! §() != b2Body.b2_dynamicBody || _loc3_.§^!J§() || _loc4_.§8! §() != b2Body.b2_dynamicBody || _loc4_.§^!J§())
         {
            this.§6b§ |= b2internal::[[;
         }
         this.§8"Q§ = param1;
         this.§?# § = param2;
         this.§!#Y§.§6#;§ = 0;
         this.§ #&§ = null;
         this.§!"!§ = null;
         this.§`g§.§>"6§ = null;
         this.§`g§.§-B§ = null;
         this.§`g§.§]!D§ = null;
         this.§`g§.other = null;
         this.§["[§.§>"6§ = null;
         this.§["[§.§-B§ = null;
         this.§["[§.§]!D§ = null;
         this.§["[§.other = null;
      }
      
      b2internal function §%!q§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§89§;
         this.§89§ = this.§!#Y§;
         this.§!#Y§ = _loc2_;
         this.§6b§ |= b2internal::4!K;
         var _loc3_:* = false;
         var _loc4_:* = (this.§6b§ & b2internal::8!O) == b2internal::8!O;
         if(this.§1"F§ && _loc4_)
         {
            param1.EndContact(this);
            _loc4_ = false;
            this.§6b§ &= ~b2internal::8!O;
            this.§1"F§ = false;
         }
         var _loc5_:b2Body = this.§8"Q§.m_body;
         var _loc6_:b2Body = this.§?# §.m_body;
         var _loc7_:Boolean = this.§8"Q§.§?!>§.§?#S§(this.§?# §.§?!>§);
         if(this.§6b§ & b2internal::?>)
         {
            if(_loc7_)
            {
               _loc8_ = this.§8"Q§.GetShape();
               _loc9_ = this.§?# §.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§?#S§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§!#Y§.§6#;§ = 0;
         }
         else
         {
            if(_loc5_.§8! §() != b2Body.b2_dynamicBody || _loc5_.§^!J§() || _loc6_.§8! §() != b2Body.b2_dynamicBody || _loc6_.§^!J§())
            {
               this.§6b§ |= b2internal::[[;
            }
            else
            {
               this.§6b§ &= ~b2internal::[[;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§!#Y§.§6#;§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§!#Y§.§6#;§)
               {
                  (_loc13_ = this.§!#Y§.§="8§[_loc12_]).§,#?§ = 0;
                  _loc13_.§!#a§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§89§.§6#;§)
                  {
                     if((_loc16_ = this.§89§.§="8§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§,#?§ = _loc16_.§,#?§;
                        _loc13_.§!#a§ = _loc16_.§!#a§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§!#Y§.§6#;§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§6b§ |= b2internal::8!O;
         }
         else
         {
            this.§6b§ &= ~b2internal::8!O;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§6b§ & b2internal::?>) == 0)
         {
            param1.PreSolve(this,this.§89§);
         }
      }
      
      public function reset() : void
      {
         this.§1"F§ = true;
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §]"C§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §="v§.§<!b§.Set(this.§8"Q§.GetShape());
         §="v§.§#!]§.Set(this.§?# §.GetShape());
         §="v§.§#![§ = param1;
         §="v§.§?"s§ = param2;
         §="v§.§;+§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§]"A§(§="v§);
      }
   }
}
