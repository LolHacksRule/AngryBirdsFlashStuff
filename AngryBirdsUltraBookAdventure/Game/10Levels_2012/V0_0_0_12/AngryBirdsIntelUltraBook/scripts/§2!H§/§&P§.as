package §2!H§
{
   import §'s§.b2Manifold;
   import §6!9§.b2Contact;
   import §]=§.b2ContactImpulse;
   import §]=§.b2ContactListener;
   
   public class §&P§ extends b2ContactListener
   {
       
      
      public var mWorld:§?!`§;
      
      public function §&P§(param1:§?!`§)
      {
         super();
         this.mWorld = param1;
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
         var _loc2_:Boolean = this.mWorld.§"!>§.objects.§%v§(param1.§2!N§().GetBody().GetUserData(),param1.§`!Q§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§[!_§(false);
         }
      }
   }
}
