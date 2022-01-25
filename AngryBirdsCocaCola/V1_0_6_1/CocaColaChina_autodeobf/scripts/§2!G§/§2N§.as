package §2!G§
{
   import § y§.b2ContactImpulse;
   import § y§.b2ContactListener;
   import §!u§.b2Manifold;
   import §0b§.b2Contact;
   
   public class §2N§ extends b2ContactListener
   {
       
      
      public var mWorld:§ e§;
      
      public function §2N§(param1:§ e§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§ ?§(param1.§^Z§().GetBody().GetUserData(),param1.§3<§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§'!_§(false);
         }
      }
   }
}
