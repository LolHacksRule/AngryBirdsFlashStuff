package §,!_§
{
   public class Animation
   {
       
      
      private var §+6§:Vector.<§;K§>;
      
      public function Animation()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.§+6§ = new Vector.<§;K§>();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function addFrame(param1:§;K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1 == null)
            {
               if(!(_loc2_ && this))
               {
                  §§goto(addr73);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr49);
                  }
               }
            }
            addr49:
            while(true)
            {
               this.§+6§.push(param1);
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr73:
         throw new Error("Trying to add a null frame");
      }
      
      public function getFrame(param1:int) : §;K§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() >= this.§+6§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§+6§.length - 1));
                     addr155:
                     while(true)
                     {
                        param1 = §§pop();
                        addr156:
                        while(true)
                        {
                        }
                     }
                     addr91:
                     if(_loc2_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr20);
                  }
               }
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(!(_loc2_ && this))
                  {
                     §§push(§§pop() < 0);
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop());
                           if(_loc3_ || param1)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(§§pop())
                           {
                              loop4:
                              for(; §§pop(); continue loop3)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       return null;
                                    }
                                    loop5:
                                    for(; !_loc2_; while(true)
                                    {
                                       §§pop();
                                       continue loop5;
                                    })
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!(_loc2_ && this))
                                          {
                                             §§push(§§pop() >= this.§+6§.length);
                                             if(_loc3_ || _loc2_)
                                             {
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   continue loop4;
                                                }
                                                continue loop5;
                                             }
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr91);
                              }
                              addr20:
                              return this.§+6§[param1];
                              addr63:
                           }
                        }
                        §§goto(addr138);
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        §§goto(addr63);
                     }
                  }
               }
            }
            §§goto(addr155);
         }
         §§goto(addr141);
      }
      
      public function getFrameCount() : int
      {
         return this.§+6§.length;
      }
      
      public function getSubAnimation(param1:String) : Animation
      {
         return null;
      }
   }
}
