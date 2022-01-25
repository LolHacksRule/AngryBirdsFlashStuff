package §4A§
{
   import §3f§.b2ContactImpulse;
   import §3f§.b2ContactListener;
   import §<l§.b2Contact;
   import §=!!§.b2Manifold;
   
   public class §3!]§ extends b2ContactListener
   {
       
      
      public var mWorld:§'!;§;
      
      public function §3!]§(param1:§'!;§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§9[§(param1.§'+§().GetBody().GetUserData(),param1.§&4§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§#!3§(false);
         }
      }
   }
}
