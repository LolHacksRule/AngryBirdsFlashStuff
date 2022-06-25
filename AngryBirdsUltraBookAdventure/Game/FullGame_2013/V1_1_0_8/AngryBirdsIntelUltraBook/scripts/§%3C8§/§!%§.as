package §<8§
{
   public class §!%§ implements §,!J§
   {
       
      
      private var §,x§:Array;
      
      private var §&!W§:Boolean;
      
      public function §!%§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,x§ = [];
            do
            {
               super();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      public function §^'§(param1:§,j§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§,x§.push(param1);
            do
            {
               this.§&!W§ = false;
            }
            while(_loc3_ && param1);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§,j§ = null;
         var _loc3_:* = this.§,x§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc5_ && _loc3_))
         {
            this.§,x§ = [];
         }
      }
      
      public function §,!A§(param1:String) : §!3§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§!3§ = null;
         var _loc3_:Number = 0;
         while(true)
         {
            if(_loc3_ >= this.§,x§.length)
            {
               return null;
            }
            _loc2_ = (this.§,x§[_loc3_] as §,j§).§,!A§(param1);
            if(_loc4_)
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(_loc5_ || _loc3_)
               {
                  break;
               }
            }
            §§push(_loc3_);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() + 1);
               if(!(_loc5_ || _loc2_))
               {
                  continue;
               }
            }
            §§push(Number(§§pop()));
         }
         return _loc2_;
      }
      
      public function get §8L§() : int
      {
         return this.§,x§.length;
      }
      
      public function §#%§(param1:int) : §,j§
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
               addr126:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr127:
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
                                 §§push(this.§&!W§);
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(this.§,x§);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr76);
                                    }
                                    return §§pop()[param1];
                                 }
                                 while(!_loc2_)
                                 {
                                    if(!(_loc2_ && param1))
                                    {
                                       §§push(this.§,x§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          while(_loc3_ || _loc3_)
                                          {
                                             this.§&!W§ = true;
                                             if(!(_loc3_ || _loc3_))
                                             {
                                                continue;
                                             }
                                             if(_loc2_)
                                             {
                                                break loop9;
                                             }
                                          }
                                          §§goto(addr121);
                                       }
                                       continue;
                                       addr76:
                                    }
                                    continue loop0;
                                 }
                                 addr123:
                                 while(true)
                                 {
                                    continue loop7;
                                 }
                              }
                              while(_loc3_)
                              {
                                 if(_loc3_ || this)
                                 {
                                    continue loop6;
                                 }
                                 continue loop2;
                                 §§goto(addr49);
                              }
                              addr49:
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                              addr129:
                              addr110:
                           }
                           addr121:
                           return null;
                        }
                     }
                     §§goto(addr129);
                  }
               }
            }
         }
         §§goto(addr123);
      }
   }
}
