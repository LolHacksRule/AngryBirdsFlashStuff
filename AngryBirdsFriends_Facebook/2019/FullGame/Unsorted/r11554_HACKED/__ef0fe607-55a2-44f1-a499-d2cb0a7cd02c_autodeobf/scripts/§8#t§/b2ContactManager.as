package §8#t§
{
   import §0# §.b2Contact;
   import §0# §.b2ContactEdge;
   import §0# §.b2ContactFactory;
   import §0J§.§"#O§;
   import §0J§.b2ContactPoint;
   import §0J§.b2DynamicTreeBroadPhase;
   import §[!3§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §<"=§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §@!3§:§"#O§;
      
      b2internal var §<!t§:b2Contact;
      
      b2internal var §@O§:int;
      
      b2internal var §!"<§:b2ContactFilter;
      
      b2internal var § "]§:b2ContactListener;
      
      b2internal var §6!q§:b2ContactFactory;
      
      b2internal var §>!=§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§@O§ = 0;
         this.§!"<§ = b2ContactFilter.§?#m§;
         this.§ "]§ = b2ContactListener.§8W§;
         this.§6!q§ = new b2ContactFactory(this.§>!=§);
         this.§@!3§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §['§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§+$$§();
         while(_loc7_)
         {
            if(_loc7_.§2#§ == _loc5_)
            {
               _loc9_ = _loc7_.§?"B§.§7"-§();
               _loc10_ = _loc7_.§?"B§.§5"7§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§0!>§;
         }
         if(_loc6_.§1$=§(_loc5_) == false)
         {
            return;
         }
         if(this.§!"<§.§1$=§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§6!q§.§9b§(_loc3_,_loc4_)).§7"-§();
         _loc4_ = _loc8_.§5"7§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§@!w§ = null;
         _loc8_.§0$9§ = this.m_world.§<!t§;
         if(this.m_world.§<!t§ != null)
         {
            this.m_world.§<!t§.§@!w§ = _loc8_;
         }
         this.m_world.§<!t§ = _loc8_;
         _loc8_.§26§.§?"B§ = _loc8_;
         _loc8_.§26§.§2#§ = _loc6_;
         _loc8_.§26§.§5§ = null;
         _loc8_.§26§.§0!>§ = _loc5_.§<!t§;
         if(_loc5_.§<!t§ != null)
         {
            _loc5_.§<!t§.§5§ = _loc8_.§26§;
         }
         _loc5_.§<!t§ = _loc8_.§26§;
         _loc8_.§ !Q§.§?"B§ = _loc8_;
         _loc8_.§ !Q§.§2#§ = _loc5_;
         _loc8_.§ !Q§.§5§ = null;
         _loc8_.§ !Q§.§0!>§ = _loc6_.§<!t§;
         if(_loc6_.§<!t§ != null)
         {
            _loc6_.§<!t§.§5§ = _loc8_.§ !Q§;
         }
         _loc6_.§<!t§ = _loc8_.§ !Q§;
         ++this.m_world.§@O§;
      }
      
      public function §4!X§() : void
      {
         this.§@!3§.§8#j§(this.§['§);
      }
      
      public function §-!2§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§7"-§();
         var _loc3_:b2Fixture = param1.§5"7§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§9r§())
         {
            this.§ "]§.EndContact(param1);
         }
         if(param1.§@!w§)
         {
            param1.§@!w§.§0$9§ = param1.§0$9§;
         }
         if(param1.§0$9§)
         {
            param1.§0$9§.§@!w§ = param1.§@!w§;
         }
         if(param1 == this.m_world.§<!t§)
         {
            this.m_world.§<!t§ = param1.§0$9§;
         }
         if(param1.§26§.§5§)
         {
            param1.§26§.§5§.§0!>§ = param1.§26§.§0!>§;
         }
         if(param1.§26§.§0!>§)
         {
            param1.§26§.§0!>§.§5§ = param1.§26§.§5§;
         }
         if(param1.§26§ == _loc4_.§<!t§)
         {
            _loc4_.§<!t§ = param1.§26§.§0!>§;
         }
         if(param1.§ !Q§.§5§)
         {
            param1.§ !Q§.§5§.§0!>§ = param1.§ !Q§.§0!>§;
         }
         if(param1.§ !Q§.§0!>§)
         {
            param1.§ !Q§.§0!>§.§5§ = param1.§ !Q§.§5§;
         }
         if(param1.§ !Q§ == _loc5_.§<!t§)
         {
            _loc5_.§<!t§ = param1.§ !Q§.§0!>§;
         }
         this.§6!q§.§-!2§(param1);
         --this.§@O§;
      }
      
      public function §,"_§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<!t§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§7"-§();
            _loc3_ = _loc1_.§5"7§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§+c§();
            }
            else
            {
               if(_loc1_.§;!O§ & b2Contact.§?!=§ || _loc4_.§8">§ || _loc5_.§8">§)
               {
                  if(_loc5_.§1$=§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+c§();
                     this.§-!2§(_loc9_);
                     continue;
                  }
                  if(this.§!"<§.§1$=§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§+c§();
                     this.§-!2§(_loc9_);
                     continue;
                  }
                  _loc1_.§;!O§ &= ~b2Contact.§?!=§;
               }
               _loc6_ = _loc2_.§>#+§;
               _loc7_ = _loc3_.§>#+§;
               if(Boolean(this.§@!3§.§!"5§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§+c§();
                  this.§-!2§(_loc9_);
               }
               else
               {
                  _loc1_.§-"$§(this.§ "]§);
                  _loc1_ = _loc1_.§+c§();
               }
            }
         }
      }
   }
}
