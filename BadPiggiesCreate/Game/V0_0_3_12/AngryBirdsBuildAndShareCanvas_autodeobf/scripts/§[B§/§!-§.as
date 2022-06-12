package §[B§
{
   import §&!M§.b2ContactImpulse;
   import §&!M§.b2ContactListener;
   import §;"0§.b2Manifold;
   import §?!D§.b2Contact;
   
   public class §!-§ extends b2ContactListener
   {
       
      
      public var §4!o§:§-"&§;
      
      public function §!-§(param1:§-"&§)
      {
         super();
         this.§4!o§ = param1;
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
         var _loc2_:Boolean = this.§4!o§.§]!3§.objects.§+8§(param1.§]§().GetBody().GetUserData(),param1.§@!^§().GetBody().GetUserData());
         if(_loc2_)
         {
            param1.§="=§(false);
         }
      }
   }
}
