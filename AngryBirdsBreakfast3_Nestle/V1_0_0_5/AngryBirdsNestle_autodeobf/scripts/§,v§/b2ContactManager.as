package §,v§
{
   import §!;§.§;!`§;
   import §!;§.b2ContactPoint;
   import §!;§.b2DynamicTreeBroadPhase;
   import §5t§.b2Contact;
   import §5t§.b2ContactEdge;
   import §5t§.b2ContactFactory;
   import §@h§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §&![§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §]!6§:§;!`§;
      
      b2internal var §&!]§:b2Contact;
      
      b2internal var §?!S§:int;
      
      b2internal var §-!y§:b2ContactFilter;
      
      b2internal var §-!s§:b2ContactListener;
      
      b2internal var §-!Z§:b2ContactFactory;
      
      b2internal var §&Q§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§?!S§ = 0;
         this.§-!y§ = b2ContactFilter.§`"#§;
         this.§-!s§ = b2ContactListener.§;G§;
         this.§-!Z§ = new b2ContactFactory(this.§&Q§);
         this.§]!6§ = new b2DynamicTreeBroadPhase();
      }
      
      public function § t§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§<]§();
         while(_loc7_)
         {
            if(_loc7_.§+!J§ == _loc5_)
            {
               _loc9_ = _loc7_.§@!"§.§=q§();
               _loc10_ = _loc7_.§@!"§.§^!z§();
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
         if(_loc6_.§;!+§(_loc5_) == false)
         {
            return;
         }
         if(this.§-!y§.§;!+§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§-!Z§.§@Q§(_loc3_,_loc4_)).§=q§();
         _loc4_ = _loc8_.§^!z§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§true§ = null;
         _loc8_.§7!+§ = this.m_world.§&!]§;
         if(this.m_world.§&!]§ != null)
         {
            this.m_world.§&!]§.§true§ = _loc8_;
         }
         this.m_world.§&!]§ = _loc8_;
         _loc8_.§?!0§.§@!"§ = _loc8_;
         _loc8_.§?!0§.§+!J§ = _loc6_;
         _loc8_.§?!0§.§9!A§ = null;
         _loc8_.§?!0§.next = _loc5_.§&!]§;
         if(_loc5_.§&!]§ != null)
         {
            _loc5_.§&!]§.§9!A§ = _loc8_.§?!0§;
         }
         _loc5_.§&!]§ = _loc8_.§?!0§;
         _loc8_.§9f§.§@!"§ = _loc8_;
         _loc8_.§9f§.§+!J§ = _loc5_;
         _loc8_.§9f§.§9!A§ = null;
         _loc8_.§9f§.next = _loc6_.§&!]§;
         if(_loc6_.§&!]§ != null)
         {
            _loc6_.§&!]§.§9!A§ = _loc8_.§9f§;
         }
         _loc6_.§&!]§ = _loc8_.§9f§;
         ++this.m_world.§?!S§;
      }
      
      public function §9!G§() : void
      {
         this.§]!6§.§2,§(this.§ t§);
      }
      
      public function §#!N§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§=q§();
         var _loc3_:b2Fixture = param1.§^!z§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§>!9§())
         {
            this.§-!s§.EndContact(param1);
         }
         if(param1.§true§)
         {
            param1.§true§.§7!+§ = param1.§7!+§;
         }
         if(param1.§7!+§)
         {
            param1.§7!+§.§true§ = param1.§true§;
         }
         if(param1 == this.m_world.§&!]§)
         {
            this.m_world.§&!]§ = param1.§7!+§;
         }
         if(param1.§?!0§.§9!A§)
         {
            param1.§?!0§.§9!A§.next = param1.§?!0§.next;
         }
         if(param1.§?!0§.next)
         {
            param1.§?!0§.next.§9!A§ = param1.§?!0§.§9!A§;
         }
         if(param1.§?!0§ == _loc4_.§&!]§)
         {
            _loc4_.§&!]§ = param1.§?!0§.next;
         }
         if(param1.§9f§.§9!A§)
         {
            param1.§9f§.§9!A§.next = param1.§9f§.next;
         }
         if(param1.§9f§.next)
         {
            param1.§9f§.next.§9!A§ = param1.§9f§.§9!A§;
         }
         if(param1.§9f§ == _loc5_.§&!]§)
         {
            _loc5_.§&!]§ = param1.§9f§.next;
         }
         this.§-!Z§.§#!N§(param1);
         --this.§?!S§;
      }
      
      public function §9,§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§&!]§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§=q§();
            _loc3_ = _loc1_.§^!z§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§,h§();
            }
            else
            {
               if(_loc1_.§@!5§ & b2Contact.§?&§)
               {
                  if(_loc5_.§;!+§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§,h§();
                     this.§#!N§(_loc9_);
                     continue;
                  }
                  if(this.§-!y§.§;!+§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§,h§();
                     this.§#!N§(_loc9_);
                     continue;
                  }
                  _loc1_.§@!5§ &= ~b2Contact.§?&§;
               }
               _loc6_ = _loc2_.§!!I§;
               _loc7_ = _loc3_.§!!I§;
               if((_loc8_ = this.§]!6§.§&!^§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§,h§();
                  this.§#!N§(_loc9_);
               }
               else
               {
                  _loc1_.§^§(this.§-!s§);
                  _loc1_ = _loc1_.§,h§();
               }
            }
         }
      }
   }
}
