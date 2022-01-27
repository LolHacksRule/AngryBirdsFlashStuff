package §@!a§
{
   import §+!b§.b2Shape;
   import §4x§.b2Settings;
   import §4x§.b2internal;
   import §8!I§.b2Body;
   import §8!I§.b2ContactListener;
   import §8!I§.b2Fixture;
   import §<"§.b2ContactID;
   import §<"§.b2Manifold;
   import §<"§.b2ManifoldPoint;
   import §<"§.b2TOIInput;
   import §<"§.b2TimeOfImpact;
   import §<"§.b2WorldManifold;
   import §=i§.b2Sweep;
   import §=i§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §+Y§:uint = 1;
      
      b2internal static var § ,§:uint = 2;
      
      b2internal static var §;i§:uint = 4;
      
      b2internal static var §<P§:uint = 8;
      
      b2internal static var §?r§:uint = 16;
      
      b2internal static var §@V§:uint = 32;
      
      b2internal static var §,O§:uint = 64;
      
      private static var §?'§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §4!-§:uint;
      
      b2internal var §5E§:b2Contact;
      
      b2internal var §,C§:b2Contact;
      
      b2internal var §5c§:b2ContactEdge;
      
      b2internal var §'&§:b2ContactEdge;
      
      b2internal var §]![§:b2Fixture;
      
      b2internal var §11§:b2Fixture;
      
      b2internal var §=!=§:b2Manifold;
      
      b2internal var §"w§:b2Manifold;
      
      b2internal var §?7§:Number;
      
      public function b2Contact()
      {
         this.§5c§ = new b2ContactEdge();
         this.§'&§ = new b2ContactEdge();
         this.§=!=§ = new b2Manifold();
         this.§"w§ = new b2Manifold();
         super();
      }
      
      public function §31§() : b2Manifold
      {
         return this.§=!=§;
      }
      
      public function §^<§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§]![§.GetBody();
         var _loc3_:b2Body = this.§11§.GetBody();
         var _loc4_:b2Shape = this.§]![§.GetShape();
         var _loc5_:b2Shape = this.§11§.GetShape();
         param1.§;!%§(this.§=!=§,_loc2_.§0c§(),_loc4_.§6x§,_loc3_.§0c§(),_loc5_.§6x§);
      }
      
      public function §6,§() : Boolean
      {
         return (this.§4!-§ & b2internal::?r) == b2internal::?r;
      }
      
      public function §>!6§() : Boolean
      {
         return (this.§4!-§ & b2internal:: ,) == b2internal:: ,;
      }
      
      public function §99§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4!-§ |= b2internal::+Y;
         }
         else
         {
            this.§4!-§ &= ~b2internal::+Y;
         }
      }
      
      public function §^&§() : Boolean
      {
         return (this.§4!-§ & b2internal::+Y) == b2internal::+Y;
      }
      
      public function §@S§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4!-§ |= b2internal::@V;
         }
         else
         {
            this.§4!-§ &= ~b2internal::@V;
         }
      }
      
      public function §;-§() : Boolean
      {
         return (this.§4!-§ & b2internal::@V) == b2internal::@V;
      }
      
      public function §]S§() : b2Contact
      {
         return this.§,C§;
      }
      
      public function §#!Z§() : b2Fixture
      {
         return this.§]![§;
      }
      
      public function §5A§() : b2Fixture
      {
         return this.§11§;
      }
      
      public function §%&§() : void
      {
         this.§4!-§ |= b2internal::,O;
      }
      
      b2internal function §5!9§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§4!-§ = b2internal::@V;
         if(!param1 || !param2)
         {
            this.§]![§ = null;
            this.§11§ = null;
            return;
         }
         if(param1.§^&§() || param2.§^&§())
         {
            this.§4!-§ |= b2internal::+Y;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§<!M§() != b2Body.b2_dynamicBody || _loc3_.§8!V§() || _loc4_.§<!M§() != b2Body.b2_dynamicBody || _loc4_.§8!V§())
         {
            this.§4!-§ |= b2internal:: ,;
         }
         this.§]![§ = param1;
         this.§11§ = param2;
         this.§=!=§.§>!=§ = 0;
         this.§5E§ = null;
         this.§,C§ = null;
         this.§5c§.§ M§ = null;
         this.§5c§.§5>§ = null;
         this.§5c§.§>;§ = null;
         this.§5c§.§0z§ = null;
         this.§'&§.§ M§ = null;
         this.§'&§.§5>§ = null;
         this.§'&§.§>;§ = null;
         this.§'&§.§0z§ = null;
      }
      
      b2internal function §%!W§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§"w§;
         this.§"w§ = this.§=!=§;
         this.§=!=§ = _loc2_;
         this.§4!-§ |= b2internal::@V;
         var _loc3_:* = false;
         var _loc4_:* = (this.§4!-§ & b2internal::?r) == b2internal::?r;
         var _loc5_:b2Body = this.§]![§.m_body;
         var _loc6_:b2Body = this.§11§.m_body;
         var _loc7_:Boolean = this.§]![§.§96§.§!!D§(this.§11§.§96§);
         if(this.§4!-§ & b2internal::+Y)
         {
            if(_loc7_)
            {
               _loc8_ = this.§]![§.GetShape();
               _loc9_ = this.§11§.GetShape();
               _loc10_ = _loc5_.§0c§();
               _loc11_ = _loc6_.§0c§();
               _loc3_ = Boolean(b2Shape.§!!D§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§=!=§.§>!=§ = 0;
         }
         else
         {
            if(_loc5_.§<!M§() != b2Body.b2_dynamicBody || _loc5_.§8!V§() || _loc6_.§<!M§() != b2Body.b2_dynamicBody || _loc6_.§8!V§())
            {
               this.§4!-§ |= b2internal:: ,;
            }
            else
            {
               this.§4!-§ &= ~b2internal:: ,;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§=!=§.§>!=§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§=!=§.§>!=§)
               {
                  (_loc13_ = this.§=!=§.§&!4§[_loc12_]).§+5§ = 0;
                  _loc13_.§8D§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§"w§.§>!=§)
                  {
                     if((_loc16_ = this.§"w§.§&!4§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§+5§ = _loc16_.§+5§;
                        _loc13_.§8D§ = _loc16_.§8D§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§=!=§.§>!=§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§4!-§ |= b2internal::?r;
         }
         else
         {
            this.§4!-§ &= ~b2internal::?r;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§4!-§ & b2internal::+Y) == 0)
         {
            param1.PreSolve(this,this.§"w§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §8x§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §?'§.§^!C§.Set(this.§]![§.GetShape());
         §?'§.§[G§.Set(this.§11§.GetShape());
         §?'§.§ x§ = param1;
         §?'§.§!!C§ = param2;
         §?'§.§0_§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§-r§(§?'§);
      }
   }
}
