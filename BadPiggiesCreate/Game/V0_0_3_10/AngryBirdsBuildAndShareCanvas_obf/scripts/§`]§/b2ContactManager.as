package §`]§
{
   import §!S§.b2internal;
   import §1!1§.§0!6§;
   import §1!1§.b2ContactPoint;
   import §1!1§.b2DynamicTreeBroadPhase;
   import §2!+§.b2Contact;
   import §2!+§.b2ContactEdge;
   import §2!+§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §?"4§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §`o§:§0!6§;
      
      b2internal var §<",§:b2Contact;
      
      b2internal var §`!&§:int;
      
      b2internal var §="+§:b2ContactFilter;
      
      b2internal var § var§:b2ContactListener;
      
      b2internal var §8C§:b2ContactFactory;
      
      b2internal var §#!b§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§`!&§ = 0;
         this.§="+§ = b2ContactFilter.§^!o§;
         this.§ var§ = b2ContactListener.§81§;
         this.§8C§ = new b2ContactFactory(this.§#!b§);
         this.§`o§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §&m§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§3!_§();
         while(_loc7_)
         {
            if(_loc7_.§47§ == _loc5_)
            {
               _loc9_ = _loc7_.§!B§.§1'§();
               _loc10_ = _loc7_.§!B§.§?"-§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§4!e§;
         }
         if(_loc6_.§]P§(_loc5_) == false)
         {
            return;
         }
         if(this.§="+§.§]P§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§8C§.§6t§(_loc3_,_loc4_)).§1'§();
         _loc4_ = _loc8_.§?"-§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§0"+§ = null;
         _loc8_.§7<§ = this.m_world.§<",§;
         if(this.m_world.§<",§ != null)
         {
            this.m_world.§<",§.§0"+§ = _loc8_;
         }
         this.m_world.§<",§ = _loc8_;
         _loc8_.§`!-§.§!B§ = _loc8_;
         _loc8_.§`!-§.§47§ = _loc6_;
         _loc8_.§`!-§.§8!U§ = null;
         _loc8_.§`!-§.§4!e§ = _loc5_.§<",§;
         if(_loc5_.§<",§ != null)
         {
            _loc5_.§<",§.§8!U§ = _loc8_.§`!-§;
         }
         _loc5_.§<",§ = _loc8_.§`!-§;
         _loc8_.§%!@§.§!B§ = _loc8_;
         _loc8_.§%!@§.§47§ = _loc5_;
         _loc8_.§%!@§.§8!U§ = null;
         _loc8_.§%!@§.§4!e§ = _loc6_.§<",§;
         if(_loc6_.§<",§ != null)
         {
            _loc6_.§<",§.§8!U§ = _loc8_.§%!@§;
         }
         _loc6_.§<",§ = _loc8_.§%!@§;
         ++this.m_world.§`!&§;
      }
      
      public function §'!5§() : void
      {
         this.§`o§.§#!+§(this.§&m§);
      }
      
      public function §=!!§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§1'§();
         var _loc3_:b2Fixture = param1.§?"-§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§-"9§())
         {
            this.§ var§.EndContact(param1);
         }
         if(param1.§0"+§)
         {
            param1.§0"+§.§7<§ = param1.§7<§;
         }
         if(param1.§7<§)
         {
            param1.§7<§.§0"+§ = param1.§0"+§;
         }
         if(param1 == this.m_world.§<",§)
         {
            this.m_world.§<",§ = param1.§7<§;
         }
         if(param1.§`!-§.§8!U§)
         {
            param1.§`!-§.§8!U§.§4!e§ = param1.§`!-§.§4!e§;
         }
         if(param1.§`!-§.§4!e§)
         {
            param1.§`!-§.§4!e§.§8!U§ = param1.§`!-§.§8!U§;
         }
         if(param1.§`!-§ == _loc4_.§<",§)
         {
            _loc4_.§<",§ = param1.§`!-§.§4!e§;
         }
         if(param1.§%!@§.§8!U§)
         {
            param1.§%!@§.§8!U§.§4!e§ = param1.§%!@§.§4!e§;
         }
         if(param1.§%!@§.§4!e§)
         {
            param1.§%!@§.§4!e§.§8!U§ = param1.§%!@§.§8!U§;
         }
         if(param1.§%!@§ == _loc5_.§<",§)
         {
            _loc5_.§<",§ = param1.§%!@§.§4!e§;
         }
         this.§8C§.§=!!§(param1);
         --this.§`!&§;
      }
      
      public function §5!g§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<",§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§1'§();
            _loc3_ = _loc1_.§?"-§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§&!=§();
            }
            else
            {
               if(_loc1_.§3u§ & b2Contact.§'P§)
               {
                  if(_loc5_.§]P§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&!=§();
                     this.§=!!§(_loc9_);
                     continue;
                  }
                  if(this.§="+§.§]P§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§&!=§();
                     this.§=!!§(_loc9_);
                     continue;
                  }
                  _loc1_.§3u§ &= ~b2Contact.§'P§;
               }
               _loc6_ = _loc2_.§6!b§;
               _loc7_ = _loc3_.§6!b§;
               if((_loc8_ = this.§`o§.§;!p§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§&!=§();
                  this.§=!!§(_loc9_);
               }
               else
               {
                  _loc1_.§;Y§(this.§ var§);
                  _loc1_ = _loc1_.§&!=§();
               }
            }
         }
      }
   }
}
