package §52§
{
   import §3"q§.b2Manifold;
   import §;"R§.b2Contact;
   import §=#n§.b2ContactImpulse;
   import §=#n§.b2ContactListener;
   import §[#a§.§%#T§;
   import §[#a§.§<"H§;
   
   public class §<!U§ extends b2ContactListener
   {
       
      
      public var mWorld:§ "M§;
      
      public function §<!U§(param1:§ "M§)
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
         var _loc2_:§<"H§ = param1.§%$-§().GetBody().GetUserData() as §<"H§;
         var _loc3_:§<"H§ = param1.§true§().GetBody().GetUserData() as §<"H§;
         if(this.mWorld.§,#2§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§7"T§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§<"H§ = param1.§%$-§().GetBody().GetUserData() as §<"H§;
         var _loc3_:§<"H§ = param1.§true§().GetBody().GetUserData() as §<"H§;
         if(!(_loc3_ is §%#T§))
         {
            param1.§%$-§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §%#T§))
         {
            param1.§true§().GetBody().SetAwake(true);
         }
         this.mWorld.§,#2§.objects.§]!p§(_loc2_,_loc3_);
      }
   }
}
