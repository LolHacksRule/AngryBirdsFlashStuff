package §=!c§
{
   import §-j§.§3!6§;
   import §-j§.b2ContactPoint;
   import §-j§.b2DynamicTreeBroadPhase;
   import §2"%§.b2Contact;
   import §2"%§.b2ContactEdge;
   import §2"%§.b2ContactFactory;
   import §7!F§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §1"0§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §>T§:§3!6§;
      
      b2internal var §[!v§:b2Contact;
      
      b2internal var §+h§:int;
      
      b2internal var §1h§:b2ContactFilter;
      
      b2internal var §+"-§:b2ContactListener;
      
      b2internal var §4"4§:b2ContactFactory;
      
      b2internal var §""0§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§+h§ = 0;
         this.§1h§ = b2ContactFilter.§1!l§;
         this.§+"-§ = b2ContactListener.§4!R§;
         this.§4"4§ = new b2ContactFactory(this.§""0§);
         this.§>T§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §#E§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§^!8§();
         while(_loc7_)
         {
            if(_loc7_.§!!9§ == _loc5_)
            {
               _loc9_ = _loc7_.§`Z§.§^h§();
               _loc10_ = _loc7_.§`Z§.§9!v§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.next;
         }
         if(_loc6_.§<z§(_loc5_) == false)
         {
            return;
         }
         if(this.§1h§.§<z§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§4"4§.§<!n§(_loc3_,_loc4_)).§^h§();
         _loc4_ = _loc8_.§9!v§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§^!`§ = null;
         _loc8_.§4!c§ = this.m_world.§[!v§;
         if(this.m_world.§[!v§ != null)
         {
            this.m_world.§[!v§.§^!`§ = _loc8_;
         }
         this.m_world.§[!v§ = _loc8_;
         _loc8_.§;O§.§`Z§ = _loc8_;
         _loc8_.§;O§.§!!9§ = _loc6_;
         _loc8_.§;O§.§]K§ = null;
         _loc8_.§;O§.next = _loc5_.§[!v§;
         if(_loc5_.§[!v§ != null)
         {
            _loc5_.§[!v§.§]K§ = _loc8_.§;O§;
         }
         _loc5_.§[!v§ = _loc8_.§;O§;
         _loc8_.§7"4§.§`Z§ = _loc8_;
         _loc8_.§7"4§.§!!9§ = _loc5_;
         _loc8_.§7"4§.§]K§ = null;
         _loc8_.§7"4§.next = _loc6_.§[!v§;
         if(_loc6_.§[!v§ != null)
         {
            _loc6_.§[!v§.§]K§ = _loc8_.§7"4§;
         }
         _loc6_.§[!v§ = _loc8_.§7"4§;
         ++this.m_world.§+h§;
      }
      
      public function §?B§() : void
      {
         this.§>T§.§%C§(this.§#E§);
      }
      
      public function §6!j§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§^h§();
         var _loc3_:b2Fixture = param1.§9!v§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§#!f§())
         {
            this.§+"-§.EndContact(param1);
         }
         if(param1.§^!`§)
         {
            param1.§^!`§.§4!c§ = param1.§4!c§;
         }
         if(param1.§4!c§)
         {
            param1.§4!c§.§^!`§ = param1.§^!`§;
         }
         if(param1 == this.m_world.§[!v§)
         {
            this.m_world.§[!v§ = param1.§4!c§;
         }
         if(param1.§;O§.§]K§)
         {
            param1.§;O§.§]K§.next = param1.§;O§.next;
         }
         if(param1.§;O§.next)
         {
            param1.§;O§.next.§]K§ = param1.§;O§.§]K§;
         }
         if(param1.§;O§ == _loc4_.§[!v§)
         {
            _loc4_.§[!v§ = param1.§;O§.next;
         }
         if(param1.§7"4§.§]K§)
         {
            param1.§7"4§.§]K§.next = param1.§7"4§.next;
         }
         if(param1.§7"4§.next)
         {
            param1.§7"4§.next.§]K§ = param1.§7"4§.§]K§;
         }
         if(param1.§7"4§ == _loc5_.§[!v§)
         {
            _loc5_.§[!v§ = param1.§7"4§.next;
         }
         this.§4"4§.§6!j§(param1);
         --this.§+h§;
      }
      
      public function §]!p§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§[!v§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§^h§();
            _loc3_ = _loc1_.§9!v§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§<b§();
            }
            else
            {
               if(_loc1_.§8!5§ & b2Contact.§1&§)
               {
                  if(_loc5_.§<z§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§<b§();
                     this.§6!j§(_loc9_);
                     continue;
                  }
                  if(this.§1h§.§<z§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§<b§();
                     this.§6!j§(_loc9_);
                     continue;
                  }
                  _loc1_.§8!5§ &= ~b2Contact.§1&§;
               }
               _loc6_ = _loc2_.§]!L§;
               _loc7_ = _loc3_.§]!L§;
               if((_loc8_ = this.§>T§.§^s§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§<b§();
                  this.§6!j§(_loc9_);
               }
               else
               {
                  _loc1_.§]!A§(this.§+"-§);
                  _loc1_ = _loc1_.§<b§();
               }
            }
         }
      }
   }
}
