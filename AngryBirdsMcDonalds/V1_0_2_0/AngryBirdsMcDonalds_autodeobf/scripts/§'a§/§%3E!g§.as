package §'a§
{
   import §'!9§.b2Contact;
   import §3!g§.b2ContactImpulse;
   import §3!g§.b2ContactListener;
   import §<!!§.b2Manifold;
   
   public class §>!g§ extends b2ContactListener
   {
       
      
      public var mWorld:§8<§;
      
      public function §>!g§(param1:§8<§)
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
         var _loc2_:Boolean = this.mWorld.mLevelMain.objects.§=!V§(param1.§'C§().GetBody().GetUserData(),param1.§<!n§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§+&§(false);
         }
      }
   }
}
