package § !D§
{
   import §-!!§.§0!N§;
   import §-!!§.§1#B§;
   import §0# §.b2Contact;
   import §0J§.b2Manifold;
   import §8#t§.b2ContactImpulse;
   import §8#t§.b2ContactListener;
   
   public class §@#?§ extends b2ContactListener
   {
       
      
      public var mWorld:§<!A§;
      
      public function §@#?§(param1:§<!A§)
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
         var _loc2_:§1#B§ = param1.§7"-§().GetBody().GetUserData() as §1#B§;
         var _loc3_:§1#B§ = param1.§5"7§().GetBody().GetUserData() as §1#B§;
         if(this.mWorld.§&!g§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§6!0§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§1#B§ = param1.§7"-§().GetBody().GetUserData() as §1#B§;
         var _loc3_:§1#B§ = param1.§5"7§().GetBody().GetUserData() as §1#B§;
         if(!(_loc3_ is §0!N§))
         {
            param1.§7"-§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §0!N§))
         {
            param1.§5"7§().GetBody().SetAwake(true);
         }
         this.mWorld.§&!g§.objects.objectCollisionEnded(_loc2_,_loc3_);
      }
   }
}
