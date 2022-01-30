package §?!E§
{
   import §&!n§.§7W§;
   import §&!n§.b2ContactPoint;
   import §&!n§.b2DynamicTreeBroadPhase;
   import §8,§.b2internal;
   import §`§.b2Contact;
   import §`§.b2ContactEdge;
   import §`§.b2ContactFactory;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §6y§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §'!G§:§7W§;
      
      b2internal var §2v§:b2Contact;
      
      b2internal var §2o§:int;
      
      b2internal var §]F§:b2ContactFilter;
      
      b2internal var §[!c§:b2ContactListener;
      
      b2internal var §+!R§:b2ContactFactory;
      
      b2internal var §[=§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§2o§ = 0;
         this.§]F§ = b2ContactFilter.§ 2§;
         this.§[!c§ = b2ContactListener.§-!t§;
         this.§+!R§ = new b2ContactFactory(this.§[=§);
         this.§'!G§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §^!1§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§>!I§();
         while(_loc7_)
         {
            if(_loc7_.§6!,§ == _loc5_)
            {
               _loc9_ = _loc7_.§^!;§.§2&§();
               _loc10_ = _loc7_.§^!;§.§=!C§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§9"#§;
         }
         if(_loc6_.§`!r§(_loc5_) == false)
         {
            return;
         }
         if(this.§]F§.§`!r§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§+!R§.§-"$§(_loc3_,_loc4_)).§2&§();
         _loc4_ = _loc8_.§=!C§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§2<§ = null;
         _loc8_.§-!7§ = this.m_world.§2v§;
         if(this.m_world.§2v§ != null)
         {
            this.m_world.§2v§.§2<§ = _loc8_;
         }
         this.m_world.§2v§ = _loc8_;
         _loc8_.§0p§.§^!;§ = _loc8_;
         _loc8_.§0p§.§6!,§ = _loc6_;
         _loc8_.§0p§.§,"4§ = null;
         _loc8_.§0p§.§9"#§ = _loc5_.§2v§;
         if(_loc5_.§2v§ != null)
         {
            _loc5_.§2v§.§,"4§ = _loc8_.§0p§;
         }
         _loc5_.§2v§ = _loc8_.§0p§;
         _loc8_.§;X§.§^!;§ = _loc8_;
         _loc8_.§;X§.§6!,§ = _loc5_;
         _loc8_.§;X§.§,"4§ = null;
         _loc8_.§;X§.§9"#§ = _loc6_.§2v§;
         if(_loc6_.§2v§ != null)
         {
            _loc6_.§2v§.§,"4§ = _loc8_.§;X§;
         }
         _loc6_.§2v§ = _loc8_.§;X§;
         ++this.m_world.§2o§;
      }
      
      public function §9!!§() : void
      {
         this.§'!G§.§[!p§(this.§^!1§);
      }
      
      public function §@!,§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§2&§();
         var _loc3_:b2Fixture = param1.§=!C§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§," §())
         {
            this.§[!c§.EndContact(param1);
         }
         if(param1.§2<§)
         {
            param1.§2<§.§-!7§ = param1.§-!7§;
         }
         if(param1.§-!7§)
         {
            param1.§-!7§.§2<§ = param1.§2<§;
         }
         if(param1 == this.m_world.§2v§)
         {
            this.m_world.§2v§ = param1.§-!7§;
         }
         if(param1.§0p§.§,"4§)
         {
            param1.§0p§.§,"4§.§9"#§ = param1.§0p§.§9"#§;
         }
         if(param1.§0p§.§9"#§)
         {
            param1.§0p§.§9"#§.§,"4§ = param1.§0p§.§,"4§;
         }
         if(param1.§0p§ == _loc4_.§2v§)
         {
            _loc4_.§2v§ = param1.§0p§.§9"#§;
         }
         if(param1.§;X§.§,"4§)
         {
            param1.§;X§.§,"4§.§9"#§ = param1.§;X§.§9"#§;
         }
         if(param1.§;X§.§9"#§)
         {
            param1.§;X§.§9"#§.§,"4§ = param1.§;X§.§,"4§;
         }
         if(param1.§;X§ == _loc5_.§2v§)
         {
            _loc5_.§2v§ = param1.§;X§.§9"#§;
         }
         this.§+!R§.§@!,§(param1);
         --this.§2o§;
      }
      
      public function §+!'§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§2v§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§2&§();
            _loc3_ = _loc1_.§=!C§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§%T§();
            }
            else
            {
               if(_loc1_.§5"4§ & b2Contact.§+%§)
               {
                  if(_loc5_.§`!r§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%T§();
                     this.§@!,§(_loc9_);
                     continue;
                  }
                  if(this.§]F§.§`!r§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§%T§();
                     this.§@!,§(_loc9_);
                     continue;
                  }
                  _loc1_.§5"4§ &= ~b2Contact.§+%§;
               }
               _loc6_ = _loc2_.§%!I§;
               _loc7_ = _loc3_.§%!I§;
               if((_loc8_ = this.§'!G§.§=!1§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§%T§();
                  this.§@!,§(_loc9_);
               }
               else
               {
                  _loc1_.§0a§(this.§[!c§);
                  _loc1_ = _loc1_.§%T§();
               }
            }
         }
      }
   }
}
