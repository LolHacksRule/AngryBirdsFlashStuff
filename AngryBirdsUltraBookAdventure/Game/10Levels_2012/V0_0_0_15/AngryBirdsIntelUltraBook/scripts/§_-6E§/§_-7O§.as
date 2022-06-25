package §_-6E§
{
   public class §_-7O§ implements § var§
   {
       
      
      private var §_-07n§:Array;
      
      private var §_-06k§:Boolean;
      
      public function §_-7O§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-07n§ = [];
            do
            {
               super();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function §_-Ho§(param1:§_-UU§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-07n§.push(param1);
         }
         do
         {
            this.§_-06k§ = false;
         }
         while(!(_loc2_ || this));
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-UU§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§_-07n§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            this.§_-07n§ = [];
         }
      }
      
      public function §_-sb§(param1:String) : §_-0j§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§_-0j§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§_-07n§.length)
         {
            _loc2_ = (this.§_-07n§[_loc3_] as §_-UU§).§_-sb§(param1);
            if(_loc5_ || this)
            {
               if(_loc2_ != null)
               {
                  if(!_loc4_)
                  {
                     return _loc2_;
                  }
               }
               else
               {
                  §§push(_loc3_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 1);
                     if(!_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  _loc3_ = §§pop();
               }
            }
         }
         return null;
      }
      
      public function get §_-iE§() : int
      {
         return this.§_-07n§.length;
      }
      
      public function §_-0Cv§(param1:int) : §_-UU§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr110:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr111:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§_-06k§);
                                 if(_loc3_ && this)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       addr24:
                                       while(true)
                                       {
                                          §§push(this.§_-07n§);
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          continue loop9;
                                       }
                                    }
                                    while(!_loc3_)
                                    {
                                       §§push(this.§_-07n§);
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          do
                                          {
                                             this.§_-06k§ = true;
                                          }
                                          while(!_loc2_);
                                          
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          if(!(_loc2_ || this))
                                          {
                                             continue loop7;
                                          }
                                          if(!_loc2_)
                                          {
                                             §§goto(addr105);
                                          }
                                          while(true)
                                          {
                                             §§goto(addr24);
                                          }
                                       }
                                    }
                                    continue loop0;
                                    return §§pop()[param1];
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                                 addr113:
                              }
                              while(_loc2_)
                              {
                                 continue loop6;
                                 §§goto(addr62);
                              }
                              addr62:
                              continue loop2;
                              addr101:
                           }
                           addr105:
                           return null;
                        }
                     }
                     §§goto(addr113);
                  }
               }
            }
         }
         §§goto(addr61);
      }
   }
}
