package §%h§
{
   import §&!n§.b2Manifold;
   import §?!E§.b2ContactImpulse;
   import §?!E§.b2ContactListener;
   import §`§.b2Contact;
   
   public class §0!_§ extends b2ContactListener
   {
       
      
      public var §'!2§:§3m§;
      
      public function §0!_§(param1:§3m§)
      {
         super();
         this.§'!2§ = param1;
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
         var _loc2_:Boolean = this.§'!2§.§>"2§.objects.§ W§(param1.§2&§().GetBody().GetUserData(),param1.§=!C§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§0!D§(false);
         }
      }
   }
}
