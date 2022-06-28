package § D§
{
   import §&!-§.§>D§;
   import §&!-§.b2ContactPoint;
   import §&!-§.b2DynamicTreeBroadPhase;
   import §7a§.b2Contact;
   import §7a§.b2ContactEdge;
   import §7a§.b2ContactFactory;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §61§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §0G§:§>D§;
      
      b2internal var §#!u§:b2Contact;
      
      b2internal var §#4§:int;
      
      b2internal var §0!A§:b2ContactFilter;
      
      b2internal var §,!§:b2ContactListener;
      
      b2internal var § '§:b2ContactFactory;
      
      b2internal var §>#§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§#4§ = 0;
         this.§0!A§ = b2ContactFilter.§5!7§;
         this.§,!§ = b2ContactListener.§-!c§;
         this.§ '§ = new b2ContactFactory(this.§>#§);
         this.§0G§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §8?§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§=!-§();
         while(_loc7_)
         {
            if(_loc7_.§<!-§ == _loc5_)
            {
               _loc9_ = _loc7_.§58§.§5J§();
               _loc10_ = _loc7_.§58§.§@!X§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§0e§;
         }
         if(_loc6_.§>?§(_loc5_) == false)
         {
            return;
         }
         if(this.§0!A§.§>?§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§ '§.§5=§(_loc3_,_loc4_)).§5J§();
         _loc4_ = _loc8_.§@!X§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§4!7§ = null;
         _loc8_.§7n§ = this.m_world.§#!u§;
         if(this.m_world.§#!u§ != null)
         {
            this.m_world.§#!u§.§4!7§ = _loc8_;
         }
         this.m_world.§#!u§ = _loc8_;
         _loc8_.§#f§.§58§ = _loc8_;
         _loc8_.§#f§.§<!-§ = _loc6_;
         _loc8_.§#f§.§7!J§ = null;
         _loc8_.§#f§.§0e§ = _loc5_.§#!u§;
         if(_loc5_.§#!u§ != null)
         {
            _loc5_.§#!u§.§7!J§ = _loc8_.§#f§;
         }
         _loc5_.§#!u§ = _loc8_.§#f§;
         _loc8_.§?§.§58§ = _loc8_;
         _loc8_.§?§.§<!-§ = _loc5_;
         _loc8_.§?§.§7!J§ = null;
         _loc8_.§?§.§0e§ = _loc6_.§#!u§;
         if(_loc6_.§#!u§ != null)
         {
            _loc6_.§#!u§.§7!J§ = _loc8_.§?§;
         }
         _loc6_.§#!u§ = _loc8_.§?§;
         ++this.m_world.§#4§;
      }
      
      public function §4!K§() : void
      {
         this.§0G§.§`h§(this.§8?§);
      }
      
      public function §"L§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§5J§();
         var _loc3_:b2Fixture = param1.§@!X§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§8]§())
         {
            this.§,!§.EndContact(param1);
         }
         if(param1.§4!7§)
         {
            param1.§4!7§.§7n§ = param1.§7n§;
         }
         if(param1.§7n§)
         {
            param1.§7n§.§4!7§ = param1.§4!7§;
         }
         if(param1 == this.m_world.§#!u§)
         {
            this.m_world.§#!u§ = param1.§7n§;
         }
         if(param1.§#f§.§7!J§)
         {
            param1.§#f§.§7!J§.§0e§ = param1.§#f§.§0e§;
         }
         if(param1.§#f§.§0e§)
         {
            param1.§#f§.§0e§.§7!J§ = param1.§#f§.§7!J§;
         }
         if(param1.§#f§ == _loc4_.§#!u§)
         {
            _loc4_.§#!u§ = param1.§#f§.§0e§;
         }
         if(param1.§?§.§7!J§)
         {
            param1.§?§.§7!J§.§0e§ = param1.§?§.§0e§;
         }
         if(param1.§?§.§0e§)
         {
            param1.§?§.§0e§.§7!J§ = param1.§?§.§7!J§;
         }
         if(param1.§?§ == _loc5_.§#!u§)
         {
            _loc5_.§#!u§ = param1.§?§.§0e§;
         }
         this.§ '§.§"L§(param1);
         --this.§#4§;
      }
      
      public function §-0§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§#!u§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§5J§();
            _loc3_ = _loc1_.§@!X§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§2!g§();
            }
            else
            {
               if(_loc1_.§ !<§ & b2Contact.§2!t§)
               {
                  if(_loc5_.§>?§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§2!g§();
                     this.§"L§(_loc9_);
                     continue;
                  }
                  if(this.§0!A§.§>?§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§2!g§();
                     this.§"L§(_loc9_);
                     continue;
                  }
                  _loc1_.§ !<§ &= ~b2Contact.§2!t§;
               }
               _loc6_ = _loc2_.§"!X§;
               _loc7_ = _loc3_.§"!X§;
               if((_loc8_ = this.§0G§.§'V§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§2!g§();
                  this.§"L§(_loc9_);
               }
               else
               {
                  _loc1_.§5>§(this.§,!§);
                  _loc1_ = _loc1_.§2!g§();
               }
            }
         }
      }
   }
}
