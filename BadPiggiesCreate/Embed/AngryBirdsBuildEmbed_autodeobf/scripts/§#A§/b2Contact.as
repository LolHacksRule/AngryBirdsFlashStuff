package §#A§
{
   import § !t§.b2Body;
   import § !t§.b2ContactListener;
   import § !t§.b2Fixture;
   import §#b§.b2Shape;
   import §'!;§.b2ContactID;
   import §'!;§.b2Manifold;
   import §'!;§.b2ManifoldPoint;
   import §'!;§.b2TOIInput;
   import §'!;§.b2TimeOfImpact;
   import §'!;§.b2WorldManifold;
   import §<!B§.b2Sweep;
   import §<!B§.b2Transform;
   import §?s§.b2Settings;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §0!7§:uint = 1;
      
      b2internal static var §5!5§:uint = 2;
      
      b2internal static var §8!b§:uint = 4;
      
      b2internal static var §!!D§:uint = 8;
      
      b2internal static var §for§:uint = 16;
      
      b2internal static var §5!h§:uint = 32;
      
      b2internal static var §5!V§:uint = 64;
      
      private static var §3B§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §;!n§:uint;
      
      b2internal var §?!D§:b2Contact;
      
      b2internal var § <§:b2Contact;
      
      b2internal var §>!3§:b2ContactEdge;
      
      b2internal var §1A§:b2ContactEdge;
      
      b2internal var §4b§:b2Fixture;
      
      b2internal var §"'§:b2Fixture;
      
      b2internal var §@%§:b2Manifold;
      
      b2internal var §==§:b2Manifold;
      
      b2internal var §@J§:Number;
      
      public function b2Contact()
      {
         this.§>!3§ = new b2ContactEdge();
         this.§1A§ = new b2ContactEdge();
         this.§@%§ = new b2Manifold();
         this.§==§ = new b2Manifold();
         super();
      }
      
      public function §;I§() : b2Manifold
      {
         return this.§@%§;
      }
      
      public function §-!u§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§4b§.GetBody();
         var _loc3_:b2Body = this.§"'§.GetBody();
         var _loc4_:b2Shape = this.§4b§.GetShape();
         var _loc5_:b2Shape = this.§"'§.GetShape();
         param1.§6!V§(this.§@%§,_loc2_.§>!H§(),_loc4_.§%+§,_loc3_.§>!H§(),_loc5_.§%+§);
      }
      
      public function §`!§() : Boolean
      {
         return (this.§;!n§ & b2internal::for) == b2internal::for;
      }
      
      public function §<!!§() : Boolean
      {
         return (this.§;!n§ & b2internal::5!5) == b2internal::5!5;
      }
      
      public function §1!C§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!n§ |= b2internal::0!7;
         }
         else
         {
            this.§;!n§ &= ~b2internal::0!7;
         }
      }
      
      public function §-!]§() : Boolean
      {
         return (this.§;!n§ & b2internal::0!7) == b2internal::0!7;
      }
      
      public function §!R§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§;!n§ |= b2internal::5!h;
         }
         else
         {
            this.§;!n§ &= ~b2internal::5!h;
         }
      }
      
      public function §,+§() : Boolean
      {
         return (this.§;!n§ & b2internal::5!h) == b2internal::5!h;
      }
      
      public function §4!j§() : b2Contact
      {
         return this.§ <§;
      }
      
      public function §,^§() : b2Fixture
      {
         return this.§4b§;
      }
      
      public function §'!+§() : b2Fixture
      {
         return this.§"'§;
      }
      
      public function §%!h§() : void
      {
         this.§;!n§ |= b2internal::5!V;
      }
      
      b2internal function §^!]§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§;!n§ = b2internal::5!h;
         if(!param1 || !param2)
         {
            this.§4b§ = null;
            this.§"'§ = null;
            return;
         }
         if(param1.§-!]§() || param2.§-!]§())
         {
            this.§;!n§ |= b2internal::0!7;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§"!j§() != b2Body.b2_dynamicBody || _loc3_.§ v§() || _loc4_.§"!j§() != b2Body.b2_dynamicBody || _loc4_.§ v§())
         {
            this.§;!n§ |= b2internal::5!5;
         }
         this.§4b§ = param1;
         this.§"'§ = param2;
         this.§@%§.§+!X§ = 0;
         this.§?!D§ = null;
         this.§ <§ = null;
         this.§>!3§.§12§ = null;
         this.§>!3§.§=6§ = null;
         this.§>!3§.§1!U§ = null;
         this.§>!3§.§'q§ = null;
         this.§1A§.§12§ = null;
         this.§1A§.§=6§ = null;
         this.§1A§.§1!U§ = null;
         this.§1A§.§'q§ = null;
      }
      
      b2internal function §[;§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§==§;
         this.§==§ = this.§@%§;
         this.§@%§ = _loc2_;
         this.§;!n§ |= b2internal::5!h;
         var _loc3_:* = false;
         var _loc4_:* = (this.§;!n§ & b2internal::for) == b2internal::for;
         var _loc5_:b2Body = this.§4b§.m_body;
         var _loc6_:b2Body = this.§"'§.m_body;
         var _loc7_:Boolean = this.§4b§.§&#§.§,!r§(this.§"'§.§&#§);
         if(this.§;!n§ & b2internal::0!7)
         {
            if(_loc7_)
            {
               _loc8_ = this.§4b§.GetShape();
               _loc9_ = this.§"'§.GetShape();
               _loc10_ = _loc5_.§>!H§();
               _loc11_ = _loc6_.§>!H§();
               _loc3_ = Boolean(b2Shape.§,!r§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§@%§.§+!X§ = 0;
         }
         else
         {
            if(_loc5_.§"!j§() != b2Body.b2_dynamicBody || _loc5_.§ v§() || _loc6_.§"!j§() != b2Body.b2_dynamicBody || _loc6_.§ v§())
            {
               this.§;!n§ |= b2internal::5!5;
            }
            else
            {
               this.§;!n§ &= ~b2internal::5!5;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§@%§.§+!X§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§@%§.§+!X§)
               {
                  (_loc13_ = this.§@%§.§`?§[_loc12_]).§,!9§ = 0;
                  _loc13_.§?;§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§==§.§+!X§)
                  {
                     if((_loc16_ = this.§==§.§`?§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§,!9§ = _loc16_.§,!9§;
                        _loc13_.§?;§ = _loc16_.§?;§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§@%§.§+!X§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§;!n§ |= b2internal::for;
         }
         else
         {
            this.§;!n§ &= ~b2internal::for;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§;!n§ & b2internal::0!7) == 0)
         {
            param1.PreSolve(this,this.§==§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §3f§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §3B§.§4M§.Set(this.§4b§.GetShape());
         §3B§.§1!]§.Set(this.§"'§.GetShape());
         §3B§.§"!&§ = param1;
         §3B§.§+^§ = param2;
         §3B§.§>![§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§+O§(§3B§);
      }
   }
}
