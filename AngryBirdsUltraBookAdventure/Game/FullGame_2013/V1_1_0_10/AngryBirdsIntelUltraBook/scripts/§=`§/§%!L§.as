package §=`§
{
   public class §%!L§
   {
       
      
      private var §<!E§:Vector.<§#`§>;
      
      public function §%!L§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.§<!E§ = new Vector.<§#`§>();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function addFrame(param1:§#`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1 != null)
            {
               do
               {
                  this.§<!E§.push(param1);
               }
               while(!(_loc3_ || param1));
               
               if(!(_loc2_ && this))
               {
                  return;
                  addr68:
               }
            }
            throw new Error("Trying to add a null frame");
         }
         §§goto(addr68);
      }
      
      public function getFrame(param1:int) : §#`§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() >= this.§<!E§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§<!E§.length - 1));
                     addr124:
                     while(true)
                     {
                        param1 = §§pop();
                        addr125:
                        while(true)
                        {
                        }
                     }
                  }
                  addr119:
               }
               while(true)
               {
                  §§push(param1);
                  addr101:
                  loop5:
                  while(true)
                  {
                     §§push(§§pop() < 0);
                     if(_loc2_ || param1)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || param1)
                                 {
                                    if(_loc2_)
                                    {
                                       return null;
                                    }
                                    §§goto(addr119);
                                 }
                                 else
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop5;
                                    }
                                    if(_loc3_ && _loc3_)
                                    {
                                       §§goto(addr125);
                                    }
                                 }
                              }
                              return this.§<!E§[param1];
                           }
                           §§goto(addr124);
                           addr66:
                        }
                     }
                     addr112:
                     while(true)
                     {
                        §§pop();
                        continue loop5;
                     }
                  }
               }
               addr43:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§push(§§pop() >= this.§<!E§.length);
               if(_loc2_)
               {
                  §§goto(addr66);
               }
               §§goto(addr112);
            }
         }
         while(true)
         {
            §§push(param1);
            if(_loc2_)
            {
               if(_loc2_ || param1)
               {
                  §§goto(addr43);
               }
               §§goto(addr124);
            }
            §§goto(addr101);
            §§goto(addr112);
         }
      }
      
      public function getFrameCount() : int
      {
         return this.§<!E§.length;
      }
      
      public function getSubAnimation(param1:String) : §%!L§
      {
         return null;
      }
   }
}
