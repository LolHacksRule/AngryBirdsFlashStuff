package §3R§
{
   import §'!^§.b2Contact;
   import §5"D§.§<!&§;
   import §5"D§.§>q§;
   import §;`§.b2ContactImpulse;
   import §;`§.b2ContactListener;
   import §>!m§.b2Manifold;
   
   public class §6!U§ extends b2ContactListener
   {
       
      
      public var mWorld:§=y§;
      
      public function §6!U§(param1:§=y§)
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
         var _loc2_:§>q§ = param1.§']§().GetBody().GetUserData() as §>q§;
         var _loc3_:§>q§ = param1.§]J§().GetBody().GetUserData() as §>q§;
         var _loc4_:Boolean = false;
         if(_loc2_ is §<!&§)
         {
            (_loc2_ as §<!&§).addSensedObject(_loc3_);
            _loc4_ = true;
         }
         if(_loc3_ is §<!&§)
         {
            (_loc3_ as §<!&§).addSensedObject(_loc2_);
            _loc4_ = true;
         }
         if(!_loc4_)
         {
            if(_loc5_ = this.mWorld.§;H§.objects.§]t§(_loc2_,_loc3_,param1))
            {
               param1.§8"9§(false);
            }
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§>q§ = param1.§']§().GetBody().GetUserData() as §>q§;
         var _loc3_:§>q§ = param1.§]J§().GetBody().GetUserData() as §>q§;
         if(_loc2_ is §<!&§)
         {
            (_loc2_ as §<!&§).removeSensedObject(_loc3_);
         }
         else
         {
            param1.§]J§().GetBody().SetAwake(true);
         }
         if(_loc3_ is §<!&§)
         {
            (_loc3_ as §<!&§).removeSensedObject(_loc2_);
         }
         else
         {
            param1.§']§().GetBody().SetAwake(true);
         }
      }
   }
}
