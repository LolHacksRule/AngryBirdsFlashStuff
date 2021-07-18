package § `§
{
   public class §^1§
   {
       
      
      private var §6d§:Vector.<§6!=§>;
      
      public function §^1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
         do
         {
            this.§6d§ = new Vector.<§6!=§>();
         }
         while(!_loc2_);
         
      }
      
      public function addFrame(param1:§6!=§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr66);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr70:
               }
            }
            while(true)
            {
               this.§6d§.push(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr70);
            }
            return;
         }
         addr66:
         throw new Error("Trying to add a null frame");
      }
      
      public function getFrame(param1:int) : §6!=§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() >= this.§6d§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§6d§.length - 1));
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
               loop4:
               while(true)
               {
                  §§push(param1);
                  loop5:
                  while(true)
                  {
                     §§push(§§pop() < 0);
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           while(§§pop())
                           {
                              if(_loc2_)
                              {
                                 return null;
                              }
                              if(_loc3_ && this)
                              {
                                 continue loop5;
                              }
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop4;
                              }
                              if(!_loc3_)
                              {
                                 addr83:
                                 break;
                              }
                              §§goto(addr114);
                           }
                           return this.§6d§[param1];
                        }
                     }
                     addr97:
                     while(true)
                     {
                        §§pop();
                        continue loop5;
                     }
                  }
               }
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               §§push(§§pop() >= this.§6d§.length);
               if(_loc2_)
               {
                  §§goto(addr51);
               }
               §§goto(addr97);
            }
         }
         §§goto(addr83);
      }
      
      public function getFrameCount() : int
      {
         return this.§6d§.length;
      }
      
      public function getSubAnimation(param1:String) : §^1§
      {
         return null;
      }
   }
}
