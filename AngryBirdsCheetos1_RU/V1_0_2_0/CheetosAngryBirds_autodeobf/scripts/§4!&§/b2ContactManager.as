package §4!&§
{
   import §3Z§.b2Contact;
   import §3Z§.b2ContactEdge;
   import §3Z§.b2ContactFactory;
   import §8!%§.b2internal;
   import §<!^§.§ !$§;
   import §<!^§.b2ContactPoint;
   import §<!^§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §false§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §18§:§ !$§;
      
      b2internal var §5!A§:b2Contact;
      
      b2internal var §"c§:int;
      
      b2internal var §!W§:b2ContactFilter;
      
      b2internal var §=!5§:b2ContactListener;
      
      b2internal var §?!@§:b2ContactFactory;
      
      b2internal var §-!+§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§"c§ = 0;
         this.§!W§ = b2ContactFilter.§,a§;
         this.§=!5§ = b2ContactListener.§1!F§;
         this.§?!@§ = new b2ContactFactory(this.§-!+§);
         this.§18§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §,!4§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§5n§();
         while(_loc7_)
         {
            if(_loc7_.§>+§ == _loc5_)
            {
               _loc9_ = _loc7_.§+!#§.§?7§();
               _loc10_ = _loc7_.§+!#§.§]!1§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§?c§;
         }
         if(_loc6_.§2!$§(_loc5_) == false)
         {
            return;
         }
         if(this.§!W§.§2!$§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§?!@§.§?j§(_loc3_,_loc4_)).§?7§();
         _loc4_ = _loc8_.§]!1§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§2!J§ = null;
         _loc8_.§1!A§ = this.m_world.§5!A§;
         if(this.m_world.§5!A§ != null)
         {
            this.m_world.§5!A§.§2!J§ = _loc8_;
         }
         this.m_world.§5!A§ = _loc8_;
         _loc8_.§`!X§.§+!#§ = _loc8_;
         _loc8_.§`!X§.§>+§ = _loc6_;
         _loc8_.§`!X§.§!!#§ = null;
         _loc8_.§`!X§.§?c§ = _loc5_.§5!A§;
         if(_loc5_.§5!A§ != null)
         {
            _loc5_.§5!A§.§!!#§ = _loc8_.§`!X§;
         }
         _loc5_.§5!A§ = _loc8_.§`!X§;
         _loc8_.§0!§.§+!#§ = _loc8_;
         _loc8_.§0!§.§>+§ = _loc5_;
         _loc8_.§0!§.§!!#§ = null;
         _loc8_.§0!§.§?c§ = _loc6_.§5!A§;
         if(_loc6_.§5!A§ != null)
         {
            _loc6_.§5!A§.§!!#§ = _loc8_.§0!§;
         }
         _loc6_.§5!A§ = _loc8_.§0!§;
         ++this.m_world.§"c§;
      }
      
      public function §]L§() : void
      {
         this.§18§.§!f§(this.§,!4§);
      }
      
      public function §4c§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§?7§();
         var _loc3_:b2Fixture = param1.§]!1§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§3'§())
         {
            this.§=!5§.EndContact(param1);
         }
         if(param1.§2!J§)
         {
            param1.§2!J§.§1!A§ = param1.§1!A§;
         }
         if(param1.§1!A§)
         {
            param1.§1!A§.§2!J§ = param1.§2!J§;
         }
         if(param1 == this.m_world.§5!A§)
         {
            this.m_world.§5!A§ = param1.§1!A§;
         }
         if(param1.§`!X§.§!!#§)
         {
            param1.§`!X§.§!!#§.§?c§ = param1.§`!X§.§?c§;
         }
         if(param1.§`!X§.§?c§)
         {
            param1.§`!X§.§?c§.§!!#§ = param1.§`!X§.§!!#§;
         }
         if(param1.§`!X§ == _loc4_.§5!A§)
         {
            _loc4_.§5!A§ = param1.§`!X§.§?c§;
         }
         if(param1.§0!§.§!!#§)
         {
            param1.§0!§.§!!#§.§?c§ = param1.§0!§.§?c§;
         }
         if(param1.§0!§.§?c§)
         {
            param1.§0!§.§?c§.§!!#§ = param1.§0!§.§!!#§;
         }
         if(param1.§0!§ == _loc5_.§5!A§)
         {
            _loc5_.§5!A§ = param1.§0!§.§?c§;
         }
         this.§?!@§.§4c§(param1);
         --this.§"c§;
      }
      
      public function §5-§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§5!A§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§?7§();
            _loc3_ = _loc1_.§]!1§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§'&§();
            }
            else
            {
               if(_loc1_.§'z§ & b2Contact.§4;§)
               {
                  if(_loc5_.§2!$§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§'&§();
                     this.§4c§(_loc9_);
                     continue;
                  }
                  if(this.§!W§.§2!$§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§'&§();
                     this.§4c§(_loc9_);
                     continue;
                  }
                  _loc1_.§'z§ &= ~b2Contact.§4;§;
               }
               _loc6_ = _loc2_.§=!T§;
               _loc7_ = _loc3_.§=!T§;
               if((_loc8_ = this.§18§.§]g§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§'&§();
                  this.§4c§(_loc9_);
               }
               else
               {
                  _loc1_.§@!8§(this.§=!5§);
                  _loc1_ = _loc1_.§'&§();
               }
            }
         }
      }
   }
}
