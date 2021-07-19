package §"!I§
{
   import §!4§.b2Manifold;
   import §3!R§.b2ContactImpulse;
   import §3!R§.b2ContactListener;
   import §=0§.b2Contact;
   
   public class §==§ extends b2ContactListener
   {
       
      
      public var mWorld:§92§;
      
      public function §==§(param1:§92§)
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
         while(!(_loc3_ || param1));
         
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
         §§push(this.mWorld.§=!V§.objects.§`o§(param1.§#!D§().GetBody().GetUserData(),param1.§''§().GetBody().GetUserData()));
         if(_loc3_ || _loc2_)
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
                  param1.§>!$§(false);
               }
            }
         }
      }
   }
}
