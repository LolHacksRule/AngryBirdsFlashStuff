package §%!0§
{
   import §"J§.b2ContactImpulse;
   import §"J§.b2ContactListener;
   import §%4§.b2Manifold;
   import §;!e§.b2Contact;
   
   public class §4t§ extends b2ContactListener
   {
       
      
      public var §;!^§:§5!e§;
      
      public function §4t§(param1:§5!e§)
      {
         super();
         this.§;!^§ = param1;
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         this.§;!^§.§`!G§.objects.§;!H§(param1.§&!K§().GetBody().GetUserData(),param1.§ 1§().GetBody().GetUserData());
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = this.§;!^§.§`!G§.objects.§3!E§(param1.§&!K§().GetBody().GetUserData(),param1.§ 1§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§]!X§(false);
         }
      }
   }
}
