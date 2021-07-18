package §#e§
{
   public class §4^§
   {
       
      
      private var §7?§:Vector.<§`!9§>;
      
      public function §4^§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            do
            {
               this.§7?§ = new Vector.<§`!9§>();
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function addFrame(param1:§`!9§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(param1 == null)
            {
               if(_loc2_ || _loc2_)
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
               this.§7?§.push(param1);
               if(!(_loc3_ && _loc2_))
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
      
      public function getFrame(param1:int) : §`!9§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§7?§.length)
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§push(int(this.§7?§.length - 1));
                     loop1:
                     while(true)
                     {
                        param1 = §§pop();
                        addr66:
                        addr121:
                        loop4:
                        while(true)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              continue loop0;
                           }
                           continue loop1;
                           loop6:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 break;
                              }
                              §§push(§§pop() >= this.§7?§.length);
                              if(!_loc2_)
                              {
                                 while(§§pop())
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       break;
                                    }
                                    addr63:
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          return null;
                                       }
                                       break loop4;
                                    }
                                    continue loop6;
                                 }
                                 return this.§7?§[param1];
                                 addr38:
                              }
                           }
                        }
                        while(true)
                        {
                           addr64:
                           while(true)
                           {
                              §§goto(addr66);
                           }
                        }
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr64);
            }
         }
         §§goto(addr63);
      }
      
      public function getFrameCount() : int
      {
         return this.§7?§.length;
      }
      
      public function getSubAnimation(param1:String) : §4^§
      {
         return null;
      }
   }
}
