package §?$#§
{
   import §3#h§.b2ContactImpulse;
   import §3#h§.b2ContactListener;
   import §6"0§.b2Contact;
   import §9$A§.b2Manifold;
   import §^0§.§4!t§;
   import §^0§.§5;§;
   
   public class §%"]§ extends b2ContactListener
   {
       
      
      public var mWorld:§@#l§;
      
      public function §%"]§(param1:§@#l§)
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
         var _loc2_:§4!t§ = param1.§#"^§().GetBody().GetUserData() as §4!t§;
         var _loc3_:§4!t§ = param1.§4$E§().GetBody().GetUserData() as §4!t§;
         if(this.mWorld.§ 6§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§+#'§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§4!t§ = param1.§#"^§().GetBody().GetUserData() as §4!t§;
         var _loc3_:§4!t§ = param1.§4$E§().GetBody().GetUserData() as §4!t§;
         if(!(_loc3_ is §5;§))
         {
            param1.§#"^§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §5;§))
         {
            param1.§4$E§().GetBody().SetAwake(true);
         }
         this.mWorld.§ 6§.objects.objectCollisionEnded(_loc2_,_loc3_);
      }
   }
}
