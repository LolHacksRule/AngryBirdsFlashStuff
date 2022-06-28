package §7a§
{
   import § D§.b2Body;
   import § D§.b2ContactListener;
   import § D§.b2Fixture;
   import §&!-§.b2ContactID;
   import §&!-§.b2Manifold;
   import §&!-§.b2ManifoldPoint;
   import §&!-§.b2TOIInput;
   import §&!-§.b2TimeOfImpact;
   import §&!-§.b2WorldManifold;
   import §0!'§.b2Shape;
   import §8>§.b2Sweep;
   import §8>§.b2Transform;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §6o§:uint = 1;
      
      b2internal static var §+>§:uint = 2;
      
      b2internal static var §]!i§:uint = 4;
      
      b2internal static var §"+§:uint = 8;
      
      b2internal static var §9!+§:uint = 16;
      
      b2internal static var §#"§:uint = 32;
      
      b2internal static var §2!t§:uint = 64;
      
      private static var §&,§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var § !<§:uint;
      
      b2internal var §4!7§:b2Contact;
      
      b2internal var §7n§:b2Contact;
      
      b2internal var §#f§:b2ContactEdge;
      
      b2internal var §?§:b2ContactEdge;
      
      b2internal var §48§:b2Fixture;
      
      b2internal var §[=§:b2Fixture;
      
      b2internal var §?K§:b2Manifold;
      
      b2internal var §%=§:b2Manifold;
      
      b2internal var §7!5§:Number;
      
      public function b2Contact()
      {
         this.§#f§ = new b2ContactEdge();
         this.§?§ = new b2ContactEdge();
         this.§?K§ = new b2Manifold();
         this.§%=§ = new b2Manifold();
         super();
      }
      
      public function §[2§() : b2Manifold
      {
         return this.§?K§;
      }
      
      public function §5!§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§48§.GetBody();
         var _loc3_:b2Body = this.§[=§.GetBody();
         var _loc4_:b2Shape = this.§48§.GetShape();
         var _loc5_:b2Shape = this.§[=§.GetShape();
         param1.§7R§(this.§?K§,_loc2_.§+!C§(),_loc4_.§6q§,_loc3_.§+!C§(),_loc5_.§6q§);
      }
      
      public function §8]§() : Boolean
      {
         return (this.§ !<§ & b2internal::9!+) == b2internal::9!+;
      }
      
      public function §?y§() : Boolean
      {
         return (this.§ !<§ & b2internal::+>) == b2internal::+>;
      }
      
      public function §#!<§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !<§ |= b2internal::6o;
         }
         else
         {
            this.§ !<§ &= ~b2internal::6o;
         }
      }
      
      public function §0?§() : Boolean
      {
         return (this.§ !<§ & b2internal::6o) == b2internal::6o;
      }
      
      public function §!!s§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§ !<§ |= b2internal::#";
         }
         else
         {
            this.§ !<§ &= ~b2internal::#";
         }
      }
      
      public function §18§() : Boolean
      {
         return (this.§ !<§ & b2internal::#") == b2internal::#";
      }
      
      public function §2!g§() : b2Contact
      {
         return this.§7n§;
      }
      
      public function §5J§() : b2Fixture
      {
         return this.§48§;
      }
      
      public function §@!X§() : b2Fixture
      {
         return this.§[=§;
      }
      
      public function §?d§() : void
      {
         this.§ !<§ |= b2internal::2!t;
      }
      
      b2internal function §#[§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§ !<§ = b2internal::#";
         if(!param1 || !param2)
         {
            this.§48§ = null;
            this.§[=§ = null;
            return;
         }
         if(param1.§0?§() || param2.§0?§())
         {
            this.§ !<§ |= b2internal::6o;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§0!@§() != b2Body.b2_dynamicBody || _loc3_.§=!s§() || _loc4_.§0!@§() != b2Body.b2_dynamicBody || _loc4_.§=!s§())
         {
            this.§ !<§ |= b2internal::+>;
         }
         this.§48§ = param1;
         this.§[=§ = param2;
         this.§?K§.§]B§ = 0;
         this.§4!7§ = null;
         this.§7n§ = null;
         this.§#f§.§58§ = null;
         this.§#f§.§7!J§ = null;
         this.§#f§.§0e§ = null;
         this.§#f§.§<!-§ = null;
         this.§?§.§58§ = null;
         this.§?§.§7!J§ = null;
         this.§?§.§0e§ = null;
         this.§?§.§<!-§ = null;
      }
      
      b2internal function §5>§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§%=§;
         this.§%=§ = this.§?K§;
         this.§?K§ = _loc2_;
         this.§ !<§ |= b2internal::#";
         var _loc3_:* = false;
         var _loc4_:* = (this.§ !<§ & b2internal::9!+) == b2internal::9!+;
         var _loc5_:b2Body = this.§48§.m_body;
         var _loc6_:b2Body = this.§[=§.m_body;
         var _loc7_:Boolean = this.§48§.§@!$§.§'V§(this.§[=§.§@!$§);
         if(this.§ !<§ & b2internal::6o)
         {
            if(_loc7_)
            {
               _loc8_ = this.§48§.GetShape();
               _loc9_ = this.§[=§.GetShape();
               _loc10_ = _loc5_.§+!C§();
               _loc11_ = _loc6_.§+!C§();
               _loc3_ = Boolean(b2Shape.§'V§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§?K§.§]B§ = 0;
         }
         else
         {
            if(_loc5_.§0!@§() != b2Body.b2_dynamicBody || _loc5_.§=!s§() || _loc6_.§0!@§() != b2Body.b2_dynamicBody || _loc6_.§=!s§())
            {
               this.§ !<§ |= b2internal::+>;
            }
            else
            {
               this.§ !<§ &= ~b2internal::+>;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§?K§.§]B§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§?K§.§]B§)
               {
                  (_loc13_ = this.§?K§.§<8§[_loc12_]).§9!s§ = 0;
                  _loc13_.§[&§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§%=§.§]B§)
                  {
                     if((_loc16_ = this.§%=§.§<8§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§9!s§ = _loc16_.§9!s§;
                        _loc13_.§[&§ = _loc16_.§[&§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§?K§.§]B§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§ !<§ |= b2internal::9!+;
         }
         else
         {
            this.§ !<§ &= ~b2internal::9!+;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§ !<§ & b2internal::6o) == 0)
         {
            param1.PreSolve(this,this.§%=§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §2!1§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §&,§.§5R§.Set(this.§48§.GetShape());
         §&,§.§0D§.Set(this.§[=§.GetShape());
         §&,§.§@!F§ = param1;
         §&,§.§7A§ = param2;
         §&,§.§4!P§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§'!<§(§&,§);
      }
   }
}
