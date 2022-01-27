package §5!q§
{
   import §%!#§.b2Manifold;
   import §+!,§.b2Contact;
   import §1x§.b2ContactImpulse;
   import §1x§.b2ContactListener;
   import §6"R§.§!z§;
   import §6"R§.§-t§;
   
   public class §"">§ extends b2ContactListener
   {
       
      
      public var mWorld:§]!i§;
      
      public function §"">§(param1:§]!i§)
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
         var _loc2_:§!z§ = param1.§%$§().GetBody().GetUserData() as §!z§;
         var _loc3_:§!z§ = param1.§&#0§().GetBody().GetUserData() as §!z§;
         var _loc4_:Boolean;
         if(_loc4_ = this.mWorld.§]""§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§!!_§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§!z§ = param1.§%$§().GetBody().GetUserData() as §!z§;
         var _loc3_:§!z§ = param1.§&#0§().GetBody().GetUserData() as §!z§;
         if(!(_loc3_ is §-t§))
         {
            param1.§%$§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §-t§))
         {
            param1.§&#0§().GetBody().SetAwake(true);
         }
         this.mWorld.§]""§.objects.§%&§(_loc2_,_loc3_);
      }
   }
}
