package §8!I§
{
   import §4x§.b2internal;
   import §<"§.§+!5§;
   import §<"§.b2ContactPoint;
   import §<"§.b2DynamicTreeBroadPhase;
   import §@!a§.b2Contact;
   import §@!a§.b2ContactEdge;
   import §@!a§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §>H§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §?D§:§+!5§;
      
      b2internal var §0-§:b2Contact;
      
      b2internal var §1!F§:int;
      
      b2internal var §`"§:b2ContactFilter;
      
      b2internal var §#l§:b2ContactListener;
      
      b2internal var §>a§:b2ContactFactory;
      
      b2internal var §=#§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§1!F§ = 0;
         this.§`"§ = b2ContactFilter.§4?§;
         this.§#l§ = b2ContactListener.§5!X§;
         this.§>a§ = new b2ContactFactory(this.§=#§);
         this.§?D§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §;!8§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§,;§();
         while(_loc7_)
         {
            if(_loc7_.§0z§ == _loc5_)
            {
               _loc9_ = _loc7_.§ M§.§#!Z§();
               _loc10_ = _loc7_.§ M§.§5A§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§>;§;
         }
         if(_loc6_.§%!B§(_loc5_) == false)
         {
            return;
         }
         if(this.§`"§.§%!B§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§>a§.§ `§(_loc3_,_loc4_)).§#!Z§();
         _loc4_ = _loc8_.§5A§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§5E§ = null;
         _loc8_.§,C§ = this.m_world.§0-§;
         if(this.m_world.§0-§ != null)
         {
            this.m_world.§0-§.§5E§ = _loc8_;
         }
         this.m_world.§0-§ = _loc8_;
         _loc8_.§5c§.§ M§ = _loc8_;
         _loc8_.§5c§.§0z§ = _loc6_;
         _loc8_.§5c§.§5>§ = null;
         _loc8_.§5c§.§>;§ = _loc5_.§0-§;
         if(_loc5_.§0-§ != null)
         {
            _loc5_.§0-§.§5>§ = _loc8_.§5c§;
         }
         _loc5_.§0-§ = _loc8_.§5c§;
         _loc8_.§'&§.§ M§ = _loc8_;
         _loc8_.§'&§.§0z§ = _loc5_;
         _loc8_.§'&§.§5>§ = null;
         _loc8_.§'&§.§>;§ = _loc6_.§0-§;
         if(_loc6_.§0-§ != null)
         {
            _loc6_.§0-§.§5>§ = _loc8_.§'&§;
         }
         _loc6_.§0-§ = _loc8_.§'&§;
         ++this.m_world.§1!F§;
      }
      
      public function §8y§() : void
      {
         this.§?D§.§""§(this.§;!8§);
      }
      
      public function §%!`§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§#!Z§();
         var _loc3_:b2Fixture = param1.§5A§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§6,§())
         {
            this.§#l§.EndContact(param1);
         }
         if(param1.§5E§)
         {
            param1.§5E§.§,C§ = param1.§,C§;
         }
         if(param1.§,C§)
         {
            param1.§,C§.§5E§ = param1.§5E§;
         }
         if(param1 == this.m_world.§0-§)
         {
            this.m_world.§0-§ = param1.§,C§;
         }
         if(param1.§5c§.§5>§)
         {
            param1.§5c§.§5>§.§>;§ = param1.§5c§.§>;§;
         }
         if(param1.§5c§.§>;§)
         {
            param1.§5c§.§>;§.§5>§ = param1.§5c§.§5>§;
         }
         if(param1.§5c§ == _loc4_.§0-§)
         {
            _loc4_.§0-§ = param1.§5c§.§>;§;
         }
         if(param1.§'&§.§5>§)
         {
            param1.§'&§.§5>§.§>;§ = param1.§'&§.§>;§;
         }
         if(param1.§'&§.§>;§)
         {
            param1.§'&§.§>;§.§5>§ = param1.§'&§.§5>§;
         }
         if(param1.§'&§ == _loc5_.§0-§)
         {
            _loc5_.§0-§ = param1.§'&§.§>;§;
         }
         this.§>a§.§%!`§(param1);
         --this.§1!F§;
      }
      
      public function §`!b§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§0-§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§#!Z§();
            _loc3_ = _loc1_.§5A§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§]S§();
            }
            else
            {
               if(_loc1_.§4!-§ & b2Contact.§,O§)
               {
                  if(_loc5_.§%!B§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§]S§();
                     this.§%!`§(_loc9_);
                     continue;
                  }
                  if(this.§`"§.§%!B§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§]S§();
                     this.§%!`§(_loc9_);
                     continue;
                  }
                  _loc1_.§4!-§ &= ~b2Contact.§,O§;
               }
               _loc6_ = _loc2_.§8!^§;
               _loc7_ = _loc3_.§8!^§;
               if((_loc8_ = this.§?D§.§!!D§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§]S§();
                  this.§%!`§(_loc9_);
               }
               else
               {
                  _loc1_.§%!W§(this.§#l§);
                  _loc1_ = _loc1_.§]S§();
               }
            }
         }
      }
   }
}
