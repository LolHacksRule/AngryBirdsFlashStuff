package §,§
{
   import § o§.b2ContactImpulse;
   import § o§.b2ContactListener;
   import §-r§.b2Manifold;
   import §30§.b2Contact;
   
   public class §0!!§ extends b2ContactListener
   {
       
      
      public var mWorld:§!f§;
      
      public function §0!!§(param1:§!f§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            do
            {
               this.mWorld = param1;
            }
            while(!_loc2_);
            
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.mWorld.§^!I§.objects.§"!§(param1.§`u§().GetBody().GetUserData(),param1.§7t§().GetBody().GetUserData());
         }
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
         §§push(this.mWorld.§^!I§.objects.objectCollision(param1.§`u§().GetBody().GetUserData(),param1.§7t§().GetBody().GetUserData()));
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            if(_loc2_)
            {
               if(!_loc3_)
               {
                  addr60:
                  param1.§[!O§(false);
               }
            }
            return;
         }
         §§goto(addr60);
      }
   }
}
