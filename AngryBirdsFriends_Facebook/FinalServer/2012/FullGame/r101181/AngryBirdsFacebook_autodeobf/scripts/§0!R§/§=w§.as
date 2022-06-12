package §0!R§
{
   import §&!-§.§+#§;
   
   public class §=w§
   {
      
      public static const NONE:String = "none";
      
      public static const §8!Q§:String = "bilinear";
      
      public static const §>o§:String = "trilinear";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            NONE = "none";
         }
         do
         {
            §8!Q§ = "bilinear";
            do
            {
               §>o§ = "trilinear";
            }
            while(!_loc2_);
            
         }
         while(_loc1_ && §=w§);
         
      }
      
      public function §=w§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         throw new §+#§();
      }
      
      public static function §;!C§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(NONE);
               addr119:
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
                           while(true)
                           {
                              §§pop();
                              addr123:
                              while(true)
                              {
                                 §§push(param1);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§8!Q§);
                                    addr100:
                                    addr116:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc3_ || _loc2_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                           addr122:
                        }
                        while(true)
                        {
                           loop9:
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 addr93:
                                 return §§pop();
                              }
                              while(true)
                              {
                                 if(_loc2_ && §=w§)
                                 {
                                    continue loop2;
                                 }
                                 §§pop();
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 addr66:
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc3_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop9;
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr93);
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr123);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr116);
      }
   }
}
