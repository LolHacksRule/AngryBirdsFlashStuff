package §-#F§
{
   import §&$+§.b2Settings;
   import §&$+§.b2internal;
   import §'#K§.b2Body;
   import §'#K§.b2ContactListener;
   import §'#K§.b2Fixture;
   import §,#E§.b2ContactID;
   import §,#E§.b2Manifold;
   import §,#E§.b2ManifoldPoint;
   import §,#E§.b2TOIInput;
   import §,#E§.b2TimeOfImpact;
   import §,#E§.b2WorldManifold;
   import §04§.b2Sweep;
   import §04§.b2Transform;
   import §1#I§.b2Shape;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §+";§:uint = 1;
      
      b2internal static var §4$;§:uint = 2;
      
      b2internal static var §<!&§:uint = 4;
      
      b2internal static var §4#Y§:uint = 8;
      
      b2internal static var §?"o§:uint = 16;
      
      b2internal static var §1"j§:uint = 32;
      
      b2internal static var §`#x§:uint = 64;
      
      private static var §0!e§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §'#h§:uint;
      
      b2internal var §-$7§:b2Contact;
      
      b2internal var §>d§:b2Contact;
      
      b2internal var §;#Y§:b2ContactEdge;
      
      b2internal var §0!+§:b2ContactEdge;
      
      b2internal var §4"F§:b2Fixture;
      
      b2internal var §'"n§:b2Fixture;
      
      b2internal var §@$'§:Boolean = false;
      
      b2internal var §<"O§:b2Manifold;
      
      b2internal var §^!+§:b2Manifold;
      
      b2internal var § "q§:Number;
      
      public function b2Contact()
      {
         this.§;#Y§ = new b2ContactEdge();
         this.§0!+§ = new b2ContactEdge();
         this.§<"O§ = new b2Manifold();
         this.§^!+§ = new b2Manifold();
         super();
      }
      
      public function §0"4§() : b2Manifold
      {
         return this.§<"O§;
      }
      
      public function § $?§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§4"F§.GetBody();
         var _loc3_:b2Body = this.§'"n§.GetBody();
         var _loc4_:b2Shape = this.§4"F§.GetShape();
         var _loc5_:b2Shape = this.§'"n§.GetShape();
         param1.§&N§(this.§<"O§,_loc2_.GetTransform(),_loc4_.§&"7§,_loc3_.GetTransform(),_loc5_.§&"7§);
      }
      
      public function §;"!§() : Boolean
      {
         return (this.§'#h§ & b2internal::?"o) == b2internal::?"o;
      }
      
      public function § 6§() : Boolean
      {
         return (this.§'#h§ & b2internal::4$;) == b2internal::4$;;
      }
      
      public function §`R§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'#h§ |= b2internal::+";;
         }
         else
         {
            this.§'#h§ &= ~b2internal::+";;
         }
      }
      
      public function §>T§() : Boolean
      {
         return (this.§'#h§ & b2internal::+";) == b2internal::+";;
      }
      
      public function §>'§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§'#h§ |= b2internal::1"j;
         }
         else
         {
            this.§'#h§ &= ~b2internal::1"j;
         }
      }
      
      public function §?$;§() : Boolean
      {
         return (this.§'#h§ & b2internal::1"j) == b2internal::1"j;
      }
      
      public function §4!7§() : b2Contact
      {
         return this.§>d§;
      }
      
      public function §5!s§() : b2Fixture
      {
         return this.§4"F§;
      }
      
      public function §5!W§() : b2Fixture
      {
         return this.§'"n§;
      }
      
      public function §5$5§() : void
      {
         this.§'#h§ |= b2internal::`#x;
      }
      
      b2internal function §`"R§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§'#h§ = b2internal::1"j;
         if(!param1 || !param2)
         {
            this.§4"F§ = null;
            this.§'"n§ = null;
            return;
         }
         if(param1.§>T§() || param2.§>T§())
         {
            this.§'#h§ |= b2internal::+";;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§<!e§() != b2Body.b2_dynamicBody || _loc3_.§>#9§() || _loc4_.§<!e§() != b2Body.b2_dynamicBody || _loc4_.§>#9§())
         {
            this.§'#h§ |= b2internal::4$;;
         }
         this.§4"F§ = param1;
         this.§'"n§ = param2;
         this.§<"O§.§!!p§ = 0;
         this.§-$7§ = null;
         this.§>d§ = null;
         this.§;#Y§.§>#I§ = null;
         this.§;#Y§.§5""§ = null;
         this.§;#Y§.next = null;
         this.§;#Y§.§%#]§ = null;
         this.§0!+§.§>#I§ = null;
         this.§0!+§.§5""§ = null;
         this.§0!+§.next = null;
         this.§0!+§.§%#]§ = null;
      }
      
      b2internal function §8c§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§^!+§;
         this.§^!+§ = this.§<"O§;
         this.§<"O§ = _loc2_;
         this.§'#h§ |= b2internal::1"j;
         var _loc3_:* = false;
         var _loc4_:* = (this.§'#h§ & b2internal::?"o) == b2internal::?"o;
         var _loc5_:b2Body = this.§4"F§.m_body;
         var _loc6_:b2Body = this.§'"n§.m_body;
         var _loc7_:Boolean = this.§4"F§.§8!$§.§2#%§(this.§'"n§.§8!$§);
         if(this.§'#h§ & b2internal::+";)
         {
            if(_loc7_)
            {
               _loc8_ = this.§4"F§.GetShape();
               _loc9_ = this.§'"n§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§2#%§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§<"O§.§!!p§ = 0;
         }
         else
         {
            if(_loc5_.§<!e§() != b2Body.b2_dynamicBody || _loc5_.§>#9§() || _loc6_.§<!e§() != b2Body.b2_dynamicBody || _loc6_.§>#9§())
            {
               this.§'#h§ |= b2internal::4$;;
            }
            else
            {
               this.§'#h§ &= ~b2internal::4$;;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§<"O§.§!!p§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§<"O§.§!!p§)
               {
                  (_loc13_ = this.§<"O§.§3!-§[_loc12_]).§5#I§ = 0;
                  _loc13_.§6L§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§^!+§.§!!p§)
                  {
                     if((_loc16_ = this.§^!+§.§3!-§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§5#I§ = _loc16_.§5#I§;
                        _loc13_.§6L§ = _loc16_.§6L§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§<"O§.§!!p§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§'#h§ |= b2internal::?"o;
         }
         else
         {
            this.§'#h§ &= ~b2internal::?"o;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§'#h§ & b2internal::+";) == 0)
         {
            param1.PreSolve(this,this.§^!+§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §#"i§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §0!e§.§^#1§.Set(this.§4"F§.GetShape());
         §0!e§.§2$A§.Set(this.§'"n§.GetShape());
         §0!e§.§[#A§ = param1;
         §0!e§.§2#u§ = param2;
         §0!e§.§<#U§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§=!F§(§0!e§);
      }
   }
}
