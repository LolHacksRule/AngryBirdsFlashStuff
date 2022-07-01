package §0I§
{
   import §!!o§.b2Contact;
   import §,P§.b2Manifold;
   import §9"5§.b2ContactImpulse;
   import §9"5§.b2ContactListener;
   import §]!q§.§;!4§;
   
   public class §8!H§ extends b2ContactListener
   {
       
      
      public var §,'§:§+!5§;
      
      public function §8!H§(param1:§+!5§)
      {
         super();
         this.§,'§ = param1;
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:§;!4§ = param1.§?s§().GetBody().GetUserData() as §;!4§;
         var _loc3_:§;!4§ = param1.§^!q§().GetBody().GetUserData() as §;!4§;
         var _loc4_:Boolean;
         if(_loc4_ = this.§,'§.§-!r§.objects.§#p§(_loc2_,_loc3_))
         {
            param1.§^!5§(false);
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:§;!4§ = param1.§?s§().GetBody().GetUserData() as §;!4§;
         var _loc3_:§;!4§ = param1.§^!q§().GetBody().GetUserData() as §;!4§;
         param1.§?s§().GetBody().SetAwake(true);
         param1.§^!q§().GetBody().SetAwake(true);
         this.§,'§.§-!r§.objects.§^!#§(_loc2_,_loc3_);
      }
   }
}
