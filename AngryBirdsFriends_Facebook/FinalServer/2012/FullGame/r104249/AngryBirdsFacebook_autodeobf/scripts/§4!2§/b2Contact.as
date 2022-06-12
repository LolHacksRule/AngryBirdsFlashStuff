package §4!2§
{
   import § !0§.b2ContactID;
   import § !0§.b2Manifold;
   import § !0§.b2ManifoldPoint;
   import § !0§.b2TOIInput;
   import § !0§.b2TimeOfImpact;
   import § !0§.b2WorldManifold;
   import §&!Y§.b2Body;
   import §&!Y§.b2ContactListener;
   import §&!Y§.b2Fixture;
   import §+!d§.b2Shape;
   import §7F§.b2Sweep;
   import §7F§.b2Transform;
   import §@!a§.b2Settings;
   import §@!a§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §&"I§:uint = 1;
      
      b2internal static var § g§:uint = 2;
      
      b2internal static var §3u§:uint = 4;
      
      b2internal static var §[!_§:uint = 8;
      
      b2internal static var § !,§:uint = 16;
      
      b2internal static var §0!a§:uint = 32;
      
      b2internal static var §]""§:uint = 64;
      
      private static var §3"C§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §^Q§:uint;
      
      b2internal var §>b§:b2Contact;
      
      b2internal var §&!n§:b2Contact;
      
      b2internal var §^T§:b2ContactEdge;
      
      b2internal var §@z§:b2ContactEdge;
      
      b2internal var §9!E§:b2Fixture;
      
      b2internal var §5m§:b2Fixture;
      
      b2internal var §'R§:b2Manifold;
      
      b2internal var §&";§:b2Manifold;
      
      b2internal var §1!;§:Number;
      
      public function b2Contact()
      {
         this.§^T§ = new b2ContactEdge();
         this.§@z§ = new b2ContactEdge();
         this.§'R§ = new b2Manifold();
         this.§&";§ = new b2Manifold();
         super();
      }
      
      public function §7!J§() : b2Manifold
      {
         return this.§'R§;
      }
      
      public function §"U§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§9!E§.GetBody();
         var _loc3_:b2Body = this.§5m§.GetBody();
         var _loc4_:b2Shape = this.§9!E§.GetShape();
         var _loc5_:b2Shape = this.§5m§.GetShape();
         param1.§,!9§(this.§'R§,_loc2_.§5j§(),_loc4_.§,0§,_loc3_.§5j§(),_loc5_.§,0§);
      }
      
      public function §`!Y§() : Boolean
      {
         return (this.§^Q§ & b2internal:: !,) == b2internal:: !,;
      }
      
      public function §0J§() : Boolean
      {
         return (this.§^Q§ & b2internal:: g) == b2internal:: g;
      }
      
      public function §?!t§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^Q§ |= b2internal::&"I;
         }
         else
         {
            this.§^Q§ &= ~b2internal::&"I;
         }
      }
      
      public function §'"E§() : Boolean
      {
         return (this.§^Q§ & b2internal::&"I) == b2internal::&"I;
      }
      
      public function §^!a§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§^Q§ |= b2internal::0!a;
         }
         else
         {
            this.§^Q§ &= ~b2internal::0!a;
         }
      }
      
      public function §+""§() : Boolean
      {
         return (this.§^Q§ & b2internal::0!a) == b2internal::0!a;
      }
      
      public function §+U§() : b2Contact
      {
         return this.§&!n§;
      }
      
      public function §-!x§() : b2Fixture
      {
         return this.§9!E§;
      }
      
      public function §6$§() : b2Fixture
      {
         return this.§5m§;
      }
      
      public function §-g§() : void
      {
         this.§^Q§ |= b2internal::]"";
      }
      
      b2internal function §["=§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§^Q§ = b2internal::0!a;
         if(!param1 || !param2)
         {
            this.§9!E§ = null;
            this.§5m§ = null;
            return;
         }
         if(param1.§'"E§() || param2.§'"E§())
         {
            this.§^Q§ |= b2internal::&"I;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§;!w§() != b2Body.b2_dynamicBody || _loc3_.§>!O§() || _loc4_.§;!w§() != b2Body.b2_dynamicBody || _loc4_.§>!O§())
         {
            this.§^Q§ |= b2internal:: g;
         }
         this.§9!E§ = param1;
         this.§5m§ = param2;
         this.§'R§.§<"5§ = 0;
         this.§>b§ = null;
         this.§&!n§ = null;
         this.§^T§.§7!K§ = null;
         this.§^T§.§2k§ = null;
         this.§^T§.§<B§ = null;
         this.§^T§.§2Q§ = null;
         this.§@z§.§7!K§ = null;
         this.§@z§.§2k§ = null;
         this.§@z§.§<B§ = null;
         this.§@z§.§2Q§ = null;
      }
      
      b2internal function §@C§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§&";§;
         this.§&";§ = this.§'R§;
         this.§'R§ = _loc2_;
         this.§^Q§ |= b2internal::0!a;
         var _loc3_:* = false;
         var _loc4_:* = (this.§^Q§ & b2internal:: !,) == b2internal:: !,;
         var _loc5_:b2Body = this.§9!E§.m_body;
         var _loc6_:b2Body = this.§5m§.m_body;
         var _loc7_:Boolean = this.§9!E§.§0!u§.§;!r§(this.§5m§.§0!u§);
         if(this.§^Q§ & b2internal::&"I)
         {
            if(_loc7_)
            {
               _loc8_ = this.§9!E§.GetShape();
               _loc9_ = this.§5m§.GetShape();
               _loc10_ = _loc5_.§5j§();
               _loc11_ = _loc6_.§5j§();
               _loc3_ = Boolean(b2Shape.§;!r§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§'R§.§<"5§ = 0;
         }
         else
         {
            if(_loc5_.§;!w§() != b2Body.b2_dynamicBody || _loc5_.§>!O§() || _loc6_.§;!w§() != b2Body.b2_dynamicBody || _loc6_.§>!O§())
            {
               this.§^Q§ |= b2internal:: g;
            }
            else
            {
               this.§^Q§ &= ~b2internal:: g;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§'R§.§<"5§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§'R§.§<"5§)
               {
                  (_loc13_ = this.§'R§.§%&§[_loc12_]).§<"6§ = 0;
                  _loc13_.§'"L§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§&";§.§<"5§)
                  {
                     if((_loc16_ = this.§&";§.§%&§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§<"6§ = _loc16_.§<"6§;
                        _loc13_.§'"L§ = _loc16_.§'"L§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§'R§.§<"5§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§^Q§ |= b2internal:: !,;
         }
         else
         {
            this.§^Q§ &= ~b2internal:: !,;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§^Q§ & b2internal::&"I) == 0)
         {
            param1.PreSolve(this,this.§&";§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §7m§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §3"C§.§7!C§.Set(this.§9!E§.GetShape());
         §3"C§.§`"!§.Set(this.§5m§.GetShape());
         §3"C§.§;B§ = param1;
         §3"C§.§-!>§ = param2;
         §3"C§.§0!8§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§9!`§(§3"C§);
      }
   }
}
