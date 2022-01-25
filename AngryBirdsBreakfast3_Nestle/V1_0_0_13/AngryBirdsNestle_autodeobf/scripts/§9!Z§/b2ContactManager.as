package §9!Z§
{
   import §'I§.b2internal;
   import §7!&§.§;!p§;
   import §7!&§.b2ContactPoint;
   import §7!&§.b2DynamicTreeBroadPhase;
   import §[K§.b2Contact;
   import §[K§.b2ContactEdge;
   import §[K§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §7%§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §]"4§:§;!p§;
      
      b2internal var §-!x§:b2Contact;
      
      b2internal var §,!f§:int;
      
      b2internal var §7!=§:b2ContactFilter;
      
      b2internal var §7S§:b2ContactListener;
      
      b2internal var §5!J§:b2ContactFactory;
      
      b2internal var §5!A§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§,!f§ = 0;
         this.§7!=§ = b2ContactFilter.§=!z§;
         this.§7S§ = b2ContactListener.§ !%§;
         this.§5!J§ = new b2ContactFactory(this.§5!A§);
         this.§]"4§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §@"&§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§+@§();
         while(_loc7_)
         {
            if(_loc7_.§"!$§ == _loc5_)
            {
               _loc9_ = _loc7_.§1!z§.§@"0§();
               _loc10_ = _loc7_.§1!z§.§!!Z§();
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
         if(_loc6_.§3m§(_loc5_) == false)
         {
            return;
         }
         if(this.§7!=§.§3m§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§5!J§.§&y§(_loc3_,_loc4_)).§@"0§();
         _loc4_ = _loc8_.§!!Z§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§<!u§ = null;
         _loc8_.§>7§ = this.m_world.§-!x§;
         if(this.m_world.§-!x§ != null)
         {
            this.m_world.§-!x§.§<!u§ = _loc8_;
         }
         this.m_world.§-!x§ = _loc8_;
         _loc8_.§#?§.§1!z§ = _loc8_;
         _loc8_.§#?§.§"!$§ = _loc6_;
         _loc8_.§#?§.§`!o§ = null;
         _loc8_.§#?§.next = _loc5_.§-!x§;
         if(_loc5_.§-!x§ != null)
         {
            _loc5_.§-!x§.§`!o§ = _loc8_.§#?§;
         }
         _loc5_.§-!x§ = _loc8_.§#?§;
         _loc8_.§&!s§.§1!z§ = _loc8_;
         _loc8_.§&!s§.§"!$§ = _loc5_;
         _loc8_.§&!s§.§`!o§ = null;
         _loc8_.§&!s§.next = _loc6_.§-!x§;
         if(_loc6_.§-!x§ != null)
         {
            _loc6_.§-!x§.§`!o§ = _loc8_.§&!s§;
         }
         _loc6_.§-!x§ = _loc8_.§&!s§;
         ++this.m_world.§,!f§;
      }
      
      public function §+[§() : void
      {
         this.§]"4§.§[Y§(this.§@"&§);
      }
      
      public function §"!,§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§@"0§();
         var _loc3_:b2Fixture = param1.§!!Z§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§"Z§())
         {
            this.§7S§.EndContact(param1);
         }
         if(param1.§<!u§)
         {
            param1.§<!u§.§>7§ = param1.§>7§;
         }
         if(param1.§>7§)
         {
            param1.§>7§.§<!u§ = param1.§<!u§;
         }
         if(param1 == this.m_world.§-!x§)
         {
            this.m_world.§-!x§ = param1.§>7§;
         }
         if(param1.§#?§.§`!o§)
         {
            param1.§#?§.§`!o§.next = param1.§#?§.next;
         }
         if(param1.§#?§.next)
         {
            param1.§#?§.next.§`!o§ = param1.§#?§.§`!o§;
         }
         if(param1.§#?§ == _loc4_.§-!x§)
         {
            _loc4_.§-!x§ = param1.§#?§.next;
         }
         if(param1.§&!s§.§`!o§)
         {
            param1.§&!s§.§`!o§.next = param1.§&!s§.next;
         }
         if(param1.§&!s§.next)
         {
            param1.§&!s§.next.§`!o§ = param1.§&!s§.§`!o§;
         }
         if(param1.§&!s§ == _loc5_.§-!x§)
         {
            _loc5_.§-!x§ = param1.§&!s§.next;
         }
         this.§5!J§.§"!,§(param1);
         --this.§,!f§;
      }
      
      public function §3!A§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§-!x§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§@"0§();
            _loc3_ = _loc1_.§!!Z§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§&!B§();
            }
            else
            {
               if(_loc1_.§ !E§ & b2Contact.§'§ || _loc4_.§^!-§ || _loc5_.§^!-§)
               {
                  if(_loc5_.§3m§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&!B§();
                     this.§"!,§(_loc9_);
                     continue;
                  }
                  if(this.§7!=§.§3m§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&!B§();
                     this.§"!,§(_loc9_);
                     continue;
                  }
                  _loc1_.§ !E§ &= ~b2Contact.§'§;
               }
               _loc6_ = _loc2_.§#r§;
               _loc7_ = _loc3_.§#r§;
               if((_loc8_ = this.§]"4§.§ "0§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§&!B§();
                  this.§"!,§(_loc9_);
               }
               else
               {
                  _loc1_.§09§(this.§7S§);
                  _loc1_ = _loc1_.§&!B§();
               }
            }
         }
      }
   }
}
