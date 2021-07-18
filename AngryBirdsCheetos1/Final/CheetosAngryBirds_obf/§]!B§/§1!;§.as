package §]!B§
{
   import §=!S§.§3[§;
   
   public class §1!;§
   {
      
      public static const NONE:String = "none";
      
      public static const §&@§:String = "bilinear";
      
      public static const §>!7§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            NONE = "none";
            while(true)
            {
               §&@§ = "bilinear";
               loop1:
               while(_loc2_)
               {
                  while(true)
                  {
                     §>!7§ = "trilinear";
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function §1!;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
         throw new §3[§();
      }
      
      public static function §51§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
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
                                 for(; _loc2_; while(true)
                                 {
                                    §§push(param1);
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue loop6;
                                    }
                                    §§push(§>!7§);
                                    if(!_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(_loc2_ || _loc3_)
                                       {
                                          addr41:
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr60);
                                    }
                                    §§goto(addr68);
                                 })
                                 {
                                    §§push(§&@§);
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                §§goto(addr41);
                                             }
                                          }
                                          continue loop3;
                                          addr63:
                                       }
                                       addr68:
                                       while(true)
                                       {
                                          if(!(_loc3_ && param1))
                                          {
                                             if(_loc3_ && _loc2_)
                                             {
                                                break;
                                             }
                                             §§pop();
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             continue loop5;
                                          }
                                          continue loop4;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        §§goto(addr63);
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
   }
}
