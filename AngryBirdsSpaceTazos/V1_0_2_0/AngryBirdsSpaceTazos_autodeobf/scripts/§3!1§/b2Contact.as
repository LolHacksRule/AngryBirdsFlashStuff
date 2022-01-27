package §3!1§
{
   import §#!X§.b2Body;
   import §#!X§.b2ContactListener;
   import §#!X§.b2Fixture;
   import §&!S§.b2Sweep;
   import §&!S§.b2Transform;
   import §3m§.b2ContactID;
   import §3m§.b2Manifold;
   import §3m§.b2ManifoldPoint;
   import §3m§.b2TOIInput;
   import §3m§.b2TimeOfImpact;
   import §3m§.b2WorldManifold;
   import §?f§.b2Shape;
   import §@!@§.b2Settings;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §4!#§:uint = 1;
      
      b2internal static var §99§:uint = 2;
      
      b2internal static var §-y§:uint = 4;
      
      b2internal static var §4!>§:uint = 8;
      
      b2internal static var §&!8§:uint = 16;
      
      b2internal static var §,!p§:uint = 32;
      
      b2internal static var §7!N§:uint = 64;
      
      private static var §1!4§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §2!K§:uint;
      
      b2internal var §%4§:b2Contact;
      
      b2internal var §`!s§:b2Contact;
      
      b2internal var §7!;§:b2ContactEdge;
      
      b2internal var §?!E§:b2ContactEdge;
      
      b2internal var §break§:b2Fixture;
      
      b2internal var §`!y§:b2Fixture;
      
      b2internal var §;!z§:b2Manifold;
      
      b2internal var §#"8§:b2Manifold;
      
      b2internal var §2"9§:Number;
      
      public function b2Contact()
      {
         this.§7!;§ = new b2ContactEdge();
         this.§?!E§ = new b2ContactEdge();
         this.§;!z§ = new b2Manifold();
         this.§#"8§ = new b2Manifold();
         super();
      }
      
      public function §%s§() : b2Manifold
      {
         return this.§;!z§;
      }
      
      public function §&m§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§break§.GetBody();
         var _loc3_:b2Body = this.§`!y§.GetBody();
         var _loc4_:b2Shape = this.§break§.GetShape();
         var _loc5_:b2Shape = this.§`!y§.GetShape();
         param1.§5!k§(this.§;!z§,_loc2_.§+!T§(),_loc4_.§'"D§,_loc3_.§+!T§(),_loc5_.§'"D§);
      }
      
      public function §^!&§() : Boolean
      {
         return (this.§2!K§ & b2internal::&!8) == b2internal::&!8;
      }
      
      public function §1"9§() : Boolean
      {
         return (this.§2!K§ & b2internal::99) == b2internal::99;
      }
      
      public function §1!_§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2!K§ |= b2internal::4!#;
         }
         else
         {
            this.§2!K§ &= ~b2internal::4!#;
         }
      }
      
      public function §<H§() : Boolean
      {
         return (this.§2!K§ & b2internal::4!#) == b2internal::4!#;
      }
      
      public function §@!U§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2!K§ |= b2internal::,!p;
         }
         else
         {
            this.§2!K§ &= ~b2internal::,!p;
         }
      }
      
      public function §^h§() : Boolean
      {
         return (this.§2!K§ & b2internal::,!p) == b2internal::,!p;
      }
      
      public function §6!4§() : b2Contact
      {
         return this.§`!s§;
      }
      
      public function §4!`§() : b2Fixture
      {
         return this.§break§;
      }
      
      public function §?!y§() : b2Fixture
      {
         return this.§`!y§;
      }
      
      public function §0&§() : void
      {
         this.§2!K§ |= b2internal::7!N;
      }
      
      b2internal function §3"8§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§2!K§ = b2internal::,!p;
         if(!param1 || !param2)
         {
            this.§break§ = null;
            this.§`!y§ = null;
            return;
         }
         if(param1.§<H§() || param2.§<H§())
         {
            this.§2!K§ |= b2internal::4!#;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§,!k§() != b2Body.b2_dynamicBody || _loc3_.§7M§() || _loc4_.§,!k§() != b2Body.b2_dynamicBody || _loc4_.§7M§())
         {
            this.§2!K§ |= b2internal::99;
         }
         this.§break§ = param1;
         this.§`!y§ = param2;
         this.§;!z§.§61§ = 0;
         this.§%4§ = null;
         this.§`!s§ = null;
         this.§7!;§.§9p§ = null;
         this.§7!;§.§5W§ = null;
         this.§7!;§.§+!R§ = null;
         this.§7!;§.§&!7§ = null;
         this.§?!E§.§9p§ = null;
         this.§?!E§.§5W§ = null;
         this.§?!E§.§+!R§ = null;
         this.§?!E§.§&!7§ = null;
      }
      
      b2internal function §;""§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§#"8§;
         this.§#"8§ = this.§;!z§;
         this.§;!z§ = _loc2_;
         this.§2!K§ |= b2internal::,!p;
         var _loc3_:* = false;
         var _loc4_:* = (this.§2!K§ & b2internal::&!8) == b2internal::&!8;
         var _loc5_:b2Body = this.§break§.m_body;
         var _loc6_:b2Body = this.§`!y§.m_body;
         var _loc7_:Boolean = this.§break§.§3$§.§7"3§(this.§`!y§.§3$§);
         if(this.§2!K§ & b2internal::4!#)
         {
            if(_loc7_)
            {
               _loc8_ = this.§break§.GetShape();
               _loc9_ = this.§`!y§.GetShape();
               _loc10_ = _loc5_.§+!T§();
               _loc11_ = _loc6_.§+!T§();
               _loc3_ = Boolean(b2Shape.§7"3§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§;!z§.§61§ = 0;
         }
         else
         {
            if(_loc5_.§,!k§() != b2Body.b2_dynamicBody || _loc5_.§7M§() || _loc6_.§,!k§() != b2Body.b2_dynamicBody || _loc6_.§7M§())
            {
               this.§2!K§ |= b2internal::99;
            }
            else
            {
               this.§2!K§ &= ~b2internal::99;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§;!z§.§61§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§;!z§.§61§)
               {
                  (_loc13_ = this.§;!z§.§-P§[_loc12_]).§ "$§ = 0;
                  _loc13_.§5";§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§#"8§.§61§)
                  {
                     if((_loc16_ = this.§#"8§.§-P§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§ "$§ = _loc16_.§ "$§;
                        _loc13_.§5";§ = _loc16_.§5";§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§;!z§.§61§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§2!K§ |= b2internal::&!8;
         }
         else
         {
            this.§2!K§ &= ~b2internal::&!8;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§2!K§ & b2internal::4!#) == 0)
         {
            param1.PreSolve(this,this.§#"8§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §5^§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §1!4§.§@!§.Set(this.§break§.GetShape());
         §1!4§.§'%§.Set(this.§`!y§.GetShape());
         §1!4§.§@h§ = param1;
         §1!4§.§@W§ = param2;
         §1!4§.§8!V§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§%"§(§1!4§);
      }
   }
}
