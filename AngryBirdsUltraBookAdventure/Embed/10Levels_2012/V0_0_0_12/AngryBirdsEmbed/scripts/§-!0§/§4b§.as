package §-!0§
{
   public class §4b§
   {
       
      
      private var §]^§:Vector.<§9X§>;
      
      public function §4b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            if(_loc2_ || this)
            {
               addr28:
               this.§]^§ = new Vector.<§9X§>();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function addFrame(param1:§9X§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(param1 == null)
            {
               if(_loc3_)
               {
                  §§goto(addr39);
               }
            }
            else
            {
               this.§]^§.push(param1);
            }
            return;
         }
         addr39:
         throw new Error("Trying to add a null frame");
      }
      
      public function getFrame(param1:int) : §9X§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() >= this.§]^§.length)
               {
                  if(_loc2_ || param1)
                  {
                     §§push(int(this.§]^§.length - 1));
                     if(_loc2_ || _loc2_)
                     {
                        addr64:
                        param1 = §§pop();
                        if(!(_loc3_ && _loc3_))
                        {
                           addr72:
                           §§push(param1);
                           if(_loc2_)
                           {
                              addr75:
                              §§push(§§pop() < 0);
                              if(_loc2_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       §§pop();
                                       §§goto(addr116);
                                    }
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc3_)
                                 {
                                    return null;
                                 }
                                 §§goto(addr116);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr75);
                  }
                  §§goto(addr116);
               }
               §§goto(addr72);
            }
            §§goto(addr64);
         }
         addr116:
         if(!(_loc3_ && param1))
         {
            addr102:
            §§push(param1 >= this.§]^§.length);
         }
         return this.§]^§[param1];
      }
      
      public function getFrameCount() : int
      {
         return this.§]^§.length;
      }
      
      public function getSubAnimation(param1:String) : §4b§
      {
         return null;
      }
   }
}
