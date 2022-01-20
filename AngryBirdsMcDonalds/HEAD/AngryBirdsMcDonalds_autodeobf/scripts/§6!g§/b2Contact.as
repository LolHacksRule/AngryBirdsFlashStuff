package §6!g§
{
   import §+S§.b2Sweep;
   import §+S§.b2Transform;
   import §,!V§.b2ContactID;
   import §,!V§.b2Manifold;
   import §,!V§.b2ManifoldPoint;
   import §,!V§.b2TOIInput;
   import §,!V§.b2TimeOfImpact;
   import §,!V§.b2WorldManifold;
   import §8T§.b2Body;
   import §8T§.b2ContactListener;
   import §8T§.b2Fixture;
   import §<!D§.b2Shape;
   import §?!n§.b2Settings;
   import §?!n§.b2internal;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §<9§:uint = 1;
      
      b2internal static var §0I§:uint = 2;
      
      b2internal static var §"1§:uint = 4;
      
      b2internal static var §!2§:uint = 8;
      
      b2internal static var §-!K§:uint = 16;
      
      b2internal static var §@[§:uint = 32;
      
      b2internal static var §4q§:uint = 64;
      
      private static var §[F§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §3!V§:uint;
      
      b2internal var §7%§:b2Contact;
      
      b2internal var §[h§:b2Contact;
      
      b2internal var §`^§:b2ContactEdge;
      
      b2internal var §4!R§:b2ContactEdge;
      
      b2internal var §3!K§:b2Fixture;
      
      b2internal var §!!b§:b2Fixture;
      
      b2internal var §&!9§:b2Manifold;
      
      b2internal var §@!i§:b2Manifold;
      
      b2internal var §9D§:Number;
      
      public function b2Contact()
      {
         this.§`^§ = new b2ContactEdge();
         this.§4!R§ = new b2ContactEdge();
         this.§&!9§ = new b2Manifold();
         this.§@!i§ = new b2Manifold();
         super();
      }
      
      public function §#!k§() : b2Manifold
      {
         return this.§&!9§;
      }
      
      public function §3!9§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§3!K§.GetBody();
         var _loc3_:b2Body = this.§!!b§.GetBody();
         var _loc4_:b2Shape = this.§3!K§.GetShape();
         var _loc5_:b2Shape = this.§!!b§.GetShape();
         param1.§`!9§(this.§&!9§,_loc2_.§+!g§(),_loc4_.§0!7§,_loc3_.§+!g§(),_loc5_.§0!7§);
      }
      
      public function §?#§() : Boolean
      {
         return (this.§3!V§ & b2internal::-!K) == b2internal::-!K;
      }
      
      public function §#T§() : Boolean
      {
         return (this.§3!V§ & b2internal::0I) == b2internal::0I;
      }
      
      public function §;!H§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!V§ |= b2internal::<9;
         }
         else
         {
            this.§3!V§ &= ~b2internal::<9;
         }
      }
      
      public function §;!9§() : Boolean
      {
         return (this.§3!V§ & b2internal::<9) == b2internal::<9;
      }
      
      public function §;!G§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§3!V§ |= b2internal::@[;
         }
         else
         {
            this.§3!V§ &= ~b2internal::@[;
         }
      }
      
      public function §="§() : Boolean
      {
         return (this.§3!V§ & b2internal::@[) == b2internal::@[;
      }
      
      public function §%!J§() : b2Contact
      {
         return this.§[h§;
      }
      
      public function §8!O§() : b2Fixture
      {
         return this.§3!K§;
      }
      
      public function §>$§() : b2Fixture
      {
         return this.§!!b§;
      }
      
      public function §6&§() : void
      {
         this.§3!V§ |= b2internal::4q;
      }
      
      b2internal function §2!R§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§3!V§ = b2internal::@[;
         if(!param1 || !param2)
         {
            this.§3!K§ = null;
            this.§!!b§ = null;
            return;
         }
         if(param1.§;!9§() || param2.§;!9§())
         {
            this.§3!V§ |= b2internal::<9;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§1l§() != b2Body.b2_dynamicBody || _loc3_.§&i§() || _loc4_.§1l§() != b2Body.b2_dynamicBody || _loc4_.§&i§())
         {
            this.§3!V§ |= b2internal::0I;
         }
         this.§3!K§ = param1;
         this.§!!b§ = param2;
         this.§&!9§.§;!e§ = 0;
         this.§7%§ = null;
         this.§[h§ = null;
         this.§`^§.§]>§ = null;
         this.§`^§.§>!;§ = null;
         this.§`^§.§=h§ = null;
         this.§`^§.§#B§ = null;
         this.§4!R§.§]>§ = null;
         this.§4!R§.§>!;§ = null;
         this.§4!R§.§=h§ = null;
         this.§4!R§.§#B§ = null;
      }
      
      b2internal function §63§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§@!i§;
         this.§@!i§ = this.§&!9§;
         this.§&!9§ = _loc2_;
         this.§3!V§ |= b2internal::@[;
         var _loc3_:* = false;
         var _loc4_:* = (this.§3!V§ & b2internal::-!K) == b2internal::-!K;
         var _loc5_:b2Body = this.§3!K§.m_body;
         var _loc6_:b2Body = this.§!!b§.m_body;
         var _loc7_:Boolean = this.§3!K§.§!g§.§?3§(this.§!!b§.§!g§);
         if(this.§3!V§ & b2internal::<9)
         {
            if(_loc7_)
            {
               _loc8_ = this.§3!K§.GetShape();
               _loc9_ = this.§!!b§.GetShape();
               _loc10_ = _loc5_.§+!g§();
               _loc11_ = _loc6_.§+!g§();
               _loc3_ = Boolean(b2Shape.§?3§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§&!9§.§;!e§ = 0;
         }
         else
         {
            if(_loc5_.§1l§() != b2Body.b2_dynamicBody || _loc5_.§&i§() || _loc6_.§1l§() != b2Body.b2_dynamicBody || _loc6_.§&i§())
            {
               this.§3!V§ |= b2internal::0I;
            }
            else
            {
               this.§3!V§ &= ~b2internal::0I;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§&!9§.§;!e§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§&!9§.§;!e§)
               {
                  (_loc13_ = this.§&!9§.§[9§[_loc12_]).§^!X§ = 0;
                  _loc13_.§[n§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§@!i§.§;!e§)
                  {
                     if((_loc16_ = this.§@!i§.§[9§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§^!X§ = _loc16_.§^!X§;
                        _loc13_.§[n§ = _loc16_.§[n§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§&!9§.§;!e§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§3!V§ |= b2internal::-!K;
         }
         else
         {
            this.§3!V§ &= ~b2internal::-!K;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§3!V§ & b2internal::<9) == 0)
         {
            param1.PreSolve(this,this.§@!i§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §>Y§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §[F§.§1e§.Set(this.§3!K§.GetShape());
         §[F§.§8!"§.Set(this.§!!b§.GetShape());
         §[F§.§-H§ = param1;
         §[F§.§]!8§ = param2;
         §[F§.§8!3§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§+! §(§[F§);
      }
   }
}
