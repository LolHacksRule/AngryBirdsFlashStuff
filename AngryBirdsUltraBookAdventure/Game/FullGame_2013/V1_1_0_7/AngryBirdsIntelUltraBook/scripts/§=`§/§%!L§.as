package §=`§
{
   public class §%!L§
   {
       
      
      private var §<!E§:Vector.<§#`§>;
      
      public function §%!L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
            do
            {
               this.§<!E§ = new Vector.<§#`§>();
            }
            while(_loc1_);
            
         }
      }
      
      public function addFrame(param1:§#`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 == null)
            {
               if(!_loc2_)
               {
                  throw new Error("Trying to add a null frame");
               }
               while(true)
               {
                  §§goto(addr34);
               }
            }
            addr34:
            §§goto(addr46);
         }
         addr46:
         while(true)
         {
            this.§<!E§.push(param1);
            if(!(_loc2_ && _loc3_))
            {
               break;
            }
            continue loop0;
         }
      }
      
      public function getFrame(param1:int) : §#`§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() >= this.§<!E§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§<!E§.length - 1));
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
                  loop5:
                  while(true)
                  {
                     §§push(§§pop() < 0);
                     if(!(_loc2_ && param1))
                     {
                        if(!§§pop())
                        {
                           addr111:
                           while(true)
                           {
                              §§pop();
                           }
                           addr111:
                        }
                        else
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || param1)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       §§goto(addr78);
                                    }
                                    break;
                                 }
                                 if(_loc2_ && param1)
                                 {
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr120);
                                       §§goto(addr111);
                                    }
                                    §§goto(addr125);
                                    addr112:
                                 }
                              }
                              §§pop() >= this.§<!E§.length;
                              addr46:
                              return this.§<!E§[param1];
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§goto(addr111);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr111);
                  }
               }
            }
         }
         addr78:
         return null;
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
