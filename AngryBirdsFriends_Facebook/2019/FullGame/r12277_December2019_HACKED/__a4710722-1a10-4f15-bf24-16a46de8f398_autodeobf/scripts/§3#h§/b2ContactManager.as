package §3#h§
{
   import §1#F§.b2internal;
   import §6"0§.b2Contact;
   import §6"0§.b2ContactEdge;
   import §6"0§.b2ContactFactory;
   import §9$A§.§]"-§;
   import §9$A§.b2ContactPoint;
   import §9$A§.b2DynamicTreeBroadPhase;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §+#d§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §4g§:§]"-§;
      
      b2internal var §?!Q§:b2Contact;
      
      b2internal var §%8§:int;
      
      b2internal var §24§:b2ContactFilter;
      
      b2internal var §8#<§:b2ContactListener;
      
      b2internal var §#"1§:b2ContactFactory;
      
      b2internal var §1#v§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§%8§ = 0;
         this.§24§ = b2ContactFilter.§0_§;
         this.§8#<§ = b2ContactListener.§+!Z§;
         this.§#"1§ = new b2ContactFactory(this.§1#v§);
         this.§4g§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §-!D§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§`!V§();
         while(_loc7_)
         {
            if(_loc7_.§5"&§ == _loc5_)
            {
               _loc9_ = _loc7_.§&$-§.§#"^§();
               _loc10_ = _loc7_.§&$-§.§4$E§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.next;
         }
         if(_loc6_.§1!j§(_loc5_) == false)
         {
            return;
         }
         if(this.§24§.§1!j§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§#"1§.§'#q§(_loc3_,_loc4_)).§#"^§();
         _loc4_ = _loc8_.§4$E§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§2Y§ = null;
         _loc8_.§7<§ = this.m_world.§?!Q§;
         if(this.m_world.§?!Q§ != null)
         {
            this.m_world.§?!Q§.§2Y§ = _loc8_;
         }
         this.m_world.§?!Q§ = _loc8_;
         _loc8_.§0#J§.§&$-§ = _loc8_;
         _loc8_.§0#J§.§5"&§ = _loc6_;
         _loc8_.§0#J§.§^!p§ = null;
         _loc8_.§0#J§.next = _loc5_.§?!Q§;
         if(_loc5_.§?!Q§ != null)
         {
            _loc5_.§?!Q§.§^!p§ = _loc8_.§0#J§;
         }
         _loc5_.§?!Q§ = _loc8_.§0#J§;
         _loc8_.§]$6§.§&$-§ = _loc8_;
         _loc8_.§]$6§.§5"&§ = _loc5_;
         _loc8_.§]$6§.§^!p§ = null;
         _loc8_.§]$6§.next = _loc6_.§?!Q§;
         if(_loc6_.§?!Q§ != null)
         {
            _loc6_.§?!Q§.§^!p§ = _loc8_.§]$6§;
         }
         _loc6_.§?!Q§ = _loc8_.§]$6§;
         ++this.m_world.§%8§;
      }
      
      public function §;!;§() : void
      {
         this.§4g§.§7"6§(this.§-!D§);
      }
      
      public function §0"y§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§#"^§();
         var _loc3_:b2Fixture = param1.§4$E§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§;#9§())
         {
            this.§8#<§.EndContact(param1);
         }
         if(param1.§2Y§)
         {
            param1.§2Y§.§7<§ = param1.§7<§;
         }
         if(param1.§7<§)
         {
            param1.§7<§.§2Y§ = param1.§2Y§;
         }
         if(param1 == this.m_world.§?!Q§)
         {
            this.m_world.§?!Q§ = param1.§7<§;
         }
         if(param1.§0#J§.§^!p§)
         {
            param1.§0#J§.§^!p§.next = param1.§0#J§.next;
         }
         if(param1.§0#J§.next)
         {
            param1.§0#J§.next.§^!p§ = param1.§0#J§.§^!p§;
         }
         if(param1.§0#J§ == _loc4_.§?!Q§)
         {
            _loc4_.§?!Q§ = param1.§0#J§.next;
         }
         if(param1.§]$6§.§^!p§)
         {
            param1.§]$6§.§^!p§.next = param1.§]$6§.next;
         }
         if(param1.§]$6§.next)
         {
            param1.§]$6§.next.§^!p§ = param1.§]$6§.§^!p§;
         }
         if(param1.§]$6§ == _loc5_.§?!Q§)
         {
            _loc5_.§?!Q§ = param1.§]$6§.next;
         }
         this.§#"1§.§0"y§(param1);
         --this.§%8§;
      }
      
      public function §@#_§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§?!Q§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§#"^§();
            _loc3_ = _loc1_.§4$E§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§6"t§();
            }
            else
            {
               if(_loc1_.§#!E§ & b2Contact.§`Z§ || _loc4_.§]!y§ || _loc5_.§]!y§)
               {
                  if(_loc5_.§1!j§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§6"t§();
                     this.§0"y§(_loc9_);
                     continue;
                  }
                  if(this.§24§.§1!j§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§6"t§();
                     this.§0"y§(_loc9_);
                     continue;
                  }
                  _loc1_.§#!E§ &= ~b2Contact.§`Z§;
               }
               _loc6_ = _loc2_.§@#s§;
               _loc7_ = _loc3_.§@#s§;
               if(Boolean(this.§4g§.§!"j§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§6"t§();
                  this.§0"y§(_loc9_);
               }
               else
               {
                  _loc1_.§&#`§(this.§8#<§);
                  _loc1_ = _loc1_.§6"t§();
               }
            }
         }
      }
   }
}
