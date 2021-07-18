package §=!<§
{
   public class §!x§
   {
       
      
      private var §8J§:Vector.<§8!!§>;
      
      public function §!x§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         do
         {
            this.§8J§ = new Vector.<§8!!§>();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function addFrame(param1:§8!!§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 != null)
            {
               do
               {
                  this.§8J§.push(param1);
               }
               while(!(_loc2_ || _loc2_));
               
               if(!(_loc3_ && this))
               {
                  return;
                  addr62:
               }
            }
            throw new Error("Trying to add a null frame");
         }
         §§goto(addr62);
      }
      
      public function getFrame(param1:int) : §8!!§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§8J§.length)
               {
                  addr115:
                  while(true)
                  {
                     §§push(int(this.§8J§.length - 1));
                     addr120:
                     while(true)
                     {
                        param1 = §§pop();
                        addr121:
                        while(true)
                        {
                        }
                     }
                  }
                  addr115:
               }
               loop1:
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(_loc3_)
                  {
                     §§push(§§pop() < 0);
                     if(!(_loc2_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr92:
                              while(true)
                              {
                                 if(_loc3_ || this)
                                 {
                                    §§push(param1);
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(!(_loc3_ || this))
                                    {
                                       break;
                                    }
                                    §§push(§§pop() >= this.§8J§.length);
                                    if(!(_loc3_ || _loc3_))
                                    {
                                       continue loop5;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr115);
                                 }
                                 continue loop5;
                              }
                              §§goto(addr120);
                           }
                           addr91:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    return null;
                                 }
                                 break;
                              }
                              if(_loc2_)
                              {
                                 §§goto(addr92);
                              }
                           }
                           return this.§8J§[param1];
                           §§goto(addr44);
                        }
                        continue loop1;
                     }
                     §§goto(addr91);
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr115);
      }
      
      public function getFrameCount() : int
      {
         return this.§8J§.length;
      }
      
      public function getSubAnimation(param1:String) : §!x§
      {
         return null;
      }
   }
}
