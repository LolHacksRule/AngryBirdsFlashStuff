package §>2§
{
   import §1#]§.b2Contact;
   import §4$E§.b2Manifold;
   import §6!3§.§!y§;
   import §6!3§.§@#v§;
   import §@!S§.b2ContactImpulse;
   import §@!S§.b2ContactListener;
   
   public class §[!,§ extends b2ContactListener
   {
       
      
      public var mWorld:§5!`§;
      
      public function §[!,§(param1:§5!`§)
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
         var _loc2_:§!y§ = param1.§9$ §().GetBody().GetUserData() as §!y§;
         var _loc3_:§!y§ = param1.§@!D§().GetBody().GetUserData() as §!y§;
         var _loc4_:Boolean;
         if(_loc4_ = this.mWorld.§5#0§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§9!E§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§!y§ = param1.§9$ §().GetBody().GetUserData() as §!y§;
         var _loc3_:§!y§ = param1.§@!D§().GetBody().GetUserData() as §!y§;
         if(!(_loc3_ is §@#v§))
         {
            param1.§9$ §().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §@#v§))
         {
            param1.§@!D§().GetBody().SetAwake(true);
         }
         this.mWorld.§5#0§.objects.objectCollisionEnded(_loc2_,_loc3_);
      }
   }
}
