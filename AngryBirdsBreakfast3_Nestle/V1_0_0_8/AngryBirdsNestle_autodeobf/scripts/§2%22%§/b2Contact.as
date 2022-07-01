package §2"%§
{
   import §-j§.b2ContactID;
   import §-j§.b2Manifold;
   import §-j§.b2ManifoldPoint;
   import §-j§.b2TOIInput;
   import §-j§.b2TimeOfImpact;
   import §-j§.b2WorldManifold;
   import §7!F§.b2Settings;
   import §7!F§.b2internal;
   import §=!c§.b2Body;
   import §=!c§.b2ContactListener;
   import §=!c§.b2Fixture;
   import §[K§.b2Sweep;
   import §[K§.b2Transform;
   import §[e§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §[l§:uint = 1;
      
      b2internal static var §"!5§:uint = 2;
      
      b2internal static var §[x§:uint = 4;
      
      b2internal static var §&!i§:uint = 8;
      
      b2internal static var §,Z§:uint = 16;
      
      b2internal static var §<<§:uint = 32;
      
      b2internal static var §1&§:uint = 64;
      
      private static var §`!;§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §8!5§:uint;
      
      b2internal var §^!`§:b2Contact;
      
      b2internal var §4!c§:b2Contact;
      
      b2internal var §;O§:b2ContactEdge;
      
      b2internal var §7"4§:b2ContactEdge;
      
      b2internal var §`!P§:b2Fixture;
      
      b2internal var §%!§:b2Fixture;
      
      b2internal var §8n§:b2Manifold;
      
      b2internal var §1!D§:b2Manifold;
      
      b2internal var §&b§:Number;
      
      public function b2Contact()
      {
         this.§;O§ = new b2ContactEdge();
         this.§7"4§ = new b2ContactEdge();
         this.§8n§ = new b2Manifold();
         this.§1!D§ = new b2Manifold();
         super();
      }
      
      public function §'2§() : b2Manifold
      {
         return this.§8n§;
      }
      
      public function §#y§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§`!P§.GetBody();
         var _loc3_:b2Body = this.§%!§.GetBody();
         var _loc4_:b2Shape = this.§`!P§.GetShape();
         var _loc5_:b2Shape = this.§%!§.GetShape();
         param1.§3!,§(this.§8n§,_loc2_.§0!_§(),_loc4_.§-!D§,_loc3_.§0!_§(),_loc5_.§-!D§);
      }
      
      public function §#!f§() : Boolean
      {
         return (this.§8!5§ & b2internal::,Z) == b2internal::,Z;
      }
      
      public function §;!5§() : Boolean
      {
         return (this.§8!5§ & b2internal::"!5) == b2internal::"!5;
      }
      
      public function §#H§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!5§ |= b2internal::[l;
         }
         else
         {
            this.§8!5§ &= ~b2internal::[l;
         }
      }
      
      public function §+!E§() : Boolean
      {
         return (this.§8!5§ & b2internal::[l) == b2internal::[l;
      }
      
      public function §-3§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§8!5§ |= b2internal::<<;
         }
         else
         {
            this.§8!5§ &= ~b2internal::<<;
         }
      }
      
      public function §<y§() : Boolean
      {
         return (this.§8!5§ & b2internal::<<) == b2internal::<<;
      }
      
      public function §<b§() : b2Contact
      {
         return this.§4!c§;
      }
      
      public function §^h§() : b2Fixture
      {
         return this.§`!P§;
      }
      
      public function §9!v§() : b2Fixture
      {
         return this.§%!§;
      }
      
      public function §!!i§() : void
      {
         this.§8!5§ |= b2internal::1&;
      }
      
      b2internal function §&-§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§8!5§ = b2internal::<<;
         if(!param1 || !param2)
         {
            this.§`!P§ = null;
            this.§%!§ = null;
            return;
         }
         if(param1.§+!E§() || param2.§+!E§())
         {
            this.§8!5§ |= b2internal::[l;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§&!u§() != b2Body.b2_dynamicBody || _loc3_.§`-§() || _loc4_.§&!u§() != b2Body.b2_dynamicBody || _loc4_.§`-§())
         {
            this.§8!5§ |= b2internal::"!5;
         }
         this.§`!P§ = param1;
         this.§%!§ = param2;
         this.§8n§.§^"§ = 0;
         this.§^!`§ = null;
         this.§4!c§ = null;
         this.§;O§.§`Z§ = null;
         this.§;O§.§]K§ = null;
         this.§;O§.next = null;
         this.§;O§.§!!9§ = null;
         this.§7"4§.§`Z§ = null;
         this.§7"4§.§]K§ = null;
         this.§7"4§.next = null;
         this.§7"4§.§!!9§ = null;
      }
      
      b2internal function §]!A§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§1!D§;
         this.§1!D§ = this.§8n§;
         this.§8n§ = _loc2_;
         this.§8!5§ |= b2internal::<<;
         var _loc3_:* = false;
         var _loc4_:* = (this.§8!5§ & b2internal::,Z) == b2internal::,Z;
         var _loc5_:b2Body = this.§`!P§.m_body;
         var _loc6_:b2Body = this.§%!§.m_body;
         var _loc7_:Boolean = this.§`!P§.§@j§.§^s§(this.§%!§.§@j§);
         if(this.§8!5§ & b2internal::[l)
         {
            if(_loc7_)
            {
               _loc8_ = this.§`!P§.GetShape();
               _loc9_ = this.§%!§.GetShape();
               _loc10_ = _loc5_.§0!_§();
               _loc11_ = _loc6_.§0!_§();
               _loc3_ = Boolean(b2Shape.§^s§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§8n§.§^"§ = 0;
         }
         else
         {
            if(_loc5_.§&!u§() != b2Body.b2_dynamicBody || _loc5_.§`-§() || _loc6_.§&!u§() != b2Body.b2_dynamicBody || _loc6_.§`-§())
            {
               this.§8!5§ |= b2internal::"!5;
            }
            else
            {
               this.§8!5§ &= ~b2internal::"!5;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§8n§.§^"§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§8n§.§^"§)
               {
                  (_loc13_ = this.§8n§.§>!&§[_loc12_]).§"G§ = 0;
                  _loc13_.§7q§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§1!D§.§^"§)
                  {
                     if((_loc16_ = this.§1!D§.§>!&§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§"G§ = _loc16_.§"G§;
                        _loc13_.§7q§ = _loc16_.§7q§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§8n§.§^"§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§8!5§ |= b2internal::,Z;
         }
         else
         {
            this.§8!5§ &= ~b2internal::,Z;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§8!5§ & b2internal::[l) == 0)
         {
            param1.PreSolve(this,this.§1!D§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §>!-§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §`!;§.§&!p§.Set(this.§`!P§.GetShape());
         §`!;§.§[m§.Set(this.§%!§.GetShape());
         §`!;§.§5!%§ = param1;
         §`!;§.§&p§ = param2;
         §`!;§.§if § = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§!!u§(§`!;§);
      }
   }
}
