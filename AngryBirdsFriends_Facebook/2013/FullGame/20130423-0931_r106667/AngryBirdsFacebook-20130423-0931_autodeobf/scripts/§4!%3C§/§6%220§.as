package §4!<§
{
   import §'"-§.b2Manifold;
   import §'"6§.b2Contact;
   import §6"1§.b2ContactImpulse;
   import §6"1§.b2ContactListener;
   
   public class §6"0§ extends b2ContactListener
   {
       
      
      public var mWorld:§-!5§;
      
      public function §6"0§(param1:§-!5§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.mWorld.mLevelMain.objects.§&'§(param1.§]!A§().GetBody().GetUserData(),param1.§3!]§().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.objectCollision(param1.§]!A§().GetBody().GetUserData(),param1.§3!]§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§]!,§(false);
         }
      }
   }
}
