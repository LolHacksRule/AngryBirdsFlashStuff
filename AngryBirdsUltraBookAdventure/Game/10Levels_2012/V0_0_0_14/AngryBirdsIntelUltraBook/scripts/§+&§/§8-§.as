package §+&§
{
   import § D§.b2ContactImpulse;
   import § D§.b2ContactListener;
   import §&!-§.b2Manifold;
   import §7a§.b2Contact;
   
   public class §8-§ extends b2ContactListener
   {
       
      
      public var mWorld:§8Y§;
      
      public function §8-§(param1:§8Y§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            do
            {
               this.mWorld = param1;
            }
            while(_loc3_ && param1);
            
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
         §§push(this.mWorld.§+!X§.objects.§!!u§(param1.§5J§().GetBody().GetUserData(),param1.§@!X§().GetBody().GetUserData()));
         if(_loc3_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && param1))
               {
                  param1.§!!s§(false);
               }
            }
         }
      }
   }
}
