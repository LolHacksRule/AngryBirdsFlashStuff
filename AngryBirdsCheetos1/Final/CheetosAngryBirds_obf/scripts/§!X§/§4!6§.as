package §!X§
{
   import §8Y§.b2Contact;
   import §9"§.b2Manifold;
   import §`j§.b2ContactImpulse;
   import §`j§.b2ContactListener;
   
   public class §4!6§ extends b2ContactListener
   {
       
      
      public var mWorld:§,!'§;
      
      public function §4!6§(param1:§,!'§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            do
            {
               this.mWorld = param1;
            }
            while(!(_loc2_ || _loc2_));
            
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.mWorld.§>`§.objects.objectCollision(param1.§&^§().GetBody().GetUserData(),param1.§7I§().GetBody().GetUserData()));
         if(_loc3_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  param1.§<!C§(false);
               }
            }
         }
      }
   }
}
