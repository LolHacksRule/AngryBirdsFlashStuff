package §8Y§
{
   import §&U§.b2Shape;
   import §0!G§.b2Sweep;
   import §0!G§.b2Transform;
   import §2!F§.b2Settings;
   import §2!F§.b2internal;
   import §9"§.b2ContactID;
   import §9"§.b2Manifold;
   import §9"§.b2ManifoldPoint;
   import §9"§.b2TOIInput;
   import §9"§.b2TimeOfImpact;
   import §9"§.b2WorldManifold;
   import §`j§.b2Body;
   import §`j§.b2ContactListener;
   import §`j§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §@!I§:uint = 1;
      
      b2internal static var §@S§:uint = 2;
      
      b2internal static var §finally§:uint = 4;
      
      b2internal static var §5!O§:uint = 8;
      
      b2internal static var §8§:uint = 16;
      
      b2internal static var §8!7§:uint = 32;
      
      b2internal static var §45§:uint = 64;
      
      private static var §7p§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §@x§:uint;
      
      b2internal var §8`§:b2Contact;
      
      b2internal var §#!&§:b2Contact;
      
      b2internal var §!!7§:b2ContactEdge;
      
      b2internal var §7a§:b2ContactEdge;
      
      b2internal var §1!,§:b2Fixture;
      
      b2internal var §7+§:b2Fixture;
      
      b2internal var §&C§:b2Manifold;
      
      b2internal var §<!Q§:b2Manifold;
      
      b2internal var §9,§:Number;
      
      public function b2Contact()
      {
         this.§!!7§ = new b2ContactEdge();
         this.§7a§ = new b2ContactEdge();
         this.§&C§ = new b2Manifold();
         this.§<!Q§ = new b2Manifold();
         super();
      }
      
      public function § !X§() : b2Manifold
      {
         return this.§&C§;
      }
      
      public function §![§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§1!,§.GetBody();
         var _loc3_:b2Body = this.§7+§.GetBody();
         var _loc4_:b2Shape = this.§1!,§.GetShape();
         var _loc5_:b2Shape = this.§7+§.GetShape();
         param1.§>b§(this.§&C§,_loc2_.§4!P§(),_loc4_.§@s§,_loc3_.§4!P§(),_loc5_.§@s§);
      }
      
      public function §=^§() : Boolean
      {
         return (this.§@x§ & b2internal::8) == b2internal::8;
      }
      
      public function §>u§() : Boolean
      {
         return (this.§@x§ & b2internal::@S) == b2internal::@S;
      }
      
      public function §5!_§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@x§ |= b2internal::@!I;
         }
         else
         {
            this.§@x§ &= ~b2internal::@!I;
         }
      }
      
      public function §`3§() : Boolean
      {
         return (this.§@x§ & b2internal::@!I) == b2internal::@!I;
      }
      
      public function §<!C§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§@x§ |= b2internal::8!7;
         }
         else
         {
            this.§@x§ &= ~b2internal::8!7;
         }
      }
      
      public function §@n§() : Boolean
      {
         return (this.§@x§ & b2internal::8!7) == b2internal::8!7;
      }
      
      public function §[;§() : b2Contact
      {
         return this.§#!&§;
      }
      
      public function §&^§() : b2Fixture
      {
         return this.§1!,§;
      }
      
      public function §7I§() : b2Fixture
      {
         return this.§7+§;
      }
      
      public function §@!0§() : void
      {
         this.§@x§ |= b2internal::45;
      }
      
      b2internal function §8j§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§@x§ = b2internal::8!7;
         if(!param1 || !param2)
         {
            this.§1!,§ = null;
            this.§7+§ = null;
            return;
         }
         if(param1.§`3§() || param2.§`3§())
         {
            this.§@x§ |= b2internal::@!I;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§"!M§() != b2Body.b2_dynamicBody || _loc3_.§ c§() || _loc4_.§"!M§() != b2Body.b2_dynamicBody || _loc4_.§ c§())
         {
            this.§@x§ |= b2internal::@S;
         }
         this.§1!,§ = param1;
         this.§7+§ = param2;
         this.§&C§.§!$§ = 0;
         this.§8`§ = null;
         this.§#!&§ = null;
         this.§!!7§.§"!$§ = null;
         this.§!!7§.§;!Z§ = null;
         this.§!!7§.§%Y§ = null;
         this.§!!7§.§3!>§ = null;
         this.§7a§.§"!$§ = null;
         this.§7a§.§;!Z§ = null;
         this.§7a§.§%Y§ = null;
         this.§7a§.§3!>§ = null;
      }
      
      b2internal function §?!R§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§<!Q§;
         this.§<!Q§ = this.§&C§;
         this.§&C§ = _loc2_;
         this.§@x§ |= b2internal::8!7;
         var _loc3_:* = false;
         var _loc4_:* = (this.§@x§ & b2internal::8) == b2internal::8;
         var _loc5_:b2Body = this.§1!,§.m_body;
         var _loc6_:b2Body = this.§7+§.m_body;
         var _loc7_:Boolean = this.§1!,§.§^T§.§[!K§(this.§7+§.§^T§);
         if(this.§@x§ & b2internal::@!I)
         {
            if(_loc7_)
            {
               _loc8_ = this.§1!,§.GetShape();
               _loc9_ = this.§7+§.GetShape();
               _loc10_ = _loc5_.§4!P§();
               _loc11_ = _loc6_.§4!P§();
               _loc3_ = Boolean(b2Shape.§[!K§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§&C§.§!$§ = 0;
         }
         else
         {
            if(_loc5_.§"!M§() != b2Body.b2_dynamicBody || _loc5_.§ c§() || _loc6_.§"!M§() != b2Body.b2_dynamicBody || _loc6_.§ c§())
            {
               this.§@x§ |= b2internal::@S;
            }
            else
            {
               this.§@x§ &= ~b2internal::@S;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§&C§.§!$§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§&C§.§!$§)
               {
                  (_loc13_ = this.§&C§.§<s§[_loc12_]).§46§ = 0;
                  _loc13_.§`!H§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§<!Q§.§!$§)
                  {
                     if((_loc16_ = this.§<!Q§.§<s§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§46§ = _loc16_.§46§;
                        _loc13_.§`!H§ = _loc16_.§`!H§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§&C§.§!$§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§@x§ |= b2internal::8;
         }
         else
         {
            this.§@x§ &= ~b2internal::8;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§@x§ & b2internal::@!I) == 0)
         {
            param1.PreSolve(this,this.§<!Q§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §"!B§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §7p§.§+X§.Set(this.§1!,§.GetShape());
         §7p§.§4q§.Set(this.§7+§.GetShape());
         §7p§.§ y§ = param1;
         §7p§.§@$§ = param2;
         §7p§.§7!F§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§"5§(§7p§);
      }
   }
}
