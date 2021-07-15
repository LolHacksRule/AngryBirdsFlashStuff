package §@L§
{
   import §,z§.§%!f§;
   import §,z§.§<!r§;
   import §-"&§.b2Contact;
   import §3!`§.b2ContactImpulse;
   import §3!`§.b2ContactListener;
   import §^9§.b2Manifold;
   
   public class §]U§ extends b2ContactListener
   {
       
      
      public var §-#§:§@!G§;
      
      public function §]U§(param1:§@!G§)
      {
         super();
         this.§-#§ = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§<!r§ = param1.§&R§().GetBody().GetUserData() as §<!r§;
         var _loc3_:§<!r§ = param1.§@!,§().GetBody().GetUserData() as §<!r§;
         var _loc4_:Boolean;
         if(_loc4_ = this.§-#§.§<Y§.objects.§else§(_loc2_,_loc3_,param1))
         {
            param1.§'j§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§<!r§ = param1.§&R§().GetBody().GetUserData() as §<!r§;
         var _loc3_:§<!r§ = param1.§@!,§().GetBody().GetUserData() as §<!r§;
         if(!(_loc3_ is §%!f§))
         {
            param1.§&R§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §%!f§))
         {
            param1.§@!,§().GetBody().SetAwake(true);
         }
         this.§-#§.§<Y§.objects.§]!r§(_loc2_,_loc3_);
      }
   }
}
