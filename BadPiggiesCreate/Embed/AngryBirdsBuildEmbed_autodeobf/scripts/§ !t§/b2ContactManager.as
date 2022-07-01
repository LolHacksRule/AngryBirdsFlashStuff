package § !t§
{
   import §#A§.b2Contact;
   import §#A§.b2ContactEdge;
   import §#A§.b2ContactFactory;
   import §'!;§.§1!p§;
   import §'!;§.b2ContactPoint;
   import §'!;§.b2DynamicTreeBroadPhase;
   import §?s§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §%!Q§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §3!C§:§1!p§;
      
      b2internal var §<!T§:b2Contact;
      
      b2internal var §"Z§:int;
      
      b2internal var §7q§:b2ContactFilter;
      
      b2internal var §+!&§:b2ContactListener;
      
      b2internal var §#!$§:b2ContactFactory;
      
      b2internal var §4!5§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§"Z§ = 0;
         this.§7q§ = b2ContactFilter.§0w§;
         this.§+!&§ = b2ContactListener.§"!#§;
         this.§#!$§ = new b2ContactFactory(this.§4!5§);
         this.§3!C§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §5!S§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§>!U§();
         while(_loc7_)
         {
            if(_loc7_.§'q§ == _loc5_)
            {
               _loc9_ = _loc7_.§12§.§,^§();
               _loc10_ = _loc7_.§12§.§'!+§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§1!U§;
         }
         if(_loc6_.§`t§(_loc5_) == false)
         {
            return;
         }
         if(this.§7q§.§`t§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§#!$§.§?J§(_loc3_,_loc4_)).§,^§();
         _loc4_ = _loc8_.§'!+§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§?!D§ = null;
         _loc8_.§ <§ = this.m_world.§<!T§;
         if(this.m_world.§<!T§ != null)
         {
            this.m_world.§<!T§.§?!D§ = _loc8_;
         }
         this.m_world.§<!T§ = _loc8_;
         _loc8_.§>!3§.§12§ = _loc8_;
         _loc8_.§>!3§.§'q§ = _loc6_;
         _loc8_.§>!3§.§=6§ = null;
         _loc8_.§>!3§.§1!U§ = _loc5_.§<!T§;
         if(_loc5_.§<!T§ != null)
         {
            _loc5_.§<!T§.§=6§ = _loc8_.§>!3§;
         }
         _loc5_.§<!T§ = _loc8_.§>!3§;
         _loc8_.§1A§.§12§ = _loc8_;
         _loc8_.§1A§.§'q§ = _loc5_;
         _loc8_.§1A§.§=6§ = null;
         _loc8_.§1A§.§1!U§ = _loc6_.§<!T§;
         if(_loc6_.§<!T§ != null)
         {
            _loc6_.§<!T§.§=6§ = _loc8_.§1A§;
         }
         _loc6_.§<!T§ = _loc8_.§1A§;
         ++this.m_world.§"Z§;
      }
      
      public function §<"§() : void
      {
         this.§3!C§.§-!g§(this.§5!S§);
      }
      
      public function §;!#§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§,^§();
         var _loc3_:b2Fixture = param1.§'!+§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§`!§())
         {
            this.§+!&§.EndContact(param1);
         }
         if(param1.§?!D§)
         {
            param1.§?!D§.§ <§ = param1.§ <§;
         }
         if(param1.§ <§)
         {
            param1.§ <§.§?!D§ = param1.§?!D§;
         }
         if(param1 == this.m_world.§<!T§)
         {
            this.m_world.§<!T§ = param1.§ <§;
         }
         if(param1.§>!3§.§=6§)
         {
            param1.§>!3§.§=6§.§1!U§ = param1.§>!3§.§1!U§;
         }
         if(param1.§>!3§.§1!U§)
         {
            param1.§>!3§.§1!U§.§=6§ = param1.§>!3§.§=6§;
         }
         if(param1.§>!3§ == _loc4_.§<!T§)
         {
            _loc4_.§<!T§ = param1.§>!3§.§1!U§;
         }
         if(param1.§1A§.§=6§)
         {
            param1.§1A§.§=6§.§1!U§ = param1.§1A§.§1!U§;
         }
         if(param1.§1A§.§1!U§)
         {
            param1.§1A§.§1!U§.§=6§ = param1.§1A§.§=6§;
         }
         if(param1.§1A§ == _loc5_.§<!T§)
         {
            _loc5_.§<!T§ = param1.§1A§.§1!U§;
         }
         this.§#!$§.§;!#§(param1);
         --this.§"Z§;
      }
      
      public function §5v§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<!T§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§,^§();
            _loc3_ = _loc1_.§'!+§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§4!j§();
            }
            else
            {
               if(_loc1_.§;!n§ & b2Contact.§5!V§)
               {
                  if(_loc5_.§`t§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§4!j§();
                     this.§;!#§(_loc9_);
                     continue;
                  }
                  if(this.§7q§.§`t§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§4!j§();
                     this.§;!#§(_loc9_);
                     continue;
                  }
                  _loc1_.§;!n§ &= ~b2Contact.§5!V§;
               }
               _loc6_ = _loc2_.§-!§;
               _loc7_ = _loc3_.§-!§;
               if((_loc8_ = this.§3!C§.§,!r§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§4!j§();
                  this.§;!#§(_loc9_);
               }
               else
               {
                  _loc1_.§[;§(this.§+!&§);
                  _loc1_ = _loc1_.§4!j§();
               }
            }
         }
      }
   }
}
