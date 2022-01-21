package §'!9§
{
   import §"U§.b2Sweep;
   import §"U§.b2Transform;
   import §,7§.b2Shape;
   import §3!g§.b2Body;
   import §3!g§.b2ContactListener;
   import §3!g§.b2Fixture;
   import §<!!§.b2ContactID;
   import §<!!§.b2Manifold;
   import §<!!§.b2ManifoldPoint;
   import §<!!§.b2TOIInput;
   import §<!!§.b2TimeOfImpact;
   import §<!!§.b2WorldManifold;
   import §=!X§.b2Settings;
   import §=!X§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §>L§:uint = 1;
      
      b2internal static var §+C§:uint = 2;
      
      b2internal static var §'!J§:uint = 4;
      
      b2internal static var § ?§:uint = 8;
      
      b2internal static var §9B§:uint = 16;
      
      b2internal static var §%!g§:uint = 32;
      
      b2internal static var §#!;§:uint = 64;
      
      private static var §4!S§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §9!U§:uint;
      
      b2internal var §4W§:b2Contact;
      
      b2internal var § set§:b2Contact;
      
      b2internal var §"!a§:b2ContactEdge;
      
      b2internal var §`R§:b2ContactEdge;
      
      b2internal var §2!G§:b2Fixture;
      
      b2internal var §#!S§:b2Fixture;
      
      b2internal var §9y§:b2Manifold;
      
      b2internal var §5q§:b2Manifold;
      
      b2internal var §'!F§:Number;
      
      public function b2Contact()
      {
         this.§"!a§ = new b2ContactEdge();
         this.§`R§ = new b2ContactEdge();
         this.§9y§ = new b2Manifold();
         this.§5q§ = new b2Manifold();
         super();
      }
      
      public function §"t§() : b2Manifold
      {
         return this.§9y§;
      }
      
      public function §[!9§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§2!G§.GetBody();
         var _loc3_:b2Body = this.§#!S§.GetBody();
         var _loc4_:b2Shape = this.§2!G§.GetShape();
         var _loc5_:b2Shape = this.§#!S§.GetShape();
         param1.§6!_§(this.§9y§,_loc2_.§=q§(),_loc4_.§^!c§,_loc3_.§=q§(),_loc5_.§^!c§);
      }
      
      public function §`T§() : Boolean
      {
         return (this.§9!U§ & b2internal::9B) == b2internal::9B;
      }
      
      public function §^!#§() : Boolean
      {
         return (this.§9!U§ & b2internal::+C) == b2internal::+C;
      }
      
      public function §;R§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9!U§ |= b2internal::>L;
         }
         else
         {
            this.§9!U§ &= ~b2internal::>L;
         }
      }
      
      public function §&?§() : Boolean
      {
         return (this.§9!U§ & b2internal::>L) == b2internal::>L;
      }
      
      public function §+&§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§9!U§ |= b2internal::%!g;
         }
         else
         {
            this.§9!U§ &= ~b2internal::%!g;
         }
      }
      
      public function §=O§() : Boolean
      {
         return (this.§9!U§ & b2internal::%!g) == b2internal::%!g;
      }
      
      public function §%H§() : b2Contact
      {
         return this.§ set§;
      }
      
      public function §'C§() : b2Fixture
      {
         return this.§2!G§;
      }
      
      public function §<!n§() : b2Fixture
      {
         return this.§#!S§;
      }
      
      public function §2s§() : void
      {
         this.§9!U§ |= b2internal::#!;;
      }
      
      b2internal function §4`§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§9!U§ = b2internal::%!g;
         if(!param1 || !param2)
         {
            this.§2!G§ = null;
            this.§#!S§ = null;
            return;
         }
         if(param1.§&?§() || param2.§&?§())
         {
            this.§9!U§ |= b2internal::>L;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§^!A§() != b2Body.b2_dynamicBody || _loc3_.§?>§() || _loc4_.§^!A§() != b2Body.b2_dynamicBody || _loc4_.§?>§())
         {
            this.§9!U§ |= b2internal::+C;
         }
         this.§2!G§ = param1;
         this.§#!S§ = param2;
         this.§9y§.§&!-§ = 0;
         this.§4W§ = null;
         this.§ set§ = null;
         this.§"!a§.§!R§ = null;
         this.§"!a§.§@7§ = null;
         this.§"!a§.§[8§ = null;
         this.§"!a§.§ O§ = null;
         this.§`R§.§!R§ = null;
         this.§`R§.§@7§ = null;
         this.§`R§.§[8§ = null;
         this.§`R§.§ O§ = null;
      }
      
      b2internal function §"!M§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§5q§;
         this.§5q§ = this.§9y§;
         this.§9y§ = _loc2_;
         this.§9!U§ |= b2internal::%!g;
         var _loc3_:* = false;
         var _loc4_:* = (this.§9!U§ & b2internal::9B) == b2internal::9B;
         var _loc5_:b2Body = this.§2!G§.m_body;
         var _loc6_:b2Body = this.§#!S§.m_body;
         var _loc7_:Boolean = this.§2!G§.§ !K§.§;l§(this.§#!S§.§ !K§);
         if(this.§9!U§ & b2internal::>L)
         {
            if(_loc7_)
            {
               _loc8_ = this.§2!G§.GetShape();
               _loc9_ = this.§#!S§.GetShape();
               _loc10_ = _loc5_.§=q§();
               _loc11_ = _loc6_.§=q§();
               _loc3_ = Boolean(b2Shape.§;l§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§9y§.§&!-§ = 0;
         }
         else
         {
            if(_loc5_.§^!A§() != b2Body.b2_dynamicBody || _loc5_.§?>§() || _loc6_.§^!A§() != b2Body.b2_dynamicBody || _loc6_.§?>§())
            {
               this.§9!U§ |= b2internal::+C;
            }
            else
            {
               this.§9!U§ &= ~b2internal::+C;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§9y§.§&!-§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§9y§.§&!-§)
               {
                  (_loc13_ = this.§9y§.§;N§[_loc12_]).§79§ = 0;
                  _loc13_.§++§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§5q§.§&!-§)
                  {
                     if((_loc16_ = this.§5q§.§;N§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§79§ = _loc16_.§79§;
                        _loc13_.§++§ = _loc16_.§++§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§9y§.§&!-§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§9!U§ |= b2internal::9B;
         }
         else
         {
            this.§9!U§ &= ~b2internal::9B;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§9!U§ & b2internal::>L) == 0)
         {
            param1.PreSolve(this,this.§5q§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §6!4§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §4!S§.§ "§.Set(this.§2!G§.GetShape());
         §4!S§.§,x§.Set(this.§#!S§.GetShape());
         §4!S§.§@q§ = param1;
         §4!S§.§!!f§ = param2;
         §4!S§.§;!d§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§ if§(§4!S§);
      }
   }
}
