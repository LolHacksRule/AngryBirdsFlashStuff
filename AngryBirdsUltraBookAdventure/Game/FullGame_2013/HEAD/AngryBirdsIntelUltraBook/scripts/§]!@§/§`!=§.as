package §]!@§
{
   import §!m§.b2Manifold;
   import §#!0§.b2Contact;
   import §>!L§.b2ContactImpulse;
   import §>!L§.b2ContactListener;
   
   public class §`!=§ extends b2ContactListener
   {
       
      
      public var mWorld:§5L§;
      
      public function §`!=§(param1:§5L§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
         }
         do
         {
            this.mWorld = param1;
         }
         while(!_loc2_);
         
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.mWorld.§`s§.objects.§"!#§(param1.§'$§().GetBody().GetUserData(),param1.§<!2§().GetBody().GetUserData()));
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  param1.§`U§(false);
               }
            }
         }
      }
   }
}
