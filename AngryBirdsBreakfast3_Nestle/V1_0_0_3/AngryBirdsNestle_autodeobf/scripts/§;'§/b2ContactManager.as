package §;'§
{
   import § !%§.b2internal;
   import §+W§.b2Contact;
   import §+W§.b2ContactEdge;
   import §+W§.b2ContactFactory;
   import §6f§.§?"§;
   import §6f§.b2ContactPoint;
   import §6f§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §>,§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §35§:§?"§;
      
      b2internal var §5!i§:b2Contact;
      
      b2internal var §]E§:int;
      
      b2internal var §-!$§:b2ContactFilter;
      
      b2internal var §^!5§:b2ContactListener;
      
      b2internal var §&]§:b2ContactFactory;
      
      b2internal var §#p§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§]E§ = 0;
         this.§-!$§ = b2ContactFilter.§&6§;
         this.§^!5§ = b2ContactListener.§`!b§;
         this.§&]§ = new b2ContactFactory(this.§#p§);
         this.§35§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §^!_§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§,!'§();
         while(_loc7_)
         {
            if(_loc7_.§^!,§ == _loc5_)
            {
               _loc9_ = _loc7_.§5T§.§6_§();
               _loc10_ = _loc7_.§5T§.§9!R§();
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
         if(_loc6_.§]!_§(_loc5_) == false)
         {
            return;
         }
         if(this.§-!$§.§]!_§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§&]§.§-",§(_loc3_,_loc4_)).§6_§();
         _loc4_ = _loc8_.§9!R§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§!!h§ = null;
         _loc8_.§1F§ = this.m_world.§5!i§;
         if(this.m_world.§5!i§ != null)
         {
            this.m_world.§5!i§.§!!h§ = _loc8_;
         }
         this.m_world.§5!i§ = _loc8_;
         _loc8_.§@Y§.§5T§ = _loc8_;
         _loc8_.§@Y§.§^!,§ = _loc6_;
         _loc8_.§@Y§.§+g§ = null;
         _loc8_.§@Y§.next = _loc5_.§5!i§;
         if(_loc5_.§5!i§ != null)
         {
            _loc5_.§5!i§.§+g§ = _loc8_.§@Y§;
         }
         _loc5_.§5!i§ = _loc8_.§@Y§;
         _loc8_.§95§.§5T§ = _loc8_;
         _loc8_.§95§.§^!,§ = _loc5_;
         _loc8_.§95§.§+g§ = null;
         _loc8_.§95§.next = _loc6_.§5!i§;
         if(_loc6_.§5!i§ != null)
         {
            _loc6_.§5!i§.§+g§ = _loc8_.§95§;
         }
         _loc6_.§5!i§ = _loc8_.§95§;
         ++this.m_world.§]E§;
      }
      
      public function §@!g§() : void
      {
         this.§35§.§;+§(this.§^!_§);
      }
      
      public function §'!h§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§6_§();
         var _loc3_:b2Fixture = param1.§9!R§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§ 1§())
         {
            this.§^!5§.EndContact(param1);
         }
         if(param1.§!!h§)
         {
            param1.§!!h§.§1F§ = param1.§1F§;
         }
         if(param1.§1F§)
         {
            param1.§1F§.§!!h§ = param1.§!!h§;
         }
         if(param1 == this.m_world.§5!i§)
         {
            this.m_world.§5!i§ = param1.§1F§;
         }
         if(param1.§@Y§.§+g§)
         {
            param1.§@Y§.§+g§.next = param1.§@Y§.next;
         }
         if(param1.§@Y§.next)
         {
            param1.§@Y§.next.§+g§ = param1.§@Y§.§+g§;
         }
         if(param1.§@Y§ == _loc4_.§5!i§)
         {
            _loc4_.§5!i§ = param1.§@Y§.next;
         }
         if(param1.§95§.§+g§)
         {
            param1.§95§.§+g§.next = param1.§95§.next;
         }
         if(param1.§95§.next)
         {
            param1.§95§.next.§+g§ = param1.§95§.§+g§;
         }
         if(param1.§95§ == _loc5_.§5!i§)
         {
            _loc5_.§5!i§ = param1.§95§.next;
         }
         this.§&]§.§'!h§(param1);
         --this.§]E§;
      }
      
      public function §else §() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§5!i§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§6_§();
            _loc3_ = _loc1_.§9!R§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§6P§();
            }
            else
            {
               if(_loc1_.§"!4§ & b2Contact.§<B§)
               {
                  if(_loc5_.§]!_§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§6P§();
                     this.§'!h§(_loc9_);
                     continue;
                  }
                  if(this.§-!$§.§]!_§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§6P§();
                     this.§'!h§(_loc9_);
                     continue;
                  }
                  _loc1_.§"!4§ &= ~b2Contact.§<B§;
               }
               _loc6_ = _loc2_.§4!B§;
               _loc7_ = _loc3_.§4!B§;
               if((_loc8_ = this.§35§.§;!s§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§6P§();
                  this.§'!h§(_loc9_);
               }
               else
               {
                  _loc1_.§&A§(this.§^!5§);
                  _loc1_ = _loc1_.§6P§();
               }
            }
         }
      }
   }
}
