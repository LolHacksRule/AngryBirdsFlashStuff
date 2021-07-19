package §'4§
{
   import §'!&§.b2ContactImpulse;
   import §'!&§.b2ContactListener;
   import §3c§.b2Manifold;
   import §=!n§.b2Contact;
   import §]">§.§3=§;
   import §]">§.§<!=§;
   
   public class §!W§ extends b2ContactListener
   {
       
      
      public var mWorld:§4q§;
      
      public function §!W§(param1:§4q§)
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
         var _loc5_:Boolean = false;
         var _loc2_:§<!=§ = param1.§'J§().GetBody().GetUserData() as §<!=§;
         var _loc3_:§<!=§ = param1.§#"%§().GetBody().GetUserData() as §<!=§;
         var _loc4_:Boolean = false;
         if(_loc2_ is §3=§)
         {
            (_loc2_ as §3=§).addSensedObject(_loc3_);
            _loc4_ = true;
         }
         if(_loc3_ is §3=§)
         {
            (_loc3_ as §3=§).addSensedObject(_loc2_);
            _loc4_ = true;
         }
         if(!_loc4_)
         {
            if(_loc5_ = this.mWorld.§?>§.objects.§2U§(_loc2_,_loc3_))
            {
               param1.§`"!§(false);
            }
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§<!=§ = param1.§'J§().GetBody().GetUserData() as §<!=§;
         var _loc3_:§<!=§ = param1.§#"%§().GetBody().GetUserData() as §<!=§;
         param1.§'J§().GetBody().SetAwake(true);
         param1.§#"%§().GetBody().SetAwake(true);
         if(_loc2_ is §3=§)
         {
            (_loc2_ as §3=§).removeSensedObject(_loc3_);
         }
         if(_loc3_ is §3=§)
         {
            (_loc3_ as §3=§).removeSensedObject(_loc2_);
         }
      }
   }
}
