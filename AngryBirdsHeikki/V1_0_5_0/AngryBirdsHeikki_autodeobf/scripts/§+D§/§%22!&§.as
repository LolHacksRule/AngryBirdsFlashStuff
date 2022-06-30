package §+D§
{
   import §%]§.b2Manifold;
   import §?!F§.b2ContactImpulse;
   import §?!F§.b2ContactListener;
   import §@^§.b2Contact;
   
   public class §"!&§ extends b2ContactListener
   {
       
      
      public var mWorld:§5!6§;
      
      public function §"!&§(param1:§5!6§)
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
         var _loc2_:Boolean = this.mWorld.§^!4§.objects.§5!A§(param1.§@!$§().GetBody().GetUserData(),param1.§1!+§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§&i§(false);
         }
      }
   }
}
