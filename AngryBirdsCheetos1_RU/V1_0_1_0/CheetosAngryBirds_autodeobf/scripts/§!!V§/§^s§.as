package §!!V§
{
   import §%!B§.b2Manifold;
   import §43§.b2Contact;
   import §[x§.b2ContactImpulse;
   import §[x§.b2ContactListener;
   
   public class §^s§ extends b2ContactListener
   {
       
      
      public var mWorld:§^=§;
      
      public function §^s§(param1:§^=§)
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
         var _loc2_:Boolean = this.mWorld.§%v§.objects.objectCollision(param1.§31§().GetBody().GetUserData(),param1.§;!E§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§+!N§(false);
         }
      }
   }
}
