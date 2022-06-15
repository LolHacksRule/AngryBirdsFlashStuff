package §1#]§
{
   import §!H§.b2Shape;
   import §4$E§.b2ContactID;
   import §4$E§.b2Manifold;
   import §4$E§.b2ManifoldPoint;
   import §4$E§.b2TOIInput;
   import §4$E§.b2TimeOfImpact;
   import §4$E§.b2WorldManifold;
   import §?!C§.b2Sweep;
   import §?!C§.b2Transform;
   import §?N§.b2Settings;
   import §?N§.b2internal;
   import §@!S§.b2Body;
   import §@!S§.b2ContactListener;
   import §@!S§.b2Fixture;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §[#]§:uint = 1;
      
      b2internal static var §&!0§:uint = 2;
      
      b2internal static var §"!Z§:uint = 4;
      
      b2internal static var §<"L§:uint = 8;
      
      b2internal static var §7#-§:uint = 16;
      
      b2internal static var §2" §:uint = 32;
      
      b2internal static var §5#k§:uint = 64;
      
      private static var §4#[§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §!#z§:uint;
      
      b2internal var §@"4§:b2Contact;
      
      b2internal var §@W§:b2Contact;
      
      b2internal var §+![§:b2ContactEdge;
      
      b2internal var §6!#§:b2ContactEdge;
      
      b2internal var §-!-§:b2Fixture;
      
      b2internal var §^y§:b2Fixture;
      
      b2internal var §##w§:Boolean = false;
      
      b2internal var §^#t§:b2Manifold;
      
      b2internal var §9#^§:b2Manifold;
      
      b2internal var §#$?§:Number;
      
      public function b2Contact()
      {
         this.§+![§ = new b2ContactEdge();
         this.§6!#§ = new b2ContactEdge();
         this.§^#t§ = new b2Manifold();
         this.§9#^§ = new b2Manifold();
         super();
      }
      
      public function §1Y§() : b2Manifold
      {
         return this.§^#t§;
      }
      
      public function §4!r§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§-!-§.GetBody();
         var _loc3_:b2Body = this.§^y§.GetBody();
         var _loc4_:b2Shape = this.§-!-§.GetShape();
         var _loc5_:b2Shape = this.§^y§.GetShape();
         param1.§1!W§(this.§^#t§,_loc2_.GetTransform(),_loc4_.§5#n§,_loc3_.GetTransform(),_loc5_.§5#n§);
      }
      
      public function §]!#§() : Boolean
      {
         return (this.§!#z§ & b2internal::7#-) == b2internal::7#-;
      }
      
      public function §3!+§() : Boolean
      {
         return (this.§!#z§ & b2internal::&!0) == b2internal::&!0;
      }
      
      public function §2$7§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!#z§ |= b2internal::[#];
         }
         else
         {
            this.§!#z§ &= ~b2internal::[#];
         }
      }
      
      public function §"!,§() : Boolean
      {
         return (this.§!#z§ & b2internal::[#]) == b2internal::[#];
      }
      
      public function §9!E§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§!#z§ |= b2internal::2" ;
         }
         else
         {
            this.§!#z§ &= ~b2internal::2" ;
         }
      }
      
      public function §##?§() : Boolean
      {
         return (this.§!#z§ & b2internal::2" ) == b2internal::2" ;
      }
      
      public function §%$>§() : b2Contact
      {
         return this.§@W§;
      }
      
      public function §9$ §() : b2Fixture
      {
         return this.§-!-§;
      }
      
      public function §@!D§() : b2Fixture
      {
         return this.§^y§;
      }
      
      public function §>$6§() : void
      {
         this.§!#z§ |= b2internal::5#k;
      }
      
      b2internal function §!!C§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§!#z§ = b2internal::2" ;
         if(!param1 || !param2)
         {
            this.§-!-§ = null;
            this.§^y§ = null;
            return;
         }
         if(param1.§"!,§() || param2.§"!,§())
         {
            this.§!#z§ |= b2internal::[#];
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§8!p§() != b2Body.b2_dynamicBody || _loc3_.§>$'§() || _loc4_.§8!p§() != b2Body.b2_dynamicBody || _loc4_.§>$'§())
         {
            this.§!#z§ |= b2internal::&!0;
         }
         this.§-!-§ = param1;
         this.§^y§ = param2;
         this.§^#t§.§`!o§ = 0;
         this.§@"4§ = null;
         this.§@W§ = null;
         this.§+![§.§4E§ = null;
         this.§+![§.§!$%§ = null;
         this.§+![§.next = null;
         this.§+![§.§import§ = null;
         this.§6!#§.§4E§ = null;
         this.§6!#§.§!$%§ = null;
         this.§6!#§.next = null;
         this.§6!#§.§import§ = null;
      }
      
      b2internal function §&R§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§9#^§;
         this.§9#^§ = this.§^#t§;
         this.§^#t§ = _loc2_;
         this.§!#z§ |= b2internal::2" ;
         var _loc3_:* = false;
         var _loc4_:* = (this.§!#z§ & b2internal::7#-) == b2internal::7#-;
         var _loc5_:b2Body = this.§-!-§.m_body;
         var _loc6_:b2Body = this.§^y§.m_body;
         var _loc7_:Boolean = this.§-!-§.§^M§.§9#]§(this.§^y§.§^M§);
         if(this.§!#z§ & b2internal::[#])
         {
            if(_loc7_)
            {
               _loc8_ = this.§-!-§.GetShape();
               _loc9_ = this.§^y§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§9#]§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§^#t§.§`!o§ = 0;
         }
         else
         {
            if(_loc5_.§8!p§() != b2Body.b2_dynamicBody || _loc5_.§>$'§() || _loc6_.§8!p§() != b2Body.b2_dynamicBody || _loc6_.§>$'§())
            {
               this.§!#z§ |= b2internal::&!0;
            }
            else
            {
               this.§!#z§ &= ~b2internal::&!0;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§^#t§.§`!o§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§^#t§.§`!o§)
               {
                  (_loc13_ = this.§^#t§.§"f§[_loc12_]).§!"k§ = 0;
                  _loc13_.§#"B§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§9#^§.§`!o§)
                  {
                     if((_loc16_ = this.§9#^§.§"f§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§!"k§ = _loc16_.§!"k§;
                        _loc13_.§#"B§ = _loc16_.§#"B§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§^#t§.§`!o§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§!#z§ |= b2internal::7#-;
         }
         else
         {
            this.§!#z§ &= ~b2internal::7#-;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§!#z§ & b2internal::[#]) == 0)
         {
            param1.PreSolve(this,this.§9#^§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §>#d§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §4#[§.§#"X§.Set(this.§-!-§.GetShape());
         §4#[§.§-!x§.Set(this.§^y§.GetShape());
         §4#[§.§]!3§ = param1;
         §4#[§.§1$3§ = param2;
         §4#[§.§+!?§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§@!7§(§4#[§);
      }
   }
}
