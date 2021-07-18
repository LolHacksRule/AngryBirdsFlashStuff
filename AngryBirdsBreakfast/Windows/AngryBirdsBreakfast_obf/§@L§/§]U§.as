package §@L§
{
   import §,z§.§%!f§;
   import §,z§.§<!r§;
   import §-"&§.b2Contact;
   import §3!`§.b2ContactImpulse;
   import §3!`§.b2ContactListener;
   import §^9§.b2Manifold;
   
   public class §]U§ extends b2ContactListener
   {
       
      
      public var §-#§:§@!G§;
      
      public function §]U§(param1:§@!G§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
            do
            {
               this.§-#§ = param1;
            }
            while(_loc3_ && param1);
            
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
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§<!r§ = param1.§&R§().GetBody().GetUserData() as §<!r§;
         var _loc3_:§<!r§ = param1.§@!,§().GetBody().GetUserData() as §<!r§;
         §§push(this.§-#§.§<Y§.objects.§else§(_loc2_,_loc3_,param1));
         if(_loc6_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc6_ || _loc3_)
            {
               param1.§'j§(false);
            }
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§<!r§ = param1.§&R§().GetBody().GetUserData() as §<!r§;
         var _loc3_:§<!r§ = param1.§@!,§().GetBody().GetUserData() as §<!r§;
         if(_loc5_ || this)
         {
            §§push(_loc3_ is §%!f§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  continue;
               }
               if(!(_loc4_ && this))
               {
                  while(true)
                  {
                     §§push(param1.§&R§().GetBody());
                     addr121:
                     while(true)
                     {
                        §§push(true);
                        addr122:
                        while(true)
                        {
                           §§pop().SetAwake(§§pop());
                        }
                     }
                  }
                  addr118:
               }
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr118);
      }
   }
}
