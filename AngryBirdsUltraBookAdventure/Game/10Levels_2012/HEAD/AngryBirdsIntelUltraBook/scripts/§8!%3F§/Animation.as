package §8!?§
{
   public class Animation
   {
       
      
      private var §2c§:Vector.<§?!B§>;
      
      public function Animation()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.§2c§ = new Vector.<§?!B§>();
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      public function addFrame(param1:§?!B§) : void
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
               this.§2c§.push(param1);
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
      
      public function getFrame(param1:int) : §?!B§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() >= this.§2c§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§2c§.length - 1));
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
                                             §§push(§§pop() >= this.§2c§.length);
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
                              return this.§2c§[param1];
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
         return this.§2c§.length;
      }
      
      public function getSubAnimation(param1:String) : Animation
      {
         return null;
      }
   }
}
