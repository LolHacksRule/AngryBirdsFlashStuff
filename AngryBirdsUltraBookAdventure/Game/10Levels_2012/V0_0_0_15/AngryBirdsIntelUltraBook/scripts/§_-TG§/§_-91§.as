package §_-TG§
{
   import §_-0DM§.b2Contact;
   import §_-aU§.b2ContactImpulse;
   import §_-aU§.b2ContactListener;
   import §_-gE§.b2Manifold;
   
   public class §_-91§ extends b2ContactListener
   {
       
      
      public var mWorld:§_-O0§;
      
      public function §_-91§(param1:§_-O0§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
         §§push(this.mWorld.§_-6A§.objects.§_-ra§(param1.§_-k-§().GetBody().GetUserData(),param1.§_-7G§().GetBody().GetUserData()));
         if(!(_loc4_ && this))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  param1.§_-lG§(false);
               }
            }
         }
      }
   }
}
