package §?!D§
{
   import §&!M§.b2Body;
   import §&!M§.b2ContactListener;
   import §&!M§.b2Fixture;
   import §,Y§.b2Shape;
   import §3!t§.b2Sweep;
   import §3!t§.b2Transform;
   import §6!`§.b2Settings;
   import §6!`§.b2internal;
   import §;"0§.b2ContactID;
   import §;"0§.b2Manifold;
   import §;"0§.b2ManifoldPoint;
   import §;"0§.b2TOIInput;
   import §;"0§.b2TimeOfImpact;
   import §;"0§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §4!=§:uint = 1;
      
      b2internal static var §;e§:uint = 2;
      
      b2internal static var §8!E§:uint = 4;
      
      b2internal static var §"s§:uint = 8;
      
      b2internal static var §0R§:uint = 16;
      
      b2internal static var § !?§:uint = 32;
      
      b2internal static var §>!$§:uint = 64;
      
      private static var §!b§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §[d§:uint;
      
      b2internal var §]!9§:b2Contact;
      
      b2internal var §'!@§:b2Contact;
      
      b2internal var §![§:b2ContactEdge;
      
      b2internal var §=,§:b2ContactEdge;
      
      b2internal var §true §:b2Fixture;
      
      b2internal var §]!f§:b2Fixture;
      
      b2internal var §-!w§:b2Manifold;
      
      b2internal var §;!_§:b2Manifold;
      
      b2internal var §3!u§:Number;
      
      public function b2Contact()
      {
         this.§![§ = new b2ContactEdge();
         this.§=,§ = new b2ContactEdge();
         this.§-!w§ = new b2Manifold();
         this.§;!_§ = new b2Manifold();
         super();
      }
      
      public function §%!^§() : b2Manifold
      {
         return this.§-!w§;
      }
      
      public function §`!F§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§true §.GetBody();
         var _loc3_:b2Body = this.§]!f§.GetBody();
         var _loc4_:b2Shape = this.§true §.GetShape();
         var _loc5_:b2Shape = this.§]!f§.GetShape();
         param1.§[z§(this.§-!w§,_loc2_.§=!y§(),_loc4_.§[!?§,_loc3_.§=!y§(),_loc5_.§[!?§);
      }
      
      public function §^!!§() : Boolean
      {
         return (this.§[d§ & b2internal::0R) == b2internal::0R;
      }
      
      public function §9!b§() : Boolean
      {
         return (this.§[d§ & b2internal::;e) == b2internal::;e;
      }
      
      public function §]4§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[d§ |= b2internal::4!=;
         }
         else
         {
            this.§[d§ &= ~b2internal::4!=;
         }
      }
      
      public function §!",§() : Boolean
      {
         return (this.§[d§ & b2internal::4!=) == b2internal::4!=;
      }
      
      public function §="=§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[d§ |= b2internal:: !?;
         }
         else
         {
            this.§[d§ &= ~b2internal:: !?;
         }
      }
      
      public function §6X§() : Boolean
      {
         return (this.§[d§ & b2internal:: !?) == b2internal:: !?;
      }
      
      public function §`!u§() : b2Contact
      {
         return this.§'!@§;
      }
      
      public function §]§() : b2Fixture
      {
         return this.§true §;
      }
      
      public function §@!^§() : b2Fixture
      {
         return this.§]!f§;
      }
      
      public function §?">§() : void
      {
         this.§[d§ |= b2internal::>!$;
      }
      
      b2internal function §%@§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§[d§ = b2internal:: !?;
         if(!param1 || !param2)
         {
            this.§true § = null;
            this.§]!f§ = null;
            return;
         }
         if(param1.§!",§() || param2.§!",§())
         {
            this.§[d§ |= b2internal::4!=;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§6!Q§() != b2Body.b2_dynamicBody || _loc3_.§<f§() || _loc4_.§6!Q§() != b2Body.b2_dynamicBody || _loc4_.§<f§())
         {
            this.§[d§ |= b2internal::;e;
         }
         this.§true § = param1;
         this.§]!f§ = param2;
         this.§-!w§.§3!G§ = 0;
         this.§]!9§ = null;
         this.§'!@§ = null;
         this.§![§.§?!S§ = null;
         this.§![§.§,W§ = null;
         this.§![§.§^!Q§ = null;
         this.§![§.§[s§ = null;
         this.§=,§.§?!S§ = null;
         this.§=,§.§,W§ = null;
         this.§=,§.§^!Q§ = null;
         this.§=,§.§[s§ = null;
      }
      
      b2internal function §%!b§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§;!_§;
         this.§;!_§ = this.§-!w§;
         this.§-!w§ = _loc2_;
         this.§[d§ |= b2internal:: !?;
         var _loc3_:* = false;
         var _loc4_:* = (this.§[d§ & b2internal::0R) == b2internal::0R;
         var _loc5_:b2Body = this.§true §.m_body;
         var _loc6_:b2Body = this.§]!f§.m_body;
         var _loc7_:Boolean = this.§true §.§[T§.§3!z§(this.§]!f§.§[T§);
         if(this.§[d§ & b2internal::4!=)
         {
            if(_loc7_)
            {
               _loc8_ = this.§true §.GetShape();
               _loc9_ = this.§]!f§.GetShape();
               _loc10_ = _loc5_.§=!y§();
               _loc11_ = _loc6_.§=!y§();
               _loc3_ = Boolean(b2Shape.§3!z§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§-!w§.§3!G§ = 0;
         }
         else
         {
            if(_loc5_.§6!Q§() != b2Body.b2_dynamicBody || _loc5_.§<f§() || _loc6_.§6!Q§() != b2Body.b2_dynamicBody || _loc6_.§<f§())
            {
               this.§[d§ |= b2internal::;e;
            }
            else
            {
               this.§[d§ &= ~b2internal::;e;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§-!w§.§3!G§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§-!w§.§3!G§)
               {
                  (_loc13_ = this.§-!w§.§ !J§[_loc12_]).§>!2§ = 0;
                  _loc13_.§6n§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§;!_§.§3!G§)
                  {
                     if((_loc16_ = this.§;!_§.§ !J§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§>!2§ = _loc16_.§>!2§;
                        _loc13_.§6n§ = _loc16_.§6n§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§-!w§.§3!G§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§[d§ |= b2internal::0R;
         }
         else
         {
            this.§[d§ &= ~b2internal::0R;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§[d§ & b2internal::4!=) == 0)
         {
            param1.PreSolve(this,this.§;!_§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §-";§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §!b§.§!!z§.Set(this.§true §.GetShape());
         §!b§.§,!e§.Set(this.§]!f§.GetShape());
         §!b§.§1"§ = param1;
         §!b§.§%"#§ = param2;
         §!b§.§=A§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§;!5§(§!b§);
      }
   }
}
