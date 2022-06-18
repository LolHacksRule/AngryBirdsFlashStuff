package §43§
{
   import §#b§.b2Shape;
   import §%!B§.b2ContactID;
   import §%!B§.b2Manifold;
   import §%!B§.b2ManifoldPoint;
   import §%!B§.b2TOIInput;
   import §%!B§.b2TimeOfImpact;
   import §%!B§.b2WorldManifold;
   import §&!B§.b2Sweep;
   import §&!B§.b2Transform;
   import §[x§.b2Body;
   import §[x§.b2ContactListener;
   import §[x§.b2Fixture;
   import §^<§.b2Settings;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §#"§:uint = 1;
      
      b2internal static var §6!%§:uint = 2;
      
      b2internal static var §1!@§:uint = 4;
      
      b2internal static var §+!§:uint = 8;
      
      b2internal static var §9o§:uint = 16;
      
      b2internal static var §=`§:uint = 32;
      
      b2internal static var §'!+§:uint = 64;
      
      private static var §96§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §`"§:uint;
      
      b2internal var §]h§:b2Contact;
      
      b2internal var §83§:b2Contact;
      
      b2internal var §;!_§:b2ContactEdge;
      
      b2internal var §17§:b2ContactEdge;
      
      b2internal var §1!I§:b2Fixture;
      
      b2internal var §1i§:b2Fixture;
      
      b2internal var §2'§:b2Manifold;
      
      b2internal var §=!9§:b2Manifold;
      
      b2internal var §5h§:Number;
      
      public function b2Contact()
      {
         this.§;!_§ = new b2ContactEdge();
         this.§17§ = new b2ContactEdge();
         this.§2'§ = new b2Manifold();
         this.§=!9§ = new b2Manifold();
         super();
      }
      
      public function §2!Q§() : b2Manifold
      {
         return this.§2'§;
      }
      
      public function §]T§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§1!I§.GetBody();
         var _loc3_:b2Body = this.§1i§.GetBody();
         var _loc4_:b2Shape = this.§1!I§.GetShape();
         var _loc5_:b2Shape = this.§1i§.GetShape();
         param1.§8#§(this.§2'§,_loc2_.§4g§(),_loc4_.§!!`§,_loc3_.§4g§(),_loc5_.§!!`§);
      }
      
      public function §%!E§() : Boolean
      {
         return (this.§`"§ & b2internal::9o) == b2internal::9o;
      }
      
      public function §2!%§() : Boolean
      {
         return (this.§`"§ & b2internal::6!%) == b2internal::6!%;
      }
      
      public function §-!+§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"§ |= b2internal::#";
         }
         else
         {
            this.§`"§ &= ~b2internal::#";
         }
      }
      
      public function §9#§() : Boolean
      {
         return (this.§`"§ & b2internal::#") == b2internal::#";
      }
      
      public function §+!N§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§`"§ |= b2internal::=`;
         }
         else
         {
            this.§`"§ &= ~b2internal::=`;
         }
      }
      
      public function §0K§() : Boolean
      {
         return (this.§`"§ & b2internal::=`) == b2internal::=`;
      }
      
      public function §&-§() : b2Contact
      {
         return this.§83§;
      }
      
      public function §31§() : b2Fixture
      {
         return this.§1!I§;
      }
      
      public function §;!E§() : b2Fixture
      {
         return this.§1i§;
      }
      
      public function §!!3§() : void
      {
         this.§`"§ |= b2internal::'!+;
      }
      
      b2internal function §^5§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§`"§ = b2internal::=`;
         if(!param1 || !param2)
         {
            this.§1!I§ = null;
            this.§1i§ = null;
            return;
         }
         if(param1.§9#§() || param2.§9#§())
         {
            this.§`"§ |= b2internal::#";
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§=!,§() != b2Body.b2_dynamicBody || _loc3_.§4!F§() || _loc4_.§=!,§() != b2Body.b2_dynamicBody || _loc4_.§4!F§())
         {
            this.§`"§ |= b2internal::6!%;
         }
         this.§1!I§ = param1;
         this.§1i§ = param2;
         this.§2'§.§>#§ = 0;
         this.§]h§ = null;
         this.§83§ = null;
         this.§;!_§.§#0§ = null;
         this.§;!_§.§`!,§ = null;
         this.§;!_§.§;! § = null;
         this.§;!_§.§]!P§ = null;
         this.§17§.§#0§ = null;
         this.§17§.§`!,§ = null;
         this.§17§.§;! § = null;
         this.§17§.§]!P§ = null;
      }
      
      b2internal function §6E§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§=!9§;
         this.§=!9§ = this.§2'§;
         this.§2'§ = _loc2_;
         this.§`"§ |= b2internal::=`;
         var _loc3_:* = false;
         var _loc4_:* = (this.§`"§ & b2internal::9o) == b2internal::9o;
         var _loc5_:b2Body = this.§1!I§.m_body;
         var _loc6_:b2Body = this.§1i§.m_body;
         var _loc7_:Boolean = this.§1!I§.§[!%§.§8!X§(this.§1i§.§[!%§);
         if(this.§`"§ & b2internal::#")
         {
            if(_loc7_)
            {
               _loc8_ = this.§1!I§.GetShape();
               _loc9_ = this.§1i§.GetShape();
               _loc10_ = _loc5_.§4g§();
               _loc11_ = _loc6_.§4g§();
               _loc3_ = Boolean(b2Shape.§8!X§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§2'§.§>#§ = 0;
         }
         else
         {
            if(_loc5_.§=!,§() != b2Body.b2_dynamicBody || _loc5_.§4!F§() || _loc6_.§=!,§() != b2Body.b2_dynamicBody || _loc6_.§4!F§())
            {
               this.§`"§ |= b2internal::6!%;
            }
            else
            {
               this.§`"§ &= ~b2internal::6!%;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§2'§.§>#§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§2'§.§>#§)
               {
                  (_loc13_ = this.§2'§.§%!C§[_loc12_]).§"I§ = 0;
                  _loc13_.§4!&§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§=!9§.§>#§)
                  {
                     if((_loc16_ = this.§=!9§.§%!C§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§"I§ = _loc16_.§"I§;
                        _loc13_.§4!&§ = _loc16_.§4!&§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§2'§.§>#§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§`"§ |= b2internal::9o;
         }
         else
         {
            this.§`"§ &= ~b2internal::9o;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§`"§ & b2internal::#") == 0)
         {
            param1.PreSolve(this,this.§=!9§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §9T§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §96§.§8!=§.Set(this.§1!I§.GetShape());
         §96§.§0A§.Set(this.§1i§.GetShape());
         §96§.§1@§ = param1;
         §96§.§^!1§ = param2;
         §96§.§]k§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§9p§(§96§);
      }
   }
}
