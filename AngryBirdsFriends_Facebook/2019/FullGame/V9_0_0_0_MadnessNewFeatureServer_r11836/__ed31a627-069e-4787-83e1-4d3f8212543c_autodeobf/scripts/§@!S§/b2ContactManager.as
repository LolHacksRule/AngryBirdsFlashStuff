package §@!S§
{
   import §1#]§.b2Contact;
   import §1#]§.b2ContactEdge;
   import §1#]§.b2ContactFactory;
   import §4$E§.§2!I§;
   import §4$E§.b2ContactPoint;
   import §4$E§.b2DynamicTreeBroadPhase;
   import §?N§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §9#G§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §&# §:§2!I§;
      
      b2internal var §<!a§:b2Contact;
      
      b2internal var §=!D§:int;
      
      b2internal var §0!n§:b2ContactFilter;
      
      b2internal var §,!G§:b2ContactListener;
      
      b2internal var §5#b§:b2ContactFactory;
      
      b2internal var §^w§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§=!D§ = 0;
         this.§0!n§ = b2ContactFilter.§^;§;
         this.§,!G§ = b2ContactListener.§,"s§;
         this.§5#b§ = new b2ContactFactory(this.§^w§);
         this.§&# § = new b2DynamicTreeBroadPhase();
      }
      
      public function §1#E§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§5!A§();
         while(_loc7_)
         {
            if(_loc7_.§import§ == _loc5_)
            {
               _loc9_ = _loc7_.§4E§.§9$ §();
               _loc10_ = _loc7_.§4E§.§@!D§();
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
         if(_loc6_.§`#m§(_loc5_) == false)
         {
            return;
         }
         if(this.§0!n§.§`#m§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§5#b§.§,"h§(_loc3_,_loc4_)).§9$ §();
         _loc4_ = _loc8_.§@!D§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§@"4§ = null;
         _loc8_.§@W§ = this.m_world.§<!a§;
         if(this.m_world.§<!a§ != null)
         {
            this.m_world.§<!a§.§@"4§ = _loc8_;
         }
         this.m_world.§<!a§ = _loc8_;
         _loc8_.§+![§.§4E§ = _loc8_;
         _loc8_.§+![§.§import§ = _loc6_;
         _loc8_.§+![§.§!$%§ = null;
         _loc8_.§+![§.next = _loc5_.§<!a§;
         if(_loc5_.§<!a§ != null)
         {
            _loc5_.§<!a§.§!$%§ = _loc8_.§+![§;
         }
         _loc5_.§<!a§ = _loc8_.§+![§;
         _loc8_.§6!#§.§4E§ = _loc8_;
         _loc8_.§6!#§.§import§ = _loc5_;
         _loc8_.§6!#§.§!$%§ = null;
         _loc8_.§6!#§.next = _loc6_.§<!a§;
         if(_loc6_.§<!a§ != null)
         {
            _loc6_.§<!a§.§!$%§ = _loc8_.§6!#§;
         }
         _loc6_.§<!a§ = _loc8_.§6!#§;
         ++this.m_world.§=!D§;
      }
      
      public function §2"9§() : void
      {
         this.§&# §.§=?§(this.§1#E§);
      }
      
      public function §;"@§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§9$ §();
         var _loc3_:b2Fixture = param1.§@!D§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§]!#§())
         {
            this.§,!G§.EndContact(param1);
         }
         if(param1.§@"4§)
         {
            param1.§@"4§.§@W§ = param1.§@W§;
         }
         if(param1.§@W§)
         {
            param1.§@W§.§@"4§ = param1.§@"4§;
         }
         if(param1 == this.m_world.§<!a§)
         {
            this.m_world.§<!a§ = param1.§@W§;
         }
         if(param1.§+![§.§!$%§)
         {
            param1.§+![§.§!$%§.next = param1.§+![§.next;
         }
         if(param1.§+![§.next)
         {
            param1.§+![§.next.§!$%§ = param1.§+![§.§!$%§;
         }
         if(param1.§+![§ == _loc4_.§<!a§)
         {
            _loc4_.§<!a§ = param1.§+![§.next;
         }
         if(param1.§6!#§.§!$%§)
         {
            param1.§6!#§.§!$%§.next = param1.§6!#§.next;
         }
         if(param1.§6!#§.next)
         {
            param1.§6!#§.next.§!$%§ = param1.§6!#§.§!$%§;
         }
         if(param1.§6!#§ == _loc5_.§<!a§)
         {
            _loc5_.§<!a§ = param1.§6!#§.next;
         }
         this.§5#b§.§;"@§(param1);
         --this.§=!D§;
      }
      
      public function §?!V§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§<!a§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§9$ §();
            _loc3_ = _loc1_.§@!D§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§%$>§();
            }
            else
            {
               if(_loc1_.§!#z§ & b2Contact.§5#k§ || _loc4_.§<#A§ || _loc5_.§<#A§)
               {
                  if(_loc5_.§`#m§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%$>§();
                     this.§;"@§(_loc9_);
                     continue;
                  }
                  if(this.§0!n§.§`#m§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%$>§();
                     this.§;"@§(_loc9_);
                     continue;
                  }
                  _loc1_.§!#z§ &= ~b2Contact.§5#k§;
               }
               _loc6_ = _loc2_.§;_§;
               _loc7_ = _loc3_.§;_§;
               if((_loc8_ = this.§&# §.§9#]§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§%$>§();
                  this.§;"@§(_loc9_);
               }
               else
               {
                  _loc1_.§&R§(this.§,!G§);
                  _loc1_ = _loc1_.§%$>§();
               }
            }
         }
      }
   }
}
