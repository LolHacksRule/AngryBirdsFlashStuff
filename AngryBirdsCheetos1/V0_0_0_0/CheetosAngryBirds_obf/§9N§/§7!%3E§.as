package §9N§
{
   import § G§.b2Manifold;
   import §&!"§.b2ContactImpulse;
   import §&!"§.b2ContactListener;
   import §69§.b2Contact;
   
   public class §7!>§ extends b2ContactListener
   {
       
      
      public var mWorld:§0!4§;
      
      public function §7!>§(param1:§0!4§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            do
            {
               this.mWorld = param1;
            }
            while(_loc3_);
            
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mWorld.§8@§.objects.objectCollision(param1.§"&§().GetBody().GetUserData(),param1.§7!Z§().GetBody().GetUserData());
         }
      }
   }
}
