package §;T§
{
   import §"!9§.b2Shape;
   import §+S§.b2Body;
   import §+S§.b2ContactListener;
   import §+S§.b2Fixture;
   import §2"=§.b2Sweep;
   import §2"=§.b2Transform;
   import §5!o§.b2ContactID;
   import §5!o§.b2Manifold;
   import §5!o§.b2ManifoldPoint;
   import §5!o§.b2TOIInput;
   import §5!o§.b2TimeOfImpact;
   import §5!o§.b2WorldManifold;
   import §=o§.b2Settings;
   import §=o§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §+!&§:uint = 1;
      
      b2internal static var §;G§:uint = 2;
      
      b2internal static var §`Y§:uint = 4;
      
      b2internal static var §7!0§:uint = 8;
      
      b2internal static var §=s§:uint = 16;
      
      b2internal static var §%!?§:uint = 32;
      
      b2internal static var §#!>§:uint = 64;
      
      private static var §8"0§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §`"8§:uint;
      
      b2internal var §7b§:b2Contact;
      
      b2internal var §>""§:b2Contact;
      
      b2internal var §8I§:b2ContactEdge;
      
      b2internal var §55§:b2ContactEdge;
      
      b2internal var §5"$§:b2Fixture;
      
      b2internal var dynamic:b2Fixture;
      
      b2internal var §=&§:b2Manifold;
      
      b2internal var §'!u§:b2Manifold;
      
      b2internal var §0"2§:Number;
      
      public function b2Contact()
      {
         this.§8I§ = new b2ContactEdge();
         this.§55§ = new b2ContactEdge();
         this.§=&§ = new b2Manifold();
         this.§'!u§ = new b2Manifold();
         super();
      }
      
      public function §%!X§() : b2Manifold
      {
         return this.§=&§;
      }
      
      public function §@w§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§5"$§.GetBody();
         var _loc3_:b2Body = this.dynamic.GetBody();
         var _loc4_:b2Shape = this.§5"$§.GetShape();
         var _loc5_:b2Shape = this.dynamic.GetShape();
         param1.§1o§(this.§=&§,_loc2_.§?^§(),_loc4_.§;$§,_loc3_.§?^§(),_loc5_.§;$§);
      }
      
      public function §%!1§() : Boolean
      {
         return (this.§`"8§ & b2internal::=s) == b2internal::=s;
      }
      
      public function §7!&§() : Boolean
      {
         return (this.§`"8§ & b2internal::;G) == b2internal::;G;
      }
      
      public function §@u§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"8§ |= b2internal::+!&;
         }
         else
         {
            this.§`"8§ &= ~b2internal::+!&;
         }
      }
      
      public function §]!h§() : Boolean
      {
         return (this.§`"8§ & b2internal::+!&) == b2internal::+!&;
      }
      
      public function §&!j§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"8§ |= b2internal::%!?;
         }
         else
         {
            this.§`"8§ &= ~b2internal::%!?;
         }
      }
      
      public function §@k§() : Boolean
      {
         return (this.§`"8§ & b2internal::%!?) == b2internal::%!?;
      }
      
      public function §'!q§() : b2Contact
      {
         return this.§>""§;
      }
      
      public function §=!'§() : b2Fixture
      {
         return this.§5"$§;
      }
      
      public function §&O§() : b2Fixture
      {
         return this.dynamic;
      }
      
      public function §6L§() : void
      {
         this.§`"8§ |= b2internal::#!>;
      }
      
      b2internal function §%i§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§`"8§ = b2internal::%!?;
         if(!param1 || !param2)
         {
            this.§5"$§ = null;
            this.dynamic = null;
            return;
         }
         if(param1.§]!h§() || param2.§]!h§())
         {
            this.§`"8§ |= b2internal::+!&;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§+!O§() != b2Body.b2_dynamicBody || _loc3_.§3#§() || _loc4_.§+!O§() != b2Body.b2_dynamicBody || _loc4_.§3#§())
         {
            this.§`"8§ |= b2internal::;G;
         }
         this.§5"$§ = param1;
         this.dynamic = param2;
         this.§=&§.§<!c§ = 0;
         this.§7b§ = null;
         this.§>""§ = null;
         this.§8I§.§3w§ = null;
         this.§8I§.§["'§ = null;
         this.§8I§.§9!V§ = null;
         this.§8I§.§!!m§ = null;
         this.§55§.§3w§ = null;
         this.§55§.§["'§ = null;
         this.§55§.§9!V§ = null;
         this.§55§.§!!m§ = null;
      }
      
      b2internal function §?L§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§'!u§;
         this.§'!u§ = this.§=&§;
         this.§=&§ = _loc2_;
         this.§`"8§ |= b2internal::%!?;
         var _loc3_:* = false;
         var _loc4_:* = (this.§`"8§ & b2internal::=s) == b2internal::=s;
         var _loc5_:b2Body = this.§5"$§.m_body;
         var _loc6_:b2Body = this.dynamic.m_body;
         var _loc7_:Boolean = this.§5"$§.§]"+§.§;c§(this.dynamic.§]"+§);
         if(this.§`"8§ & b2internal::+!&)
         {
            if(_loc7_)
            {
               _loc8_ = this.§5"$§.GetShape();
               _loc9_ = this.dynamic.GetShape();
               _loc10_ = _loc5_.§?^§();
               _loc11_ = _loc6_.§?^§();
               _loc3_ = Boolean(b2Shape.§;c§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§=&§.§<!c§ = 0;
         }
         else
         {
            if(_loc5_.§+!O§() != b2Body.b2_dynamicBody || _loc5_.§3#§() || _loc6_.§+!O§() != b2Body.b2_dynamicBody || _loc6_.§3#§())
            {
               this.§`"8§ |= b2internal::;G;
            }
            else
            {
               this.§`"8§ &= ~b2internal::;G;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§=&§.§<!c§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§=&§.§<!c§)
               {
                  (_loc13_ = this.§=&§.§5!'§[_loc12_]).§=!y§ = 0;
                  _loc13_.§%!B§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§'!u§.§<!c§)
                  {
                     if((_loc16_ = this.§'!u§.§5!'§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§=!y§ = _loc16_.§=!y§;
                        _loc13_.§%!B§ = _loc16_.§%!B§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§=&§.§<!c§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§`"8§ |= b2internal::=s;
         }
         else
         {
            this.§`"8§ &= ~b2internal::=s;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§`"8§ & b2internal::+!&) == 0)
         {
            param1.PreSolve(this,this.§'!u§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §!Q§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §8"0§.§^!W§.Set(this.§5"$§.GetShape());
         §8"0§.§+!4§.Set(this.dynamic.GetShape());
         §8"0§.§+!B§ = param1;
         §8"0§.§"!b§ = param2;
         §8"0§.§<!$§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§@!l§(§8"0§);
      }
   }
}
