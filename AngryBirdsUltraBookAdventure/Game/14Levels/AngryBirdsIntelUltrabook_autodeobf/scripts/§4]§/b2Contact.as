package §4]§
{
   import §#I§.b2Body;
   import §#I§.b2ContactListener;
   import §#I§.b2Fixture;
   import §&H§.b2Sweep;
   import §&H§.b2Transform;
   import §3b§.b2Shape;
   import §>!Z§.b2ContactID;
   import §>!Z§.b2Manifold;
   import §>!Z§.b2ManifoldPoint;
   import §>!Z§.b2TOIInput;
   import §>!Z§.b2TimeOfImpact;
   import §>!Z§.b2WorldManifold;
   import §@!3§.b2Settings;
   import §@!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §"U§:uint = 1;
      
      b2internal static var §?8§:uint = 2;
      
      b2internal static var §0V§:uint = 4;
      
      b2internal static var §[§:uint = 8;
      
      b2internal static var §'!C§:uint = 16;
      
      b2internal static var §`!T§:uint = 32;
      
      b2internal static var §]!Y§:uint = 64;
      
      private static var §case §:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §[B§:uint;
      
      b2internal var §+!3§:b2Contact;
      
      b2internal var §=!8§:b2Contact;
      
      b2internal var §=f§:b2ContactEdge;
      
      b2internal var §!!a§:b2ContactEdge;
      
      b2internal var §]V§:b2Fixture;
      
      b2internal var §!j§:b2Fixture;
      
      b2internal var §7!l§:b2Manifold;
      
      b2internal var §%!§:b2Manifold;
      
      b2internal var §]H§:Number;
      
      public function b2Contact()
      {
         this.§=f§ = new b2ContactEdge();
         this.§!!a§ = new b2ContactEdge();
         this.§7!l§ = new b2Manifold();
         this.§%!§ = new b2Manifold();
         super();
      }
      
      public function §%!b§() : b2Manifold
      {
         return this.§7!l§;
      }
      
      public function §`@§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§]V§.GetBody();
         var _loc3_:b2Body = this.§!j§.GetBody();
         var _loc4_:b2Shape = this.§]V§.GetShape();
         var _loc5_:b2Shape = this.§!j§.GetShape();
         param1.§`!D§(this.§7!l§,_loc2_.§%J§(),_loc4_.§ !c§,_loc3_.§%J§(),_loc5_.§ !c§);
      }
      
      public function §>5§() : Boolean
      {
         return (this.§[B§ & b2internal::'!C) == b2internal::'!C;
      }
      
      public function §-g§() : Boolean
      {
         return (this.§[B§ & b2internal::?8) == b2internal::?8;
      }
      
      public function §,!d§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[B§ |= b2internal::"U;
         }
         else
         {
            this.§[B§ &= ~b2internal::"U;
         }
      }
      
      public function §%u§() : Boolean
      {
         return (this.§[B§ & b2internal::"U) == b2internal::"U;
      }
      
      public function §@@§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§[B§ |= b2internal::`!T;
         }
         else
         {
            this.§[B§ &= ~b2internal::`!T;
         }
      }
      
      public function §<s§() : Boolean
      {
         return (this.§[B§ & b2internal::`!T) == b2internal::`!T;
      }
      
      public function §?!^§() : b2Contact
      {
         return this.§=!8§;
      }
      
      public function §`!a§() : b2Fixture
      {
         return this.§]V§;
      }
      
      public function §2!s§() : b2Fixture
      {
         return this.§!j§;
      }
      
      public function §+q§() : void
      {
         this.§[B§ |= b2internal::]!Y;
      }
      
      b2internal function §2I§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§[B§ = b2internal::`!T;
         if(!param1 || !param2)
         {
            this.§]V§ = null;
            this.§!j§ = null;
            return;
         }
         if(param1.§%u§() || param2.§%u§())
         {
            this.§[B§ |= b2internal::"U;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§ 5§() != b2Body.b2_dynamicBody || _loc3_.§5"#§() || _loc4_.§ 5§() != b2Body.b2_dynamicBody || _loc4_.§5"#§())
         {
            this.§[B§ |= b2internal::?8;
         }
         this.§]V§ = param1;
         this.§!j§ = param2;
         this.§7!l§.§&!h§ = 0;
         this.§+!3§ = null;
         this.§=!8§ = null;
         this.§=f§.§8!m§ = null;
         this.§=f§.§!!m§ = null;
         this.§=f§.§`!w§ = null;
         this.§=f§.§<!M§ = null;
         this.§!!a§.§8!m§ = null;
         this.§!!a§.§!!m§ = null;
         this.§!!a§.§`!w§ = null;
         this.§!!a§.§<!M§ = null;
      }
      
      b2internal function §3!r§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§%!§;
         this.§%!§ = this.§7!l§;
         this.§7!l§ = _loc2_;
         this.§[B§ |= b2internal::`!T;
         var _loc3_:* = false;
         var _loc4_:* = (this.§[B§ & b2internal::'!C) == b2internal::'!C;
         var _loc5_:b2Body = this.§]V§.m_body;
         var _loc6_:b2Body = this.§!j§.m_body;
         var _loc7_:Boolean = this.§]V§.§9v§.§]I§(this.§!j§.§9v§);
         if(this.§[B§ & b2internal::"U)
         {
            if(_loc7_)
            {
               _loc8_ = this.§]V§.GetShape();
               _loc9_ = this.§!j§.GetShape();
               _loc10_ = _loc5_.§%J§();
               _loc11_ = _loc6_.§%J§();
               _loc3_ = Boolean(b2Shape.§]I§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§7!l§.§&!h§ = 0;
         }
         else
         {
            if(_loc5_.§ 5§() != b2Body.b2_dynamicBody || _loc5_.§5"#§() || _loc6_.§ 5§() != b2Body.b2_dynamicBody || _loc6_.§5"#§())
            {
               this.§[B§ |= b2internal::?8;
            }
            else
            {
               this.§[B§ &= ~b2internal::?8;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§7!l§.§&!h§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§7!l§.§&!h§)
               {
                  (_loc13_ = this.§7!l§.§ !C§[_loc12_]).§-J§ = 0;
                  _loc13_.§]+§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§%!§.§&!h§)
                  {
                     if((_loc16_ = this.§%!§.§ !C§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§-J§ = _loc16_.§-J§;
                        _loc13_.§]+§ = _loc16_.§]+§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§7!l§.§&!h§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§[B§ |= b2internal::'!C;
         }
         else
         {
            this.§[B§ &= ~b2internal::'!C;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§[B§ & b2internal::"U) == 0)
         {
            param1.PreSolve(this,this.§%!§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §&!=§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §case §.§,N§.Set(this.§]V§.GetShape());
         §case §.§#y§.Set(this.§!j§.GetShape());
         §case §.§,!+§ = param1;
         §case §.§5!v§ = param2;
         §case §.§^b§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§6!C§(§case §);
      }
   }
}
