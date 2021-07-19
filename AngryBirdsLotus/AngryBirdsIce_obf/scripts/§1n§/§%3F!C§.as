package §1n§
{
   public class §?!C§
   {
       
      
      private var §1Y§:Vector.<§1D§>;
      
      public function §?!C§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            do
            {
               this.§1Y§ = new Vector.<§1D§>();
            }
            while(!_loc2_);
            
         }
      }
      
      public function addFrame(param1:§1D§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            if(param1 == null)
            {
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr71);
               }
               else
               {
                  while(true)
                  {
                     §§goto(addr48);
                  }
               }
            }
            addr48:
            while(true)
            {
               this.§1Y§.push(param1);
               if(_loc2_ || param1)
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         addr71:
         throw new Error("Trying to add a null frame");
      }
      
      public function getFrame(param1:int) : §1D§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§1Y§.length)
               {
                  addr120:
                  while(true)
                  {
                     §§push(int(this.§1Y§.length - 1));
                     addr125:
                     while(true)
                     {
                        param1 = §§pop();
                        addr126:
                        while(true)
                        {
                        }
                     }
                  }
                  addr120:
               }
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(!_loc2_)
                  {
                     §§push(§§pop() < 0);
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(§§pop())
                           {
                              if(!(_loc3_ || this))
                              {
                                 break;
                              }
                              if(!_loc2_)
                              {
                                 break loop3;
                              }
                              loop5:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(param1);
                                    if(!(_loc3_ || param1))
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc3_ || this))
                                    {
                                       break;
                                    }
                                    §§push(§§pop() >= this.§1Y§.length);
                                    if(_loc3_ || _loc2_)
                                    {
                                       continue loop3;
                                    }
                                    addr111:
                                    while(true)
                                    {
                                       §§pop();
                                       continue loop5;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr120);
                                 }
                              }
                              §§goto(addr125);
                           }
                           return this.§1Y§[param1];
                           addr77:
                        }
                        §§goto(addr111);
                     }
                     if(_loc3_)
                     {
                        return null;
                     }
                     §§goto(addr126);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr120);
      }
      
      public function getFrameCount() : int
      {
         return this.§1Y§.length;
      }
      
      public function getSubAnimation(param1:String) : §?!C§
      {
         return null;
      }
   }
}
