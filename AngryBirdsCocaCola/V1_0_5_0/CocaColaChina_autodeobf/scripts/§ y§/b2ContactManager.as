package § y§
{
   import §!u§.§5c§;
   import §!u§.b2ContactPoint;
   import §!u§.b2DynamicTreeBroadPhase;
   import §0b§.b2Contact;
   import §0b§.b2ContactEdge;
   import §0b§.b2ContactFactory;
   import §54§.b2internal;
   
   use namespace b2internal;
   
   public class b2ContactManager
   {
      
      private static const §^p§:b2ContactPoint = new b2ContactPoint();
       
      
      b2internal var m_world:b2World;
      
      b2internal var §]!V§:§5c§;
      
      b2internal var §"!N§:b2Contact;
      
      b2internal var §'!;§:int;
      
      b2internal var §+!;§:b2ContactFilter;
      
      b2internal var §+!X§:b2ContactListener;
      
      b2internal var §-![§:b2ContactFactory;
      
      b2internal var §"b§;
      
      public function b2ContactManager()
      {
         super();
         this.m_world = null;
         this.§'!;§ = 0;
         this.§+!;§ = b2ContactFilter.§>!<§;
         this.§+!X§ = b2ContactListener.§?!b§;
         this.§-![§ = new b2ContactFactory(this.§"b§);
         this.§]!V§ = new b2DynamicTreeBroadPhase();
      }
      
      public function §<'§(param1:*, param2:*) : void
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
         var _loc7_:b2ContactEdge = _loc6_.§1!D§();
         while(_loc7_)
         {
            if(_loc7_.§3m§ == _loc5_)
            {
               _loc9_ = _loc7_.§`!T§.§^Z§();
               _loc10_ = _loc7_.§`!T§.§3<§();
               if(_loc9_ == _loc3_ && _loc10_ == _loc4_)
               {
                  return;
               }
               if(_loc9_ == _loc4_ && _loc10_ == _loc3_)
               {
                  return;
               }
            }
            _loc7_ = _loc7_.§'_§;
         }
         if(_loc6_.§!=§(_loc5_) == false)
         {
            return;
         }
         if(this.§+!;§.§!=§(_loc3_,_loc4_) == false)
         {
            return;
         }
         var _loc8_:b2Contact;
         _loc3_ = (_loc8_ = this.§-![§.§`Q§(_loc3_,_loc4_)).§^Z§();
         _loc4_ = _loc8_.§3<§();
         _loc5_ = _loc3_.m_body;
         _loc6_ = _loc4_.m_body;
         _loc8_.§7G§ = null;
         _loc8_.§&!+§ = this.m_world.§"!N§;
         if(this.m_world.§"!N§ != null)
         {
            this.m_world.§"!N§.§7G§ = _loc8_;
         }
         this.m_world.§"!N§ = _loc8_;
         _loc8_.§"!5§.§`!T§ = _loc8_;
         _loc8_.§"!5§.§3m§ = _loc6_;
         _loc8_.§"!5§.§#!F§ = null;
         _loc8_.§"!5§.§'_§ = _loc5_.§"!N§;
         if(_loc5_.§"!N§ != null)
         {
            _loc5_.§"!N§.§#!F§ = _loc8_.§"!5§;
         }
         _loc5_.§"!N§ = _loc8_.§"!5§;
         _loc8_.§ 6§.§`!T§ = _loc8_;
         _loc8_.§ 6§.§3m§ = _loc5_;
         _loc8_.§ 6§.§#!F§ = null;
         _loc8_.§ 6§.§'_§ = _loc6_.§"!N§;
         if(_loc6_.§"!N§ != null)
         {
            _loc6_.§"!N§.§#!F§ = _loc8_.§ 6§;
         }
         _loc6_.§"!N§ = _loc8_.§ 6§;
         ++this.m_world.§'!;§;
      }
      
      public function §'=§() : void
      {
         this.§]!V§.§["§(this.§<'§);
      }
      
      public function §5!,§(param1:b2Contact) : void
      {
         var _loc2_:b2Fixture = param1.§^Z§();
         var _loc3_:b2Fixture = param1.§3<§();
         var _loc4_:b2Body = _loc2_.GetBody();
         var _loc5_:b2Body = _loc3_.GetBody();
         if(param1.§,!E§())
         {
            this.§+!X§.EndContact(param1);
         }
         if(param1.§7G§)
         {
            param1.§7G§.§&!+§ = param1.§&!+§;
         }
         if(param1.§&!+§)
         {
            param1.§&!+§.§7G§ = param1.§7G§;
         }
         if(param1 == this.m_world.§"!N§)
         {
            this.m_world.§"!N§ = param1.§&!+§;
         }
         if(param1.§"!5§.§#!F§)
         {
            param1.§"!5§.§#!F§.§'_§ = param1.§"!5§.§'_§;
         }
         if(param1.§"!5§.§'_§)
         {
            param1.§"!5§.§'_§.§#!F§ = param1.§"!5§.§#!F§;
         }
         if(param1.§"!5§ == _loc4_.§"!N§)
         {
            _loc4_.§"!N§ = param1.§"!5§.§'_§;
         }
         if(param1.§ 6§.§#!F§)
         {
            param1.§ 6§.§#!F§.§'_§ = param1.§ 6§.§'_§;
         }
         if(param1.§ 6§.§'_§)
         {
            param1.§ 6§.§'_§.§#!F§ = param1.§ 6§.§#!F§;
         }
         if(param1.§ 6§ == _loc5_.§"!N§)
         {
            _loc5_.§"!N§ = param1.§ 6§.§'_§;
         }
         this.§-![§.§5!,§(param1);
         --this.§'!;§;
      }
      
      public function §92§() : void
      {
         var _loc2_:b2Fixture = null;
         var _loc3_:b2Fixture = null;
         var _loc4_:b2Body = null;
         var _loc5_:b2Body = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Boolean = false;
         var _loc9_:b2Contact = null;
         var _loc1_:b2Contact = this.m_world.§"!N§;
         while(_loc1_)
         {
            _loc2_ = _loc1_.§^Z§();
            _loc3_ = _loc1_.§3<§();
            _loc4_ = _loc2_.GetBody();
            _loc5_ = _loc3_.GetBody();
            if(_loc4_.IsAwake() == false && _loc5_.IsAwake() == false)
            {
               _loc1_ = _loc1_.§3!I§();
            }
            else
            {
               if(_loc1_.§"N§ & b2Contact.§!o§)
               {
                  if(_loc5_.§!=§(_loc4_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§3!I§();
                     this.§5!,§(_loc9_);
                     continue;
                  }
                  if(this.§+!;§.§!=§(_loc2_,_loc3_) == false)
                  {
                     _loc1_ = (_loc9_ = _loc1_).§3!I§();
                     this.§5!,§(_loc9_);
                     continue;
                  }
                  _loc1_.§"N§ &= ~b2Contact.§!o§;
               }
               _loc6_ = _loc2_.§>S§;
               _loc7_ = _loc3_.§>S§;
               if((_loc8_ = this.§]!V§.§"!a§(_loc6_,_loc7_)) == false)
               {
                  _loc1_ = (_loc9_ = _loc1_).§3!I§();
                  this.§5!,§(_loc9_);
               }
               else
               {
                  _loc1_.§[<§(this.§+!X§);
                  _loc1_ = _loc1_.§3!I§();
               }
            }
         }
      }
   }
}
