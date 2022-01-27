package §+!,§
{
   import §%!#§.b2ContactID;
   import §%!#§.b2Manifold;
   import §%!#§.b2ManifoldPoint;
   import §%!#§.b2TOIInput;
   import §%!#§.b2TimeOfImpact;
   import §%!#§.b2WorldManifold;
   import §1x§.b2Body;
   import §1x§.b2ContactListener;
   import §1x§.b2Fixture;
   import §9!s§.b2Settings;
   import §9!s§.b2internal;
   import §[!L§.b2Shape;
   import §^>§.b2Sweep;
   import §^>§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §?h§:uint = 1;
      
      b2internal static var §<!G§:uint = 2;
      
      b2internal static var §"!M§:uint = 4;
      
      b2internal static var §;"?§:uint = 8;
      
      b2internal static var §]i§:uint = 16;
      
      b2internal static var §,j§:uint = 32;
      
      b2internal static var §7R§:uint = 64;
      
      private static var §43§:b2TOIInput = new b2TOIInput();
       
      
      private var §]"c§:Boolean = false;
      
      b2internal var §7K§:uint;
      
      b2internal var §<@§:b2Contact;
      
      b2internal var § z§:b2Contact;
      
      b2internal var §5"I§:b2ContactEdge;
      
      b2internal var §>Y§:b2ContactEdge;
      
      b2internal var §0">§:b2Fixture;
      
      b2internal var §'#'§:b2Fixture;
      
      b2internal var §&"'§:b2Manifold;
      
      b2internal var §;k§:b2Manifold;
      
      b2internal var §3!V§:Number;
      
      public function b2Contact()
      {
         this.§5"I§ = new b2ContactEdge();
         this.§>Y§ = new b2ContactEdge();
         this.§&"'§ = new b2Manifold();
         this.§;k§ = new b2Manifold();
         super();
      }
      
      public function §3"!§() : b2Manifold
      {
         return this.§&"'§;
      }
      
      public function §7!p§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§0">§.GetBody();
         var _loc3_:b2Body = this.§'#'§.GetBody();
         var _loc4_:b2Shape = this.§0">§.GetShape();
         var _loc5_:b2Shape = this.§'#'§.GetShape();
         param1.§8!s§(this.§&"'§,_loc2_.GetTransform(),_loc4_.§8!"§,_loc3_.GetTransform(),_loc5_.§8!"§);
      }
      
      public function §"!4§() : Boolean
      {
         return (this.§7K§ & b2internal::]i) == b2internal::]i;
      }
      
      public function §4!d§() : Boolean
      {
         return (this.§7K§ & b2internal::<!G) == b2internal::<!G;
      }
      
      public function §>"X§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7K§ |= b2internal::?h;
         }
         else
         {
            this.§7K§ &= ~b2internal::?h;
         }
      }
      
      public function §##-§() : Boolean
      {
         return (this.§7K§ & b2internal::?h) == b2internal::?h;
      }
      
      public function §!!_§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§7K§ |= b2internal::,j;
         }
         else
         {
            this.§7K§ &= ~b2internal::,j;
         }
      }
      
      public function §!"k§() : Boolean
      {
         return (this.§7K§ & b2internal::,j) == b2internal::,j;
      }
      
      public function §=!&§() : b2Contact
      {
         return this.§ z§;
      }
      
      public function §%$§() : b2Fixture
      {
         return this.§0">§;
      }
      
      public function §&#0§() : b2Fixture
      {
         return this.§'#'§;
      }
      
      public function §'#$§() : void
      {
         this.§7K§ |= b2internal::7R;
      }
      
      b2internal function §1"x§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§7K§ = b2internal::,j;
         if(!param1 || !param2)
         {
            this.§0">§ = null;
            this.§'#'§ = null;
            return;
         }
         if(param1.§##-§() || param2.§##-§())
         {
            this.§7K§ |= b2internal::?h;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§ "N§() != b2Body.b2_dynamicBody || _loc3_.§8"-§() || _loc4_.§ "N§() != b2Body.b2_dynamicBody || _loc4_.§8"-§())
         {
            this.§7K§ |= b2internal::<!G;
         }
         this.§0">§ = param1;
         this.§'#'§ = param2;
         this.§&"'§.§+"`§ = 0;
         this.§<@§ = null;
         this.§ z§ = null;
         this.§5"I§.§&#%§ = null;
         this.§5"I§.§^!d§ = null;
         this.§5"I§.§#!0§ = null;
         this.§5"I§.other = null;
         this.§>Y§.§&#%§ = null;
         this.§>Y§.§^!d§ = null;
         this.§>Y§.§#!0§ = null;
         this.§>Y§.other = null;
      }
      
      b2internal function §,7§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§;k§;
         this.§;k§ = this.§&"'§;
         this.§&"'§ = _loc2_;
         this.§7K§ |= b2internal::,j;
         var _loc3_:* = false;
         var _loc4_:* = (this.§7K§ & b2internal::]i) == b2internal::]i;
         if(this.§]"c§ && _loc4_)
         {
            param1.EndContact(this);
            _loc4_ = false;
            this.§7K§ &= ~b2internal::]i;
            this.§]"c§ = false;
         }
         var _loc5_:b2Body = this.§0">§.m_body;
         var _loc6_:b2Body = this.§'#'§.m_body;
         var _loc7_:Boolean = this.§0">§.§;I§.§^y§(this.§'#'§.§;I§);
         if(this.§7K§ & b2internal::?h)
         {
            if(_loc7_)
            {
               _loc8_ = this.§0">§.GetShape();
               _loc9_ = this.§'#'§.GetShape();
               _loc10_ = _loc5_.GetTransform();
               _loc11_ = _loc6_.GetTransform();
               _loc3_ = Boolean(b2Shape.§^y§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§&"'§.§+"`§ = 0;
         }
         else
         {
            if(_loc5_.§ "N§() != b2Body.b2_dynamicBody || _loc5_.§8"-§() || _loc6_.§ "N§() != b2Body.b2_dynamicBody || _loc6_.§8"-§())
            {
               this.§7K§ |= b2internal::<!G;
            }
            else
            {
               this.§7K§ &= ~b2internal::<!G;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§&"'§.§+"`§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§&"'§.§+"`§)
               {
                  (_loc13_ = this.§&"'§.§`Y§[_loc12_]).§1"9§ = 0;
                  _loc13_.§`!L§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§;k§.§+"`§)
                  {
                     if((_loc16_ = this.§;k§.§`Y§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§1"9§ = _loc16_.§1"9§;
                        _loc13_.§`!L§ = _loc16_.§`!L§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§&"'§.§+"`§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§7K§ |= b2internal::]i;
         }
         else
         {
            this.§7K§ &= ~b2internal::]i;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§7K§ & b2internal::?h) == 0)
         {
            param1.PreSolve(this,this.§;k§);
         }
      }
      
      public function reset() : void
      {
         this.§]"c§ = true;
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §&+§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §43§.§37§.Set(this.§0">§.GetShape());
         §43§.§3",§.Set(this.§'#'§.GetShape());
         §43§.§0!d§ = param1;
         §43§.§8#4§ = param2;
         §43§.§,C§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§;"f§(§43§);
      }
   }
}
