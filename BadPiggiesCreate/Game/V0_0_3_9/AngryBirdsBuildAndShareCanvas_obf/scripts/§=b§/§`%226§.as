package §=b§
{
   import §8!D§.b2Contact;
   import §=9§.b2ContactImpulse;
   import §=9§.b2ContactListener;
   import §[!Z§.b2Manifold;
   
   public class §`"6§ extends b2ContactListener
   {
       
      
      public var §1c§:§3F§;
      
      public function §`"6§(param1:§3F§)
      {
         super();
         this.§1c§ = param1;
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
         var _loc2_:Boolean = this.§1c§.§;!x§.objects.§?]§(param1.§1!j§().GetBody().GetUserData(),param1.§!!'§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§ !X§(false);
         }
      }
   }
}
