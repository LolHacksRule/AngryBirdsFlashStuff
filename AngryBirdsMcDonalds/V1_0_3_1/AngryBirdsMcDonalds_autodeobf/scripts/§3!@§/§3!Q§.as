package §3!@§
{
   import §&x§.b2ContactImpulse;
   import §&x§.b2ContactListener;
   import §'!J§.b2Contact;
   import §-!T§.b2Manifold;
   
   public class §3!Q§ extends b2ContactListener
   {
       
      
      public var mWorld:§'=§;
      
      public function §3!Q§(param1:§'=§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§3z§(param1.§+!m§().GetBody().GetUserData(),param1.§4j§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§&I§(false);
         }
      }
   }
}
