package §=!U§
{
   import §"!R§.b2internal;
   import §;!7§.§>c§;
   import §;!7§.b2ContactPoint;
   import §;!7§.b2DynamicTreeBroadPhase;
   import §@M§.b2Contact;
   import §@M§.b2ContactEdge;
   import §@M§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §!k§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §6M§:§>c§;
      
      b2internal var §,!d§:b2Contact;
      
      b2internal var § r§:int;
      
      b2internal var §%n§:b2ContactFilter;
      
      b2internal var §9c§:b2ContactListener;
      
      b2internal var §#L§:b2ContactFactory;
      
      b2internal var §2!Q§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§ r§ = 0;
         this.§%n§ = b2ContactFilter.§ !=§;
         this.§9c§ = b2ContactListener.§,!Z§;
         this.§#L§ = new b2ContactFactory(this.§2!Q§);
         this.§6M§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §^!?§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§8!=§();
         while(_loc7_)
         {
            if(_loc7_.§0!=§ == _loc5_)
            {
               _loc9_ = _loc7_.§#^§.§ !N§();
               _loc10_ = _loc7_.§#^§.§^9§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§>C§;
         }
         if(_loc6_.§]=§(_loc5_) == false)
         {
            return;
         }
         if(this.§%n§.§]=§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§#L§.§0!^§(_loc3_,_loc4_)).§ !N§();
         _loc4_ = _loc8_.§^9§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§-s§ = null;
         _loc8_.§9`§ = this.m_world.§,!d§;
         if(this.m_world.§,!d§ != null)
         {
            this.m_world.§,!d§.§-s§ = _loc8_;
         }
         this.m_world.§,!d§ = _loc8_;
         _loc8_.§%4§.§#^§ = _loc8_;
         _loc8_.§%4§.§0!=§ = _loc6_;
         _loc8_.§%4§.§6!=§ = null;
         _loc8_.§%4§.§>C§ = _loc5_.§,!d§;
         if(_loc5_.§,!d§ != null)
         {
            _loc5_.§,!d§.§6!=§ = _loc8_.§%4§;
         }
         _loc5_.§,!d§ = _loc8_.§%4§;
         _loc8_.§%P§.§#^§ = _loc8_;
         _loc8_.§%P§.§0!=§ = _loc5_;
         _loc8_.§%P§.§6!=§ = null;
         _loc8_.§%P§.§>C§ = _loc6_.§,!d§;
         if(_loc6_.§,!d§ != null)
         {
            _loc6_.§,!d§.§6!=§ = _loc8_.§%P§;
         }
         _loc6_.§,!d§ = _loc8_.§%P§;
         ++this.m_world.§ r§;
      }
      
      public function §<P§() : void
      {
         this.§6M§.§]5§(this.§^!?§);
      }
      
      public function §9!K§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§ !N§();
         var _loc3_:b2Fixture = param1.§^9§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§0! §())
         {
            this.§9c§.EndContact(param1);
         }
         if(param1.§-s§)
         {
            param1.§-s§.§9`§ = param1.§9`§;
         }
         if(param1.§9`§)
         {
            param1.§9`§.§-s§ = param1.§-s§;
         }
         if(param1 == this.m_world.§,!d§)
         {
            this.m_world.§,!d§ = param1.§9`§;
         }
         if(param1.§%4§.§6!=§)
         {
            param1.§%4§.§6!=§.§>C§ = param1.§%4§.§>C§;
         }
         if(param1.§%4§.§>C§)
         {
            param1.§%4§.§>C§.§6!=§ = param1.§%4§.§6!=§;
         }
         if(param1.§%4§ == _loc4_.§,!d§)
         {
            _loc4_.§,!d§ = param1.§%4§.§>C§;
         }
         if(param1.§%P§.§6!=§)
         {
            param1.§%P§.§6!=§.§>C§ = param1.§%P§.§>C§;
         }
         if(param1.§%P§.§>C§)
         {
            param1.§%P§.§>C§.§6!=§ = param1.§%P§.§6!=§;
         }
         if(param1.§%P§ == _loc5_.§,!d§)
         {
            _loc5_.§,!d§ = param1.§%P§.§>C§;
         }
         this.§#L§.§9!K§(param1);
         --this.§ r§;
      }
      
      public function §5f§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§,!d§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§ !N§();
            _loc3_ = _loc1_.§^9§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§^r§();
            }
            else
            {
               if(_loc1_.§"_§ & b2Contact.§<!6§)
               {
                  if(_loc5_.§]=§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§^r§();
                     this.§9!K§(_loc9_);
                     continue;
                  }
                  if(this.§%n§.§]=§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§^r§();
                     this.§9!K§(_loc9_);
                     continue;
                  }
                  _loc1_.§"_§ &= ~b2Contact.§<!6§;
               }
               _loc6_ = _loc2_.§86§;
               _loc7_ = _loc3_.§86§;
               if((_loc8_ = this.§6M§.§2<§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§^r§();
                  this.§9!K§(_loc9_);
               }
               else
               {
                  _loc1_.§%R§(this.§9c§);
                  _loc1_ = _loc1_.§^r§();
               }
            }
         }
      }
   }
}
