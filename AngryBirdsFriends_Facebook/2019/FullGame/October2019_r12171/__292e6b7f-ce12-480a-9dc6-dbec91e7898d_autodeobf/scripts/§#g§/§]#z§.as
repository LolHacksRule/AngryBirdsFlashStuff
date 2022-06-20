package §#g§
{
   import §'#K§.b2ContactImpulse;
   import §'#K§.b2ContactListener;
   import §,#E§.b2Manifold;
   import §-#F§.b2Contact;
   import §;!=§.§'#N§;
   import §;!=§.§`"4§;
   
   public class §]#z§ extends b2ContactListener
   {
       
      
      public var mWorld:§4!`§;
      
      public function §]#z§(param1:§4!`§)
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
         var _loc2_:§'#N§ = param1.§5!s§().GetBody().GetUserData() as §'#N§;
         var _loc3_:§'#N§ = param1.§5!W§().GetBody().GetUserData() as §'#N§;
         var _loc4_:Boolean;
         if(_loc4_ = this.mWorld.§9!E§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§>'§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§'#N§ = param1.§5!s§().GetBody().GetUserData() as §'#N§;
         var _loc3_:§'#N§ = param1.§5!W§().GetBody().GetUserData() as §'#N§;
         if(!(_loc3_ is §`"4§))
         {
            param1.§5!s§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §`"4§))
         {
            param1.§5!W§().GetBody().SetAwake(true);
         }
         this.mWorld.§9!E§.objects.objectCollisionEnded(_loc2_,_loc3_);
      }
   }
}
