package §>6§
{
   import §'!a§.b2Settings;
   import §'!a§.b2internal;
   import §4!W§.b2Shape;
   import §6!n§.b2Sweep;
   import §6!n§.b2Transform;
   import §9!K§.b2Body;
   import §9!K§.b2ContactListener;
   import §9!K§.b2Fixture;
   import §;!Z§.b2ContactID;
   import §;!Z§.b2Manifold;
   import §;!Z§.b2ManifoldPoint;
   import §;!Z§.b2TOIInput;
   import §;!Z§.b2TimeOfImpact;
   import §;!Z§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §;"+§:uint = 1;
      
      b2internal static var §&"E§:uint = 2;
      
      b2internal static var §^!4§:uint = 4;
      
      b2internal static var §0!`§:uint = 8;
      
      b2internal static var §-S§:uint = 16;
      
      b2internal static var §%J§:uint = 32;
      
      b2internal static var §"F§:uint = 64;
      
      private static var §;!4§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §true§:uint;
      
      b2internal var §9!§:b2Contact;
      
      b2internal var §&!6§:b2Contact;
      
      b2internal var §@!o§:b2ContactEdge;
      
      b2internal var §+!f§:b2ContactEdge;
      
      b2internal var §1!g§:b2Fixture;
      
      b2internal var §@4§:b2Fixture;
      
      b2internal var §-"7§:b2Manifold;
      
      b2internal var §%h§:b2Manifold;
      
      b2internal var §#!1§:Number;
      
      public function b2Contact()
      {
         this.§@!o§ = new b2ContactEdge();
         this.§+!f§ = new b2ContactEdge();
         this.§-"7§ = new b2Manifold();
         this.§%h§ = new b2Manifold();
         super();
      }
      
      public function §"!n§() : b2Manifold
      {
         return this.§-"7§;
      }
      
      public function §#!0§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§1!g§.GetBody();
         var _loc3_:b2Body = this.§@4§.GetBody();
         var _loc4_:b2Shape = this.§1!g§.GetShape();
         var _loc5_:b2Shape = this.§@4§.GetShape();
         param1.§break§(this.§-"7§,_loc2_.§]!>§(),_loc4_.§!!l§,_loc3_.§]!>§(),_loc5_.§!!l§);
      }
      
      public function §60§() : Boolean
      {
         return (this.§true§ & b2internal::-S) == b2internal::-S;
      }
      
      public function §@!A§() : Boolean
      {
         return (this.§true§ & b2internal::&"E) == b2internal::&"E;
      }
      
      public function §""=§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§true§ |= b2internal::;"+;
         }
         else
         {
            this.§true§ &= ~b2internal::;"+;
         }
      }
      
      public function §7!5§() : Boolean
      {
         return (this.§true§ & b2internal::;"+) == b2internal::;"+;
      }
      
      public function §5!W§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§true§ |= b2internal::%J;
         }
         else
         {
            this.§true§ &= ~b2internal::%J;
         }
      }
      
      public function §6!@§() : Boolean
      {
         return (this.§true§ & b2internal::%J) == b2internal::%J;
      }
      
      public function §1§() : b2Contact
      {
         return this.§&!6§;
      }
      
      public function §[!_§() : b2Fixture
      {
         return this.§1!g§;
      }
      
      public function §6!6§() : b2Fixture
      {
         return this.§@4§;
      }
      
      public function §="1§() : void
      {
         this.§true§ |= b2internal::"F;
      }
      
      b2internal function §2!U§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§true§ = b2internal::%J;
         if(!param1 || !param2)
         {
            this.§1!g§ = null;
            this.§@4§ = null;
            return;
         }
         if(param1.§7!5§() || param2.§7!5§())
         {
            this.§true§ |= b2internal::;"+;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§finally§() != b2Body.b2_dynamicBody || _loc3_.§?!Z§() || _loc4_.§finally§() != b2Body.b2_dynamicBody || _loc4_.§?!Z§())
         {
            this.§true§ |= b2internal::&"E;
         }
         this.§1!g§ = param1;
         this.§@4§ = param2;
         this.§-"7§.§&!G§ = 0;
         this.§9!§ = null;
         this.§&!6§ = null;
         this.§@!o§.§ 5§ = null;
         this.§@!o§.§5!S§ = null;
         this.§@!o§.§7$§ = null;
         this.§@!o§.§]9§ = null;
         this.§+!f§.§ 5§ = null;
         this.§+!f§.§5!S§ = null;
         this.§+!f§.§7$§ = null;
         this.§+!f§.§]9§ = null;
      }
      
      b2internal function §7!M§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§%h§;
         this.§%h§ = this.§-"7§;
         this.§-"7§ = _loc2_;
         this.§true§ |= b2internal::%J;
         var _loc3_:* = false;
         var _loc4_:* = (this.§true§ & b2internal::-S) == b2internal::-S;
         var _loc5_:b2Body = this.§1!g§.m_body;
         var _loc6_:b2Body = this.§@4§.m_body;
         var _loc7_:Boolean = this.§1!g§.§7j§.§1'§(this.§@4§.§7j§);
         if(this.§true§ & b2internal::;"+)
         {
            if(_loc7_)
            {
               _loc8_ = this.§1!g§.GetShape();
               _loc9_ = this.§@4§.GetShape();
               _loc10_ = _loc5_.§]!>§();
               _loc11_ = _loc6_.§]!>§();
               _loc3_ = Boolean(b2Shape.§1'§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§-"7§.§&!G§ = 0;
         }
         else
         {
            if(_loc5_.§finally§() != b2Body.b2_dynamicBody || _loc5_.§?!Z§() || _loc6_.§finally§() != b2Body.b2_dynamicBody || _loc6_.§?!Z§())
            {
               this.§true§ |= b2internal::&"E;
            }
            else
            {
               this.§true§ &= ~b2internal::&"E;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§-"7§.§&!G§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§-"7§.§&!G§)
               {
                  (_loc13_ = this.§-"7§.§63§[_loc12_]).§"a§ = 0;
                  _loc13_.§`Q§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§%h§.§&!G§)
                  {
                     if((_loc16_ = this.§%h§.§63§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§"a§ = _loc16_.§"a§;
                        _loc13_.§`Q§ = _loc16_.§`Q§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§-"7§.§&!G§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§true§ |= b2internal::-S;
         }
         else
         {
            this.§true§ &= ~b2internal::-S;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§true§ & b2internal::;"+) == 0)
         {
            param1.PreSolve(this,this.§%h§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §'&§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §;!4§.§+z§.Set(this.§1!g§.GetShape());
         §;!4§.§5!$§.Set(this.§@4§.GetShape());
         §;!4§.§8r§ = param1;
         §;!4§.§[!]§ = param2;
         §;!4§.§%!`§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§#!8§(§;!4§);
      }
   }
}
