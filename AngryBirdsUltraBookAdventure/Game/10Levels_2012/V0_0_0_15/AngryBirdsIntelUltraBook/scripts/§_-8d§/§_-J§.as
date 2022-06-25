package §_-8d§
{
   public class §_-J§
   {
       
      
      private var §_-95§:Vector.<§_-vz§>;
      
      public function §_-J§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         do
         {
            this.§_-95§ = new Vector.<§_-vz§>();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function addFrame(param1:§_-vz§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  throw new Error("Trying to add a null frame");
               }
               while(true)
               {
               }
               addr55:
            }
            while(true)
            {
               this.§_-95§.push(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr55);
            }
         }
      }
      
      public function getFrame(param1:int) : §_-vz§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() >= this.§_-95§.length)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     addr129:
                     §§push(int(this.§_-95§.length - 1));
                     while(true)
                     {
                        param1 = §§pop();
                     }
                     addr134:
                  }
                  while(true)
                  {
                  }
                  addr135:
               }
               while(true)
               {
                  §§push(param1);
                  loop2:
                  while(true)
                  {
                     if(_loc2_ || param1)
                     {
                        §§push(§§pop() < 0);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              while(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    return null;
                                 }
                                 if(_loc2_ || param1)
                                 {
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       break;
                                    }
                                    break loop2;
                                 }
                                 §§push(§§pop() >= this.§_-95§.length);
                                 continue loop2;
                                 if(_loc2_ || param1)
                                 {
                                    continue;
                                 }
                                 addr113:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop2;
                                 }
                                 addr113:
                              }
                              return this.§_-95§[param1];
                           }
                        }
                        §§goto(addr113);
                     }
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr134);
         }
         §§goto(addr129);
      }
      
      public function getFrameCount() : int
      {
         return this.§_-95§.length;
      }
      
      public function getSubAnimation(param1:String) : §_-J§
      {
         return null;
      }
   }
}
