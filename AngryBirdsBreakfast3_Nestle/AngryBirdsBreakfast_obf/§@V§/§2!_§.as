package §@V§
{
   import §!§.b2Manifold;
   import §0"!§.b2ContactImpulse;
   import §0"!§.b2ContactListener;
   import §23§.b2Contact;
   import §@!"§.§#!v§;
   import §@!"§.§+!z§;
   
   public class §2!_§ extends b2ContactListener
   {
       
      
      public var §^d§:§<o§;
      
      public function §2!_§(param1:§<o§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
         }
         do
         {
            this.§^d§ = param1;
         }
         while(_loc3_);
         
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§#!v§ = param1.§6!'§().GetBody().GetUserData() as §#!v§;
         var _loc3_:§#!v§ = param1.§]O§().GetBody().GetUserData() as §#!v§;
         §§push(this.§^d§.§!`§.objects.§?!g§(_loc2_,_loc3_,param1));
         if(_loc5_ || _loc2_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc4_:*;
         if(_loc4_ = §§pop())
         {
            if(_loc5_ || param1)
            {
               param1.§4?§(false);
            }
         }
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§#!v§ = param1.§6!'§().GetBody().GetUserData() as §#!v§;
         var _loc3_:§#!v§ = param1.§]O§().GetBody().GetUserData() as §#!v§;
         if(_loc4_)
         {
            §§push(_loc3_ is §+!z§);
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc4_ || _loc3_)
                  {
                     while(true)
                     {
                        §§push(param1.§6!'§().GetBody());
                        addr115:
                        while(true)
                        {
                           §§push(true);
                           addr116:
                           while(true)
                           {
                              §§pop().SetAwake(§§pop());
                           }
                        }
                     }
                     addr112:
                  }
                  while(true)
                  {
                  }
                  addr117:
               }
               while(true)
               {
                  §§push(_loc2_ is §+!z§);
                  if(!_loc4_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(param1.§]O§().GetBody());
                        if(!_loc5_)
                        {
                           §§push(true);
                           if(!_loc4_)
                           {
                              break;
                           }
                           §§pop().SetAwake(§§pop());
                           loop4:
                           while(!_loc5_)
                           {
                              while(true)
                              {
                                 this.§^d§.§!`§.objects.§""7§(_loc2_,_loc3_);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              return;
                           }
                           §§goto(addr117);
                        }
                        else
                        {
                           §§goto(addr115);
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr39);
               }
            }
         }
         §§goto(addr112);
      }
   }
}
