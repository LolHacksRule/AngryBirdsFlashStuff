package §'"6§
{
   import §!"3§.b2Shape;
   import §'"-§.b2ContactID;
   import §'"-§.b2Manifold;
   import §'"-§.b2ManifoldPoint;
   import §'"-§.b2TOIInput;
   import §'"-§.b2TimeOfImpact;
   import §'"-§.b2WorldManifold;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Sweep;
   import §6!^§.b2Transform;
   import §6"1§.b2Body;
   import §6"1§.b2ContactListener;
   import §6"1§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §["A§:uint = 1;
      
      b2internal static var §,!X§:uint = 2;
      
      b2internal static var §>7§:uint = 4;
      
      b2internal static var §?!$§:uint = 8;
      
      b2internal static var §;1§:uint = 16;
      
      b2internal static var § !<§:uint = 32;
      
      b2internal static var §!",§:uint = 64;
      
      private static var §<!n§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §2"B§:uint;
      
      b2internal var §;<§:b2Contact;
      
      b2internal var §?!g§:b2Contact;
      
      b2internal var §[!C§:b2ContactEdge;
      
      b2internal var §9q§:b2ContactEdge;
      
      b2internal var §4!?§:b2Fixture;
      
      b2internal var §3!B§:b2Fixture;
      
      b2internal var §<!+§:b2Manifold;
      
      b2internal var §=%§:b2Manifold;
      
      b2internal var §;"K§:Number;
      
      public function b2Contact()
      {
         this.§[!C§ = new b2ContactEdge();
         this.§9q§ = new b2ContactEdge();
         this.§<!+§ = new b2Manifold();
         this.§=%§ = new b2Manifold();
         super();
      }
      
      public function §9"Z§() : b2Manifold
      {
         return this.§<!+§;
      }
      
      public function §'!§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§4!?§.GetBody();
         var _loc3_:b2Body = this.§3!B§.GetBody();
         var _loc4_:b2Shape = this.§4!?§.GetShape();
         var _loc5_:b2Shape = this.§3!B§.GetShape();
         param1.§6!Q§(this.§<!+§,_loc2_.§!"0§(),_loc4_.§0!_§,_loc3_.§!"0§(),_loc5_.§0!_§);
      }
      
      public function §3"I§() : Boolean
      {
         return (this.§2"B§ & b2internal::;1) == b2internal::;1;
      }
      
      public function §>"2§() : Boolean
      {
         return (this.§2"B§ & b2internal::,!X) == b2internal::,!X;
      }
      
      public function §<"C§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2"B§ |= b2internal::["A;
         }
         else
         {
            this.§2"B§ &= ~b2internal::["A;
         }
      }
      
      public function §0d§() : Boolean
      {
         return (this.§2"B§ & b2internal::["A) == b2internal::["A;
      }
      
      public function §]!,§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§2"B§ |= b2internal:: !<;
         }
         else
         {
            this.§2"B§ &= ~b2internal:: !<;
         }
      }
      
      public function §;!S§() : Boolean
      {
         return (this.§2"B§ & b2internal:: !<) == b2internal:: !<;
      }
      
      public function §>!v§() : b2Contact
      {
         return this.§?!g§;
      }
      
      public function §]!A§() : b2Fixture
      {
         return this.§4!?§;
      }
      
      public function §3!]§() : b2Fixture
      {
         return this.§3!B§;
      }
      
      public function §^e§() : void
      {
         this.§2"B§ |= b2internal::!",;
      }
      
      b2internal function §<"U§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§2"B§ = b2internal:: !<;
         if(!param1 || !param2)
         {
            this.§4!?§ = null;
            this.§3!B§ = null;
            return;
         }
         if(param1.§0d§() || param2.§0d§())
         {
            this.§2"B§ |= b2internal::["A;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§>!f§() != b2Body.b2_dynamicBody || _loc3_.§>!l§() || _loc4_.§>!f§() != b2Body.b2_dynamicBody || _loc4_.§>!l§())
         {
            this.§2"B§ |= b2internal::,!X;
         }
         this.§4!?§ = param1;
         this.§3!B§ = param2;
         this.§<!+§.§0,§ = 0;
         this.§;<§ = null;
         this.§?!g§ = null;
         this.§[!C§.§-"G§ = null;
         this.§[!C§.§ " § = null;
         this.§[!C§.§3u§ = null;
         this.§[!C§.§[!!§ = null;
         this.§9q§.§-"G§ = null;
         this.§9q§.§ " § = null;
         this.§9q§.§3u§ = null;
         this.§9q§.§[!!§ = null;
      }
      
      b2internal function §7J§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§=%§;
         this.§=%§ = this.§<!+§;
         this.§<!+§ = _loc2_;
         this.§2"B§ |= b2internal:: !<;
         var _loc3_:* = false;
         var _loc4_:* = (this.§2"B§ & b2internal::;1) == b2internal::;1;
         var _loc5_:b2Body = this.§4!?§.m_body;
         var _loc6_:b2Body = this.§3!B§.m_body;
         var _loc7_:Boolean = this.§4!?§.§5"&§.§9e§(this.§3!B§.§5"&§);
         if(this.§2"B§ & b2internal::["A)
         {
            if(_loc7_)
            {
               _loc8_ = this.§4!?§.GetShape();
               _loc9_ = this.§3!B§.GetShape();
               _loc10_ = _loc5_.§!"0§();
               _loc11_ = _loc6_.§!"0§();
               _loc3_ = Boolean(b2Shape.§9e§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§<!+§.§0,§ = 0;
         }
         else
         {
            if(_loc5_.§>!f§() != b2Body.b2_dynamicBody || _loc5_.§>!l§() || _loc6_.§>!f§() != b2Body.b2_dynamicBody || _loc6_.§>!l§())
            {
               this.§2"B§ |= b2internal::,!X;
            }
            else
            {
               this.§2"B§ &= ~b2internal::,!X;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§<!+§.§0,§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§<!+§.§0,§)
               {
                  (_loc13_ = this.§<!+§.§4!_§[_loc12_]).§#!5§ = 0;
                  _loc13_.§@"%§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§=%§.§0,§)
                  {
                     if((_loc16_ = this.§=%§.§4!_§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§#!5§ = _loc16_.§#!5§;
                        _loc13_.§@"%§ = _loc16_.§@"%§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§<!+§.§0,§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§2"B§ |= b2internal::;1;
         }
         else
         {
            this.§2"B§ &= ~b2internal::;1;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§2"B§ & b2internal::["A) == 0)
         {
            param1.PreSolve(this,this.§=%§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §2"5§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §<!n§.§>!j§.Set(this.§4!?§.GetShape());
         §<!n§.§@!a§.Set(this.§3!B§.GetShape());
         §<!n§.§"8§ = param1;
         §<!n§.§;!"§ = param2;
         §<!n§.§#!s§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§0!j§(§<!n§);
      }
   }
}
