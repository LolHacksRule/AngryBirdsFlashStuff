package §<L§
{
   import §7!5§.b2ContactImpulse;
   import §7!5§.b2ContactListener;
   import §8!n§.b2Manifold;
   import §;W§.b2Contact;
   
   public class §'!D§ extends b2ContactListener
   {
       
      
      public var mWorld:§95§;
      
      public function §'!D§(param1:§95§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§!!=§(param1.§"![§().GetBody().GetUserData(),param1.§5,§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§=n§(false);
         }
      }
   }
}
