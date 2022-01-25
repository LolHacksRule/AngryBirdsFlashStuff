package §4!4§
{
   import §&!P§.b2ContactID;
   import §&!P§.b2Manifold;
   import §&!P§.b2ManifoldPoint;
   import §&!P§.b2TOIInput;
   import §&!P§.b2TimeOfImpact;
   import §&!P§.b2WorldManifold;
   import §+!o§.b2Shape;
   import §-0§.b2Body;
   import §-0§.b2ContactListener;
   import §-0§.b2Fixture;
   import §@g§.b2Settings;
   import §@g§.b2internal;
   import §^!%§.b2Sweep;
   import §^!%§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §-!q§:uint = 1;
      
      b2internal static var §!!4§:uint = 2;
      
      b2internal static var §"Z§:uint = 4;
      
      b2internal static var §?&§:uint = 8;
      
      b2internal static var §5x§:uint = 16;
      
      b2internal static var §4-§:uint = 32;
      
      b2internal static var §6!h§:uint = 64;
      
      private static var § for§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §+! §:uint;
      
      b2internal var §9!R§:b2Contact;
      
      b2internal var §2G§:b2Contact;
      
      b2internal var §#J§:b2ContactEdge;
      
      b2internal var §<g§:b2ContactEdge;
      
      b2internal var §0!b§:b2Fixture;
      
      b2internal var §&a§:b2Fixture;
      
      b2internal var §5R§:b2Manifold;
      
      b2internal var §;!^§:b2Manifold;
      
      b2internal var §-!2§:Number;
      
      public function b2Contact()
      {
         this.§#J§ = new b2ContactEdge();
         this.§<g§ = new b2ContactEdge();
         this.§5R§ = new b2Manifold();
         this.§;!^§ = new b2Manifold();
         super();
      }
      
      public function §%M§() : b2Manifold
      {
         return this.§5R§;
      }
      
      public function §^!-§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§0!b§.GetBody();
         var _loc3_:b2Body = this.§&a§.GetBody();
         var _loc4_:b2Shape = this.§0!b§.GetShape();
         var _loc5_:b2Shape = this.§&a§.GetShape();
         param1.§08§(this.§5R§,_loc2_.§>!%§(),_loc4_.§0!B§,_loc3_.§>!%§(),_loc5_.§0!B§);
      }
      
      public function §"!#§() : Boolean
      {
         return (this.§+! § & b2internal::5x) == b2internal::5x;
      }
      
      public function §<R§() : Boolean
      {
         return (this.§+! § & b2internal::!!4) == b2internal::!!4;
      }
      
      public function §=N§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+! § |= b2internal::-!q;
         }
         else
         {
            this.§+! § &= ~b2internal::-!q;
         }
      }
      
      public function §,c§() : Boolean
      {
         return (this.§+! § & b2internal::-!q) == b2internal::-!q;
      }
      
      public function §#c§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§+! § |= b2internal::4-;
         }
         else
         {
            this.§+! § &= ~b2internal::4-;
         }
      }
      
      public function §66§() : Boolean
      {
         return (this.§+! § & b2internal::4-) == b2internal::4-;
      }
      
      public function §2z§() : b2Contact
      {
         return this.§2G§;
      }
      
      public function §<D§() : b2Fixture
      {
         return this.§0!b§;
      }
      
      public function §5!?§() : b2Fixture
      {
         return this.§&a§;
      }
      
      public function §>x§() : void
      {
         this.§+! § |= b2internal::6!h;
      }
      
      b2internal function §<L§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§+! § = b2internal::4-;
         if(!param1 || !param2)
         {
            this.§0!b§ = null;
            this.§&a§ = null;
            return;
         }
         if(param1.§,c§() || param2.§,c§())
         {
            this.§+! § |= b2internal::-!q;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§use§() != b2Body.b2_dynamicBody || _loc3_.§'q§() || _loc4_.§use§() != b2Body.b2_dynamicBody || _loc4_.§'q§())
         {
            this.§+! § |= b2internal::!!4;
         }
         this.§0!b§ = param1;
         this.§&a§ = param2;
         this.§5R§.§>r§ = 0;
         this.§9!R§ = null;
         this.§2G§ = null;
         this.§#J§.§@m§ = null;
         this.§#J§.§%!B§ = null;
         this.§#J§.§@!A§ = null;
         this.§#J§.§1!q§ = null;
         this.§<g§.§@m§ = null;
         this.§<g§.§%!B§ = null;
         this.§<g§.§@!A§ = null;
         this.§<g§.§1!q§ = null;
      }
      
      b2internal function §##§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§;!^§;
         this.§;!^§ = this.§5R§;
         this.§5R§ = _loc2_;
         this.§+! § |= b2internal::4-;
         var _loc3_:* = false;
         var _loc4_:* = (this.§+! § & b2internal::5x) == b2internal::5x;
         var _loc5_:b2Body = this.§0!b§.m_body;
         var _loc6_:b2Body = this.§&a§.m_body;
         var _loc7_:Boolean = this.§0!b§.§0!+§.§`C§(this.§&a§.§0!+§);
         if(this.§+! § & b2internal::-!q)
         {
            if(_loc7_)
            {
               _loc8_ = this.§0!b§.GetShape();
               _loc9_ = this.§&a§.GetShape();
               _loc10_ = _loc5_.§>!%§();
               _loc11_ = _loc6_.§>!%§();
               _loc3_ = Boolean(b2Shape.§`C§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§5R§.§>r§ = 0;
         }
         else
         {
            if(_loc5_.§use§() != b2Body.b2_dynamicBody || _loc5_.§'q§() || _loc6_.§use§() != b2Body.b2_dynamicBody || _loc6_.§'q§())
            {
               this.§+! § |= b2internal::!!4;
            }
            else
            {
               this.§+! § &= ~b2internal::!!4;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§5R§.§>r§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§5R§.§>r§)
               {
                  (_loc13_ = this.§5R§.§"!h§[_loc12_]).§,!&§ = 0;
                  _loc13_.§%!a§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§;!^§.§>r§)
                  {
                     if((_loc16_ = this.§;!^§.§"!h§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§,!&§ = _loc16_.§,!&§;
                        _loc13_.§%!a§ = _loc16_.§%!a§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§5R§.§>r§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§+! § |= b2internal::5x;
         }
         else
         {
            this.§+! § &= ~b2internal::5x;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§+! § & b2internal::-!q) == 0)
         {
            param1.PreSolve(this,this.§;!^§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §package§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         § for§.§@u§.Set(this.§0!b§.GetShape());
         § for§.§!>§.Set(this.§&a§.GetShape());
         § for§.§6T§ = param1;
         § for§.§7!D§ = param2;
         § for§.§&=§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§ var§(§ for§);
      }
   }
}
