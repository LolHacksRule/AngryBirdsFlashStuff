package §2_§
{
   import §#V§.b2ContactImpulse;
   import §#V§.b2ContactListener;
   import §,G§.b2Contact;
   import §8w§.b2Manifold;
   
   public class §8b§ extends b2ContactListener
   {
       
      
      public var mWorld:§%!;§;
      
      public function §8b§(param1:§%!;§)
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
         var _loc2_:Boolean = this.mWorld.§#!3§.objects.§%j§(param1.§68§().GetBody().GetUserData(),param1.§[t§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§'>§(false);
         }
      }
   }
}
