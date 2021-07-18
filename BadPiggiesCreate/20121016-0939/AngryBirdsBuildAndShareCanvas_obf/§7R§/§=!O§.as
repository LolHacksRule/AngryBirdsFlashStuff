package §7R§
{
   import §2!F§.§["?§;
   
   public class §=!O§
   {
      
      public static const NONE:String = "none";
      
      public static const §;!U§:String = "bilinear";
      
      public static const § l§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            NONE = "none";
            do
            {
               §;!U§ = "bilinear";
               do
               {
                  § l§ = "trilinear";
               }
               while(_loc2_);
               
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      public function §=!O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
         throw new §["?§();
      }
      
      public static function §!!Q§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
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
                  if(_loc3_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           addr117:
                           loop6:
                           while(true)
                           {
                              §§pop();
                              addr118:
                              while(true)
                              {
                                 §§push(param1);
                                 addr68:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(§;!U§);
                                       while(true)
                                       {
                                          if(_loc2_ && param1)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() == §§pop());
                                       }
                                       continue loop6;
                                       addr71:
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           addr117:
                        }
                        while(true)
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc3_)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       if(_loc3_ || §=!O§)
                                       {
                                          §§pop();
                                          if(!(_loc3_ || param1))
                                          {
                                             break;
                                          }
                                          §§push(param1);
                                          if(_loc3_ || param1)
                                          {
                                             §§push(§ l§);
                                             if(!_loc2_)
                                             {
                                                continue;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr68);
                                          }
                                          §§goto(addr71);
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr118);
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                           return §§pop();
                        }
                        continue loop1;
                     }
                  }
                  §§goto(addr117);
               }
            }
         }
         §§goto(addr118);
      }
   }
}
