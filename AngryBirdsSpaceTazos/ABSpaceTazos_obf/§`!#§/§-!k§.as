package §`!#§
{
   import §=5§.§^T§;
   
   public class §-!k§
   {
      
      public static const NONE:String = "none";
      
      public static const §?F§:String = "bilinear";
      
      public static const §+!%§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            NONE = "none";
            do
            {
               §?F§ = "bilinear";
               do
               {
                  §+!%§ = "trilinear";
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(_loc1_);
            
         }
      }
      
      public function §-!k§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
         throw new §^T§();
      }
      
      public static function §2!G§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
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
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_ || param1)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(param1);
                                          if(_loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(§+!%§);
                                          if(_loc3_)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() == §§pop());
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_ || param1)
                                             {
                                                if(!(_loc2_ && param1))
                                                {
                                                   §§goto(addr61);
                                                }
                                                addr117:
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop6;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop() == §§pop());
                                             }
                                             addr75:
                                          }
                                          while(true)
                                          {
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                break loop5;
                                             }
                                             continue loop5;
                                          }
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(param1);
                                       continue loop0;
                                    }
                                    addr118:
                                 }
                                 addr61:
                              }
                              continue loop3;
                              return §§pop();
                           }
                           continue loop2;
                        }
                        §§goto(addr117);
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
   }
}
