package §6"1§
{
   import §'"-§.§3Q§;
   import §'"-§.b2ContactPoint;
   import §'"-§.b2DynamicTreeBroadPhase;
   import §'"6§.b2Contact;
   import §'"6§.b2ContactEdge;
   import §'"6§.b2ContactFactory;
   import §,"[§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §[!4§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §9"§:§3Q§;
      
      b2internal var §>"K§:b2Contact;
      
      b2internal var §%!0§:int;
      
      b2internal var §]"B§:b2ContactFilter;
      
      b2internal var §4!O§:b2ContactListener;
      
      b2internal var §%U§:b2ContactFactory;
      
      b2internal var §>!`§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§%!0§ = 0;
         this.§]"B§ = b2ContactFilter.§-"H§;
         this.§4!O§ = b2ContactListener.§%!Z§;
         this.§%U§ = new b2ContactFactory(this.§>!`§);
         this.§9"§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §`!9§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§0!z§();
         while(_loc7_)
         {
            if(_loc7_.§[!!§ == _loc5_)
            {
               _loc9_ = _loc7_.§-"G§.§]!A§();
               _loc10_ = _loc7_.§-"G§.§3!]§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§3u§;
         }
         if(_loc6_.§[">§(_loc5_) == false)
         {
            return;
         }
         if(this.§]"B§.§[">§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§%U§.§3!N§(_loc3_,_loc4_)).§]!A§();
         _loc4_ = _loc8_.§3!]§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§;<§ = null;
         _loc8_.§?!g§ = this.m_world.§>"K§;
         if(this.m_world.§>"K§ != null)
         {
            this.m_world.§>"K§.§;<§ = _loc8_;
         }
         this.m_world.§>"K§ = _loc8_;
         _loc8_.§[!C§.§-"G§ = _loc8_;
         _loc8_.§[!C§.§[!!§ = _loc6_;
         _loc8_.§[!C§.§ " § = null;
         _loc8_.§[!C§.§3u§ = _loc5_.§>"K§;
         if(_loc5_.§>"K§ != null)
         {
            _loc5_.§>"K§.§ " § = _loc8_.§[!C§;
         }
         _loc5_.§>"K§ = _loc8_.§[!C§;
         _loc8_.§9q§.§-"G§ = _loc8_;
         _loc8_.§9q§.§[!!§ = _loc5_;
         _loc8_.§9q§.§ " § = null;
         _loc8_.§9q§.§3u§ = _loc6_.§>"K§;
         if(_loc6_.§>"K§ != null)
         {
            _loc6_.§>"K§.§ " § = _loc8_.§9q§;
         }
         _loc6_.§>"K§ = _loc8_.§9q§;
         ++this.m_world.§%!0§;
      }
      
      public function §+!l§() : void
      {
         this.§9"§.§=q§(this.§`!9§);
      }
      
      public function §2!s§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§]!A§();
         var _loc3_:b2Fixture = param1.§3!]§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§3"I§())
         {
            this.§4!O§.EndContact(param1);
         }
         if(param1.§;<§)
         {
            param1.§;<§.§?!g§ = param1.§?!g§;
         }
         if(param1.§?!g§)
         {
            param1.§?!g§.§;<§ = param1.§;<§;
         }
         if(param1 == this.m_world.§>"K§)
         {
            this.m_world.§>"K§ = param1.§?!g§;
         }
         if(param1.§[!C§.§ " §)
         {
            param1.§[!C§.§ " §.§3u§ = param1.§[!C§.§3u§;
         }
         if(param1.§[!C§.§3u§)
         {
            param1.§[!C§.§3u§.§ " § = param1.§[!C§.§ " §;
         }
         if(param1.§[!C§ == _loc4_.§>"K§)
         {
            _loc4_.§>"K§ = param1.§[!C§.§3u§;
         }
         if(param1.§9q§.§ " §)
         {
            param1.§9q§.§ " §.§3u§ = param1.§9q§.§3u§;
         }
         if(param1.§9q§.§3u§)
         {
            param1.§9q§.§3u§.§ " § = param1.§9q§.§ " §;
         }
         if(param1.§9q§ == _loc5_.§>"K§)
         {
            _loc5_.§>"K§ = param1.§9q§.§3u§;
         }
         this.§%U§.§2!s§(param1);
         --this.§%!0§;
      }
      
      public function §+"M§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§>"K§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§]!A§();
            _loc3_ = _loc1_.§3!]§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§>!v§();
            }
            else
            {
               if(_loc1_.§2"B§ & b2Contact.§!",§)
               {
                  if(_loc5_.§[">§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§>!v§();
                     this.§2!s§(_loc9_);
                     continue;
                  }
                  if(this.§]"B§.§[">§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§>!v§();
                     this.§2!s§(_loc9_);
                     continue;
                  }
                  _loc1_.§2"B§ &= ~b2Contact.§!",§;
               }
               _loc6_ = _loc2_.§2!x§;
               _loc7_ = _loc3_.§2!x§;
               if((_loc8_ = this.§9"§.§9e§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§>!v§();
                  this.§2!s§(_loc9_);
               }
               else
               {
                  _loc1_.§7J§(this.§4!O§);
                  _loc1_ = _loc1_.§>!v§();
               }
            }
         }
      }
   }
}
