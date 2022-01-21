package §@!b§
{
   import §1B§.b2ContactImpulse;
   import §1B§.b2ContactListener;
   import §>!'§.b2Contact;
   import §]7§.b2Manifold;
   
   public class §+2§ extends b2ContactListener
   {
       
      
      public var mWorld:§7!@§;
      
      public function §+2§(param1:§7!@§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§,U§(param1.§>C§().GetBody().GetUserData(),param1.§3y§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§`c§(false);
         }
      }
   }
}
