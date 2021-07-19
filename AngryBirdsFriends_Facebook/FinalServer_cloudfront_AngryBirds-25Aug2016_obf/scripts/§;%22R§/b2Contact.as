package §;"R§
{
   import §0H§.b2Settings;
   import §0H§.b2internal;
   import §0m§.b2Sweep;
   import §0m§.b2Transform;
   import §3"q§.b2ContactID;
   import §3"q§.b2Manifold;
   import §3"q§.b2ManifoldPoint;
   import §3"q§.b2TOIInput;
   import §3"q§.b2TimeOfImpact;
   import §3"q§.b2WorldManifold;
   import §=#n§.b2Body;
   import §=#n§.b2ContactListener;
   import §=#n§.b2Fixture;
   import §?!c§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §7#e§:uint = 1;
      
      b2internal static var §5$3§:uint = 2;
      
      b2internal static var §`#W§:uint = 4;
      
      b2internal static var §35§:uint = 8;
      
      b2internal static var §"!,§:uint = 16;
      
      b2internal static var §<!1§:uint = 32;
      
      b2internal static var §@"&§:uint = 64;
      
      private static var §#!X§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §#!<§:uint;
      
      b2internal var §+"j§:b2Contact;
      
      b2internal var §@##§:b2Contact;
      
      b2internal var §"!3§:b2ContactEdge;
      
      b2internal var §0"q§:b2ContactEdge;
      
      b2internal var §!!u§:b2Fixture;
      
      b2internal var §?!A§:b2Fixture;
      
      b2internal var §%!n§:Boolean = false;
      
      b2internal var §&#V§:b2Manifold;
      
      b2internal var § $4§:b2Manifold;
      
      b2internal var §=#y§:Number;
      
      public function b2Contact()
      {
         this.§"!3§ = new b2ContactEdge();
         this.§0"q§ = new b2ContactEdge();
         this.§&#V§ = new b2Manifold();
         this.§ $4§ = new b2Manifold();
         super();
      }
      
      public function §9#N§() : b2Manifold
      {
         return this.§&#V§;
      }
      
      public function §0#;§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§!!u§.GetBody();
         var _loc3_:b2Body = this.§?!A§.GetBody();
         var _loc4_:b2Shape = this.§!!u§.GetShape();
         var _loc5_:b2Shape = this.§?!A§.GetShape();
         param1.§1[§(this.§&#V§,_loc2_.GetTransform(),_loc4_.§0#I§,_loc3_.GetTransform(),_loc5_.§0#I§);
      }
      
      public function §!"m§() : Boolean
      {
         return (this.§#!<§ & b2internal::"!,) == b2internal::"!,;
      }
      
      public function §,#&§() : Boolean
      {
         return (this.§#!<§ & b2internal::5$3) == b2internal::5$3;
      }
      
      public function §2"@§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!<§ |= b2internal::7#e;
         }
         else
         {
            this.§#!<§ &= ~b2internal::7#e;
         }
      }
      
      public function §@"G§() : Boolean
      {
         return (this.§#!<§ & b2internal::7#e) == b2internal::7#e;
      }
      
      public function §7"T§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§#!<§ |= b2internal::<!1;
         }
         else
         {
            this.§#!<§ &= ~b2internal::<!1;
         }
      }
      
      public function §<!y§() : Boolean
      {
         return (this.§#!<§ & b2internal::<!1) == b2internal::<!1;
      }
      
      public function § !V§() : b2Contact
      {
         return this.§@##§;
      }
      
      public function §%$-§() : b2Fixture
      {
         return this.§!!u§;
      }
      
      public function §true§() : b2Fixture
      {
         return this.§?!A§;
      }
      
      public function §!$,§() : void
      {
         this.§#!<§ |= b2internal::@"&;
      }
      
      b2internal function §<#W§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§#!<§ = b2internal::<!1;
         if(!param1 || !param2)
         {
            this.§!!u§ = null;
            this.§?!A§ = null;
            return;
         }
         if(param1.§@"G§() || param2.§@"G§())
         {
            this.§#!<§ |= b2internal::7#e;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§ "c§() != b2Body.b2_dynamicBody || _loc3_.§6!_§() || _loc4_.§ "c§() != b2Body.b2_dynamicBody || _loc4_.§6!_§())
         {
            this.§#!<§ |= b2internal::5$3;
         }
         this.§!!u§ = param1;
         this.§?!A§ = param2;
         this.§&#V§.§+!P§ = 0;
         this.§+"j§ = null;
         this.§@##§ = null;
         this.§"!3§.§<#L§ = null;
         this.§"!3§.§7#a§ = null;
         this.§"!3§.§0$0§ = null;
         this.§"!3§.§5W§ = null;
         this.§0"q§.§<#L§ = null;
         this.§0"q§.§7#a§ = null;
         this.§0"q§.§0$0§ = null;
         this.§0"q§.§5W§ = null;
      }
      
      b2internal function §+d§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§ $4§;
         this.§ $4§ = this.§&#V§;
         this.§&#V§ = _loc2_;
         this.§#!<§ |= b2internal::<!1;
         var _loc3_:* = false;
         var _loc4_:* = (this.§#!<§ & b2internal::"!,) == b2internal::"!,;
         var _loc5_:b2Body = this.§!!u§.m_body;
         var _loc6_:b2Body = this.§?!A§.m_body;
         var _loc7_:Boolean = this.§!!u§.§>!k§.§4"t§(this.§?!A§.§>!k§);
         if(this.§#!<§ & b2internal::7#e)
         {
            if(_loc7_)
            {
               _loc8_ = this.§!!u§.GetShape();
               _loc9_ = this.§?!A§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§4"t§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§&#V§.§+!P§ = 0;
         }
         else
         {
            if(_loc5_.§ "c§() != b2Body.b2_dynamicBody || _loc5_.§6!_§() || _loc6_.§ "c§() != b2Body.b2_dynamicBody || _loc6_.§6!_§())
            {
               this.§#!<§ |= b2internal::5$3;
            }
            else
            {
               this.§#!<§ &= ~b2internal::5$3;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§&#V§.§+!P§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§&#V§.§+!P§)
               {
                  (_loc13_ = this.§&#V§.§8#N§[_loc12_]).§`!E§ = 0;
                  _loc13_.§["G§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§ $4§.§+!P§)
                  {
                     if((_loc16_ = this.§ $4§.§8#N§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§`!E§ = _loc16_.§`!E§;
                        _loc13_.§["G§ = _loc16_.§["G§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§&#V§.§+!P§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§#!<§ |= b2internal::"!,;
         }
         else
         {
            this.§#!<§ &= ~b2internal::"!,;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§#!<§ & b2internal::7#e) == 0)
         {
            param1.PreSolve(this,this.§ $4§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §2"&§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §#!X§.§["-§.Set(this.§!!u§.GetShape());
         §#!X§.§?$;§.Set(this.§?!A§.GetShape());
         §#!X§.§'"g§ = param1;
         §#!X§.§`#8§ = param2;
         §#!X§.§]"a§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§8!Q§(§#!X§);
      }
   }
}
