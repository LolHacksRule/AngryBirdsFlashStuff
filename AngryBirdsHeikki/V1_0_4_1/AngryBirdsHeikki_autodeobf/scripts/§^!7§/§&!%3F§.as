package §^!7§
{
   import §8!I§.b2ContactImpulse;
   import §8!I§.b2ContactListener;
   import §<"§.b2Manifold;
   import §@!a§.b2Contact;
   
   public class §&!?§ extends b2ContactListener
   {
       
      
      public var mWorld:§%!M§;
      
      public function §&!?§(param1:§%!M§)
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
         var _loc2_:Boolean = this.mWorld.§<&§.objects.§3k§(param1.§#!Z§().GetBody().GetUserData(),param1.§5A§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§@S§(false);
         }
      }
   }
}
