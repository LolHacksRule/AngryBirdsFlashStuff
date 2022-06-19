package § !k§
{
   import §6!d§.§`O§;
   import §6!d§.b2ContactPoint;
   import §6!d§.b2DynamicTreeBroadPhase;
   import §]!l§.b2Contact;
   import §]!l§.b2ContactEdge;
   import §]!l§.b2ContactFactory;
   import §in§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §'B§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §#!K§:§`O§;
      
      b2internal var §@Q§:b2Contact;
      
      b2internal var §[d§:int;
      
      b2internal var §+"<§:b2ContactFilter;
      
      b2internal var §#!W§:b2ContactListener;
      
      b2internal var §%!S§:b2ContactFactory;
      
      b2internal var §0!k§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§[d§ = 0;
         this.§+"<§ = b2ContactFilter.§^!B§;
         this.§#!W§ = b2ContactListener.§1!f§;
         this.§%!S§ = new b2ContactFactory(this.§0!k§);
         this.§#!K§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §6!#§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!""§();
         while(_loc7_)
         {
            if(_loc7_.§%"C§ == _loc5_)
            {
               _loc9_ = _loc7_.§4!M§.§9!&§();
               _loc10_ = _loc7_.§4!M§.§2%§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§%!8§;
         }
         if(_loc6_.§^k§(_loc5_) == false)
         {
            return;
         }
         if(this.§+"<§.§^k§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§%!S§.§#!b§(_loc3_,_loc4_)).§9!&§();
         _loc4_ = _loc8_.§2%§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§=>§ = null;
         _loc8_.§7"@§ = this.m_world.§@Q§;
         if(this.m_world.§@Q§ != null)
         {
            this.m_world.§@Q§.§=>§ = _loc8_;
         }
         this.m_world.§@Q§ = _loc8_;
         _loc8_.§!!I§.§4!M§ = _loc8_;
         _loc8_.§!!I§.§%"C§ = _loc6_;
         _loc8_.§!!I§.§ ?§ = null;
         _loc8_.§!!I§.§%!8§ = _loc5_.§@Q§;
         if(_loc5_.§@Q§ != null)
         {
            _loc5_.§@Q§.§ ?§ = _loc8_.§!!I§;
         }
         _loc5_.§@Q§ = _loc8_.§!!I§;
         _loc8_.§^""§.§4!M§ = _loc8_;
         _loc8_.§^""§.§%"C§ = _loc5_;
         _loc8_.§^""§.§ ?§ = null;
         _loc8_.§^""§.§%!8§ = _loc6_.§@Q§;
         if(_loc6_.§@Q§ != null)
         {
            _loc6_.§@Q§.§ ?§ = _loc8_.§^""§;
         }
         _loc6_.§@Q§ = _loc8_.§^""§;
         ++this.m_world.§[d§;
      }
      
      public function §[f§() : void
      {
         this.§#!K§.§]"-§(this.§6!#§);
      }
      
      public function §1?§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§9!&§();
         var _loc3_:b2Fixture = param1.§2%§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§;b§())
         {
            this.§#!W§.EndContact(param1);
         }
         if(param1.§=>§)
         {
            param1.§=>§.§7"@§ = param1.§7"@§;
         }
         if(param1.§7"@§)
         {
            param1.§7"@§.§=>§ = param1.§=>§;
         }
         if(param1 == this.m_world.§@Q§)
         {
            this.m_world.§@Q§ = param1.§7"@§;
         }
         if(param1.§!!I§.§ ?§)
         {
            param1.§!!I§.§ ?§.§%!8§ = param1.§!!I§.§%!8§;
         }
         if(param1.§!!I§.§%!8§)
         {
            param1.§!!I§.§%!8§.§ ?§ = param1.§!!I§.§ ?§;
         }
         if(param1.§!!I§ == _loc4_.§@Q§)
         {
            _loc4_.§@Q§ = param1.§!!I§.§%!8§;
         }
         if(param1.§^""§.§ ?§)
         {
            param1.§^""§.§ ?§.§%!8§ = param1.§^""§.§%!8§;
         }
         if(param1.§^""§.§%!8§)
         {
            param1.§^""§.§%!8§.§ ?§ = param1.§^""§.§ ?§;
         }
         if(param1.§^""§ == _loc5_.§@Q§)
         {
            _loc5_.§@Q§ = param1.§^""§.§%!8§;
         }
         this.§%!S§.§1?§(param1);
         --this.§[d§;
      }
      
      public function §>"1§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§@Q§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§9!&§();
            _loc3_ = _loc1_.§2%§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§&A§();
            }
            else
            {
               if(_loc1_.§%$§ & b2Contact.§1!8§)
               {
                  if(_loc5_.§^k§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&A§();
                     this.§1?§(_loc9_);
                     continue;
                  }
                  if(this.§+"<§.§^k§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&A§();
                     this.§1?§(_loc9_);
                     continue;
                  }
                  _loc1_.§%$§ &= ~b2Contact.§1!8§;
               }
               _loc6_ = _loc2_.§@!f§;
               _loc7_ = _loc3_.§@!f§;
               if((_loc8_ = this.§#!K§.§6!v§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§&A§();
                  this.§1?§(_loc9_);
               }
               else
               {
                  _loc1_.§"n§(this.§#!W§);
                  _loc1_ = _loc1_.§&A§();
               }
            }
         }
      }
   }
}
