package §0V§
{
   import §!!#§.b2Manifold;
   import §9t§.b2ContactImpulse;
   import §9t§.b2ContactListener;
   import §[-§.b2Contact;
   
   public class §7I§ extends b2ContactListener
   {
       
      
      public var mWorld:§#B§;
      
      public function §7I§(param1:§#B§)
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
         var _loc2_:Boolean = this.mWorld.§!q§.objects.objectCollision(param1.§>!b§().GetBody().GetUserData(),param1.§1t§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§1i§(false);
         }
      }
   }
}
