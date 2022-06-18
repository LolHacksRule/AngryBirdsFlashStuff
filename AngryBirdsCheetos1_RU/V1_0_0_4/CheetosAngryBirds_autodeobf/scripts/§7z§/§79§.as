package §7z§
{
   import §&i§.b2ContactImpulse;
   import §&i§.b2ContactListener;
   import §'z§.b2Contact;
   import §]M§.b2Manifold;
   
   public class §79§ extends b2ContactListener
   {
       
      
      public var mWorld:§&2§;
      
      public function §79§(param1:§&2§)
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
         var _loc2_:Boolean = this.mWorld.§^'§.objects.objectCollision(param1.§"q§().GetBody().GetUserData(),param1.§^x§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§^!9§(false);
         }
      }
   }
}
