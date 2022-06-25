package §-w§
{
   public class §1!;§
   {
       
      
      private var §[!4§:Vector.<§+W§>;
      
      public function §1!;§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§[!4§ = new Vector.<§+W§>();
            }
            while(!_loc1_);
            
         }
      }
      
      public function addFrame(param1:§+W§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  this.§[!4§.push(param1);
                  if(_loc3_ || _loc2_)
                  {
                     break;
                  }
                  addr71:
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
         §§goto(addr71);
      }
      
      public function getFrame(param1:int) : §+W§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§[!4§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§[!4§.length - 1));
                     addr129:
                     while(true)
                     {
                        param1 = §§pop();
                        addr130:
                        while(true)
                        {
                        }
                     }
                  }
                  addr124:
               }
               while(true)
               {
                  §§push(param1);
                  loop4:
                  while(!_loc3_)
                  {
                     §§push(§§pop() < 0);
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       return null;
                                    }
                                    addr118:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc3_ && this)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                       §§goto(addr117);
                                    }
                                    continue loop4;
                                 }
                                 if(!(_loc3_ && param1))
                                 {
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr124);
                                 }
                                 §§goto(addr130);
                              }
                              §§push(§§pop() >= this.§[!4§.length);
                              addr48:
                              break;
                              if(!(_loc3_ && _loc3_))
                              {
                                 continue;
                              }
                              §§goto(addr117);
                           }
                           return this.§[!4§[param1];
                        }
                        addr117:
                        while(true)
                        {
                           §§pop();
                        }
                        addr117:
                        §§goto(addr118);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr129);
               }
            }
         }
         §§goto(addr130);
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
