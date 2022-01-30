package §4!s§
{
   import §1!1§.b2Manifold;
   import §2!+§.b2Contact;
   import §`]§.b2ContactImpulse;
   import §`]§.b2ContactListener;
   
   public class §6!m§ extends b2ContactListener
   {
       
      
      public var §;+§:§6A§;
      
      public function §6!m§(param1:§6A§)
      {
         super();
         this.§;+§ = param1;
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
         var _loc2_:Boolean = this.§;+§.§,!T§.objects.§?,§(param1.§1'§().GetBody().GetUserData(),param1.§?"-§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§^!'§(false);
         }
      }
   }
}
