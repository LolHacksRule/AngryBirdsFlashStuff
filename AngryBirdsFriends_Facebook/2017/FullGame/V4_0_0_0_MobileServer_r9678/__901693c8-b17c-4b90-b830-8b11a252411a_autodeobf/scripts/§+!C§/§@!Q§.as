package §+!C§
{
   import §1!+§.b2ContactImpulse;
   import §1!+§.b2ContactListener;
   import §7"^§.b2Manifold;
   import §>!5§.§#-§;
   import §>!5§.§0S§;
   import §[#L§.b2Contact;
   
   public class §@!Q§ extends b2ContactListener
   {
       
      
      public var mWorld:§<!-§;
      
      public function §@!Q§(param1:§<!-§)
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
         var _loc2_:§#-§ = param1.§]"v§().GetBody().GetUserData() as §#-§;
         var _loc3_:§#-§ = param1.§4!i§().GetBody().GetUserData() as §#-§;
         var _loc4_:Boolean;
         if(_loc4_ = this.mWorld.§`=§.objects.objectCollision(_loc2_,_loc3_,param1))
         {
            param1.§^!m§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§#-§ = param1.§]"v§().GetBody().GetUserData() as §#-§;
         var _loc3_:§#-§ = param1.§4!i§().GetBody().GetUserData() as §#-§;
         if(!(_loc3_ is §0S§))
         {
            param1.§]"v§().GetBody().SetAwake(true);
         }
         if(!(_loc2_ is §0S§))
         {
            param1.§4!i§().GetBody().SetAwake(true);
         }
         this.mWorld.§`=§.objects.objectCollisionEnded(_loc2_,_loc3_);
      }
   }
}
