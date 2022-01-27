package §'!^§
{
   import §"!w§.b2Shape;
   import §8K§.b2Settings;
   import §8K§.b2internal;
   import §;`§.b2Body;
   import §;`§.b2ContactListener;
   import §;`§.b2Fixture;
   import §>!m§.b2ContactID;
   import §>!m§.b2Manifold;
   import §>!m§.b2ManifoldPoint;
   import §>!m§.b2TOIInput;
   import §>!m§.b2TimeOfImpact;
   import §>!m§.b2WorldManifold;
   import §[!f§.b2Sweep;
   import §[!f§.b2Transform;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var § "H§:uint = 1;
      
      b2internal static var §&Z§:uint = 2;
      
      b2internal static var §'!§:uint = 4;
      
      b2internal static var §4_§:uint = 8;
      
      b2internal static var §"S§:uint = 16;
      
      b2internal static var §-!K§:uint = 32;
      
      b2internal static var §8! §:uint = 64;
      
      private static var §6"&§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §4C§:uint;
      
      b2internal var §#!o§:b2Contact;
      
      b2internal var §+!>§:b2Contact;
      
      b2internal var §5!Z§:b2ContactEdge;
      
      b2internal var §"x§:b2ContactEdge;
      
      b2internal var §@!y§:b2Fixture;
      
      b2internal var §0!O§:b2Fixture;
      
      b2internal var §@I§:b2Manifold;
      
      b2internal var §&b§:b2Manifold;
      
      b2internal var §!f§:Number;
      
      public function b2Contact()
      {
         this.§5!Z§ = new b2ContactEdge();
         this.§"x§ = new b2ContactEdge();
         this.§@I§ = new b2Manifold();
         this.§&b§ = new b2Manifold();
         super();
      }
      
      public function §6"H§() : b2Manifold
      {
         return this.§@I§;
      }
      
      public function §,2§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§@!y§.GetBody();
         var _loc3_:b2Body = this.§0!O§.GetBody();
         var _loc4_:b2Shape = this.§@!y§.GetShape();
         var _loc5_:b2Shape = this.§0!O§.GetShape();
         param1.§'m§(this.§@I§,_loc2_.§[!1§(),_loc4_.§^!G§,_loc3_.§[!1§(),_loc5_.§^!G§);
      }
      
      public function §54§() : Boolean
      {
         return (this.§4C§ & b2internal::"S) == b2internal::"S;
      }
      
      public function §2"#§() : Boolean
      {
         return (this.§4C§ & b2internal::&Z) == b2internal::&Z;
      }
      
      public function §&1§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4C§ |= b2internal:: "H;
         }
         else
         {
            this.§4C§ &= ~b2internal:: "H;
         }
      }
      
      public function §-T§() : Boolean
      {
         return (this.§4C§ & b2internal:: "H) == b2internal:: "H;
      }
      
      public function §8"9§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§4C§ |= b2internal::-!K;
         }
         else
         {
            this.§4C§ &= ~b2internal::-!K;
         }
      }
      
      public function §?!'§() : Boolean
      {
         return (this.§4C§ & b2internal::-!K) == b2internal::-!K;
      }
      
      public function §0!7§() : b2Contact
      {
         return this.§+!>§;
      }
      
      public function §']§() : b2Fixture
      {
         return this.§@!y§;
      }
      
      public function §]J§() : b2Fixture
      {
         return this.§0!O§;
      }
      
      public function §'$§() : void
      {
         this.§4C§ |= b2internal::8! ;
      }
      
      b2internal function §;c§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§4C§ = b2internal::-!K;
         if(!param1 || !param2)
         {
            this.§@!y§ = null;
            this.§0!O§ = null;
            return;
         }
         if(param1.§-T§() || param2.§-T§())
         {
            this.§4C§ |= b2internal:: "H;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§^![§() != b2Body.b2_dynamicBody || _loc3_.§^"%§() || _loc4_.§^![§() != b2Body.b2_dynamicBody || _loc4_.§^"%§())
         {
            this.§4C§ |= b2internal::&Z;
         }
         this.§@!y§ = param1;
         this.§0!O§ = param2;
         this.§@I§.§"!g§ = 0;
         this.§#!o§ = null;
         this.§+!>§ = null;
         this.§5!Z§.§9!G§ = null;
         this.§5!Z§.§+!1§ = null;
         this.§5!Z§.§@!6§ = null;
         this.§5!Z§.§%4§ = null;
         this.§"x§.§9!G§ = null;
         this.§"x§.§+!1§ = null;
         this.§"x§.§@!6§ = null;
         this.§"x§.§%4§ = null;
      }
      
      b2internal function §["@§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§&b§;
         this.§&b§ = this.§@I§;
         this.§@I§ = _loc2_;
         this.§4C§ |= b2internal::-!K;
         var _loc3_:* = false;
         var _loc4_:* = (this.§4C§ & b2internal::"S) == b2internal::"S;
         var _loc5_:b2Body = this.§@!y§.m_body;
         var _loc6_:b2Body = this.§0!O§.m_body;
         var _loc7_:Boolean = this.§@!y§.§;p§.§ "B§(this.§0!O§.§;p§);
         if(this.§4C§ & b2internal:: "H)
         {
            if(_loc7_)
            {
               _loc8_ = this.§@!y§.GetShape();
               _loc9_ = this.§0!O§.GetShape();
               _loc10_ = _loc5_.§[!1§();
               _loc11_ = _loc6_.§[!1§();
               _loc3_ = Boolean(b2Shape.§ "B§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§@I§.§"!g§ = 0;
         }
         else
         {
            if(_loc5_.§^![§() != b2Body.b2_dynamicBody || _loc5_.§^"%§() || _loc6_.§^![§() != b2Body.b2_dynamicBody || _loc6_.§^"%§())
            {
               this.§4C§ |= b2internal::&Z;
            }
            else
            {
               this.§4C§ &= ~b2internal::&Z;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§@I§.§"!g§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§@I§.§"!g§)
               {
                  (_loc13_ = this.§@I§.§9x§[_loc12_]).§3"<§ = 0;
                  _loc13_.§,"8§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§&b§.§"!g§)
                  {
                     if((_loc16_ = this.§&b§.§9x§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§3"<§ = _loc16_.§3"<§;
                        _loc13_.§,"8§ = _loc16_.§,"8§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§@I§.§"!g§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§4C§ |= b2internal::"S;
         }
         else
         {
            this.§4C§ &= ~b2internal::"S;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§4C§ & b2internal:: "H) == 0)
         {
            param1.PreSolve(this,this.§&b§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function § ! §(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §6"&§.§@!G§.Set(this.§@!y§.GetShape());
         §6"&§.§%!S§.Set(this.§0!O§.GetShape());
         §6"&§.§^!M§ = param1;
         §6"&§.§,U§ = param2;
         §6"&§.§#" § = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§7!@§(§6"&§);
      }
   }
}
