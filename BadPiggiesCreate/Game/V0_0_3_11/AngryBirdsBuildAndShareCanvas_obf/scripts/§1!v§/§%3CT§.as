package §1!v§
{
   import § 6§.b2Manifold;
   import §7z§.b2ContactImpulse;
   import §7z§.b2ContactListener;
   import §9![§.b2Contact;
   
   public class §<T§ extends b2ContactListener
   {
       
      
      public var §<"7§:§`+§;
      
      public function §<T§(param1:§`+§)
      {
         super();
         this.§<"7§ = param1;
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
         var _loc2_:Boolean = this.§<"7§.§]Z§.objects.§ !,§(param1.§^!U§().GetBody().GetUserData(),param1.§`[§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§`]§(false);
         }
      }
   }
}
