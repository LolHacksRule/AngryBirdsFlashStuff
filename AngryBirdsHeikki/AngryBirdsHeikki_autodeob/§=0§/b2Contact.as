package §=0§
{
   import §!4§.b2ContactID;
   import §!4§.b2Manifold;
   import §!4§.b2ManifoldPoint;
   import §!4§.b2TOIInput;
   import §!4§.b2TimeOfImpact;
   import §!4§.b2WorldManifold;
   import §3!R§.b2Body;
   import §3!R§.b2ContactListener;
   import §3!R§.b2Fixture;
   import §6A§.b2Sweep;
   import §6A§.b2Transform;
   import §7q§.b2Shape;
   import §^P§.b2Settings;
   import §^P§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §&8§:uint = 1;
      
      b2internal static var §`!P§:uint = 2;
      
      b2internal static var §!3§:uint = 4;
      
      b2internal static var §<!D§:uint = 8;
      
      b2internal static var §^r§:uint = 16;
      
      b2internal static var each:uint = 32;
      
      b2internal static var §^-§:uint = 64;
      
      private static var §%M§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §5!5§:uint;
      
      b2internal var §8s§:b2Contact;
      
      b2internal var §>W§:b2Contact;
      
      b2internal var §0!=§:b2ContactEdge;
      
      b2internal var §^!?§:b2ContactEdge;
      
      b2internal var §&4§:b2Fixture;
      
      b2internal var §;,§:b2Fixture;
      
      b2internal var §1`§:b2Manifold;
      
      b2internal var §@G§:b2Manifold;
      
      b2internal var §5j§:Number;
      
      public function b2Contact()
      {
         this.§0!=§ = new b2ContactEdge();
         this.§^!?§ = new b2ContactEdge();
         this.§1`§ = new b2Manifold();
         this.§@G§ = new b2Manifold();
         super();
      }
      
      public function §0&§() : b2Manifold
      {
         return this.§1`§;
      }
      
      public function § else§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§&4§.GetBody();
         var _loc3_:b2Body = this.§;,§.GetBody();
         var _loc4_:b2Shape = this.§&4§.GetShape();
         var _loc5_:b2Shape = this.§;,§.GetShape();
         param1.§';§(this.§1`§,_loc2_.§6V§(),_loc4_.§'m§,_loc3_.§6V§(),_loc5_.§'m§);
      }
      
      public function §1h§() : Boolean
      {
         return (this.§5!5§ & b2internal::^r) == b2internal::^r;
      }
      
      public function §,!,§() : Boolean
      {
         return (this.§5!5§ & b2internal::`!P) == b2internal::`!P;
      }
      
      public function §@!_§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!5§ |= b2internal::&8;
         }
         else
         {
            this.§5!5§ &= ~b2internal::&8;
         }
      }
      
      public function §4!B§() : Boolean
      {
         return (this.§5!5§ & b2internal::&8) == b2internal::&8;
      }
      
      public function §>!$§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§5!5§ |= b2internal::each;
         }
         else
         {
            this.§5!5§ &= ~b2internal::each;
         }
      }
      
      public function §;%§() : Boolean
      {
         return (this.§5!5§ & b2internal::each) == b2internal::each;
      }
      
      public function §5!J§() : b2Contact
      {
         return this.§>W§;
      }
      
      public function §#!D§() : b2Fixture
      {
         return this.§&4§;
      }
      
      public function §''§() : b2Fixture
      {
         return this.§;,§;
      }
      
      public function §[!R§() : void
      {
         this.§5!5§ |= b2internal::^-;
      }
      
      b2internal function §;!C§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§5!5§ = b2internal::each;
         if(!param1 || !param2)
         {
            this.§&4§ = null;
            this.§;,§ = null;
            return;
         }
         if(param1.§4!B§() || param2.§4!B§())
         {
            this.§5!5§ |= b2internal::&8;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§0i§() != b2Body.b2_dynamicBody || _loc3_.§,!Q§() || _loc4_.§0i§() != b2Body.b2_dynamicBody || _loc4_.§,!Q§())
         {
            this.§5!5§ |= b2internal::`!P;
         }
         this.§&4§ = param1;
         this.§;,§ = param2;
         this.§1`§.§;6§ = 0;
         this.§8s§ = null;
         this.§>W§ = null;
         this.§0!=§.§-!$§ = null;
         this.§0!=§.§ true§ = null;
         this.§0!=§.§+m§ = null;
         this.§0!=§.§=!"§ = null;
         this.§^!?§.§-!$§ = null;
         this.§^!?§.§ true§ = null;
         this.§^!?§.§+m§ = null;
         this.§^!?§.§=!"§ = null;
      }
      
      b2internal function §?!§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§@G§;
         this.§@G§ = this.§1`§;
         this.§1`§ = _loc2_;
         this.§5!5§ |= b2internal::each;
         var _loc3_:* = false;
         var _loc4_:* = (this.§5!5§ & b2internal::^r) == b2internal::^r;
         var _loc5_:b2Body = this.§&4§.m_body;
         var _loc6_:b2Body = this.§;,§.m_body;
         var _loc7_:Boolean = this.§&4§.§ !+§.§+!;§(this.§;,§.§ !+§);
         if(this.§5!5§ & b2internal::&8)
         {
            if(_loc7_)
            {
               _loc8_ = this.§&4§.GetShape();
               _loc9_ = this.§;,§.GetShape();
               _loc10_ = _loc5_.§6V§();
               _loc11_ = _loc6_.§6V§();
               _loc3_ = Boolean(b2Shape.§+!;§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§1`§.§;6§ = 0;
         }
         else
         {
            if(_loc5_.§0i§() != b2Body.b2_dynamicBody || _loc5_.§,!Q§() || _loc6_.§0i§() != b2Body.b2_dynamicBody || _loc6_.§,!Q§())
            {
               this.§5!5§ |= b2internal::`!P;
            }
            else
            {
               this.§5!5§ &= ~b2internal::`!P;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§1`§.§;6§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§1`§.§;6§)
               {
                  (_loc13_ = this.§1`§.§7! §[_loc12_]).§#!f§ = 0;
                  _loc13_.§`!W§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§@G§.§;6§)
                  {
                     if((_loc16_ = this.§@G§.§7! §[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§#!f§ = _loc16_.§#!f§;
                        _loc13_.§`!W§ = _loc16_.§`!W§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§1`§.§;6§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§5!5§ |= b2internal::^r;
         }
         else
         {
            this.§5!5§ &= ~b2internal::^r;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§5!5§ & b2internal::&8) == 0)
         {
            param1.PreSolve(this,this.§@G§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §;!§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §%M§.§package§.Set(this.§&4§.GetShape());
         §%M§.§@!?§.Set(this.§;,§.GetShape());
         §%M§.static = param1;
         §%M§.§!W§ = param2;
         §%M§.§%!&§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§=!I§(§%M§);
      }
   }
}
