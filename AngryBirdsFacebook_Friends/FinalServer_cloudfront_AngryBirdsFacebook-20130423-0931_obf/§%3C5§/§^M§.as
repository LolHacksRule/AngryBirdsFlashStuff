package §<5§
{
   import §`#§.§7!p§;
   
   public class §^M§
   {
      
      public static const NONE:String = "none";
      
      public static const §#§:String = "bilinear";
      
      public static const §2"C§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            NONE = "none";
            do
            {
               §#§ = "bilinear";
               do
               {
                  §2"C§ = "trilinear";
               }
               while(!_loc1_);
               
            }
            while(!(_loc1_ || §^M§));
            
         }
      }
      
      public function §^M§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
         throw new §7!p§();
      }
      
      public static function §@"1§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(NONE);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§#§);
                                    addr63:
                                    while(_loc3_)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr96:
                                    continue loop1;
                                    loop11:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc2_)
                                       {
                                          continue loop6;
                                       }
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(§2"C§);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc2_)
                                          {
                                             addr32:
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                if(_loc2_ && param1)
                                                {
                                                   continue loop2;
                                                }
                                             }
                                             else
                                             {
                                                addr77:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            §§pop();
                                                            if(!(_loc3_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            continue loop11;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop5;
                                                      addr81:
                                                   }
                                                   §§goto(addr32);
                                                }
                                                continue loop3;
                                                addr77:
                                             }
                                             return §§pop();
                                          }
                                          §§goto(addr81);
                                       }
                                       else
                                       {
                                          §§goto(addr63);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr77);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
   }
}
