package §-w§
{
   public class §1!;§
   {
       
      
      private var §[!4§:Vector.<§+W§>;
      
      public function §1!;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
         do
         {
            this.§[!4§ = new Vector.<§+W§>();
         }
         while(_loc2_);
         
      }
      
      public function addFrame(param1:§+W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  this.§[!4§.push(param1);
                  if(_loc3_)
                  {
                     break;
                  }
                  addr56:
                  while(true)
                  {
                     continue loop0;
                  }
               }
               if(!_loc2_)
               {
                  return;
               }
            }
            throw new Error("Trying to add a null frame");
         }
         §§goto(addr56);
      }
      
      public function getFrame(param1:int) : §+W§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() >= this.§[!4§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§[!4§.length - 1));
                     addr119:
                     while(true)
                     {
                        param1 = §§pop();
                        addr120:
                        while(true)
                        {
                        }
                     }
                  }
                  addr114:
               }
               while(true)
               {
                  §§push(param1);
                  loop5:
                  while(true)
                  {
                     §§push(§§pop() < 0);
                     addr103:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 addr98:
                                 break;
                              }
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    return null;
                                 }
                                 §§goto(addr114);
                              }
                              else
                              {
                                 while(!_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 addr106:
                              }
                              §§goto(addr120);
                           }
                           return this.§[!4§[param1];
                           addr68:
                        }
                        while(true)
                        {
                           §§pop();
                        }
                        §§goto(addr106);
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function getFrameCount() : int
      {
         return this.§[!4§.length;
      }
      
      public function getSubAnimation(param1:String) : §1!;§
      {
         return null;
      }
   }
}
