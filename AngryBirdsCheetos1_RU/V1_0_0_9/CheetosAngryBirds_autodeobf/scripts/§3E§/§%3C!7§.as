package §3E§
{
   import §!!B§.b2ContactImpulse;
   import §!!B§.b2ContactListener;
   import §3!&§.b2Contact;
   import §7S§.b2Manifold;
   
   public class §<!7§ extends b2ContactListener
   {
       
      
      public var mWorld:§<W§;
      
      public function §<!7§(param1:§<W§)
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
         var _loc2_:Boolean = this.mWorld.§]v§.objects.objectCollision(param1.§-!V§().GetBody().GetUserData(),param1.§0&§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§>!&§(false);
         }
      }
   }
}
