package §2z§
{
   import §0!?§.b2ContactImpulse;
   import §0!?§.b2ContactListener;
   import §;!U§.b2Contact;
   import §`!E§.b2Manifold;
   
   public class §#"§ extends b2ContactListener
   {
       
      
      public var mWorld:§@!Z§;
      
      public function §#"§(param1:§@!Z§)
      {
         super();
         this.mWorld = param1;
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
         var _loc2_:Boolean = this.mWorld.§7o§.objects.§;q§(param1.§!^§().GetBody().GetUserData(),param1.§"P§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§ +§(false);
         }
      }
   }
}
