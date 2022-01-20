package § !J§
{
   import §,!V§.b2Manifold;
   import §6!g§.b2Contact;
   import §8T§.b2ContactImpulse;
   import §8T§.b2ContactListener;
   
   public class §,=§ extends b2ContactListener
   {
       
      
      public var mWorld:§=a§;
      
      public function §,=§(param1:§=a§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.mWorld.mLevelMain.objects.§ !'§(param1.§8!O§().GetBody().GetUserData(),param1.§>$§().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§<^§(param1.§8!O§().GetBody().GetUserData(),param1.§>$§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§;!G§(false);
         }
      }
   }
}
