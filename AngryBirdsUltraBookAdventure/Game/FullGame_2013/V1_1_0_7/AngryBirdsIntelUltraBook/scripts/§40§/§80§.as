package §40§
{
   import §#I§.b2ContactImpulse;
   import §#I§.b2ContactListener;
   import §4]§.b2Contact;
   import §>!Z§.b2Manifold;
   
   public class §80§ extends b2ContactListener
   {
       
      
      public var mWorld:§?S§;
      
      public function §80§(param1:§?S§)
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
            while(!_loc2_);
            
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mWorld.§#!U§.objects.§33§(param1.§`!a§().GetBody().GetUserData(),param1.§2!s§().GetBody().GetUserData());
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
         §§push(this.mWorld.§#!U§.objects.§&!K§(param1.§`!a§().GetBody().GetUserData(),param1.§2!s§().GetBody().GetUserData()));
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               if(!(_loc3_ && this))
               {
                  addr75:
                  param1.§@@§(false);
               }
            }
            return;
         }
         §§goto(addr75);
      }
   }
}
