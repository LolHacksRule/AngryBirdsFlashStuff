package §@0§
{
   import §'"$§.b2Manifold;
   import §4"O§.b2ContactImpulse;
   import §4"O§.b2ContactListener;
   import §8§.§,§;
   import §8§.§7!0§;
   import §`!k§.b2Contact;
   
   public class § a§ extends b2ContactListener
   {
       
      
      public var mWorld:§9"Q§;
      
      public function § a§(param1:§9"Q§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§,#5§ = param1.§60§().GetBody().GetUserData() as §,#5§;
         var _loc3_:§,#5§ = param1.§#"Y§().GetBody().GetUserData() as §,#5§;
         var _loc4_:Boolean;
         if(_loc4_ = this.mWorld.§=#N§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§7<§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§,#5§ = param1.§60§().GetBody().GetUserData() as §,#5§;
         var _loc3_:§,#5§ = param1.§#"Y§().GetBody().GetUserData() as §,#5§;
         if(!(_loc3_ is §7!0§))
         {
            param1.§60§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §7!0§))
         {
            param1.§#"Y§().GetBody().SetAwake(true);
         }
         this.mWorld.§=#N§.objects.objectCollisionEnded(_loc2_,_loc3_);
      }
   }
}
