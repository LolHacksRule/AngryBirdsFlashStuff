package §9"!§
{
   import §!D§.b2Contact;
   import §48§.b2ContactImpulse;
   import §48§.b2ContactListener;
   import §55§.b2Manifold;
   
   public class §`",§ extends b2ContactListener
   {
       
      
      public var mWorld:§4!`§;
      
      public function §`",§(param1:§4!`§)
      {
         super();
         this.mWorld = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.mWorld.§@O§.objects.§>"B§(param1.§5§().GetBody().GetUserData(),param1.§]h§().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.mWorld.§@O§.objects.§7!d§(param1.§5§().GetBody().GetUserData(),param1.§]h§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§2s§(false);
         }
      }
   }
}
