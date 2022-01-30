package §8!E§
{
   import §,k§.b2Contact;
   import §-g§.b2Manifold;
   import §7!q§.b2ContactImpulse;
   import §7!q§.b2ContactListener;
   
   public class §-n§ extends b2ContactListener
   {
       
      
      public var §2!J§:§^!Q§;
      
      public function §-n§(param1:§^!Q§)
      {
         super();
         this.§2!J§ = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.§2!J§.§7!;§.objects.§]!N§(param1.§[u§().GetBody().GetUserData(),param1.§<j§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§?!W§(false);
         }
      }
   }
}
