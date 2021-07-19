package §+#$§
{
   import §3"5§.§8t§;
   import §3"5§.b2ContactPoint;
   import §3"5§.b2DynamicTreeBroadPhase;
   import §5"i§.b2internal;
   import §8[§.b2Contact;
   import §8[§.b2ContactEdge;
   import §8[§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const § "Q§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §7#U§:§8t§;
      
      b2internal var §'#H§:b2Contact;
      
      b2internal var §1N§:int;
      
      b2internal var §7l§:b2ContactFilter;
      
      b2internal var §?O§:b2ContactListener;
      
      b2internal var §5"!§:b2ContactFactory;
      
      b2internal var §+!z§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§1N§ = 0;
         this.§7l§ = b2ContactFilter.§]#,§;
         this.§?O§ = b2ContactListener.§#!$§;
         this.§5"!§ = new b2ContactFactory(this.§+!z§);
         this.§7#U§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §<"W§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§9!K§();
         while(_loc7_)
         {
            if(_loc7_.other == _loc5_)
            {
               _loc9_ = _loc7_.§>"6§.§?!@§();
               _loc10_ = _loc7_.§>"6§.§;"R§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§]!D§;
         }
         if(_loc6_.§="N§(_loc5_) == false)
         {
            return;
         }
         if(this.§7l§.§="N§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§5"!§.§=!S§(_loc3_,_loc4_)).§?!@§();
         _loc4_ = _loc8_.§;"R§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§ #&§ = null;
         _loc8_.§!"!§ = this.m_world.§'#H§;
         if(this.m_world.§'#H§ != null)
         {
            this.m_world.§'#H§.§ #&§ = _loc8_;
         }
         this.m_world.§'#H§ = _loc8_;
         _loc8_.§`g§.§>"6§ = _loc8_;
         _loc8_.§`g§.other = _loc6_;
         _loc8_.§`g§.§-B§ = null;
         _loc8_.§`g§.§]!D§ = _loc5_.§'#H§;
         if(_loc5_.§'#H§ != null)
         {
            _loc5_.§'#H§.§-B§ = _loc8_.§`g§;
         }
         _loc5_.§'#H§ = _loc8_.§`g§;
         _loc8_.§["[§.§>"6§ = _loc8_;
         _loc8_.§["[§.other = _loc5_;
         _loc8_.§["[§.§-B§ = null;
         _loc8_.§["[§.§]!D§ = _loc6_.§'#H§;
         if(_loc6_.§'#H§ != null)
         {
            _loc6_.§'#H§.§-B§ = _loc8_.§["[§;
         }
         _loc6_.§'#H§ = _loc8_.§["[§;
         ++this.m_world.§1N§;
      }
      
      public function §7"D§() : void
      {
         this.§7#U§.§;"#§(this.§<"W§);
      }
      
      public function §;!"§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§?!@§();
         var _loc3_:b2Fixture = param1.§;"R§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§[#B§())
         {
            this.§?O§.EndContact(param1);
         }
         if(param1.§ #&§)
         {
            param1.§ #&§.§!"!§ = param1.§!"!§;
         }
         if(param1.§!"!§)
         {
            param1.§!"!§.§ #&§ = param1.§ #&§;
         }
         if(param1 == this.m_world.§'#H§)
         {
            this.m_world.§'#H§ = param1.§!"!§;
         }
         if(param1.§`g§.§-B§)
         {
            param1.§`g§.§-B§.§]!D§ = param1.§`g§.§]!D§;
         }
         if(param1.§`g§.§]!D§)
         {
            param1.§`g§.§]!D§.§-B§ = param1.§`g§.§-B§;
         }
         if(param1.§`g§ == _loc4_.§'#H§)
         {
            _loc4_.§'#H§ = param1.§`g§.§]!D§;
         }
         if(param1.§["[§.§-B§)
         {
            param1.§["[§.§-B§.§]!D§ = param1.§["[§.§]!D§;
         }
         if(param1.§["[§.§]!D§)
         {
            param1.§["[§.§]!D§.§-B§ = param1.§["[§.§-B§;
         }
         if(param1.§["[§ == _loc5_.§'#H§)
         {
            _loc5_.§'#H§ = param1.§["[§.§]!D§;
         }
         this.§5"!§.§;!"§(param1);
         --this.§1N§;
      }
      
      public function §9#Z§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§'#H§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§?!@§();
            _loc3_ = _loc1_.§;"R§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§>!>§();
            }
            else
            {
               if(_loc1_.§6b§ & b2Contact.§#!=§)
               {
                  if(_loc5_.§="N§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§>!>§();
                     this.§;!"§(_loc9_);
                     continue;
                  }
                  if(this.§7l§.§="N§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§>!>§();
                     this.§;!"§(_loc9_);
                     continue;
                  }
                  _loc1_.§6b§ &= ~b2Contact.§#!=§;
               }
               _loc6_ = _loc2_.§4"t§;
               _loc7_ = _loc3_.§4"t§;
               if((_loc8_ = this.§7#U§.§?#S§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§>!>§();
                  this.§;!"§(_loc9_);
               }
               else
               {
                  _loc1_.§%!q§(this.§?O§);
                  _loc1_ = _loc1_.§>!>§();
               }
            }
         }
      }
   }
}
