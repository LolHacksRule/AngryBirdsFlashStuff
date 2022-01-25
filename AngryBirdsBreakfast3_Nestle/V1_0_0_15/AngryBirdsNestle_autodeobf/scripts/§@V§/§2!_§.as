package §@V§
{
   import §!§.b2Manifold;
   import §0"!§.b2ContactImpulse;
   import §0"!§.b2ContactListener;
   import §23§.b2Contact;
   import §@!"§.§#!v§;
   import §@!"§.§+!z§;
   
   public class §2!_§ extends b2ContactListener
   {
       
      
      public var §^d§:§<o§;
      
      public function §2!_§(param1:§<o§)
      {
         super();
         this.§^d§ = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§#!v§ = param1.§6!'§().GetBody().GetUserData() as §#!v§;
         var _loc3_:§#!v§ = param1.§]O§().GetBody().GetUserData() as §#!v§;
         var _loc4_:Boolean;
         if(_loc4_ = this.§^d§.§!`§.objects.§?!g§(_loc2_,_loc3_,param1))
         {
            param1.§4?§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§#!v§ = param1.§6!'§().GetBody().GetUserData() as §#!v§;
         var _loc3_:§#!v§ = param1.§]O§().GetBody().GetUserData() as §#!v§;
         if(!(_loc3_ is §+!z§))
         {
            param1.§6!'§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §+!z§))
         {
            param1.§]O§().GetBody().SetAwake(true);
         }
         this.§^d§.§!`§.objects.§""7§(_loc2_,_loc3_);
      }
   }
}
