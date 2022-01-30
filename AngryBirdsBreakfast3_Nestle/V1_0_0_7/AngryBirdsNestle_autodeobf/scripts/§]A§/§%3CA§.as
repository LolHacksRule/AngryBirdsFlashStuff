package §]A§
{
   import §!!o§.b2Manifold;
   import §'!^§.b2Contact;
   import §0!j§.b2ContactImpulse;
   import §0!j§.b2ContactListener;
   import §2!k§.§,@§;
   
   public class §<A§ extends b2ContactListener
   {
       
      
      public var §1!A§:§6!3§;
      
      public function §<A§(param1:§6!3§)
      {
         super();
         this.§1!A§ = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§,@§ = param1.§01§().GetBody().GetUserData() as §,@§;
         var _loc3_:§,@§ = param1.§9!,§().GetBody().GetUserData() as §,@§;
         var _loc4_:Boolean;
         if(_loc4_ = this.§1!A§.§+"1§.objects.§3!i§(_loc2_,_loc3_))
         {
            param1.§%A§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§,@§ = param1.§01§().GetBody().GetUserData() as §,@§;
         var _loc3_:§,@§ = param1.§9!,§().GetBody().GetUserData() as §,@§;
         param1.§01§().GetBody().SetAwake(true);
         param1.§9!,§().GetBody().SetAwake(true);
         this.§1!A§.§+"1§.objects.§-+§(_loc2_,_loc3_);
      }
   }
}
