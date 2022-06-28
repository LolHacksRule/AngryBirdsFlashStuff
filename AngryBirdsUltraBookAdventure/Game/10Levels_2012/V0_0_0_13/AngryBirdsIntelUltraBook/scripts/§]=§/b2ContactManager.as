package §]=§
{
   import §'s§.§8!b§;
   import §'s§.b2ContactPoint;
   import §'s§.b2DynamicTreeBroadPhase;
   import §+!,§.b2internal;
   import §6!9§.b2Contact;
   import §6!9§.b2ContactEdge;
   import §6!9§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §6!>§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §'<§:§8!b§;
      
      b2internal var §2!4§:b2Contact;
      
      b2internal var §7!?§:int;
      
      b2internal var §-!6§:b2ContactFilter;
      
      b2internal var §,z§:b2ContactListener;
      
      b2internal var §!b§:b2ContactFactory;
      
      b2internal var §;!,§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§7!?§ = 0;
         this.§-!6§ = b2ContactFilter.§=A§;
         this.§,z§ = b2ContactListener.§2C§;
         this.§!b§ = new b2ContactFactory(this.§;!,§);
         this.§'<§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §@!R§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§[7§();
         while(_loc7_)
         {
            if(_loc7_.§3z§ == _loc5_)
            {
               _loc9_ = _loc7_.§4! §.§2!N§();
               _loc10_ = _loc7_.§4! §.§`!Q§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§2B§;
         }
         if(_loc6_.§>b§(_loc5_) == false)
         {
            return;
         }
         if(this.§-!6§.§>b§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact = this.§!b§.§]!U§(_loc3_,_loc4_);
         _loc3_ = _loc8_.§2!N§();
         _loc4_ = _loc8_.§`!Q§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§7!Q§ = null;
         _loc8_.§,1§ = this.m_world.§2!4§;
         if(this.m_world.§2!4§ != null)
         {
            this.m_world.§2!4§.§7!Q§ = _loc8_;
         }
         this.m_world.§2!4§ = _loc8_;
         _loc8_.§<b§.§4! § = _loc8_;
         _loc8_.§<b§.§3z§ = _loc6_;
         _loc8_.§<b§.§;W§ = null;
         _loc8_.§<b§.§2B§ = _loc5_.§2!4§;
         if(_loc5_.§2!4§ != null)
         {
            _loc5_.§2!4§.§;W§ = _loc8_.§<b§;
         }
         _loc5_.§2!4§ = _loc8_.§<b§;
         _loc8_.§ !]§.§4! § = _loc8_;
         _loc8_.§ !]§.§3z§ = _loc5_;
         _loc8_.§ !]§.§;W§ = null;
         _loc8_.§ !]§.§2B§ = _loc6_.§2!4§;
         if(_loc6_.§2!4§ != null)
         {
            _loc6_.§2!4§.§;W§ = _loc8_.§ !]§;
         }
         _loc6_.§2!4§ = _loc8_.§ !]§;
         ++this.m_world.§7!?§;
      }
      
      public function §8!<§() : void
      {
         this.§'<§.dynamic(this.§@!R§);
      }
      
      public function §"P§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§2!N§();
         var _loc3_:b2Fixture = param1.§`!Q§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§9b§())
         {
            this.§,z§.EndContact(param1);
         }
         if(param1.§7!Q§)
         {
            param1.§7!Q§.§,1§ = param1.§,1§;
         }
         if(param1.§,1§)
         {
            param1.§,1§.§7!Q§ = param1.§7!Q§;
         }
         if(param1 == this.m_world.§2!4§)
         {
            this.m_world.§2!4§ = param1.§,1§;
         }
         if(param1.§<b§.§;W§)
         {
            param1.§<b§.§;W§.§2B§ = param1.§<b§.§2B§;
         }
         if(param1.§<b§.§2B§)
         {
            param1.§<b§.§2B§.§;W§ = param1.§<b§.§;W§;
         }
         if(param1.§<b§ == _loc4_.§2!4§)
         {
            _loc4_.§2!4§ = param1.§<b§.§2B§;
         }
         if(param1.§ !]§.§;W§)
         {
            param1.§ !]§.§;W§.§2B§ = param1.§ !]§.§2B§;
         }
         if(param1.§ !]§.§2B§)
         {
            param1.§ !]§.§2B§.§;W§ = param1.§ !]§.§;W§;
         }
         if(param1.§ !]§ == _loc5_.§2!4§)
         {
            _loc5_.§2!4§ = param1.§ !]§.§2B§;
         }
         this.§!b§.§"P§(param1);
         --this.§7!?§;
      }
      
      public function §2!!§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§2!4§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§2!N§();
            _loc3_ = _loc1_.§`!Q§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§70§();
            }
            else
            {
               if(_loc1_.§3! § & b2Contact.§%4§)
               {
                  if(_loc5_.§>b§(_loc4_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_.§70§();
                     this.§"P§(_loc9_);
                     continue;
                  }
                  if(this.§-!6§.§>b§(_loc2_,_loc3_) == false)
                  {
                     _loc9_ = _loc1_;
                     _loc1_ = _loc9_.§70§();
                     this.§"P§(_loc9_);
                     continue;
                  }
                  _loc1_.§3! § &= ~b2Contact.§%4§;
               }
               _loc6_ = _loc2_.§<V§;
               _loc7_ = _loc3_.§<V§;
               _loc8_ = this.§'<§.§@w§(_loc6_,_loc7_);
               if(_loc8_ == false)
               {
                  _loc9_ = _loc1_;
                  _loc1_ = _loc9_.§70§();
                  this.§"P§(_loc9_);
               }
               else
               {
                  _loc1_.§ !=§(this.§,z§);
                  _loc1_ = _loc1_.§70§();
               }
            }
         }
      }
   }
}
