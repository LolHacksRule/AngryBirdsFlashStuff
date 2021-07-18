package §;"7§
{
   public class §"!B§
   {
       
      
      private var §?!z§:Vector.<§+!I§>;
      
      public function §"!B§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            this.§?!z§ = new Vector.<§+!I§>();
         }
         while(_loc1_ && _loc1_);
         
      }
      
      public function addFrame(param1:§+!I§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != null)
            {
               do
               {
                  this.§?!z§.push(param1);
               }
               while(!_loc2_);
               
               if(_loc2_)
               {
                  return;
               }
            }
         }
         throw new Error("Trying to add a null frame");
      }
      
      public function getFrame(param1:int) : §+!I§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§?!z§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§?!z§.length - 1));
                     addr119:
                     while(true)
                     {
                        param1 = §§pop();
                        addr120:
                        while(true)
                        {
                        }
                     }
                     loop7:
                     for(; !(_loc3_ && param1); while(true)
                     {
                        §§pop();
                        continue loop7;
                     })
                     {
                        while(true)
                        {
                           §§push(param1);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(§§pop() >= this.§?!z§.length);
                              if(!_loc2_)
                              {
                                 continue loop7;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       if(!_loc3_)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             return null;
                                          }
                                          break;
                                       }
                                       continue loop7;
                                    }
                                 }
                                 return this.§?!z§[param1];
                              }
                              §§goto(addr120);
                           }
                           addr70:
                           while(!_loc3_)
                           {
                              continue loop0;
                           }
                           §§goto(addr119);
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr70);
                  §§goto(addr120);
               }
            }
         }
         §§goto(addr98);
      }
      
      public function getFrameCount() : int
      {
         return this.§?!z§.length;
      }
      
      public function getSubAnimation(param1:String) : §"!B§
      {
         return null;
      }
   }
}
