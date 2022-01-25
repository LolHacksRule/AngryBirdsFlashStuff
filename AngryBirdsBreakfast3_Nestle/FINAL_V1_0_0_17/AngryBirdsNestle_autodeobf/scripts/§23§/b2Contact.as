package §23§
{
   import §!§.b2ContactID;
   import §!§.b2Manifold;
   import §!§.b2ManifoldPoint;
   import §!§.b2TOIInput;
   import §!§.b2TimeOfImpact;
   import §!§.b2WorldManifold;
   import §'!_§.b2Settings;
   import §'!_§.b2internal;
   import §0"!§.b2Body;
   import §0"!§.b2ContactListener;
   import §0"!§.b2Fixture;
   import §=!!§.b2Shape;
   import §@!E§.b2Sweep;
   import §@!E§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §@!8§:uint = 1;
      
      b2internal static var §[^§:uint = 2;
      
      b2internal static var §@F§:uint = 4;
      
      b2internal static var §+!L§:uint = 8;
      
      b2internal static var §9g§:uint = 16;
      
      b2internal static var §8o§:uint = 32;
      
      b2internal static var §!c§:uint = 64;
      
      private static var §>=§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §1!h§:uint;
      
      b2internal var §,!>§:b2Contact;
      
      b2internal var §6!c§:b2Contact;
      
      b2internal var §81§:b2ContactEdge;
      
      b2internal var §!!'§:b2ContactEdge;
      
      b2internal var §2!k§:b2Fixture;
      
      b2internal var §4!l§:b2Fixture;
      
      b2internal var §=!u§:b2Manifold;
      
      b2internal var §,"%§:b2Manifold;
      
      b2internal var §%!U§:Number;
      
      public function b2Contact()
      {
         this.§81§ = new b2ContactEdge();
         this.§!!'§ = new b2ContactEdge();
         this.§=!u§ = new b2Manifold();
         this.§,"%§ = new b2Manifold();
         super();
      }
      
      public function §9"#§() : b2Manifold
      {
         return this.§=!u§;
      }
      
      public function §-Y§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§2!k§.GetBody();
         var _loc3_:b2Body = this.§4!l§.GetBody();
         var _loc4_:b2Shape = this.§2!k§.GetShape();
         var _loc5_:b2Shape = this.§4!l§.GetShape();
         param1.§6R§(this.§=!u§,_loc2_.§%X§(),_loc4_.§>!M§,_loc3_.§%X§(),_loc5_.§>!M§);
      }
      
      public function §>k§() : Boolean
      {
         return (this.§1!h§ & b2internal::9g) == b2internal::9g;
      }
      
      public function §@M§() : Boolean
      {
         return (this.§1!h§ & b2internal::[^) == b2internal::[^;
      }
      
      public function §]4§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!h§ |= b2internal::@!8;
         }
         else
         {
            this.§1!h§ &= ~b2internal::@!8;
         }
      }
      
      public function §5!V§() : Boolean
      {
         return (this.§1!h§ & b2internal::@!8) == b2internal::@!8;
      }
      
      public function §4?§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§1!h§ |= b2internal::8o;
         }
         else
         {
            this.§1!h§ &= ~b2internal::8o;
         }
      }
      
      public function §7^§() : Boolean
      {
         return (this.§1!h§ & b2internal::8o) == b2internal::8o;
      }
      
      public function §2!9§() : b2Contact
      {
         return this.§6!c§;
      }
      
      public function §6!'§() : b2Fixture
      {
         return this.§2!k§;
      }
      
      public function §]O§() : b2Fixture
      {
         return this.§4!l§;
      }
      
      public function §]!V§() : void
      {
         this.§1!h§ |= b2internal::!c;
      }
      
      b2internal function §[!2§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§1!h§ = b2internal::8o;
         if(!param1 || !param2)
         {
            this.§2!k§ = null;
            this.§4!l§ = null;
            return;
         }
         if(param1.§5!V§() || param2.§5!V§())
         {
            this.§1!h§ |= b2internal::@!8;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§4!v§() != b2Body.b2_dynamicBody || _loc3_.§^F§() || _loc4_.§4!v§() != b2Body.b2_dynamicBody || _loc4_.§^F§())
         {
            this.§1!h§ |= b2internal::[^;
         }
         this.§2!k§ = param1;
         this.§4!l§ = param2;
         this.§=!u§.§4!5§ = 0;
         this.§,!>§ = null;
         this.§6!c§ = null;
         this.§81§.§@"6§ = null;
         this.§81§.§3!B§ = null;
         this.§81§.next = null;
         this.§81§.§"l§ = null;
         this.§!!'§.§@"6§ = null;
         this.§!!'§.§3!B§ = null;
         this.§!!'§.next = null;
         this.§!!'§.§"l§ = null;
      }
      
      b2internal function §%3§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§,"%§;
         this.§,"%§ = this.§=!u§;
         this.§=!u§ = _loc2_;
         this.§1!h§ |= b2internal::8o;
         var _loc3_:* = false;
         var _loc4_:* = (this.§1!h§ & b2internal::9g) == b2internal::9g;
         var _loc5_:b2Body = this.§2!k§.m_body;
         var _loc6_:b2Body = this.§4!l§.m_body;
         var _loc7_:Boolean = this.§2!k§.§`!F§.§4I§(this.§4!l§.§`!F§);
         if(this.§1!h§ & b2internal::@!8)
         {
            if(_loc7_)
            {
               _loc8_ = this.§2!k§.GetShape();
               _loc9_ = this.§4!l§.GetShape();
               _loc10_ = _loc5_.§%X§();
               _loc11_ = _loc6_.§%X§();
               _loc3_ = Boolean(b2Shape.§4I§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§=!u§.§4!5§ = 0;
         }
         else
         {
            if(_loc5_.§4!v§() != b2Body.b2_dynamicBody || _loc5_.§^F§() || _loc6_.§4!v§() != b2Body.b2_dynamicBody || _loc6_.§^F§())
            {
               this.§1!h§ |= b2internal::[^;
            }
            else
            {
               this.§1!h§ &= ~b2internal::[^;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§=!u§.§4!5§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§=!u§.§4!5§)
               {
                  (_loc13_ = this.§=!u§.§`9§[_loc12_]).§`!8§ = 0;
                  _loc13_.§;8§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§,"%§.§4!5§)
                  {
                     if((_loc16_ = this.§,"%§.§`9§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§`!8§ = _loc16_.§`!8§;
                        _loc13_.§;8§ = _loc16_.§;8§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§=!u§.§4!5§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§1!h§ |= b2internal::9g;
         }
         else
         {
            this.§1!h§ &= ~b2internal::9g;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§1!h§ & b2internal::@!8) == 0)
         {
            param1.PreSolve(this,this.§,"%§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §'>§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §>=§.§+!l§.Set(this.§2!k§.GetShape());
         §>=§.§!!5§.Set(this.§4!l§.GetShape());
         §>=§.§''§ = param1;
         §>=§.§<7§ = param2;
         §>=§.§&V§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§!A§(§>=§);
      }
   }
}
