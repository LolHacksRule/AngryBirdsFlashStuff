package §]o§
{
   public class §!T§ implements §"!Z§
   {
       
      
      private var §[!Q§:Array;
      
      private var §6!?§:Boolean;
      
      public function §!T§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§[!Q§ = [];
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §^f§(param1:§%!p§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§[!Q§.push(param1);
         }
         do
         {
            this.§6!?§ = false;
         }
         while(!_loc3_);
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§%!p§ = null;
         for each(_loc1_ in this.§[!Q§)
         {
            if(!_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc4_)
         {
            this.§[!Q§ = [];
         }
      }
      
      public function §,T§(param1:String) : §^!9§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§^!9§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§[!Q§.length)
         {
            _loc2_ = (this.§[!Q§[_loc3_] as §%!p§).§,T§(param1);
            if(_loc4_)
            {
               continue;
            }
            if(_loc2_ != null)
            {
               if(_loc5_ || _loc2_)
               {
                  return _loc2_;
               }
               continue;
            }
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + 1);
               if(_loc5_ || this)
               {
                  addr92:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr92);
         }
         return null;
      }
      
      public function get §]t§() : int
      {
         return this.§[!Q§.length;
      }
      
      public function §0!>§(param1:int) : §%!p§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr131:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr132:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || param1)
                                 {
                                    break;
                                 }
                                 while(_loc3_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                    loop10:
                                    while(!(_loc2_ && _loc3_))
                                    {
                                       this.§6!?§ = true;
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§[!Q§);
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             addr81:
                                             while(true)
                                             {
                                                §§pop().sortOn("name");
                                                continue loop10;
                                             }
                                          }
                                          return §§pop()[param1];
                                          addr25:
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           return null;
                        }
                        addr110:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr128);
      }
   }
}
