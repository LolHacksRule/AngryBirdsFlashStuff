package §'!^§
{
   import §!!o§.b2ContactID;
   import §!!o§.b2Manifold;
   import §!!o§.b2ManifoldPoint;
   import §!!o§.b2TOIInput;
   import §!!o§.b2TimeOfImpact;
   import §!!o§.b2WorldManifold;
   import §!r§.b2Settings;
   import §!r§.b2internal;
   import §-!2§.b2Sweep;
   import §-!2§.b2Transform;
   import §0!j§.b2Body;
   import §0!j§.b2ContactListener;
   import §0!j§.b2Fixture;
   import §8!K§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §5"%§:uint = 1;
      
      b2internal static var §&r§:uint = 2;
      
      b2internal static var §"=§:uint = 4;
      
      b2internal static var §?!a§:uint = 8;
      
      b2internal static var §"!m§:uint = 16;
      
      b2internal static var §2!F§:uint = 32;
      
      b2internal static var §>=§:uint = 64;
      
      private static var §5""§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §<!3§:uint;
      
      b2internal var §9"4§:b2Contact;
      
      b2internal var §0!&§:b2Contact;
      
      b2internal var §'k§:b2ContactEdge;
      
      b2internal var §?!#§:b2ContactEdge;
      
      b2internal var §5"4§:b2Fixture;
      
      b2internal var §4!F§:b2Fixture;
      
      b2internal var §]%§:b2Manifold;
      
      b2internal var §#8§:b2Manifold;
      
      b2internal var §>"%§:Number;
      
      public function b2Contact()
      {
         this.§'k§ = new b2ContactEdge();
         this.§?!#§ = new b2ContactEdge();
         this.§]%§ = new b2Manifold();
         this.§#8§ = new b2Manifold();
         super();
      }
      
      public function §1!L§() : b2Manifold
      {
         return this.§]%§;
      }
      
      public function §&!"§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§5"4§.GetBody();
         var _loc3_:b2Body = this.§4!F§.GetBody();
         var _loc4_:b2Shape = this.§5"4§.GetShape();
         var _loc5_:b2Shape = this.§4!F§.GetShape();
         param1.§7!Q§(this.§]%§,_loc2_.§;b§(),_loc4_.§;J§,_loc3_.§;b§(),_loc5_.§;J§);
      }
      
      public function §]x§() : Boolean
      {
         return (this.§<!3§ & b2internal::"!m) == b2internal::"!m;
      }
      
      public function §6Z§() : Boolean
      {
         return (this.§<!3§ & b2internal::&r) == b2internal::&r;
      }
      
      public function §=C§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<!3§ |= b2internal::5"%;
         }
         else
         {
            this.§<!3§ &= ~b2internal::5"%;
         }
      }
      
      public function §6"0§() : Boolean
      {
         return (this.§<!3§ & b2internal::5"%) == b2internal::5"%;
      }
      
      public function §%A§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§<!3§ |= b2internal::2!F;
         }
         else
         {
            this.§<!3§ &= ~b2internal::2!F;
         }
      }
      
      public function §?^§() : Boolean
      {
         return (this.§<!3§ & b2internal::2!F) == b2internal::2!F;
      }
      
      public function §+!E§() : b2Contact
      {
         return this.§0!&§;
      }
      
      public function §01§() : b2Fixture
      {
         return this.§5"4§;
      }
      
      public function §9!,§() : b2Fixture
      {
         return this.§4!F§;
      }
      
      public function §7!I§() : void
      {
         this.§<!3§ |= b2internal::>=;
      }
      
      b2internal function §;§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§<!3§ = b2internal::2!F;
         if(!param1 || !param2)
         {
            this.§5"4§ = null;
            this.§4!F§ = null;
            return;
         }
         if(param1.§6"0§() || param2.§6"0§())
         {
            this.§<!3§ |= b2internal::5"%;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§6`§() != b2Body.b2_dynamicBody || _loc3_.§3U§() || _loc4_.§6`§() != b2Body.b2_dynamicBody || _loc4_.§3U§())
         {
            this.§<!3§ |= b2internal::&r;
         }
         this.§5"4§ = param1;
         this.§4!F§ = param2;
         this.§]%§.§0#§ = 0;
         this.§9"4§ = null;
         this.§0!&§ = null;
         this.§'k§.§ ;§ = null;
         this.§'k§.§+!0§ = null;
         this.§'k§.next = null;
         this.§'k§.§5"-§ = null;
         this.§?!#§.§ ;§ = null;
         this.§?!#§.§+!0§ = null;
         this.§?!#§.next = null;
         this.§?!#§.§5"-§ = null;
      }
      
      b2internal function §'!l§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§#8§;
         this.§#8§ = this.§]%§;
         this.§]%§ = _loc2_;
         this.§<!3§ |= b2internal::2!F;
         var _loc3_:* = false;
         var _loc4_:* = (this.§<!3§ & b2internal::"!m) == b2internal::"!m;
         var _loc5_:b2Body = this.§5"4§.m_body;
         var _loc6_:b2Body = this.§4!F§.m_body;
         var _loc7_:Boolean = this.§5"4§.§"!s§.§?"2§(this.§4!F§.§"!s§);
         if(this.§<!3§ & b2internal::5"%)
         {
            if(_loc7_)
            {
               _loc8_ = this.§5"4§.GetShape();
               _loc9_ = this.§4!F§.GetShape();
               _loc10_ = _loc5_.§;b§();
               _loc11_ = _loc6_.§;b§();
               _loc3_ = Boolean(b2Shape.§?"2§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§]%§.§0#§ = 0;
         }
         else
         {
            if(_loc5_.§6`§() != b2Body.b2_dynamicBody || _loc5_.§3U§() || _loc6_.§6`§() != b2Body.b2_dynamicBody || _loc6_.§3U§())
            {
               this.§<!3§ |= b2internal::&r;
            }
            else
            {
               this.§<!3§ &= ~b2internal::&r;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§]%§.§0#§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§]%§.§0#§)
               {
                  (_loc13_ = this.§]%§.§<!7§[_loc12_]).§#!v§ = 0;
                  _loc13_.§'N§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§#8§.§0#§)
                  {
                     if((_loc16_ = this.§#8§.§<!7§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§#!v§ = _loc16_.§#!v§;
                        _loc13_.§'N§ = _loc16_.§'N§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§]%§.§0#§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§<!3§ |= b2internal::"!m;
         }
         else
         {
            this.§<!3§ &= ~b2internal::"!m;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§<!3§ & b2internal::5"%) == 0)
         {
            param1.PreSolve(this,this.§#8§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §'z§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §5""§.§!4§.Set(this.§5"4§.GetShape());
         §5""§.§&![§.Set(this.§4!F§.GetShape());
         §5""§.§3!L§ = param1;
         §5""§.§?!E§ = param2;
         §5""§.§]"5§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§&6§(§5""§);
      }
   }
}
