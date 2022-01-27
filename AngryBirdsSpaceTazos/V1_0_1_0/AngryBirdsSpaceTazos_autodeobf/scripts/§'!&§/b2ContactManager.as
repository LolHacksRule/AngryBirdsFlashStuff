package §'!&§
{
   import §3c§.§>!e§;
   import §3c§.b2ContactPoint;
   import §3c§.b2DynamicTreeBroadPhase;
   import §=!n§.b2Contact;
   import §=!n§.b2ContactEdge;
   import §=!n§.b2ContactFactory;
   import §@!'§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §#,§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §2"$§:§>!e§;
      
      b2internal var §1!Z§:b2Contact;
      
      b2internal var §3!G§:int;
      
      b2internal var §?"8§:b2ContactFilter;
      
      b2internal var §0Q§:b2ContactListener;
      
      b2internal var §2!P§:b2ContactFactory;
      
      b2internal var § B§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§3!G§ = 0;
         this.§?"8§ = b2ContactFilter.§'!7§;
         this.§0Q§ = b2ContactListener.§,!6§;
         this.§2!P§ = new b2ContactFactory(this.§ B§);
         this.§2"$§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §;X§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§<!r§();
         while(_loc7_)
         {
            if(_loc7_.§1!>§ == _loc5_)
            {
               _loc9_ = _loc7_.§%!b§.§'J§();
               _loc10_ = _loc7_.§%!b§.§#"%§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§ X§;
         }
         if(_loc6_.§!!Z§(_loc5_) == false)
         {
            return;
         }
         if(this.§?"8§.§!!Z§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§2!P§.§]H§(_loc3_,_loc4_)).§'J§();
         _loc4_ = _loc8_.§#"%§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§20§ = null;
         _loc8_.§+!o§ = this.m_world.§1!Z§;
         if(this.m_world.§1!Z§ != null)
         {
            this.m_world.§1!Z§.§20§ = _loc8_;
         }
         this.m_world.§1!Z§ = _loc8_;
         _loc8_.§?s§.§%!b§ = _loc8_;
         _loc8_.§?s§.§1!>§ = _loc6_;
         _loc8_.§?s§.§8!$§ = null;
         _loc8_.§?s§.§ X§ = _loc5_.§1!Z§;
         if(_loc5_.§1!Z§ != null)
         {
            _loc5_.§1!Z§.§8!$§ = _loc8_.§?s§;
         }
         _loc5_.§1!Z§ = _loc8_.§?s§;
         _loc8_.§ E§.§%!b§ = _loc8_;
         _loc8_.§ E§.§1!>§ = _loc5_;
         _loc8_.§ E§.§8!$§ = null;
         _loc8_.§ E§.§ X§ = _loc6_.§1!Z§;
         if(_loc6_.§1!Z§ != null)
         {
            _loc6_.§1!Z§.§8!$§ = _loc8_.§ E§;
         }
         _loc6_.§1!Z§ = _loc8_.§ E§;
         ++this.m_world.§3!G§;
      }
      
      public function §^!A§() : void
      {
         this.§2"$§.§ J§(this.§;X§);
      }
      
      public function §^!a§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§'J§();
         var _loc3_:b2Fixture = param1.§#"%§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§]Q§())
         {
            this.§0Q§.EndContact(param1);
         }
         if(param1.§20§)
         {
            param1.§20§.§+!o§ = param1.§+!o§;
         }
         if(param1.§+!o§)
         {
            param1.§+!o§.§20§ = param1.§20§;
         }
         if(param1 == this.m_world.§1!Z§)
         {
            this.m_world.§1!Z§ = param1.§+!o§;
         }
         if(param1.§?s§.§8!$§)
         {
            param1.§?s§.§8!$§.§ X§ = param1.§?s§.§ X§;
         }
         if(param1.§?s§.§ X§)
         {
            param1.§?s§.§ X§.§8!$§ = param1.§?s§.§8!$§;
         }
         if(param1.§?s§ == _loc4_.§1!Z§)
         {
            _loc4_.§1!Z§ = param1.§?s§.§ X§;
         }
         if(param1.§ E§.§8!$§)
         {
            param1.§ E§.§8!$§.§ X§ = param1.§ E§.§ X§;
         }
         if(param1.§ E§.§ X§)
         {
            param1.§ E§.§ X§.§8!$§ = param1.§ E§.§8!$§;
         }
         if(param1.§ E§ == _loc5_.§1!Z§)
         {
            _loc5_.§1!Z§ = param1.§ E§.§ X§;
         }
         this.§2!P§.§^!a§(param1);
         --this.§3!G§;
      }
      
      public function §%!L§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§1!Z§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§'J§();
            _loc3_ = _loc1_.§#"%§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§`!y§();
            }
            else
            {
               if(_loc1_.§0" § & b2Contact.§+a§)
               {
                  if(_loc5_.§!!Z§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§`!y§();
                     this.§^!a§(_loc9_);
                     continue;
                  }
                  if(this.§?"8§.§!!Z§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§`!y§();
                     this.§^!a§(_loc9_);
                     continue;
                  }
                  _loc1_.§0" § &= ~b2Contact.§+a§;
               }
               _loc6_ = _loc2_.§@L§;
               _loc7_ = _loc3_.§@L§;
               if((_loc8_ = this.§2"$§.§5"0§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§`!y§();
                  this.§^!a§(_loc9_);
               }
               else
               {
                  _loc1_.§]P§(this.§0Q§);
                  _loc1_ = _loc1_.§`!y§();
               }
            }
         }
      }
   }
}
