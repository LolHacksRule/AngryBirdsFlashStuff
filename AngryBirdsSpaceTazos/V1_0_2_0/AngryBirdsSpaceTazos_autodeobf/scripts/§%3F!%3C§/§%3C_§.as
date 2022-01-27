package §?!<§
{
   import §#!X§.b2ContactImpulse;
   import §#!X§.b2ContactListener;
   import §3!1§.b2Contact;
   import §3m§.b2Manifold;
   import §[,§.§1d§;
   import §[,§.§8!a§;
   
   public class §<_§ extends b2ContactListener
   {
       
      
      public var mWorld:§,p§;
      
      public function §<_§(param1:§,p§)
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
         var _loc2_:§1d§ = param1.§4!`§().GetBody().GetUserData() as §1d§;
         var _loc3_:§1d§ = param1.§?!y§().GetBody().GetUserData() as §1d§;
         var _loc4_:Boolean = false;
         if(_loc2_ is §8!a§)
         {
            (_loc2_ as §8!a§).addSensedObject(_loc3_);
            _loc4_ = true;
         }
         if(_loc3_ is §8!a§)
         {
            (_loc3_ as §8!a§).addSensedObject(_loc2_);
            _loc4_ = true;
         }
         if(!_loc4_)
         {
            if(_loc5_ = this.mWorld.§1!3§.objects.§^&§(_loc2_,_loc3_))
            {
               param1.§@!U§(false);
            }
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§1d§ = param1.§4!`§().GetBody().GetUserData() as §1d§;
         var _loc3_:§1d§ = param1.§?!y§().GetBody().GetUserData() as §1d§;
         param1.§4!`§().GetBody().SetAwake(true);
         param1.§?!y§().GetBody().SetAwake(true);
         if(_loc2_ is §8!a§)
         {
            (_loc2_ as §8!a§).removeSensedObject(_loc3_);
         }
         if(_loc3_ is §8!a§)
         {
            (_loc3_ as §8!a§).removeSensedObject(_loc2_);
         }
      }
   }
}
