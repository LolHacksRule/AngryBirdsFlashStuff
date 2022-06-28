package §+&§
{
   import § D§.b2ContactImpulse;
   import § D§.b2ContactListener;
   import §&!-§.b2Manifold;
   import §7a§.b2Contact;
   
   public class §8-§ extends b2ContactListener
   {
       
      
      public var mWorld:§8Y§;
      
      public function §8-§(param1:§8Y§)
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
         var _loc2_:Boolean = this.mWorld.§+!X§.objects.§!!u§(param1.§5J§().GetBody().GetUserData(),param1.§@!X§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§!!s§(false);
         }
      }
   }
}
