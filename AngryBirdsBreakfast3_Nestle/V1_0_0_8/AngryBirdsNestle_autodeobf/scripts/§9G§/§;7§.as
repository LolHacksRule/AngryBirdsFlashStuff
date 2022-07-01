package §9G§
{
   import §"P§.§,Y§;
   import §"P§.§9"3§;
   import §-j§.b2Manifold;
   import §2"%§.b2Contact;
   import §=!c§.b2ContactImpulse;
   import §=!c§.b2ContactListener;
   
   public class §;7§ extends b2ContactListener
   {
       
      
      public var §>%§:§8!h§;
      
      public function §;7§(param1:§8!h§)
      {
         super();
         this.§>%§ = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§,Y§ = param1.§^h§().GetBody().GetUserData() as §,Y§;
         var _loc3_:§,Y§ = param1.§9!v§().GetBody().GetUserData() as §,Y§;
         var _loc4_:Boolean;
         if(_loc4_ = this.§>%§.§5M§.objects.§ "&§(_loc2_,_loc3_,param1))
         {
            param1.§-3§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§,Y§ = param1.§^h§().GetBody().GetUserData() as §,Y§;
         var _loc3_:§,Y§ = param1.§9!v§().GetBody().GetUserData() as §,Y§;
         if(!(_loc3_ is §9"3§))
         {
            param1.§^h§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §9"3§))
         {
            param1.§9!v§().GetBody().SetAwake(true);
         }
         this.§>%§.§5M§.objects.§2!_§(_loc2_,_loc3_);
      }
   }
}
