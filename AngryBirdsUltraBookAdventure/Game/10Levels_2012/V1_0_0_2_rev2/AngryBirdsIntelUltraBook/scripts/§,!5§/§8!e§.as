package §,!5§
{
   import §72§.b2Manifold;
   import §`w§.b2ContactImpulse;
   import §`w§.b2ContactListener;
   import §break§.b2Contact;
   
   public class §8!e§ extends b2ContactListener
   {
       
      
      public var mWorld:§&!s§;
      
      public function §8!e§(param1:§&!s§)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.mWorld.§?l§.objects.§7!4§(param1.§?!l§().GetBody().GetUserData(),param1.§0+§().GetBody().GetUserData()));
         if(_loc4_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || this)
         {
            if(_loc2_)
            {
               if(_loc4_ || _loc2_)
               {
                  addr75:
                  param1.§8K§(false);
               }
            }
            return;
         }
         §§goto(addr75);
      }
   }
}
