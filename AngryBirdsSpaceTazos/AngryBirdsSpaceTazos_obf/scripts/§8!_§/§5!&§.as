package §8!_§
{
   import §%!r§.§3!'§;
   import §1%§.§0!3§;
   import §<!X§.§7C§;
   import §`!j§.§9"!§;
   
   public class §5!&§ extends §0!3§
   {
       
      
      protected var §6u§:§9"!§;
      
      public function §5!&§(param1:§9"!§, param2:Boolean, param3:String, param4:§3!'§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§6u§ = param1;
         }
         do
         {
            super(param2,param3,param4);
         }
         while(!(_loc5_ || param3));
         
      }
      
      public function §?R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§6u§.loadLevel(this.§6u§.getNextLevelId());
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.activate(param1);
            do
            {
               § !g§.§;!'§.§super§.addLocalizationTarget(this);
            }
            while(!_loc3_);
            
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
         do
         {
            § !g§.§;!'§.§super§.removeLocalizationTarget(this);
         }
         while(!_loc1_);
         
      }
      
      override protected function runAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(Boolean(§-!w§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(§0§ == §7C§.§-!Z§);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                              loop4:
                              while(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop5:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                addr102:
                                                while(_loc2_ || this)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§ !g§.§;!'§.§>";§.§^",§());
                                                      if(_loc2_ || param1)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            §§goto(addr50);
                                                            §§push(!§§pop());
                                                            continue loop4;
                                                         }
                                                         continue loop5;
                                                      }
                                                      addr50:
                                                      if(!_loc2_)
                                                      {
                                                         continue loop6;
                                                      }
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             addr101:
                                          }
                                          while(§§pop())
                                          {
                                             if(_loc2_)
                                             {
                                                §-!w§.run(param1);
                                             }
                                             if(!(_loc3_ && param1))
                                             {
                                                break;
                                             }
                                             §§goto(addr102);
                                          }
                                          return;
                                       }
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           §§goto(addr101);
                        }
                     }
                  }
                  §§goto(addr91);
               }
            }
         }
         §§goto(addr119);
      }
   }
}
