package §-0§
{
   import §&!P§.§<s§;
   import §&!P§.b2ContactPoint;
   import §&!P§.b2DynamicTreeBroadPhase;
   import §4!4§.b2Contact;
   import §4!4§.b2ContactEdge;
   import §4!4§.b2ContactFactory;
   import §@g§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §?D§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §'!1§:§<s§;
      
      b2internal var §#![§:b2Contact;
      
      b2internal var §>H§:int;
      
      b2internal var §!f§:b2ContactFilter;
      
      b2internal var §=;§:b2ContactListener;
      
      b2internal var §<!]§:b2ContactFactory;
      
      b2internal var §84§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§>H§ = 0;
         this.§!f§ = b2ContactFilter.§8&§;
         this.§=;§ = b2ContactListener.§ %§;
         this.§<!]§ = new b2ContactFactory(this.§84§);
         this.§'!1§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §+!c§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§+!?§();
         while(_loc7_)
         {
            if(_loc7_.§1!q§ == _loc5_)
            {
               _loc9_ = _loc7_.§@m§.§<D§();
               _loc10_ = _loc7_.§@m§.§5!?§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§@!A§;
         }
         if(_loc6_.§2!V§(_loc5_) == false)
         {
            return;
         }
         if(this.§!f§.§2!V§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§<!]§.§6j§(_loc3_,_loc4_)).§<D§();
         _loc4_ = _loc8_.§5!?§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§9!R§ = null;
         _loc8_.§2G§ = this.m_world.§#![§;
         if(this.m_world.§#![§ != null)
         {
            this.m_world.§#![§.§9!R§ = _loc8_;
         }
         this.m_world.§#![§ = _loc8_;
         _loc8_.§#J§.§@m§ = _loc8_;
         _loc8_.§#J§.§1!q§ = _loc6_;
         _loc8_.§#J§.§%!B§ = null;
         _loc8_.§#J§.§@!A§ = _loc5_.§#![§;
         if(_loc5_.§#![§ != null)
         {
            _loc5_.§#![§.§%!B§ = _loc8_.§#J§;
         }
         _loc5_.§#![§ = _loc8_.§#J§;
         _loc8_.§<g§.§@m§ = _loc8_;
         _loc8_.§<g§.§1!q§ = _loc5_;
         _loc8_.§<g§.§%!B§ = null;
         _loc8_.§<g§.§@!A§ = _loc6_.§#![§;
         if(_loc6_.§#![§ != null)
         {
            _loc6_.§#![§.§%!B§ = _loc8_.§<g§;
         }
         _loc6_.§#![§ = _loc8_.§<g§;
         ++this.m_world.§>H§;
      }
      
      public function §>P§() : void
      {
         this.§'!1§.§@! §(this.§+!c§);
      }
      
      public function § B§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§<D§();
         var _loc3_:b2Fixture = param1.§5!?§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§"!#§())
         {
            this.§=;§.EndContact(param1);
         }
         if(param1.§9!R§)
         {
            param1.§9!R§.§2G§ = param1.§2G§;
         }
         if(param1.§2G§)
         {
            param1.§2G§.§9!R§ = param1.§9!R§;
         }
         if(param1 == this.m_world.§#![§)
         {
            this.m_world.§#![§ = param1.§2G§;
         }
         if(param1.§#J§.§%!B§)
         {
            param1.§#J§.§%!B§.§@!A§ = param1.§#J§.§@!A§;
         }
         if(param1.§#J§.§@!A§)
         {
            param1.§#J§.§@!A§.§%!B§ = param1.§#J§.§%!B§;
         }
         if(param1.§#J§ == _loc4_.§#![§)
         {
            _loc4_.§#![§ = param1.§#J§.§@!A§;
         }
         if(param1.§<g§.§%!B§)
         {
            param1.§<g§.§%!B§.§@!A§ = param1.§<g§.§@!A§;
         }
         if(param1.§<g§.§@!A§)
         {
            param1.§<g§.§@!A§.§%!B§ = param1.§<g§.§%!B§;
         }
         if(param1.§<g§ == _loc5_.§#![§)
         {
            _loc5_.§#![§ = param1.§<g§.§@!A§;
         }
         this.§<!]§.§ B§(param1);
         --this.§>H§;
      }
      
      public function §[_§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§#![§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§<D§();
            _loc3_ = _loc1_.§5!?§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§2z§();
            }
            else
            {
               if(_loc1_.§+! § & b2Contact.§6!h§)
               {
                  if(_loc5_.§2!V§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§2z§();
                     this.§ B§(_loc9_);
                     continue;
                  }
                  if(this.§!f§.§2!V§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§2z§();
                     this.§ B§(_loc9_);
                     continue;
                  }
                  _loc1_.§+! § &= ~b2Contact.§6!h§;
               }
               _loc6_ = _loc2_.§'U§;
               _loc7_ = _loc3_.§'U§;
               if((_loc8_ = this.§'!1§.§`C§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§2z§();
                  this.§ B§(_loc9_);
               }
               else
               {
                  _loc1_.§##§(this.§=;§);
                  _loc1_ = _loc1_.§2z§();
               }
            }
         }
      }
   }
}
