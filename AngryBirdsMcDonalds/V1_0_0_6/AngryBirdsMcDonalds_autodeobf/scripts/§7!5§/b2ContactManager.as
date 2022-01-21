package §7!5§
{
   import §7!Y§.b2internal;
   import §8!n§.§>=§;
   import §8!n§.b2ContactPoint;
   import §8!n§.b2DynamicTreeBroadPhase;
   import §;W§.b2Contact;
   import §;W§.b2ContactEdge;
   import §;W§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §0!6§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §+!1§:§>=§;
      
      b2internal var §`a§:b2Contact;
      
      b2internal var §2!D§:int;
      
      b2internal var §?a§:b2ContactFilter;
      
      b2internal var §&!j§:b2ContactListener;
      
      b2internal var §=!-§:b2ContactFactory;
      
      b2internal var §-d§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§2!D§ = 0;
         this.§?a§ = b2ContactFilter.§!!D§;
         this.§&!j§ = b2ContactListener.§5!k§;
         this.§=!-§ = new b2ContactFactory(this.§-d§);
         this.§+!1§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §9d§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§54§();
         while(_loc7_)
         {
            if(_loc7_.§]=§ == _loc5_)
            {
               _loc9_ = _loc7_.§+!Y§.§"![§();
               _loc10_ = _loc7_.§+!Y§.§5,§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§"!=§;
         }
         if(_loc6_.§0!A§(_loc5_) == false)
         {
            return;
         }
         if(this.§?a§.§0!A§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§=!-§.§class§(_loc3_,_loc4_)).§"![§();
         _loc4_ = _loc8_.§5,§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§;!Z§ = null;
         _loc8_.§%&§ = this.m_world.§`a§;
         if(this.m_world.§`a§ != null)
         {
            this.m_world.§`a§.§;!Z§ = _loc8_;
         }
         this.m_world.§`a§ = _loc8_;
         _loc8_.§ j§.§+!Y§ = _loc8_;
         _loc8_.§ j§.§]=§ = _loc6_;
         _loc8_.§ j§.§!l§ = null;
         _loc8_.§ j§.§"!=§ = _loc5_.§`a§;
         if(_loc5_.§`a§ != null)
         {
            _loc5_.§`a§.§!l§ = _loc8_.§ j§;
         }
         _loc5_.§`a§ = _loc8_.§ j§;
         _loc8_.§!#§.§+!Y§ = _loc8_;
         _loc8_.§!#§.§]=§ = _loc5_;
         _loc8_.§!#§.§!l§ = null;
         _loc8_.§!#§.§"!=§ = _loc6_.§`a§;
         if(_loc6_.§`a§ != null)
         {
            _loc6_.§`a§.§!l§ = _loc8_.§!#§;
         }
         _loc6_.§`a§ = _loc8_.§!#§;
         ++this.m_world.§2!D§;
      }
      
      public function §;&§() : void
      {
         this.§+!1§.§%!c§(this.§9d§);
      }
      
      public function §5^§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§"![§();
         var _loc3_:b2Fixture = param1.§5,§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§9U§())
         {
            this.§&!j§.EndContact(param1);
         }
         if(param1.§;!Z§)
         {
            param1.§;!Z§.§%&§ = param1.§%&§;
         }
         if(param1.§%&§)
         {
            param1.§%&§.§;!Z§ = param1.§;!Z§;
         }
         if(param1 == this.m_world.§`a§)
         {
            this.m_world.§`a§ = param1.§%&§;
         }
         if(param1.§ j§.§!l§)
         {
            param1.§ j§.§!l§.§"!=§ = param1.§ j§.§"!=§;
         }
         if(param1.§ j§.§"!=§)
         {
            param1.§ j§.§"!=§.§!l§ = param1.§ j§.§!l§;
         }
         if(param1.§ j§ == _loc4_.§`a§)
         {
            _loc4_.§`a§ = param1.§ j§.§"!=§;
         }
         if(param1.§!#§.§!l§)
         {
            param1.§!#§.§!l§.§"!=§ = param1.§!#§.§"!=§;
         }
         if(param1.§!#§.§"!=§)
         {
            param1.§!#§.§"!=§.§!l§ = param1.§!#§.§!l§;
         }
         if(param1.§!#§ == _loc5_.§`a§)
         {
            _loc5_.§`a§ = param1.§!#§.§"!=§;
         }
         this.§=!-§.§5^§(param1);
         --this.§2!D§;
      }
      
      public function §#W§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§`a§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§"![§();
            _loc3_ = _loc1_.§5,§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§5w§();
            }
            else
            {
               if(_loc1_.§`M§ & b2Contact.§1?§)
               {
                  if(_loc5_.§0!A§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§5w§();
                     this.§5^§(_loc9_);
                     continue;
                  }
                  if(this.§?a§.§0!A§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§5w§();
                     this.§5^§(_loc9_);
                     continue;
                  }
                  _loc1_.§`M§ &= ~b2Contact.§1?§;
               }
               _loc6_ = _loc2_.§4!!§;
               _loc7_ = _loc3_.§4!!§;
               if((_loc8_ = this.§+!1§.§!![§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§5w§();
                  this.§5^§(_loc9_);
               }
               else
               {
                  _loc1_.§`!j§(this.§&!j§);
                  _loc1_ = _loc1_.§5w§();
               }
            }
         }
      }
   }
}
