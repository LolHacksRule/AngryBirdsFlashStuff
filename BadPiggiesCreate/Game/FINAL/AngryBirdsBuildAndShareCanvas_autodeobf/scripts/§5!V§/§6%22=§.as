package §5!V§
{
   import §+S§.b2ContactImpulse;
   import §+S§.b2ContactListener;
   import §5!o§.b2Manifold;
   import §;T§.b2Contact;
   
   public class §6"=§ extends b2ContactListener
   {
       
      
      public var §?"$§:§4!#§;
      
      public function §6"=§(param1:§4!#§)
      {
         super();
         this.§?"$§ = param1;
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
         var _loc2_:Boolean = this.§?"$§.§9q§.objects.§8_§(param1.§=!'§().GetBody().GetUserData(),param1.§&O§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§&!j§(false);
         }
      }
   }
}
