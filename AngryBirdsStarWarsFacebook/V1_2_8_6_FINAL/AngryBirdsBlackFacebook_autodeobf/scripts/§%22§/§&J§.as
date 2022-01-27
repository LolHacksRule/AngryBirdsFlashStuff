package §"§#0
{
   import §!r§.§03§;
   import §!r§.§?!x§;
   import §>"_§.b2ContactImpulse;
   import §>"_§.b2ContactListener;
   import §>r§.b2Manifold;
   
   public class §&J§ extends b2ContactListener
   {
       
      
      public var mWorld:§!x§;
      
      public function §&J§(param1:§!x§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§?!x§ = param1.§%"<§().GetBody().GetUserData() as §?!x§;
         var _loc3_:§?!x§ = param1.§&"!§().GetBody().GetUserData() as §?!x§;
         var _loc4_:Boolean;
         if(_loc4_ = this.mWorld.§+!E§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§2"3§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§?!x§ = param1.§%"<§().GetBody().GetUserData() as §?!x§;
         var _loc3_:§?!x§ = param1.§&"!§().GetBody().GetUserData() as §?!x§;
         if(!(_loc3_ is §03§))
         {
            param1.§%"<§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §03§))
         {
            param1.§&"!§().GetBody().SetAwake(true);
         }
         this.mWorld.§+!E§.objects.§]A§(_loc2_,_loc3_);
      }
   }
}
