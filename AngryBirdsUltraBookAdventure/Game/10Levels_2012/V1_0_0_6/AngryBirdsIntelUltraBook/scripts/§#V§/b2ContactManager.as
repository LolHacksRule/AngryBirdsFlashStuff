package §#V§
{
   import §,G§.b2Contact;
   import §,G§.b2ContactEdge;
   import §,G§.b2ContactFactory;
   import §3!m§.b2internal;
   import §8w§.§2U§;
   import §8w§.b2ContactPoint;
   import §8w§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §#!k§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §0!f§:§2U§;
      
      b2internal var §<!7§:b2Contact;
      
      b2internal var §?o§:int;
      
      b2internal var §!!q§:b2ContactFilter;
      
      b2internal var §"s§:b2ContactListener;
      
      b2internal var §"!u§:b2ContactFactory;
      
      b2internal var §7!a§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§?o§ = 0;
         this.§!!q§ = b2ContactFilter.§5!o§;
         this.§"s§ = b2ContactListener.§]X§;
         this.§"!u§ = new b2ContactFactory(this.§7!a§);
         this.§0!f§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §`!Y§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§ !S§();
         while(_loc7_)
         {
            if(_loc7_.§9"§ == _loc5_)
            {
               _loc9_ = _loc7_.§80§.§68§();
               _loc10_ = _loc7_.§80§.§[t§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§#!R§;
         }
         if(_loc6_.§'!3§(_loc5_) == false)
         {
            return;
         }
         if(this.§!!q§.§'!3§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§"!u§.§1#§(_loc3_,_loc4_)).§68§();
         _loc4_ = _loc8_.§[t§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§[2§ = null;
         _loc8_.§@o§ = this.m_world.§<!7§;
         if(this.m_world.§<!7§ != null)
         {
            this.m_world.§<!7§.§[2§ = _loc8_;
         }
         this.m_world.§<!7§ = _loc8_;
         _loc8_.§'"§.§80§ = _loc8_;
         _loc8_.§'"§.§9"§ = _loc6_;
         _loc8_.§'"§.§%E§ = null;
         _loc8_.§'"§.§#!R§ = _loc5_.§<!7§;
         if(_loc5_.§<!7§ != null)
         {
            _loc5_.§<!7§.§%E§ = _loc8_.§'"§;
         }
         _loc5_.§<!7§ = _loc8_.§'"§;
         _loc8_.§=`§.§80§ = _loc8_;
         _loc8_.§=`§.§9"§ = _loc5_;
         _loc8_.§=`§.§%E§ = null;
         _loc8_.§=`§.§#!R§ = _loc6_.§<!7§;
         if(_loc6_.§<!7§ != null)
         {
            _loc6_.§<!7§.§%E§ = _loc8_.§=`§;
         }
         _loc6_.§<!7§ = _loc8_.§=`§;
         ++this.m_world.§?o§;
      }
      
      public function §,K§() : void
      {
         this.§0!f§.§"-§(this.§`!Y§);
      }
      
      public function §,!W§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§68§();
         var _loc3_:b2Fixture = param1.§[t§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§]i§())
         {
            this.§"s§.EndContact(param1);
         }
         if(param1.§[2§)
         {
            param1.§[2§.§@o§ = param1.§@o§;
         }
         if(param1.§@o§)
         {
            param1.§@o§.§[2§ = param1.§[2§;
         }
         if(param1 == this.m_world.§<!7§)
         {
            this.m_world.§<!7§ = param1.§@o§;
         }
         if(param1.§'"§.§%E§)
         {
            param1.§'"§.§%E§.§#!R§ = param1.§'"§.§#!R§;
         }
         if(param1.§'"§.§#!R§)
         {
            param1.§'"§.§#!R§.§%E§ = param1.§'"§.§%E§;
         }
         if(param1.§'"§ == _loc4_.§<!7§)
         {
            _loc4_.§<!7§ = param1.§'"§.§#!R§;
         }
         if(param1.§=`§.§%E§)
         {
            param1.§=`§.§%E§.§#!R§ = param1.§=`§.§#!R§;
         }
         if(param1.§=`§.§#!R§)
         {
            param1.§=`§.§#!R§.§%E§ = param1.§=`§.§%E§;
         }
         if(param1.§=`§ == _loc5_.§<!7§)
         {
            _loc5_.§<!7§ = param1.§=`§.§#!R§;
         }
         this.§"!u§.§,!W§(param1);
         --this.§?o§;
      }
      
      public function §,!t§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<!7§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§68§();
            _loc3_ = _loc1_.§[t§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§>H§();
            }
            else
            {
               if(_loc1_.§]!p§ & b2Contact.§%P§)
               {
                  if(_loc5_.§'!3§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§>H§();
                     this.§,!W§(_loc9_);
                     continue;
                  }
                  if(this.§!!q§.§'!3§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§>H§();
                     this.§,!W§(_loc9_);
                     continue;
                  }
                  _loc1_.§]!p§ &= ~b2Contact.§%P§;
               }
               _loc6_ = _loc2_.§ !P§;
               _loc7_ = _loc3_.§ !P§;
               if((_loc8_ = this.§0!f§.§3!V§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§>H§();
                  this.§,!W§(_loc9_);
               }
               else
               {
                  _loc1_.§8!s§(this.§"s§);
                  _loc1_ = _loc1_.§>H§();
               }
            }
         }
      }
   }
}
