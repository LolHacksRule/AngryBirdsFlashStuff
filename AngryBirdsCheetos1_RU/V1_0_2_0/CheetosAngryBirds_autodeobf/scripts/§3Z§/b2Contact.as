package §3Z§
{
   import § y§.b2Shape;
   import §&!+§.b2Sweep;
   import §&!+§.b2Transform;
   import §4!&§.b2Body;
   import §4!&§.b2ContactListener;
   import §4!&§.b2Fixture;
   import §8!%§.b2Settings;
   import §8!%§.b2internal;
   import §<!^§.b2ContactID;
   import §<!^§.b2Manifold;
   import §<!^§.b2ManifoldPoint;
   import §<!^§.b2TOIInput;
   import §<!^§.b2TimeOfImpact;
   import §<!^§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §7"§:uint = 1;
      
      b2internal static var §1e§:uint = 2;
      
      b2internal static var §!4§:uint = 4;
      
      b2internal static var §+b§:uint = 8;
      
      b2internal static var §-R§:uint = 16;
      
      b2internal static var §3!;§:uint = 32;
      
      b2internal static var §4;§:uint = 64;
      
      private static var §7V§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §'z§:uint;
      
      b2internal var §2!J§:b2Contact;
      
      b2internal var §1!A§:b2Contact;
      
      b2internal var §`!X§:b2ContactEdge;
      
      b2internal var §0!§:b2ContactEdge;
      
      b2internal var §>^§:b2Fixture;
      
      b2internal var §;!Z§:b2Fixture;
      
      b2internal var §2!=§:b2Manifold;
      
      b2internal var §>7§:b2Manifold;
      
      b2internal var §00§:Number;
      
      public function b2Contact()
      {
         this.§`!X§ = new b2ContactEdge();
         this.§0!§ = new b2ContactEdge();
         this.§2!=§ = new b2Manifold();
         this.§>7§ = new b2Manifold();
         super();
      }
      
      public function §'-§() : b2Manifold
      {
         return this.§2!=§;
      }
      
      public function §;<§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§>^§.GetBody();
         var _loc3_:b2Body = this.§;!Z§.GetBody();
         var _loc4_:b2Shape = this.§>^§.GetShape();
         var _loc5_:b2Shape = this.§;!Z§.GetShape();
         param1.§1U§(this.§2!=§,_loc2_.§3!H§(),_loc4_.§!!&§,_loc3_.§3!H§(),_loc5_.§!!&§);
      }
      
      public function §3'§() : Boolean
      {
         return (this.§'z§ & b2internal::-R) == b2internal::-R;
      }
      
      public function §&!6§() : Boolean
      {
         return (this.§'z§ & b2internal::1e) == b2internal::1e;
      }
      
      public function §5!K§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'z§ |= b2internal::7";
         }
         else
         {
            this.§'z§ &= ~b2internal::7";
         }
      }
      
      public function §?A§() : Boolean
      {
         return (this.§'z§ & b2internal::7") == b2internal::7";
      }
      
      public function § X§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'z§ |= b2internal::3!;;
         }
         else
         {
            this.§'z§ &= ~b2internal::3!;;
         }
      }
      
      public function §%,§() : Boolean
      {
         return (this.§'z§ & b2internal::3!;) == b2internal::3!;;
      }
      
      public function §'&§() : b2Contact
      {
         return this.§1!A§;
      }
      
      public function §?7§() : b2Fixture
      {
         return this.§>^§;
      }
      
      public function §]!1§() : b2Fixture
      {
         return this.§;!Z§;
      }
      
      public function §=@§() : void
      {
         this.§'z§ |= b2internal::4;;
      }
      
      b2internal function §]!S§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§'z§ = b2internal::3!;;
         if(!param1 || !param2)
         {
            this.§>^§ = null;
            this.§;!Z§ = null;
            return;
         }
         if(param1.§?A§() || param2.§?A§())
         {
            this.§'z§ |= b2internal::7";
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§?!S§() != b2Body.b2_dynamicBody || _loc3_.§2!Q§() || _loc4_.§?!S§() != b2Body.b2_dynamicBody || _loc4_.§2!Q§())
         {
            this.§'z§ |= b2internal::1e;
         }
         this.§>^§ = param1;
         this.§;!Z§ = param2;
         this.§2!=§.§'l§ = 0;
         this.§2!J§ = null;
         this.§1!A§ = null;
         this.§`!X§.§+!#§ = null;
         this.§`!X§.§!!#§ = null;
         this.§`!X§.§?c§ = null;
         this.§`!X§.§>+§ = null;
         this.§0!§.§+!#§ = null;
         this.§0!§.§!!#§ = null;
         this.§0!§.§?c§ = null;
         this.§0!§.§>+§ = null;
      }
      
      b2internal function §@!8§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§>7§;
         this.§>7§ = this.§2!=§;
         this.§2!=§ = _loc2_;
         this.§'z§ |= b2internal::3!;;
         var _loc3_:* = false;
         var _loc4_:* = (this.§'z§ & b2internal::-R) == b2internal::-R;
         var _loc5_:b2Body = this.§>^§.m_body;
         var _loc6_:b2Body = this.§;!Z§.m_body;
         var _loc7_:Boolean = this.§>^§.§ each§.§]g§(this.§;!Z§.§ each§);
         if(this.§'z§ & b2internal::7")
         {
            if(_loc7_)
            {
               _loc8_ = this.§>^§.GetShape();
               _loc9_ = this.§;!Z§.GetShape();
               _loc10_ = _loc5_.§3!H§();
               _loc11_ = _loc6_.§3!H§();
               _loc3_ = Boolean(b2Shape.§]g§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§2!=§.§'l§ = 0;
         }
         else
         {
            if(_loc5_.§?!S§() != b2Body.b2_dynamicBody || _loc5_.§2!Q§() || _loc6_.§?!S§() != b2Body.b2_dynamicBody || _loc6_.§2!Q§())
            {
               this.§'z§ |= b2internal::1e;
            }
            else
            {
               this.§'z§ &= ~b2internal::1e;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§2!=§.§'l§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§2!=§.§'l§)
               {
                  (_loc13_ = this.§2!=§.§`!§[_loc12_]).§+%§ = 0;
                  _loc13_.§[?§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§>7§.§'l§)
                  {
                     if((_loc16_ = this.§>7§.§`!§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§+%§ = _loc16_.§+%§;
                        _loc13_.§[?§ = _loc16_.§[?§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§2!=§.§'l§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§'z§ |= b2internal::-R;
         }
         else
         {
            this.§'z§ &= ~b2internal::-R;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§'z§ & b2internal::7") == 0)
         {
            param1.PreSolve(this,this.§>7§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §1!'§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §7V§.§9!`§.Set(this.§>^§.GetShape());
         §7V§.§;?§.Set(this.§;!Z§.GetShape());
         §7V§.§[0§ = param1;
         §7V§.§+J§ = param2;
         §7V§.§4A§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§0!O§(§7V§);
      }
   }
}
