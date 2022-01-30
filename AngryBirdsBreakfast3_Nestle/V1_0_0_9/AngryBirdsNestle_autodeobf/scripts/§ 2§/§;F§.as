package § 2§
{
   import §%Z§.§&"3§;
   import §%Z§.§+!F§;
   import §7!&§.b2Manifold;
   import §9!Z§.b2ContactImpulse;
   import §9!Z§.b2ContactListener;
   import §[K§.b2Contact;
   
   public class §;F§ extends b2ContactListener
   {
       
      
      public var §?F§:§@0§;
      
      public function §;F§(param1:§@0§)
      {
         super();
         this.§?F§ = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§+!F§ = param1.§@"0§().GetBody().GetUserData() as §+!F§;
         var _loc3_:§+!F§ = param1.§!!Z§().GetBody().GetUserData() as §+!F§;
         var _loc4_:Boolean;
         if(_loc4_ = this.§?F§.§false§.objects.§=5§(_loc2_,_loc3_,param1))
         {
            param1.§=[§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§+!F§ = param1.§@"0§().GetBody().GetUserData() as §+!F§;
         var _loc3_:§+!F§ = param1.§!!Z§().GetBody().GetUserData() as §+!F§;
         if(!(_loc3_ is §&"3§))
         {
            param1.§@"0§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §&"3§))
         {
            param1.§!!Z§().GetBody().SetAwake(true);
         }
         this.§?F§.§false§.objects.§8P§(_loc2_,_loc3_);
      }
   }
}
