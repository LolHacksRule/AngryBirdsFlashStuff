package §-"&§
{
   import §"y§.b2Shape;
   import §'F§.b2Settings;
   import §'F§.b2internal;
   import §3!`§.b2Body;
   import §3!`§.b2ContactListener;
   import §3!`§.b2Fixture;
   import §6Z§.b2Sweep;
   import §6Z§.b2Transform;
   import §^9§.b2ContactID;
   import §^9§.b2Manifold;
   import §^9§.b2ManifoldPoint;
   import §^9§.b2TOIInput;
   import §^9§.b2TimeOfImpact;
   import §^9§.b2WorldManifold;
   
   use namespace b2internal;
   
   public class b2Contact
   {
      
      b2internal static var §,R§:uint = 1;
      
      b2internal static var §#!q§:uint = 2;
      
      b2internal static var §24§:uint = 4;
      
      b2internal static var §,"-§:uint = 8;
      
      b2internal static var §<[§:uint = 16;
      
      b2internal static var §[!]§:uint = 32;
      
      b2internal static var §"8§:uint = 64;
      
      private static var §^u§:b2TOIInput = new b2TOIInput();
       
      
      b2internal var §,[§:uint;
      
      b2internal var §0!^§:b2Contact;
      
      b2internal var §0!>§:b2Contact;
      
      b2internal var §`!i§:b2ContactEdge;
      
      b2internal var §5!A§:b2ContactEdge;
      
      b2internal var §]R§:b2Fixture;
      
      b2internal var §7!&§:b2Fixture;
      
      b2internal var §=!P§:b2Manifold;
      
      b2internal var §]a§:b2Manifold;
      
      b2internal var §!S§:Number;
      
      public function b2Contact()
      {
         this.§`!i§ = new b2ContactEdge();
         this.§5!A§ = new b2ContactEdge();
         this.§=!P§ = new b2Manifold();
         this.§]a§ = new b2Manifold();
         super();
      }
      
      public function §"!^§() : b2Manifold
      {
         return this.§=!P§;
      }
      
      public function §;d§(param1:b2WorldManifold) : void
      {
         var _loc2_:b2Body = this.§]R§.GetBody();
         var _loc3_:b2Body = this.§7!&§.GetBody();
         var _loc4_:b2Shape = this.§]R§.GetShape();
         var _loc5_:b2Shape = this.§7!&§.GetShape();
         param1.§",§(this.§=!P§,_loc2_.§#%§(),_loc4_.§,!;§,_loc3_.§#%§(),_loc5_.§,!;§);
      }
      
      public function §0&§() : Boolean
      {
         return (this.§,[§ & b2internal::<[) == b2internal::<[;
      }
      
      public function §8!6§() : Boolean
      {
         return (this.§,[§ & b2internal::#!q) == b2internal::#!q;
      }
      
      public function §`!x§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,[§ |= b2internal::,R;
         }
         else
         {
            this.§,[§ &= ~b2internal::,R;
         }
      }
      
      public function §'5§() : Boolean
      {
         return (this.§,[§ & b2internal::,R) == b2internal::,R;
      }
      
      public function §'j§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§,[§ |= b2internal::[!];
         }
         else
         {
            this.§,[§ &= ~b2internal::[!];
         }
      }
      
      public function §'9§() : Boolean
      {
         return (this.§,[§ & b2internal::[!]) == b2internal::[!];
      }
      
      public function §>X§() : b2Contact
      {
         return this.§0!>§;
      }
      
      public function §&R§() : b2Fixture
      {
         return this.§]R§;
      }
      
      public function §@!,§() : b2Fixture
      {
         return this.§7!&§;
      }
      
      public function §<t§() : void
      {
         this.§,[§ |= b2internal::"8;
      }
      
      b2internal function §?!r§(param1:b2Fixture = null, param2:b2Fixture = null) : void
      {
         this.§,[§ = b2internal::[!];
         if(!param1 || !param2)
         {
            this.§]R§ = null;
            this.§7!&§ = null;
            return;
         }
         if(param1.§'5§() || param2.§'5§())
         {
            this.§,[§ |= b2internal::,R;
         }
         var _loc3_:b2Body = param1.GetBody();
         var _loc4_:b2Body = param2.GetBody();
         if(_loc3_.§<!A§() != b2Body.b2_dynamicBody || _loc3_.§@V§() || _loc4_.§<!A§() != b2Body.b2_dynamicBody || _loc4_.§@V§())
         {
            this.§,[§ |= b2internal::#!q;
         }
         this.§]R§ = param1;
         this.§7!&§ = param2;
         this.§=!P§.§26§ = 0;
         this.§0!^§ = null;
         this.§0!>§ = null;
         this.§`!i§.§;%§ = null;
         this.§`!i§.§9!b§ = null;
         this.§`!i§.next = null;
         this.§`!i§.§-!3§ = null;
         this.§5!A§.§;%§ = null;
         this.§5!A§.§9!b§ = null;
         this.§5!A§.next = null;
         this.§5!A§.§-!3§ = null;
      }
      
      b2internal function §3v§(param1:b2ContactListener) : void
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
         var _loc2_:b2Manifold = this.§]a§;
         this.§]a§ = this.§=!P§;
         this.§=!P§ = _loc2_;
         this.§,[§ |= b2internal::[!];
         var _loc3_:* = false;
         var _loc4_:* = (this.§,[§ & b2internal::<[) == b2internal::<[;
         var _loc5_:b2Body = this.§]R§.m_body;
         var _loc6_:b2Body = this.§7!&§.m_body;
         var _loc7_:Boolean = this.§]R§.§#M§.§]",§(this.§7!&§.§#M§);
         if(this.§,[§ & b2internal::,R)
         {
            if(_loc7_)
            {
               _loc8_ = this.§]R§.GetShape();
               _loc9_ = this.§7!&§.GetShape();
               _loc10_ = _loc5_.§#%§();
               _loc11_ = _loc6_.§#%§();
               _loc3_ = Boolean(b2Shape.§]",§(_loc8_,_loc10_,_loc9_,_loc11_));
            }
            this.§=!P§.§26§ = 0;
         }
         else
         {
            if(_loc5_.§<!A§() != b2Body.b2_dynamicBody || _loc5_.§@V§() || _loc6_.§<!A§() != b2Body.b2_dynamicBody || _loc6_.§@V§())
            {
               this.§,[§ |= b2internal::#!q;
            }
            else
            {
               this.§,[§ &= ~b2internal::#!q;
            }
            if(_loc7_)
            {
               this.Evaluate();
               _loc3_ = this.§=!P§.§26§ > 0;
               _loc12_ = 0;
               while(_loc12_ < this.§=!P§.§26§)
               {
                  (_loc13_ = this.§=!P§.§"A§[_loc12_]).§4!p§ = 0;
                  _loc13_.§#!h§ = 0;
                  _loc14_ = _loc13_.m_id;
                  _loc15_ = 0;
                  while(_loc15_ < this.§]a§.§26§)
                  {
                     if((_loc16_ = this.§]a§.§"A§[_loc15_]).m_id.key == _loc14_.key)
                     {
                        _loc13_.§4!p§ = _loc16_.§4!p§;
                        _loc13_.§#!h§ = _loc16_.§#!h§;
                        break;
                     }
                     _loc15_++;
                  }
                  _loc12_++;
               }
            }
            else
            {
               this.§=!P§.§26§ = 0;
            }
            if(_loc3_ != _loc4_)
            {
               _loc5_.SetAwake(true);
               _loc6_.SetAwake(true);
            }
         }
         if(_loc3_)
         {
            this.§,[§ |= b2internal::<[;
         }
         else
         {
            this.§,[§ &= ~b2internal::<[;
         }
         if(_loc4_ == false && _loc3_ == true)
         {
            param1.BeginContact(this);
         }
         if(_loc4_ == true && _loc3_ == false)
         {
            param1.EndContact(this);
         }
         if((this.§,[§ & b2internal::,R) == 0)
         {
            param1.PreSolve(this,this.§]a§);
         }
      }
      
      b2internal function Evaluate() : void
      {
      }
      
      b2internal function §1!$§(param1:b2Sweep, param2:b2Sweep) : Number
      {
         §^u§.§2J§.Set(this.§]R§.GetShape());
         §^u§.§4"$§.Set(this.§7!&§.GetShape());
         §^u§.§]!^§ = param1;
         §^u§.§2T§ = param2;
         §^u§.§"!t§ = b2Settings.b2_linearSlop;
         return b2TimeOfImpact.§!J§(§^u§);
      }
   }
}
