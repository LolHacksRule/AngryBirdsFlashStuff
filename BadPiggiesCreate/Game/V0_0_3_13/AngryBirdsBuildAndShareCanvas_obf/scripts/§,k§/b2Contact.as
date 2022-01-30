package §,k§
{
   import §-g§.b2ContactID;
   import §-g§.b2Manifold;
   import §-g§.b2ManifoldPoint;
   import §-g§.b2TOIInput;
   import §-g§.b2TimeOfImpact;
   import §-g§.b2WorldManifold;
   import §1!z§.b2Sweep;
   import §1!z§.b2Transform;
   import §5!]§.b2Shape;
   import §7!q§.b2Body;
   import §7!q§.b2ContactListener;
   import §7!q§.b2Fixture;
   import §[M§.b2Settings;
   import §[M§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §^!8§:uint = 1;
      
      b2internal static var §7!W§:uint = 2;
      
      b2internal static var §9P§:uint = 4;
      
      b2internal static var § !q§:uint = 8;
      
      b2internal static var §%![§:uint = 16;
      
      b2internal static var §3!c§:uint = 32;
      
      b2internal static var §,w§:uint = 64;
      
      private static var §0T§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §["0§:uint;
      
      b2internal var §5!M§:b2Contact;
      
      b2internal var §,"!§:b2Contact;
      
      b2internal var §]R§:b2ContactEdge;
      
      b2internal var §>Y§:b2ContactEdge;
      
      b2internal var §?a§:b2Fixture;
      
      b2internal var §;!S§:b2Fixture;
      
      b2internal var §28§:b2Manifold;
      
      b2internal var §2M§:b2Manifold;
      
      b2internal var §^!&§:Number;
      
      public function b2Contact()
      {
         this.§]R§ = new b2ContactEdge();
         this.§>Y§ = new b2ContactEdge();
         this.§28§ = new b2Manifold();
         this.§2M§ = new b2Manifold();
         super();
      }
      
      public function §6!x§() : b2Manifold
      {
         return this.§28§;
      }
      
      public function §@n§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§?a§.GetBody();
         var _loc3_:b2Body = this.§;!S§.GetBody();
         var _loc4_:b2Shape = this.§?a§.GetShape();
         var _loc5_:b2Shape = this.§;!S§.GetShape();
         param1.§`!O§(this.§28§,_loc2_.§4!f§(),_loc4_.§9"=§,_loc3_.§4!f§(),_loc5_.§9"=§);
      }
      
      public function §36§() : Boolean
      {
         return (this.§["0§ & b2internal::%![) == b2internal::%![;
      }
      
      public function §#!i§() : Boolean
      {
         return (this.§["0§ & b2internal::7!W) == b2internal::7!W;
      }
      
      public function §^e§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§["0§ |= b2internal::^!8;
         }
         else
         {
            this.§["0§ &= ~b2internal::^!8;
         }
      }
      
      public function §;";§() : Boolean
      {
         return (this.§["0§ & b2internal::^!8) == b2internal::^!8;
      }
      
      public function §?!W§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§["0§ |= b2internal::3!c;
         }
         else
         {
            this.§["0§ &= ~b2internal::3!c;
         }
      }
      
      public function §7!m§() : Boolean
      {
         return (this.§["0§ & b2internal::3!c) == b2internal::3!c;
      }
      
      public function §5!`§() : b2Contact
      {
         return this.§,"!§;
      }
      
      public function §[u§() : b2Fixture
      {
         return this.§?a§;
      }
      
      public function §<j§() : b2Fixture
      {
         return this.§;!S§;
      }
      
      public function §!!§() : void
      {
         this.§["0§ |= b2internal::,w;
      }
      
      b2internal function §;!V§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§["0§ = b2internal::3!c;
         if(!param1 || !param2)
         {
            this.§?a§ = null;
            this.§;!S§ = null;
            return;
         }
         if(param1.§;";§() || param2.§;";§())
         {
            this.§["0§ |= b2internal::^!8;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§7!r§() != b2Body.b2_dynamicBody || _loc3_.§6+§() || _loc4_.§7!r§() != b2Body.b2_dynamicBody || _loc4_.§6+§())
         {
            this.§["0§ |= b2internal::7!W;
         }
         this.§?a§ = param1;
         this.§;!S§ = param2;
         this.§28§.§]Y§ = 0;
         this.§5!M§ = null;
         this.§,"!§ = null;
         this.§]R§.§9"6§ = null;
         this.§]R§.§@!'§ = null;
         this.§]R§.§!",§ = null;
         this.§]R§.§#!l§ = null;
         this.§>Y§.§9"6§ = null;
         this.§>Y§.§@!'§ = null;
         this.§>Y§.§!",§ = null;
         this.§>Y§.§#!l§ = null;
      }
      
      b2internal function §=!I§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§2M§;
         this.§2M§ = this.§28§;
         this.§28§ = _loc2_;
         this.§["0§ |= b2internal::3!c;
         var _loc3_:* = false;
         var _loc4_:* = (this.§["0§ & b2internal::%![) == b2internal::%![;
         var _loc5_:b2Body = this.§?a§.m_body;
         var _loc6_:b2Body = this.§;!S§.m_body;
         var _loc7_:Boolean = this.§?a§.§&U§.§,d§(this.§;!S§.§&U§);
         if(this.§["0§ & b2internal::^!8)
         {
            if(_loc7_)
            {
               _loc8_ = this.§?a§.GetShape();
               _loc9_ = this.§;!S§.GetShape();
               _loc10_ = _loc5_.§4!f§();
               _loc11_ = _loc6_.§4!f§();
               _loc3_ = Boolean(b2Shape.§,d§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§28§.§]Y§ = 0;
         }
         else
         {
            if(_loc5_.§7!r§() != b2Body.b2_dynamicBody || _loc5_.§6+§() || _loc6_.§7!r§() != b2Body.b2_dynamicBody || _loc6_.§6+§())
            {
               this.§["0§ |= b2internal::7!W;
            }
            else
            {
               this.§["0§ &= ~b2internal::7!W;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§28§.§]Y§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§28§.§]Y§)
               {
                  (_loc13_ = this.§28§.§]!k§[_loc12_]).§+!i§ = 0;
                  _loc13_.§"!y§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§2M§.§]Y§)
                  {
                     if((_loc16_ = this.§2M§.§]!k§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§+!i§ = _loc16_.§+!i§;
                        _loc13_.§"!y§ = _loc16_.§"!y§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§28§.§]Y§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§["0§ |= b2internal::%![;
         }
         else
         {
            this.§["0§ &= ~b2internal::%![;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§["0§ & b2internal::^!8) == 0)
         {
            param1.PreSolve(this,this.§2M§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §3"§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §0T§.§7!Z§.Set(this.§?a§.GetShape());
         §0T§.§[;§.Set(this.§;!S§.GetShape());
         §0T§.§#"<§ = param1;
         §0T§.§?Z§ = param2;
         §0T§.§<![§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§]^§(§0T§);
      }
   }
}
