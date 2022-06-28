package §40§
{
   import §#I§.b2ContactImpulse;
   import §#I§.b2ContactListener;
   import §4]§.b2Contact;
   import §>!Z§.b2Manifold;
   
   public class §80§ extends b2ContactListener
   {
       
      
      public var mWorld:§?S§;
      
      public function §80§(param1:§?S§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.mWorld.§#!U§.objects.§33§(param1.§`!a§().GetBody().GetUserData(),param1.§2!s§().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.§#!U§.objects.§&!K§(param1.§`!a§().GetBody().GetUserData(),param1.§2!s§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§@@§(false);
         }
      }
   }
}
