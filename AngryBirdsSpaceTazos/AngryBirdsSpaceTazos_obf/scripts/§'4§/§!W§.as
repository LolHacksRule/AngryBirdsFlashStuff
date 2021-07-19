package §'4§
{
   import §'!&§.b2ContactImpulse;
   import §'!&§.b2ContactListener;
   import §3c§.b2Manifold;
   import §=!n§.b2Contact;
   import §]">§.§3=§;
   import §]">§.§<!=§;
   
   public class §!W§ extends b2ContactListener
   {
       
      
      public var mWorld:§4q§;
      
      public function §!W§(param1:§4q§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
         }
         do
         {
            this.mWorld = param1;
         }
         while(!_loc3_);
         
      }
      
      override public function PostSolve(param1:b2Contact, param2:b2ContactImpulse) : void
      {
      }
      
      override public function PreSolve(param1:b2Contact, param2:b2Manifold) : void
      {
      }
      
      override public function BeginContact(param1:b2Contact) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = false;
         var _loc2_:§<!=§ = param1.§'J§().GetBody().GetUserData() as §<!=§;
         var _loc3_:§<!=§ = param1.§#"%§().GetBody().GetUserData() as §<!=§;
         var _loc4_:* = false;
         if(_loc7_)
         {
            §§push(_loc2_ is §3=§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  if(_loc7_)
                  {
                     (_loc2_ as §3=§).addSensedObject(_loc3_);
                  }
                  while(true)
                  {
                     §§push(true);
                     addr142:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        addr143:
                        while(true)
                        {
                        }
                     }
                  }
                  addr165:
               }
               while(true)
               {
                  §§push(_loc3_ is §3=§);
                  loop5:
                  while(_loc7_)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           (_loc3_ as §3=§).addSensedObject(_loc2_);
                           addr139:
                           while(true)
                           {
                              §§push(true);
                              addr116:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 continue loop6;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!(_loc6_ && _loc2_))
                        {
                           if(!_loc6_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    if(_loc7_ || _loc2_)
                                    {
                                       §§push(this.mWorld.§?>§.objects.§2U§(_loc2_,_loc3_));
                                       if(_loc7_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc6_ && this)
                                          {
                                          }
                                          addr96:
                                          if(!_loc6_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc7_)
                                                {
                                                   addr101:
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         param1.§`"!§(false);
                                                         addr113:
                                                         break;
                                                      }
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr117);
                                                }
                                                §§goto(addr113);
                                             }
                                             break;
                                          }
                                          continue loop5;
                                       }
                                       if(!_loc6_)
                                       {
                                          §§goto(addr96);
                                          §§push(_loc5_ = §§pop());
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr143);
                                 }
                                 §§goto(addr101);
                              }
                              break;
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr96);
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr126);
      }
      
      override public function EndContact(param1:b2Contact) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§<!=§ = param1.§'J§().GetBody().GetUserData() as §<!=§;
         var _loc3_:§<!=§ = param1.§#"%§().GetBody().GetUserData() as §<!=§;
         if(_loc4_)
         {
            §§push(param1.§'J§().GetBody());
            loop0:
            while(true)
            {
               §§push(true);
               addr133:
               while(true)
               {
                  §§pop().SetAwake(§§pop());
                  continue loop0;
               }
            }
         }
         §§goto(addr97);
      }
   }
}
