package §3"#§
{
   import §9!K§.b2ContactImpulse;
   import §9!K§.b2ContactListener;
   import §9"!§.§,%§;
   import §9"!§.§]#§;
   import §;!Z§.b2Manifold;
   import §>6§.b2Contact;
   
   public class §1L§ extends b2ContactListener
   {
       
      
      public var mWorld:§@!2§;
      
      public function §1L§(param1:§@!2§)
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
         var _loc2_:§,%§ = param1.§[!_§().GetBody().GetUserData() as §,%§;
         var _loc3_:§,%§ = param1.§6!6§().GetBody().GetUserData() as §,%§;
         var _loc4_:Boolean = false;
         if(_loc2_ is §]#§)
         {
            (_loc2_ as §]#§).addSensedObject(_loc3_);
            _loc4_ = true;
         }
         if(_loc3_ is §]#§)
         {
            (_loc3_ as §]#§).addSensedObject(_loc2_);
            _loc4_ = true;
         }
         if(!_loc4_)
         {
            if(_loc5_ = this.mWorld.§'"9§.objects.§4"+§(_loc2_,_loc3_))
            {
               param1.§5!W§(false);
            }
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§,%§ = param1.§[!_§().GetBody().GetUserData() as §,%§;
         var _loc3_:§,%§ = param1.§6!6§().GetBody().GetUserData() as §,%§;
         param1.§[!_§().GetBody().SetAwake(true);
         param1.§6!6§().GetBody().SetAwake(true);
         if(_loc2_ is §]#§)
         {
            (_loc2_ as §]#§).removeSensedObject(_loc3_);
         }
         if(_loc3_ is §]#§)
         {
            (_loc3_ as §]#§).removeSensedObject(_loc2_);
         }
      }
   }
}
