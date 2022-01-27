package §^#>§
{
   import §+#$§.b2ContactImpulse;
   import §+#$§.b2ContactListener;
   import §3"5§.b2Manifold;
   import §7P§.§1#E§;
   import §7P§.§7B§;
   import §8[§.b2Contact;
   
   public class §1!y§ extends b2ContactListener
   {
       
      
      public var mWorld:§^P§;
      
      public function §1!y§(param1:§^P§)
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
         var _loc2_:§7B§ = param1.§?!@§().GetBody().GetUserData() as §7B§;
         var _loc3_:§7B§ = param1.§;"R§().GetBody().GetUserData() as §7B§;
         var _loc4_:Boolean;
         if(_loc4_ = this.mWorld.§2#G§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§5G§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§7B§ = param1.§?!@§().GetBody().GetUserData() as §7B§;
         var _loc3_:§7B§ = param1.§;"R§().GetBody().GetUserData() as §7B§;
         if(!(_loc3_ is §1#E§))
         {
            param1.§?!@§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §1#E§))
         {
            param1.§;"R§().GetBody().SetAwake(true);
         }
         this.mWorld.§2#G§.objects.§#K§(_loc2_,_loc3_);
      }
   }
}
