package §`j§
{
   import §2!F§.b2internal;
   import §8Y§.b2Contact;
   import §8Y§.b2ContactEdge;
   import §8Y§.b2ContactFactory;
   import §9"§.§>![§;
   import §9"§.b2ContactPoint;
   import §9"§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §-!V§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §;!=§:§>![§;
      
      b2internal var §=-§:b2Contact;
      
      b2internal var §7M§:int;
      
      b2internal var §]!8§:b2ContactFilter;
      
      b2internal var §"1§:b2ContactListener;
      
      b2internal var §,!,§:b2ContactFactory;
      
      b2internal var §,]§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§7M§ = 0;
         this.§]!8§ = b2ContactFilter.§+! §;
         this.§"1§ = b2ContactListener.§[Q§;
         this.§,!,§ = new b2ContactFactory(this.§,]§);
         this.§;!=§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §#!S§(param1:*, param2:*) : void
      {
         var _loc9_:b2Fixture = null;
         var _loc10_:b2Fixture = null;
         var _loc3_:b2Fixture = param1 as b2Fixture;
         var _loc4_:b2Fixture = param2 as b2Fixture;
         var _loc5_:b2Body = _loc3_.GetBody();
         var _loc6_:b2Body = _loc4_.GetBody();
         if(_loc5_ == _loc6_)
         {
            return;
         }
         var _loc7_:b2ContactEdge = _loc6_.§6q§();
         while(_loc7_)
         {
            if(_loc7_.§3!>§ == _loc5_)
            {
               _loc9_ = _loc7_.§"!$§.§&^§();
               _loc10_ = _loc7_.§"!$§.§7I§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§%Y§;
         }
         if(_loc6_.§`V§(_loc5_) == false)
         {
            return;
         }
         if(this.§]!8§.§`V§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§,!,§.§>y§(_loc3_,_loc4_)).§&^§();
         _loc4_ = _loc8_.§7I§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§8`§ = null;
         _loc8_.§#!&§ = this.m_world.§=-§;
         if(this.m_world.§=-§ != null)
         {
            this.m_world.§=-§.§8`§ = _loc8_;
         }
         this.m_world.§=-§ = _loc8_;
         _loc8_.§!!7§.§"!$§ = _loc8_;
         _loc8_.§!!7§.§3!>§ = _loc6_;
         _loc8_.§!!7§.§;!Z§ = null;
         _loc8_.§!!7§.§%Y§ = _loc5_.§=-§;
         if(_loc5_.§=-§ != null)
         {
            _loc5_.§=-§.§;!Z§ = _loc8_.§!!7§;
         }
         _loc5_.§=-§ = _loc8_.§!!7§;
         _loc8_.§7a§.§"!$§ = _loc8_;
         _loc8_.§7a§.§3!>§ = _loc5_;
         _loc8_.§7a§.§;!Z§ = null;
         _loc8_.§7a§.§%Y§ = _loc6_.§=-§;
         if(_loc6_.§=-§ != null)
         {
            _loc6_.§=-§.§;!Z§ = _loc8_.§7a§;
         }
         _loc6_.§=-§ = _loc8_.§7a§;
         ++this.m_world.§7M§;
      }
      
      public function §&k§() : void
      {
         this.§;!=§.§=h§(this.§#!S§);
      }
      
      public function §;@§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§&^§();
         var _loc3_:b2Fixture = param1.§7I§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§=^§())
         {
            this.§"1§.EndContact(param1);
         }
         if(param1.§8`§)
         {
            param1.§8`§.§#!&§ = param1.§#!&§;
         }
         if(param1.§#!&§)
         {
            param1.§#!&§.§8`§ = param1.§8`§;
         }
         if(param1 == this.m_world.§=-§)
         {
            this.m_world.§=-§ = param1.§#!&§;
         }
         if(param1.§!!7§.§;!Z§)
         {
            param1.§!!7§.§;!Z§.§%Y§ = param1.§!!7§.§%Y§;
         }
         if(param1.§!!7§.§%Y§)
         {
            param1.§!!7§.§%Y§.§;!Z§ = param1.§!!7§.§;!Z§;
         }
         if(param1.§!!7§ == _loc4_.§=-§)
         {
            _loc4_.§=-§ = param1.§!!7§.§%Y§;
         }
         if(param1.§7a§.§;!Z§)
         {
            param1.§7a§.§;!Z§.§%Y§ = param1.§7a§.§%Y§;
         }
         if(param1.§7a§.§%Y§)
         {
            param1.§7a§.§%Y§.§;!Z§ = param1.§7a§.§;!Z§;
         }
         if(param1.§7a§ == _loc5_.§=-§)
         {
            _loc5_.§=-§ = param1.§7a§.§%Y§;
         }
         this.§,!,§.§;@§(param1);
         --this.§7M§;
      }
      
      public function §73§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§=-§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§&^§();
            _loc3_ = _loc1_.§7I§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§[;§();
            }
            else
            {
               if(_loc1_.§@x§ & b2Contact.§45§)
               {
                  if(_loc5_.§`V§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§[;§();
                     this.§;@§(_loc9_);
                     continue;
                  }
                  if(this.§]!8§.§`V§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§[;§();
                     this.§;@§(_loc9_);
                     continue;
                  }
                  _loc1_.§@x§ &= ~b2Contact.§45§;
               }
               _loc6_ = _loc2_.§!§;
               _loc7_ = _loc3_.§!§;
               if((_loc8_ = this.§;!=§.§[!K§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§[;§();
                  this.§;@§(_loc9_);
               }
               else
               {
                  _loc1_.§?!R§(this.§"1§);
                  _loc1_ = _loc1_.§[;§();
               }
            }
         }
      }
   }
}
