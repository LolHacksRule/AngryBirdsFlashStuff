package §3!`§
{
   import §'F§.b2internal;
   import §-"&§.b2Contact;
   import §-"&§.b2ContactEdge;
   import §-"&§.b2ContactFactory;
   import §^9§.§`c§;
   import §^9§.b2ContactPoint;
   import §^9§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §]" §:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §9!V§:§`c§;
      
      b2internal var §]J§:b2Contact;
      
      b2internal var §<$§:int;
      
      b2internal var §<"$§:b2ContactFilter;
      
      b2internal var §&6§:b2ContactListener;
      
      b2internal var §9!m§:b2ContactFactory;
      
      b2internal var §]"#§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§<$§ = 0;
         this.§<"$§ = b2ContactFilter.§ !G§;
         this.§&6§ = b2ContactListener.§^"%§;
         this.§9!m§ = new b2ContactFactory(this.§]"#§);
         this.§9!V§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §[[§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§9'§();
         while(_loc7_)
         {
            if(_loc7_.§-!3§ == _loc5_)
            {
               _loc9_ = _loc7_.§;%§.§&R§();
               _loc10_ = _loc7_.§;%§.§@!,§();
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
         if(_loc6_.§%g§(_loc5_) == false)
         {
            return;
         }
         if(this.§<"$§.§%g§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§9!m§.§2#§(_loc3_,_loc4_)).§&R§();
         _loc4_ = _loc8_.§@!,§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§0!^§ = null;
         _loc8_.§0!>§ = this.m_world.§]J§;
         if(this.m_world.§]J§ != null)
         {
            this.m_world.§]J§.§0!^§ = _loc8_;
         }
         this.m_world.§]J§ = _loc8_;
         _loc8_.§`!i§.§;%§ = _loc8_;
         _loc8_.§`!i§.§-!3§ = _loc6_;
         _loc8_.§`!i§.§9!b§ = null;
         _loc8_.§`!i§.next = _loc5_.§]J§;
         if(_loc5_.§]J§ != null)
         {
            _loc5_.§]J§.§9!b§ = _loc8_.§`!i§;
         }
         _loc5_.§]J§ = _loc8_.§`!i§;
         _loc8_.§5!A§.§;%§ = _loc8_;
         _loc8_.§5!A§.§-!3§ = _loc5_;
         _loc8_.§5!A§.§9!b§ = null;
         _loc8_.§5!A§.next = _loc6_.§]J§;
         if(_loc6_.§]J§ != null)
         {
            _loc6_.§]J§.§9!b§ = _loc8_.§5!A§;
         }
         _loc6_.§]J§ = _loc8_.§5!A§;
         ++this.m_world.§<$§;
      }
      
      public function §>"+§() : void
      {
         this.§9!V§.§,b§(this.§[[§);
      }
      
      public function §5f§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§&R§();
         var _loc3_:b2Fixture = param1.§@!,§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§0&§())
         {
            this.§&6§.EndContact(param1);
         }
         if(param1.§0!^§)
         {
            param1.§0!^§.§0!>§ = param1.§0!>§;
         }
         if(param1.§0!>§)
         {
            param1.§0!>§.§0!^§ = param1.§0!^§;
         }
         if(param1 == this.m_world.§]J§)
         {
            this.m_world.§]J§ = param1.§0!>§;
         }
         if(param1.§`!i§.§9!b§)
         {
            param1.§`!i§.§9!b§.next = param1.§`!i§.next;
         }
         if(param1.§`!i§.next)
         {
            param1.§`!i§.next.§9!b§ = param1.§`!i§.§9!b§;
         }
         if(param1.§`!i§ == _loc4_.§]J§)
         {
            _loc4_.§]J§ = param1.§`!i§.next;
         }
         if(param1.§5!A§.§9!b§)
         {
            param1.§5!A§.§9!b§.next = param1.§5!A§.next;
         }
         if(param1.§5!A§.next)
         {
            param1.§5!A§.next.§9!b§ = param1.§5!A§.§9!b§;
         }
         if(param1.§5!A§ == _loc5_.§]J§)
         {
            _loc5_.§]J§ = param1.§5!A§.next;
         }
         this.§9!m§.§5f§(param1);
         --this.§<$§;
      }
      
      public function §-"%§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§]J§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§&R§();
            _loc3_ = _loc1_.§@!,§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§>X§();
            }
            else
            {
               if(_loc1_.§,[§ & b2Contact.§"8§)
               {
                  if(_loc5_.§%g§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§>X§();
                     this.§5f§(_loc9_);
                     continue;
                  }
                  if(this.§<"$§.§%g§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§>X§();
                     this.§5f§(_loc9_);
                     continue;
                  }
                  _loc1_.§,[§ &= ~b2Contact.§"8§;
               }
               _loc6_ = _loc2_.§1! §;
               _loc7_ = _loc3_.§1! §;
               if((_loc8_ = this.§9!V§.§]",§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§>X§();
                  this.§5f§(_loc9_);
               }
               else
               {
                  _loc1_.§3v§(this.§&6§);
                  _loc1_ = _loc1_.§>X§();
               }
            }
         }
      }
   }
}
