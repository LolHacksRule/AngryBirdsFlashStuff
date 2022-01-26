package §[x§
{
   import §%!B§.§-!9§;
   import §%!B§.b2ContactPoint;
   import §%!B§.b2DynamicTreeBroadPhase;
   import §43§.b2Contact;
   import §43§.b2ContactEdge;
   import §43§.b2ContactFactory;
   import §^<§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §'R§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §@W§:§-!9§;
      
      b2internal var §5l§:b2Contact;
      
      b2internal var §[!W§:int;
      
      b2internal var §`!;§:b2ContactFilter;
      
      b2internal var §,!'§:b2ContactListener;
      
      b2internal var §8;§:b2ContactFactory;
      
      b2internal var §;!S§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§[!W§ = 0;
         this.§`!;§ = b2ContactFilter.§2!N§;
         this.§,!'§ = b2ContactListener.§'B§;
         this.§8;§ = new b2ContactFactory(this.§;!S§);
         this.§@W§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §<z§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§-o§();
         while(_loc7_)
         {
            if(_loc7_.§]!P§ == _loc5_)
            {
               _loc9_ = _loc7_.§#0§.§31§();
               _loc10_ = _loc7_.§#0§.§;!E§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§;! §;
         }
         if(_loc6_.§@@§(_loc5_) == false)
         {
            return;
         }
         if(this.§`!;§.§@@§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§8;§.§[?§(_loc3_,_loc4_)).§31§();
         _loc4_ = _loc8_.§;!E§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§]h§ = null;
         _loc8_.§83§ = this.m_world.§5l§;
         if(this.m_world.§5l§ != null)
         {
            this.m_world.§5l§.§]h§ = _loc8_;
         }
         this.m_world.§5l§ = _loc8_;
         _loc8_.§;!_§.§#0§ = _loc8_;
         _loc8_.§;!_§.§]!P§ = _loc6_;
         _loc8_.§;!_§.§`!,§ = null;
         _loc8_.§;!_§.§;! § = _loc5_.§5l§;
         if(_loc5_.§5l§ != null)
         {
            _loc5_.§5l§.§`!,§ = _loc8_.§;!_§;
         }
         _loc5_.§5l§ = _loc8_.§;!_§;
         _loc8_.§17§.§#0§ = _loc8_;
         _loc8_.§17§.§]!P§ = _loc5_;
         _loc8_.§17§.§`!,§ = null;
         _loc8_.§17§.§;! § = _loc6_.§5l§;
         if(_loc6_.§5l§ != null)
         {
            _loc6_.§5l§.§`!,§ = _loc8_.§17§;
         }
         _loc6_.§5l§ = _loc8_.§17§;
         ++this.m_world.§[!W§;
      }
      
      public function §9W§() : void
      {
         this.§@W§.§[!$§(this.§<z§);
      }
      
      public function §58§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§31§();
         var _loc3_:b2Fixture = param1.§;!E§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§%!E§())
         {
            this.§,!'§.EndContact(param1);
         }
         if(param1.§]h§)
         {
            param1.§]h§.§83§ = param1.§83§;
         }
         if(param1.§83§)
         {
            param1.§83§.§]h§ = param1.§]h§;
         }
         if(param1 == this.m_world.§5l§)
         {
            this.m_world.§5l§ = param1.§83§;
         }
         if(param1.§;!_§.§`!,§)
         {
            param1.§;!_§.§`!,§.§;! § = param1.§;!_§.§;! §;
         }
         if(param1.§;!_§.§;! §)
         {
            param1.§;!_§.§;! §.§`!,§ = param1.§;!_§.§`!,§;
         }
         if(param1.§;!_§ == _loc4_.§5l§)
         {
            _loc4_.§5l§ = param1.§;!_§.§;! §;
         }
         if(param1.§17§.§`!,§)
         {
            param1.§17§.§`!,§.§;! § = param1.§17§.§;! §;
         }
         if(param1.§17§.§;! §)
         {
            param1.§17§.§;! §.§`!,§ = param1.§17§.§`!,§;
         }
         if(param1.§17§ == _loc5_.§5l§)
         {
            _loc5_.§5l§ = param1.§17§.§;! §;
         }
         this.§8;§.§58§(param1);
         --this.§[!W§;
      }
      
      public function §^a§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§5l§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§31§();
            _loc3_ = _loc1_.§;!E§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§&-§();
            }
            else
            {
               if(_loc1_.§`"§ & b2Contact.§'!+§)
               {
                  if(_loc5_.§@@§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&-§();
                     this.§58§(_loc9_);
                     continue;
                  }
                  if(this.§`!;§.§@@§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&-§();
                     this.§58§(_loc9_);
                     continue;
                  }
                  _loc1_.§`"§ &= ~b2Contact.§'!+§;
               }
               _loc6_ = _loc2_.§[!Q§;
               _loc7_ = _loc3_.§[!Q§;
               if((_loc8_ = this.§@W§.§8!X§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§&-§();
                  this.§58§(_loc9_);
               }
               else
               {
                  _loc1_.§6E§(this.§,!'§);
                  _loc1_ = _loc1_.§&-§();
               }
            }
         }
      }
   }
}
