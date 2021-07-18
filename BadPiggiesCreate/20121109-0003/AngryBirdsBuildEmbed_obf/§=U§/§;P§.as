package §=U§
{
   public class §;P§
   {
       
      
      private var §`G§:Vector.<§>?§>;
      
      public function §;P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
            if(!_loc1_)
            {
               addr28:
               this.§`G§ = new Vector.<§>?§>();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function addFrame(param1:§>?§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  throw new Error("Trying to add a null frame");
               }
            }
            else
            {
               this.§`G§.push(param1);
            }
         }
      }
      
      public function getFrame(param1:int) : §>?§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() >= this.§`G§.length)
               {
                  if(!(_loc2_ && param1))
                  {
                     §§push(int(this.§`G§.length - 1));
                     if(_loc3_)
                     {
                        param1 = §§pop();
                        if(!_loc2_)
                        {
                           addr53:
                           §§push(param1);
                           if(!(_loc2_ && param1))
                           {
                              addr61:
                              §§push(§§pop() < 0);
                              if(_loc3_ || param1)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§pop();
                                       if(_loc3_)
                                       {
                                          addr97:
                                          if(param1 >= this.§`G§.length)
                                          {
                                             if(_loc3_ || param1)
                                             {
                                                §§goto(addr105);
                                             }
                                          }
                                       }
                                       return this.§`G§[param1];
                                    }
                                 }
                              }
                           }
                           §§goto(addr97);
                        }
                        addr105:
                        return null;
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr97);
               }
               §§goto(addr53);
            }
            §§goto(addr61);
         }
         §§goto(addr97);
      }
      
      public function getFrameCount() : int
      {
         return this.§`G§.length;
      }
      
      public function getSubAnimation(param1:String) : §;P§
      {
         return null;
      }
   }
}
