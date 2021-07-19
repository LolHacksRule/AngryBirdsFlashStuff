package §%R§
{
   public class §^#%§
   {
      
      private static var §=!h§:§^#%§;
       
      
      private var §="^§:Object;
      
      private var §+" §:String;
      
      private var §^g§:String;
      
      public function §^#%§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super();
            loop0:
            while(true)
            {
               if(param1)
               {
                  while(true)
                  {
                     this.§="^§ = JSON.parse(param1);
                     addr103:
                     while(true)
                     {
                     }
                  }
                  addr98:
               }
               while(true)
               {
                  this.§+" § = param2;
                  continue loop0;
                  §§goto(addr103);
               }
            }
         }
         while(true)
         {
            this.§^g§ = param3;
            loop6:
            for(; !_loc5_; if(_loc4_ || param3)
            {
               return;
            })
            {
               if(§=!h§)
               {
                  if(_loc4_)
                  {
                     throw new Error("FileNameMapper must be singleton");
                  }
                  loop7:
                  while(!_loc5_)
                  {
                     if(_loc4_)
                     {
                        while(true)
                        {
                           §=!h§ = this;
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop7;
                        }
                        continue loop6;
                        addr28:
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr77);
               }
               §§goto(addr28);
            }
            §§goto(addr103);
         }
      }
      
      public static function get §%!E§() : §^#%§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(§=!h§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc1_ || _loc1_)
                  {
                     §=!h§ = new §^#%§("","","");
                     addr56:
                     §§push(§=!h§);
                  }
               }
               §§goto(addr56);
            }
            return §§pop();
         }
         §§goto(addr56);
      }
      
      public static function initialize(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            new §^#%§(param1,param2,param3);
         }
      }
      
      public function §2G§(param1:String) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§+" §);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() + §§pop());
                  loop2:
                  while(true)
                  {
                     param1 = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(this.§="^§));
                        loop4:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop7:
                              while(§§pop())
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(this.§^g§);
                                       continue loop0;
                                    }
                                    loop6:
                                    while(_loc3_)
                                    {
                                       §§push(Boolean(this.§="^§[param1]));
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       addr102:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop6;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 addr95:
                                 while(true)
                                 {
                                    break loop7;
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§^g§);
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       §§push(param1);
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 continue loop0;
                              }
                              return §§pop() + §§pop();
                              addr64:
                           }
                           §§goto(addr102);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr95);
      }
   }
}
