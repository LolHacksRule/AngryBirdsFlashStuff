package §4>§
{
   import §4!S§.§#!s§;
   
   public class §#i§
   {
      
      public static const NONE:String = "none";
      
      public static const §@R§:String = "bilinear";
      
      public static const §!!7§:String = "trilinear";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §#i§))
         {
            NONE = "none";
            do
            {
               §@R§ = "bilinear";
               do
               {
                  §!!7§ = "trilinear";
               }
               while(_loc2_ && _loc2_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      public function §#i§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new §#!s§();
      }
      
      public static function §42§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
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
                              if(_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§pop();
                                          if(_loc3_ && _loc2_)
                                          {
                                             break;
                                          }
                                          §§push(param1);
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             continue loop0;
                                          }
                                          §§push(§!!7§);
                                          if(!(_loc3_ && param1))
                                          {
                                             continue;
                                          }
                                          addr80:
                                          while(true)
                                          {
                                             if(!(_loc2_ || _loc3_))
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() == §§pop());
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   break loop5;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             break loop6;
                                          }
                                          addr121:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(param1);
                                       continue loop0;
                                    }
                                    addr122:
                                 }
                                 return §§pop();
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                        §§goto(addr121);
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
   }
}
