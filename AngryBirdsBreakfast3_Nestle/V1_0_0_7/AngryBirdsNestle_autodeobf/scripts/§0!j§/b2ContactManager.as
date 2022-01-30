package §0!j§
{
   import §!!o§.§>"#§;
   import §!!o§.b2ContactPoint;
   import §!!o§.b2DynamicTreeBroadPhase;
   import §!r§.b2internal;
   import §'!^§.b2Contact;
   import §'!^§.b2ContactEdge;
   import §'!^§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §>!5§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §!"+§:§>"#§;
      
      b2internal var §1&§:b2Contact;
      
      b2internal var §6]§:int;
      
      b2internal var §#"5§:b2ContactFilter;
      
      b2internal var §2@§:b2ContactListener;
      
      b2internal var §3!A§:b2ContactFactory;
      
      b2internal var §0!0§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§6]§ = 0;
         this.§#"5§ = b2ContactFilter.§5J§;
         this.§2@§ = b2ContactListener.§^&§;
         this.§3!A§ = new b2ContactFactory(this.§0!0§);
         this.§!"+§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §3!s§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§9n§();
         while(_loc7_)
         {
            if(_loc7_.§5"-§ == _loc5_)
            {
               _loc9_ = _loc7_.§ ;§.§01§();
               _loc10_ = _loc7_.§ ;§.§9!,§();
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
         if(_loc6_.§!S§(_loc5_) == false)
         {
            return;
         }
         if(this.§#"5§.§!S§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§3!A§.§6!#§(_loc3_,_loc4_)).§01§();
         _loc4_ = _loc8_.§9!,§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§9"4§ = null;
         _loc8_.§0!&§ = this.m_world.§1&§;
         if(this.m_world.§1&§ != null)
         {
            this.m_world.§1&§.§9"4§ = _loc8_;
         }
         this.m_world.§1&§ = _loc8_;
         _loc8_.§'k§.§ ;§ = _loc8_;
         _loc8_.§'k§.§5"-§ = _loc6_;
         _loc8_.§'k§.§+!0§ = null;
         _loc8_.§'k§.next = _loc5_.§1&§;
         if(_loc5_.§1&§ != null)
         {
            _loc5_.§1&§.§+!0§ = _loc8_.§'k§;
         }
         _loc5_.§1&§ = _loc8_.§'k§;
         _loc8_.§?!#§.§ ;§ = _loc8_;
         _loc8_.§?!#§.§5"-§ = _loc5_;
         _loc8_.§?!#§.§+!0§ = null;
         _loc8_.§?!#§.next = _loc6_.§1&§;
         if(_loc6_.§1&§ != null)
         {
            _loc6_.§1&§.§+!0§ = _loc8_.§?!#§;
         }
         _loc6_.§1&§ = _loc8_.§?!#§;
         ++this.m_world.§6]§;
      }
      
      public function §@!b§() : void
      {
         this.§!"+§.§=!W§(this.§3!s§);
      }
      
      public function §,b§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§01§();
         var _loc3_:b2Fixture = param1.§9!,§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§]x§())
         {
            this.§2@§.EndContact(param1);
         }
         if(param1.§9"4§)
         {
            param1.§9"4§.§0!&§ = param1.§0!&§;
         }
         if(param1.§0!&§)
         {
            param1.§0!&§.§9"4§ = param1.§9"4§;
         }
         if(param1 == this.m_world.§1&§)
         {
            this.m_world.§1&§ = param1.§0!&§;
         }
         if(param1.§'k§.§+!0§)
         {
            param1.§'k§.§+!0§.next = param1.§'k§.next;
         }
         if(param1.§'k§.next)
         {
            param1.§'k§.next.§+!0§ = param1.§'k§.§+!0§;
         }
         if(param1.§'k§ == _loc4_.§1&§)
         {
            _loc4_.§1&§ = param1.§'k§.next;
         }
         if(param1.§?!#§.§+!0§)
         {
            param1.§?!#§.§+!0§.next = param1.§?!#§.next;
         }
         if(param1.§?!#§.next)
         {
            param1.§?!#§.next.§+!0§ = param1.§?!#§.§+!0§;
         }
         if(param1.§?!#§ == _loc5_.§1&§)
         {
            _loc5_.§1&§ = param1.§?!#§.next;
         }
         this.§3!A§.§,b§(param1);
         --this.§6]§;
      }
      
      public function §5!"§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§1&§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§01§();
            _loc3_ = _loc1_.§9!,§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§+!E§();
            }
            else
            {
               if(_loc1_.§<!3§ & b2Contact.§>=§)
               {
                  if(_loc5_.§!S§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+!E§();
                     this.§,b§(_loc9_);
                     continue;
                  }
                  if(this.§#"5§.§!S§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+!E§();
                     this.§,b§(_loc9_);
                     continue;
                  }
                  _loc1_.§<!3§ &= ~b2Contact.§>=§;
               }
               _loc6_ = _loc2_.§"<§;
               _loc7_ = _loc3_.§"<§;
               if((_loc8_ = this.§!"+§.§?"2§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§+!E§();
                  this.§,b§(_loc9_);
               }
               else
               {
                  _loc1_.§'!l§(this.§2@§);
                  _loc1_ = _loc1_.§+!E§();
               }
            }
         }
      }
   }
}
