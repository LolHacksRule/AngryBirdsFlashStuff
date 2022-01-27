package §#!X§
{
   import §3!1§.b2Contact;
   import §3!1§.b2ContactEdge;
   import §3!1§.b2ContactFactory;
   import §3m§.§+!q§;
   import §3m§.b2ContactPoint;
   import §3m§.b2DynamicTreeBroadPhase;
   import §@!@§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §,!=§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §!"7§:§+!q§;
      
      b2internal var §7!^§:b2Contact;
      
      b2internal var §`0§:int;
      
      b2internal var §&7§:b2ContactFilter;
      
      b2internal var §true§:b2ContactListener;
      
      b2internal var §'!c§:b2ContactFactory;
      
      b2internal var §9!H§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§`0§ = 0;
         this.§&7§ = b2ContactFilter.§&[§;
         this.§true§ = b2ContactListener.§4!h§;
         this.§'!c§ = new b2ContactFactory(this.§9!H§);
         this.§!"7§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §%J§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!I§();
         while(_loc7_)
         {
            if(_loc7_.§&!7§ == _loc5_)
            {
               _loc9_ = _loc7_.§9p§.§4!`§();
               _loc10_ = _loc7_.§9p§.§?!y§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§+!R§;
         }
         if(_loc6_.§&e§(_loc5_) == false)
         {
            return;
         }
         if(this.§&7§.§&e§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§'!c§.§;8§(_loc3_,_loc4_)).§4!`§();
         _loc4_ = _loc8_.§?!y§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§%4§ = null;
         _loc8_.§`!s§ = this.m_world.§7!^§;
         if(this.m_world.§7!^§ != null)
         {
            this.m_world.§7!^§.§%4§ = _loc8_;
         }
         this.m_world.§7!^§ = _loc8_;
         _loc8_.§7!;§.§9p§ = _loc8_;
         _loc8_.§7!;§.§&!7§ = _loc6_;
         _loc8_.§7!;§.§5W§ = null;
         _loc8_.§7!;§.§+!R§ = _loc5_.§7!^§;
         if(_loc5_.§7!^§ != null)
         {
            _loc5_.§7!^§.§5W§ = _loc8_.§7!;§;
         }
         _loc5_.§7!^§ = _loc8_.§7!;§;
         _loc8_.§?!E§.§9p§ = _loc8_;
         _loc8_.§?!E§.§&!7§ = _loc5_;
         _loc8_.§?!E§.§5W§ = null;
         _loc8_.§?!E§.§+!R§ = _loc6_.§7!^§;
         if(_loc6_.§7!^§ != null)
         {
            _loc6_.§7!^§.§5W§ = _loc8_.§?!E§;
         }
         _loc6_.§7!^§ = _loc8_.§?!E§;
         ++this.m_world.§`0§;
      }
      
      public function §0!S§() : void
      {
         this.§!"7§.§[j§(this.§%J§);
      }
      
      public function §5[§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§4!`§();
         var _loc3_:b2Fixture = param1.§?!y§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§^!&§())
         {
            this.§true§.EndContact(param1);
         }
         if(param1.§%4§)
         {
            param1.§%4§.§`!s§ = param1.§`!s§;
         }
         if(param1.§`!s§)
         {
            param1.§`!s§.§%4§ = param1.§%4§;
         }
         if(param1 == this.m_world.§7!^§)
         {
            this.m_world.§7!^§ = param1.§`!s§;
         }
         if(param1.§7!;§.§5W§)
         {
            param1.§7!;§.§5W§.§+!R§ = param1.§7!;§.§+!R§;
         }
         if(param1.§7!;§.§+!R§)
         {
            param1.§7!;§.§+!R§.§5W§ = param1.§7!;§.§5W§;
         }
         if(param1.§7!;§ == _loc4_.§7!^§)
         {
            _loc4_.§7!^§ = param1.§7!;§.§+!R§;
         }
         if(param1.§?!E§.§5W§)
         {
            param1.§?!E§.§5W§.§+!R§ = param1.§?!E§.§+!R§;
         }
         if(param1.§?!E§.§+!R§)
         {
            param1.§?!E§.§+!R§.§5W§ = param1.§?!E§.§5W§;
         }
         if(param1.§?!E§ == _loc5_.§7!^§)
         {
            _loc5_.§7!^§ = param1.§?!E§.§+!R§;
         }
         this.§'!c§.§5[§(param1);
         --this.§`0§;
      }
      
      public function §,"!§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§7!^§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§4!`§();
            _loc3_ = _loc1_.§?!y§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§6!4§();
            }
            else
            {
               if(_loc1_.§2!K§ & b2Contact.§7!N§)
               {
                  if(_loc5_.§&e§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§6!4§();
                     this.§5[§(_loc9_);
                     continue;
                  }
                  if(this.§&7§.§&e§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§6!4§();
                     this.§5[§(_loc9_);
                     continue;
                  }
                  _loc1_.§2!K§ &= ~b2Contact.§7!N§;
               }
               _loc6_ = _loc2_.§[f§;
               _loc7_ = _loc3_.§[f§;
               if((_loc8_ = this.§!"7§.§7"3§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§6!4§();
                  this.§5[§(_loc9_);
               }
               else
               {
                  _loc1_.§;""§(this.§true§);
                  _loc1_ = _loc1_.§6!4§();
               }
            }
         }
      }
   }
}
