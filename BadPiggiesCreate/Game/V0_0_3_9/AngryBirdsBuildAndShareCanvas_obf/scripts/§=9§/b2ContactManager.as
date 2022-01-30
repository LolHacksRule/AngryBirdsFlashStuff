package §=9§
{
   import §7"'§.b2internal;
   import §8!D§.b2Contact;
   import §8!D§.b2ContactEdge;
   import §8!D§.b2ContactFactory;
   import §[!Z§.§8!1§;
   import §[!Z§.b2ContactPoint;
   import §[!Z§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §=!D§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §+9§:§8!1§;
      
      b2internal var §&!E§:b2Contact;
      
      b2internal var §,!P§:int;
      
      b2internal var §9"7§:b2ContactFilter;
      
      b2internal var § if§:b2ContactListener;
      
      b2internal var §+s§:b2ContactFactory;
      
      b2internal var §"7§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§,!P§ = 0;
         this.§9"7§ = b2ContactFilter.§,z§;
         this.§ if§ = b2ContactListener.§%!c§;
         this.§+s§ = new b2ContactFactory(this.§"7§);
         this.§+9§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §-!8§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§<!Y§();
         while(_loc7_)
         {
            if(_loc7_.§?g§ == _loc5_)
            {
               _loc9_ = _loc7_.§@K§.§1!j§();
               _loc10_ = _loc7_.§@K§.§!!'§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§ J§;
         }
         if(_loc6_.§1O§(_loc5_) == false)
         {
            return;
         }
         if(this.§9"7§.§1O§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§+s§.§83§(_loc3_,_loc4_)).§1!j§();
         _loc4_ = _loc8_.§!!'§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§7%§ = null;
         _loc8_.§1""§ = this.m_world.§&!E§;
         if(this.m_world.§&!E§ != null)
         {
            this.m_world.§&!E§.§7%§ = _loc8_;
         }
         this.m_world.§&!E§ = _loc8_;
         _loc8_.§ !C§.§@K§ = _loc8_;
         _loc8_.§ !C§.§?g§ = _loc6_;
         _loc8_.§ !C§.§7! § = null;
         _loc8_.§ !C§.§ J§ = _loc5_.§&!E§;
         if(_loc5_.§&!E§ != null)
         {
            _loc5_.§&!E§.§7! § = _loc8_.§ !C§;
         }
         _loc5_.§&!E§ = _loc8_.§ !C§;
         _loc8_.§>!T§.§@K§ = _loc8_;
         _loc8_.§>!T§.§?g§ = _loc5_;
         _loc8_.§>!T§.§7! § = null;
         _loc8_.§>!T§.§ J§ = _loc6_.§&!E§;
         if(_loc6_.§&!E§ != null)
         {
            _loc6_.§&!E§.§7! § = _loc8_.§>!T§;
         }
         _loc6_.§&!E§ = _loc8_.§>!T§;
         ++this.m_world.§,!P§;
      }
      
      public function §5""§() : void
      {
         this.§+9§.§+p§(this.§-!8§);
      }
      
      public function §&!`§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§1!j§();
         var _loc3_:b2Fixture = param1.§!!'§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§6r§())
         {
            this.§ if§.EndContact(param1);
         }
         if(param1.§7%§)
         {
            param1.§7%§.§1""§ = param1.§1""§;
         }
         if(param1.§1""§)
         {
            param1.§1""§.§7%§ = param1.§7%§;
         }
         if(param1 == this.m_world.§&!E§)
         {
            this.m_world.§&!E§ = param1.§1""§;
         }
         if(param1.§ !C§.§7! §)
         {
            param1.§ !C§.§7! §.§ J§ = param1.§ !C§.§ J§;
         }
         if(param1.§ !C§.§ J§)
         {
            param1.§ !C§.§ J§.§7! § = param1.§ !C§.§7! §;
         }
         if(param1.§ !C§ == _loc4_.§&!E§)
         {
            _loc4_.§&!E§ = param1.§ !C§.§ J§;
         }
         if(param1.§>!T§.§7! §)
         {
            param1.§>!T§.§7! §.§ J§ = param1.§>!T§.§ J§;
         }
         if(param1.§>!T§.§ J§)
         {
            param1.§>!T§.§ J§.§7! § = param1.§>!T§.§7! §;
         }
         if(param1.§>!T§ == _loc5_.§&!E§)
         {
            _loc5_.§&!E§ = param1.§>!T§.§ J§;
         }
         this.§+s§.§&!`§(param1);
         --this.§,!P§;
      }
      
      public function §4l§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§&!E§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§1!j§();
            _loc3_ = _loc1_.§!!'§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§9!]§();
            }
            else
            {
               if(_loc1_.§1z§ & b2Contact.§['§)
               {
                  if(_loc5_.§1O§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§9!]§();
                     this.§&!`§(_loc9_);
                     continue;
                  }
                  if(this.§9"7§.§1O§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§9!]§();
                     this.§&!`§(_loc9_);
                     continue;
                  }
                  _loc1_.§1z§ &= ~b2Contact.§['§;
               }
               _loc6_ = _loc2_.§7]§;
               _loc7_ = _loc3_.§7]§;
               if((_loc8_ = this.§+9§.§<!O§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§9!]§();
                  this.§&!`§(_loc9_);
               }
               else
               {
                  _loc1_.§8"5§(this.§ if§);
                  _loc1_ = _loc1_.§9!]§();
               }
            }
         }
      }
   }
}
