package §@"1§
{
   import §"!-§.§@!4§;
   import §+W§.b2Contact;
   import §6f§.b2Manifold;
   import §;'§.b2ContactImpulse;
   import §;'§.b2ContactListener;
   
   public class §4=§ extends b2ContactListener
   {
       
      
      public var §'!#§:§@!y§;
      
      public function §4=§(param1:§@!y§)
      {
         super();
         this.§'!#§ = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§@!4§ = param1.§6_§().GetBody().GetUserData() as §@!4§;
         var _loc3_:§@!4§ = param1.§9!R§().GetBody().GetUserData() as §@!4§;
         var _loc4_:Boolean;
         if(_loc4_ = this.§'!#§.§`W§.objects.§,2§(_loc2_,_loc3_))
         {
            param1.§'!^§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§@!4§ = param1.§6_§().GetBody().GetUserData() as §@!4§;
         var _loc3_:§@!4§ = param1.§9!R§().GetBody().GetUserData() as §@!4§;
         param1.§6_§().GetBody().SetAwake(true);
         param1.§9!R§().GetBody().SetAwake(true);
         this.§'!#§.§`W§.objects.§ !P§(_loc2_,_loc3_);
      }
   }
}
