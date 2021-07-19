package §%!0§
{
   import §"J§.b2ContactImpulse;
   import §"J§.b2ContactListener;
   import §%4§.b2Manifold;
   import §;!e§.b2Contact;
   
   public class §4t§ extends b2ContactListener
   {
       
      
      public var §;!^§:§5!e§;
      
      public function §4t§(param1:§5!e§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            do
            {
               this.§;!^§ = param1;
            }
            while(!_loc3_);
            
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§;!^§.§`!G§.objects.§;!H§(param1.§&!K§().GetBody().GetUserData(),param1.§ 1§().GetBody().GetUserData());
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§;!^§.§`!G§.objects.§3!E§(param1.§&!K§().GetBody().GetUserData(),param1.§ 1§().GetBody().GetUserData()));
         if(!(_loc4_ && _loc3_))
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || param1)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  addr69:
                  param1.§]!X§(false);
               }
            }
            return;
         }
         §§goto(addr69);
      }
   }
}
