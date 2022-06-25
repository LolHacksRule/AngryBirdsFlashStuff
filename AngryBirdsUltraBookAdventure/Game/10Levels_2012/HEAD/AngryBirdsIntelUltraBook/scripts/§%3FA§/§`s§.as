package §?A§
{
   import §1%§.b2ContactImpulse;
   import §1%§.b2ContactListener;
   import §>s§.b2Contact;
   import §`!H§.b2Manifold;
   
   public class §`s§ extends b2ContactListener
   {
       
      
      public var mWorld:§6c§;
      
      public function §`s§(param1:§6c§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.mWorld = param1;
         }
         while(_loc2_);
         
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.mWorld.§6f§.objects.§3!?§(param1.§%! §().GetBody().GetUserData(),param1.§4#§().GetBody().GetUserData()));
         if(!(_loc4_ && param1))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc3_ || this)
               {
                  param1.§^!3§(false);
               }
            }
         }
      }
   }
}
