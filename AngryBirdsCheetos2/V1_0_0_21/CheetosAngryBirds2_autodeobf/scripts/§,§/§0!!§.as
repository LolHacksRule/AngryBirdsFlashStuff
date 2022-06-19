package §,§
{
   import § o§.b2ContactImpulse;
   import § o§.b2ContactListener;
   import §-r§.b2Manifold;
   import §30§.b2Contact;
   
   public class §0!!§ extends b2ContactListener
   {
       
      
      public var mWorld:§!f§;
      
      public function §0!!§(param1:§!f§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.mWorld.§^!I§.objects.§"!§(param1.§`u§().GetBody().GetUserData(),param1.§7t§().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.§^!I§.objects.objectCollision(param1.§`u§().GetBody().GetUserData(),param1.§7t§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§[!O§(false);
         }
      }
   }
}
