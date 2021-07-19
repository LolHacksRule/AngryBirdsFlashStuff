package §>!Z§
{
   import §&v§.§9B§;
   import §,z§.§<!r§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   
   public class §!`§ extends §<!r§
   {
       
      
      public function §!`§(param1:Sprite, param2:b2World, param3:§9B§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      protected function §4!8§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(isNaN(param1))
            {
               addr114:
               while(true)
               {
                  §§push(0);
                  addr115:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr116:
                     while(true)
                     {
                        param1 = §§pop();
                        addr117:
                        while(true)
                        {
                        }
                     }
                  }
               }
               addr114:
            }
            loop0:
            while(true)
            {
               if(isNaN(param2))
               {
                  if(!_loc4_)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc4_ && param2))
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && param1))
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 param2 = §§pop();
                                 addr109:
                                 loop2:
                                 while(true)
                                 {
                                    addr24:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          §§push(param2);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(§§pop() - param1);
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() * Math.random());
                                             }
                                          }
                                          §§push(§§pop() + §§pop());
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       break loop0;
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              addr98:
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr98);
                     }
                     else
                     {
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr24);
            }
            return §§pop();
         }
         §§goto(addr114);
      }
   }
}
