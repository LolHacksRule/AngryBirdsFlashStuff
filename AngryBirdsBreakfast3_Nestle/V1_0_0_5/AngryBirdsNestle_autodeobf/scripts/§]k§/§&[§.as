package §]k§
{
   import §!;§.b2Manifold;
   import §,v§.b2ContactImpulse;
   import §,v§.b2ContactListener;
   import §5t§.b2Contact;
   import §=!`§.§=6§;
   
   public class §&[§ extends b2ContactListener
   {
       
      
      public var §'!7§:§=![§;
      
      public function §&[§(param1:§=![§)
      {
         super();
         this.§'!7§ = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§=6§ = param1.§=q§().GetBody().GetUserData() as §=6§;
         var _loc3_:§=6§ = param1.§^!z§().GetBody().GetUserData() as §=6§;
         var _loc4_:Boolean;
         if(_loc4_ = this.§'!7§.§#g§.objects.§[+§(_loc2_,_loc3_))
         {
            param1.§2z§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§=6§ = param1.§=q§().GetBody().GetUserData() as §=6§;
         var _loc3_:§=6§ = param1.§^!z§().GetBody().GetUserData() as §=6§;
         param1.§=q§().GetBody().SetAwake(true);
         param1.§^!z§().GetBody().SetAwake(true);
         this.§'!7§.§#g§.objects.§?!q§(_loc2_,_loc3_);
      }
   }
}
