package §,G§
{
   import §#V§.b2Body;
   import §#V§.b2ContactListener;
   import §#V§.b2Fixture;
   import §,C§.b2Shape;
   import §3!m§.b2Settings;
   import §3!m§.b2internal;
   import §8w§.b2ContactID;
   import §8w§.b2Manifold;
   import §8w§.b2ManifoldPoint;
   import §8w§.b2TOIInput;
   import §8w§.b2TimeOfImpact;
   import §8w§.b2WorldManifold;
   import §;%§.b2Sweep;
   import §;%§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §4!7§:uint = 1;
      
      b2internal static var §<`§:uint = 2;
      
      b2internal static var §6!I§:uint = 4;
      
      b2internal static var §use §:uint = 8;
      
      b2internal static var §@'§:uint = 16;
      
      b2internal static var §;!2§:uint = 32;
      
      b2internal static var §%P§:uint = 64;
      
      private static var §;U§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §]!p§:uint;
      
      b2internal var §[2§:b2Contact;
      
      b2internal var §@o§:b2Contact;
      
      b2internal var §'"§:b2ContactEdge;
      
      b2internal var §=`§:b2ContactEdge;
      
      b2internal var §3t§:b2Fixture;
      
      b2internal var §[i§:b2Fixture;
      
      b2internal var §2?§:b2Manifold;
      
      b2internal var §8J§:b2Manifold;
      
      b2internal var §`!U§:Number;
      
      public function b2Contact()
      {
         this.§'"§ = new b2ContactEdge();
         this.§=`§ = new b2ContactEdge();
         this.§2?§ = new b2Manifold();
         this.§8J§ = new b2Manifold();
         super();
      }
      
      public function §0+§() : b2Manifold
      {
         return this.§2?§;
      }
      
      public function §43§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§3t§.GetBody();
         var _loc3_:b2Body = this.§[i§.GetBody();
         var _loc4_:b2Shape = this.§3t§.GetShape();
         var _loc5_:b2Shape = this.§[i§.GetShape();
         param1.§'K§(this.§2?§,_loc2_.§7§(),_loc4_.§?!X§,_loc3_.§7§(),_loc5_.§?!X§);
      }
      
      public function §]i§() : Boolean
      {
         return (this.§]!p§ & b2internal::@') == b2internal::@';
      }
      
      public function §;!u§() : Boolean
      {
         return (this.§]!p§ & b2internal::<`) == b2internal::<`;
      }
      
      public function §#=§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!p§ |= b2internal::4!7;
         }
         else
         {
            this.§]!p§ &= ~b2internal::4!7;
         }
      }
      
      public function §0S§() : Boolean
      {
         return (this.§]!p§ & b2internal::4!7) == b2internal::4!7;
      }
      
      public function §'>§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§]!p§ |= b2internal::;!2;
         }
         else
         {
            this.§]!p§ &= ~b2internal::;!2;
         }
      }
      
      public function §;!R§() : Boolean
      {
         return (this.§]!p§ & b2internal::;!2) == b2internal::;!2;
      }
      
      public function §>H§() : b2Contact
      {
         return this.§@o§;
      }
      
      public function §68§() : b2Fixture
      {
         return this.§3t§;
      }
      
      public function §[t§() : b2Fixture
      {
         return this.§[i§;
      }
      
      public function §9!E§() : void
      {
         this.§]!p§ |= b2internal::%P;
      }
      
      b2internal function §@!b§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§]!p§ = b2internal::;!2;
         if(!param1 || !param2)
         {
            this.§3t§ = null;
            this.§[i§ = null;
            return;
         }
         if(param1.§0S§() || param2.§0S§())
         {
            this.§]!p§ |= b2internal::4!7;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§'!_§() != b2Body.b2_dynamicBody || _loc3_.§'a§() || _loc4_.§'!_§() != b2Body.b2_dynamicBody || _loc4_.§'a§())
         {
            this.§]!p§ |= b2internal::<`;
         }
         this.§3t§ = param1;
         this.§[i§ = param2;
         this.§2?§.§2V§ = 0;
         this.§[2§ = null;
         this.§@o§ = null;
         this.§'"§.§80§ = null;
         this.§'"§.§%E§ = null;
         this.§'"§.§#!R§ = null;
         this.§'"§.§9"§ = null;
         this.§=`§.§80§ = null;
         this.§=`§.§%E§ = null;
         this.§=`§.§#!R§ = null;
         this.§=`§.§9"§ = null;
      }
      
      b2internal function §8!s§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§8J§;
         this.§8J§ = this.§2?§;
         this.§2?§ = _loc2_;
         this.§]!p§ |= b2internal::;!2;
         var _loc3_:* = false;
         var _loc4_:* = (this.§]!p§ & b2internal::@') == b2internal::@';
         var _loc5_:b2Body = this.§3t§.m_body;
         var _loc6_:b2Body = this.§[i§.m_body;
         var _loc7_:Boolean = this.§3t§.each.§3!V§(this.§[i§.each);
         if(this.§]!p§ & b2internal::4!7)
         {
            if(_loc7_)
            {
               _loc8_ = this.§3t§.GetShape();
               _loc9_ = this.§[i§.GetShape();
               _loc10_ = _loc5_.§7§();
               _loc11_ = _loc6_.§7§();
               _loc3_ = Boolean(b2Shape.§3!V§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§2?§.§2V§ = 0;
         }
         else
         {
            if(_loc5_.§'!_§() != b2Body.b2_dynamicBody || _loc5_.§'a§() || _loc6_.§'!_§() != b2Body.b2_dynamicBody || _loc6_.§'a§())
            {
               this.§]!p§ |= b2internal::<`;
            }
            else
            {
               this.§]!p§ &= ~b2internal::<`;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§2?§.§2V§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§2?§.§2V§)
               {
                  (_loc13_ = this.§2?§.§4!a§[_loc12_]).§-!s§ = 0;
                  _loc13_.§%%§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§8J§.§2V§)
                  {
                     if((_loc16_ = this.§8J§.§4!a§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§-!s§ = _loc16_.§-!s§;
                        _loc13_.§%%§ = _loc16_.§%%§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§2?§.§2V§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§]!p§ |= b2internal::@';
         }
         else
         {
            this.§]!p§ &= ~b2internal::@';
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§]!p§ & b2internal::4!7) == 0)
         {
            param1.PreSolve(this,this.§8J§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §9C§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §;U§.§9!;§.Set(this.§3t§.GetShape());
         §;U§.§ !%§.Set(this.§[i§.GetShape());
         §;U§.§"!L§ = param1;
         §;U§.§'!5§ = param2;
         §;U§.§@M§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§^$§(§;U§);
      }
   }
}
