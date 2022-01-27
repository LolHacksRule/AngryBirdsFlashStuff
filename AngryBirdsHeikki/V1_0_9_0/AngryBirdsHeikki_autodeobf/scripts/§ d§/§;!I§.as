package § d§
{
   import §=_§.b2Contact;
   import §^!Z§.b2ContactImpulse;
   import §^!Z§.b2ContactListener;
   import §^t§.b2Manifold;
   
   public class §;!I§ extends b2ContactListener
   {
       
      
      public var mWorld:§0!F§;
      
      public function §;!I§(param1:§0!F§)
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
         var _loc2_:Boolean = this.mWorld.§"2§.objects.§use §(param1.§]!4§().GetBody().GetUserData(),param1.§5#§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§?9§(false);
         }
      }
   }
}
