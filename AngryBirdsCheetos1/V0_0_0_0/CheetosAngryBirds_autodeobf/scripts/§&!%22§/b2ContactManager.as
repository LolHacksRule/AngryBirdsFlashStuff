package §&!"§
{
   import § G§.§3!>§;
   import § G§.b2ContactPoint;
   import § G§.b2DynamicTreeBroadPhase;
   import §69§.b2Contact;
   import §69§.b2ContactEdge;
   import §69§.b2ContactFactory;
   import §>!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §!!K§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §+o§:§3!>§;
      
      b2internal var §3!1§:b2Contact;
      
      b2internal var §4!D§:int;
      
      b2internal var §6!$§:b2ContactFilter;
      
      b2internal var §8X§:b2ContactListener;
      
      b2internal var §>Q§:b2ContactFactory;
      
      b2internal var §@!=§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§4!D§ = 0;
         this.§6!$§ = b2ContactFilter.§>3§;
         this.§8X§ = b2ContactListener.§3R§;
         this.§>Q§ = new b2ContactFactory(this.§@!=§);
         this.§+o§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §,Q§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!-§();
         while(_loc7_)
         {
            if(_loc7_.§!!Y§ == _loc5_)
            {
               _loc9_ = _loc7_.§^<§.§"&§();
               _loc10_ = _loc7_.§^<§.§7!Z§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§8L§;
         }
         if(_loc6_.§4!T§(_loc5_) == false)
         {
            return;
         }
         if(this.§6!$§.§4!T§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§>Q§.§?!@§(_loc3_,_loc4_)).§"&§();
         _loc4_ = _loc8_.§7!Z§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§3U§ = null;
         _loc8_.§0]§ = this.m_world.§3!1§;
         if(this.m_world.§3!1§ != null)
         {
            this.m_world.§3!1§.§3U§ = _loc8_;
         }
         this.m_world.§3!1§ = _loc8_;
         _loc8_.§ !D§.§^<§ = _loc8_;
         _loc8_.§ !D§.§!!Y§ = _loc6_;
         _loc8_.§ !D§.§"W§ = null;
         _loc8_.§ !D§.§8L§ = _loc5_.§3!1§;
         if(_loc5_.§3!1§ != null)
         {
            _loc5_.§3!1§.§"W§ = _loc8_.§ !D§;
         }
         _loc5_.§3!1§ = _loc8_.§ !D§;
         _loc8_.§@s§.§^<§ = _loc8_;
         _loc8_.§@s§.§!!Y§ = _loc5_;
         _loc8_.§@s§.§"W§ = null;
         _loc8_.§@s§.§8L§ = _loc6_.§3!1§;
         if(_loc6_.§3!1§ != null)
         {
            _loc6_.§3!1§.§"W§ = _loc8_.§@s§;
         }
         _loc6_.§3!1§ = _loc8_.§@s§;
         ++this.m_world.§4!D§;
      }
      
      public function § b§() : void
      {
         this.§+o§.§,!<§(this.§,Q§);
      }
      
      public function §4!L§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§"&§();
         var _loc3_:b2Fixture = param1.§7!Z§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§ !I§())
         {
            this.§8X§.EndContact(param1);
         }
         if(param1.§3U§)
         {
            param1.§3U§.§0]§ = param1.§0]§;
         }
         if(param1.§0]§)
         {
            param1.§0]§.§3U§ = param1.§3U§;
         }
         if(param1 == this.m_world.§3!1§)
         {
            this.m_world.§3!1§ = param1.§0]§;
         }
         if(param1.§ !D§.§"W§)
         {
            param1.§ !D§.§"W§.§8L§ = param1.§ !D§.§8L§;
         }
         if(param1.§ !D§.§8L§)
         {
            param1.§ !D§.§8L§.§"W§ = param1.§ !D§.§"W§;
         }
         if(param1.§ !D§ == _loc4_.§3!1§)
         {
            _loc4_.§3!1§ = param1.§ !D§.§8L§;
         }
         if(param1.§@s§.§"W§)
         {
            param1.§@s§.§"W§.§8L§ = param1.§@s§.§8L§;
         }
         if(param1.§@s§.§8L§)
         {
            param1.§@s§.§8L§.§"W§ = param1.§@s§.§"W§;
         }
         if(param1.§@s§ == _loc5_.§3!1§)
         {
            _loc5_.§3!1§ = param1.§@s§.§8L§;
         }
         this.§>Q§.§4!L§(param1);
         --this.§4!D§;
      }
      
      public function §+@§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§3!1§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§"&§();
            _loc3_ = _loc1_.§7!Z§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§`!R§();
            }
            else
            {
               if(_loc1_.§?z§ & b2Contact.§62§)
               {
                  if(_loc5_.§4!T§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§`!R§();
                     this.§4!L§(_loc9_);
                     continue;
                  }
                  if(this.§6!$§.§4!T§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§`!R§();
                     this.§4!L§(_loc9_);
                     continue;
                  }
                  _loc1_.§?z§ &= ~b2Contact.§62§;
               }
               _loc6_ = _loc2_.§]j§;
               _loc7_ = _loc3_.§]j§;
               if((_loc8_ = this.§+o§.§;!4§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§`!R§();
                  this.§4!L§(_loc9_);
               }
               else
               {
                  _loc1_.§8!C§(this.§8X§);
                  _loc1_ = _loc1_.§`!R§();
               }
            }
         }
      }
   }
}
