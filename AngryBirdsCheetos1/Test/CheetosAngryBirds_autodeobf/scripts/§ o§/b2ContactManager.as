package § o§
{
   import §"0§.b2internal;
   import §-r§.§@C§;
   import §-r§.b2ContactPoint;
   import §-r§.b2DynamicTreeBroadPhase;
   import §30§.b2Contact;
   import §30§.b2ContactEdge;
   import §30§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §`@§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §<x§:§@C§;
      
      b2internal var §4!]§:b2Contact;
      
      b2internal var §,!^§:int;
      
      b2internal var §1!A§:b2ContactFilter;
      
      b2internal var §8!I§:b2ContactListener;
      
      b2internal var §&=§:b2ContactFactory;
      
      b2internal var §`!Y§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§,!^§ = 0;
         this.§1!A§ = b2ContactFilter.§7l§;
         this.§8!I§ = b2ContactListener.§,x§;
         this.§&=§ = new b2ContactFactory(this.§`!Y§);
         this.§<x§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §-i§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§!!R§();
         while(_loc7_)
         {
            if(_loc7_.§'!4§ == _loc5_)
            {
               _loc9_ = _loc7_.§4§.§`u§();
               _loc10_ = _loc7_.§4§.§7t§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§23§;
         }
         if(_loc6_.§#!7§(_loc5_) == false)
         {
            return;
         }
         if(this.§1!A§.§#!7§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§&=§.§#!M§(_loc3_,_loc4_)).§`u§();
         _loc4_ = _loc8_.§7t§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§`D§ = null;
         _loc8_.§-![§ = this.m_world.§4!]§;
         if(this.m_world.§4!]§ != null)
         {
            this.m_world.§4!]§.§`D§ = _loc8_;
         }
         this.m_world.§4!]§ = _loc8_;
         _loc8_.§9F§.§4§ = _loc8_;
         _loc8_.§9F§.§'!4§ = _loc6_;
         _loc8_.§9F§.§4!N§ = null;
         _loc8_.§9F§.§23§ = _loc5_.§4!]§;
         if(_loc5_.§4!]§ != null)
         {
            _loc5_.§4!]§.§4!N§ = _loc8_.§9F§;
         }
         _loc5_.§4!]§ = _loc8_.§9F§;
         _loc8_.§5!?§.§4§ = _loc8_;
         _loc8_.§5!?§.§'!4§ = _loc5_;
         _loc8_.§5!?§.§4!N§ = null;
         _loc8_.§5!?§.§23§ = _loc6_.§4!]§;
         if(_loc6_.§4!]§ != null)
         {
            _loc6_.§4!]§.§4!N§ = _loc8_.§5!?§;
         }
         _loc6_.§4!]§ = _loc8_.§5!?§;
         ++this.m_world.§,!^§;
      }
      
      public function §!c§() : void
      {
         this.§<x§.§]@§(this.§-i§);
      }
      
      public function §[!$§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§`u§();
         var _loc3_:b2Fixture = param1.§7t§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§?5§())
         {
            this.§8!I§.EndContact(param1);
         }
         if(param1.§`D§)
         {
            param1.§`D§.§-![§ = param1.§-![§;
         }
         if(param1.§-![§)
         {
            param1.§-![§.§`D§ = param1.§`D§;
         }
         if(param1 == this.m_world.§4!]§)
         {
            this.m_world.§4!]§ = param1.§-![§;
         }
         if(param1.§9F§.§4!N§)
         {
            param1.§9F§.§4!N§.§23§ = param1.§9F§.§23§;
         }
         if(param1.§9F§.§23§)
         {
            param1.§9F§.§23§.§4!N§ = param1.§9F§.§4!N§;
         }
         if(param1.§9F§ == _loc4_.§4!]§)
         {
            _loc4_.§4!]§ = param1.§9F§.§23§;
         }
         if(param1.§5!?§.§4!N§)
         {
            param1.§5!?§.§4!N§.§23§ = param1.§5!?§.§23§;
         }
         if(param1.§5!?§.§23§)
         {
            param1.§5!?§.§23§.§4!N§ = param1.§5!?§.§4!N§;
         }
         if(param1.§5!?§ == _loc5_.§4!]§)
         {
            _loc5_.§4!]§ = param1.§5!?§.§23§;
         }
         this.§&=§.§[!$§(param1);
         --this.§,!^§;
      }
      
      public function §super§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§4!]§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§`u§();
            _loc3_ = _loc1_.§7t§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§;!B§();
            }
            else
            {
               if(_loc1_.§0b§ & b2Contact.§+<§)
               {
                  if(_loc5_.§#!7§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§;!B§();
                     this.§[!$§(_loc9_);
                     continue;
                  }
                  if(this.§1!A§.§#!7§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§;!B§();
                     this.§[!$§(_loc9_);
                     continue;
                  }
                  _loc1_.§0b§ &= ~b2Contact.§+<§;
               }
               _loc6_ = _loc2_.§4!W§;
               _loc7_ = _loc3_.§4!W§;
               if((_loc8_ = this.§<x§.§"!F§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§;!B§();
                  this.§[!$§(_loc9_);
               }
               else
               {
                  _loc1_.§do §(this.§8!I§);
                  _loc1_ = _loc1_.§;!B§();
               }
            }
         }
      }
   }
}
