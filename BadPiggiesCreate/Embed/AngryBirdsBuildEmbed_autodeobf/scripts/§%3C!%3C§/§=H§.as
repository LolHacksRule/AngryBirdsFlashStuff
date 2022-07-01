package §<!<§
{
   import § !t§.b2ContactImpulse;
   import § !t§.b2ContactListener;
   import §#A§.b2Contact;
   import §'!;§.b2Manifold;
   
   public class §=H§ extends b2ContactListener
   {
       
      
      public var §&4§:§!F§;
      
      public function §=H§(param1:§!F§)
      {
         super();
         this.§&4§ = param1;
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
         var _loc2_:Boolean = this.§&4§.§-n§.objects.objectCollision(param1.§,^§().GetBody().GetUserData(),param1.§'!+§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§!R§(false);
         }
      }
   }
}
