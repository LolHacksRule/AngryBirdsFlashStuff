package §&F§
{
   import §1z§.b2Contact;
   import §<!L§.b2ContactImpulse;
   import §<!L§.b2ContactListener;
   import §?F§.b2Manifold;
   
   public class §&T§ extends b2ContactListener
   {
       
      
      public var mWorld:§=@§;
      
      public function §&T§(param1:§=@§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§'9§(param1.§&+§().GetBody().GetUserData(),param1.§0!!§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§9%§(false);
         }
      }
   }
}
