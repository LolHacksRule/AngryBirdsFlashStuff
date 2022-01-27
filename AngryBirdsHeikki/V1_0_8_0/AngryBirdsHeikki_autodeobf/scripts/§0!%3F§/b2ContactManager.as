package §0!?§
{
   import §0^§.b2internal;
   import §;!U§.b2Contact;
   import §;!U§.b2ContactEdge;
   import §;!U§.b2ContactFactory;
   import §`!E§.§'e§;
   import §`!E§.b2ContactPoint;
   import §`!E§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §8!-§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §;t§:§'e§;
      
      b2internal var §+!D§:b2Contact;
      
      b2internal var §6!I§:int;
      
      b2internal var §7!C§:b2ContactFilter;
      
      b2internal var §!g§:b2ContactListener;
      
      b2internal var §!!M§:b2ContactFactory;
      
      b2internal var §;B§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§6!I§ = 0;
         this.§7!C§ = b2ContactFilter.§3w§;
         this.§!g§ = b2ContactListener.§>h§;
         this.§!!M§ = new b2ContactFactory(this.§;B§);
         this.§;t§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §+W§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§+!1§();
         while(_loc7_)
         {
            if(_loc7_.§5d§ == _loc5_)
            {
               _loc9_ = _loc7_.§<!C§.§!^§();
               _loc10_ = _loc7_.§<!C§.§"P§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§^T§;
         }
         if(_loc6_.§"7§(_loc5_) == false)
         {
            return;
         }
         if(this.§7!C§.§"7§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§!!M§.§6>§(_loc3_,_loc4_)).§!^§();
         _loc4_ = _loc8_.§"P§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§4!_§ = null;
         _loc8_.§=!T§ = this.m_world.§+!D§;
         if(this.m_world.§+!D§ != null)
         {
            this.m_world.§+!D§.§4!_§ = _loc8_;
         }
         this.m_world.§+!D§ = _loc8_;
         _loc8_.§2t§.§<!C§ = _loc8_;
         _loc8_.§2t§.§5d§ = _loc6_;
         _loc8_.§2t§.§1!"§ = null;
         _loc8_.§2t§.§^T§ = _loc5_.§+!D§;
         if(_loc5_.§+!D§ != null)
         {
            _loc5_.§+!D§.§1!"§ = _loc8_.§2t§;
         }
         _loc5_.§+!D§ = _loc8_.§2t§;
         _loc8_.§7Q§.§<!C§ = _loc8_;
         _loc8_.§7Q§.§5d§ = _loc5_;
         _loc8_.§7Q§.§1!"§ = null;
         _loc8_.§7Q§.§^T§ = _loc6_.§+!D§;
         if(_loc6_.§+!D§ != null)
         {
            _loc6_.§+!D§.§1!"§ = _loc8_.§7Q§;
         }
         _loc6_.§+!D§ = _loc8_.§7Q§;
         ++this.m_world.§6!I§;
      }
      
      public function §%!"§() : void
      {
         this.§;t§.§"L§(this.§+W§);
      }
      
      public function §>s§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§!^§();
         var _loc3_:b2Fixture = param1.§"P§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§%j§())
         {
            this.§!g§.EndContact(param1);
         }
         if(param1.§4!_§)
         {
            param1.§4!_§.§=!T§ = param1.§=!T§;
         }
         if(param1.§=!T§)
         {
            param1.§=!T§.§4!_§ = param1.§4!_§;
         }
         if(param1 == this.m_world.§+!D§)
         {
            this.m_world.§+!D§ = param1.§=!T§;
         }
         if(param1.§2t§.§1!"§)
         {
            param1.§2t§.§1!"§.§^T§ = param1.§2t§.§^T§;
         }
         if(param1.§2t§.§^T§)
         {
            param1.§2t§.§^T§.§1!"§ = param1.§2t§.§1!"§;
         }
         if(param1.§2t§ == _loc4_.§+!D§)
         {
            _loc4_.§+!D§ = param1.§2t§.§^T§;
         }
         if(param1.§7Q§.§1!"§)
         {
            param1.§7Q§.§1!"§.§^T§ = param1.§7Q§.§^T§;
         }
         if(param1.§7Q§.§^T§)
         {
            param1.§7Q§.§^T§.§1!"§ = param1.§7Q§.§1!"§;
         }
         if(param1.§7Q§ == _loc5_.§+!D§)
         {
            _loc5_.§+!D§ = param1.§7Q§.§^T§;
         }
         this.§!!M§.§>s§(param1);
         --this.§6!I§;
      }
      
      public function §]o§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§+!D§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§!^§();
            _loc3_ = _loc1_.§"P§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§=t§();
            }
            else
            {
               if(_loc1_.§&W§ & b2Contact.§1C§)
               {
                  if(_loc5_.§"7§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§=t§();
                     this.§>s§(_loc9_);
                     continue;
                  }
                  if(this.§7!C§.§"7§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§=t§();
                     this.§>s§(_loc9_);
                     continue;
                  }
                  _loc1_.§&W§ &= ~b2Contact.§1C§;
               }
               _loc6_ = _loc2_.§6&§;
               _loc7_ = _loc3_.§6&§;
               if((_loc8_ = this.§;t§.§&!?§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§=t§();
                  this.§>s§(_loc9_);
               }
               else
               {
                  _loc1_.§7!Q§(this.§!g§);
                  _loc1_ = _loc1_.§=t§();
               }
            }
         }
      }
   }
}
