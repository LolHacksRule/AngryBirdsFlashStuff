package §,I§
{
   public class §>"9§ implements §7!K§
   {
       
      
      private var §-o§:Array;
      
      private var §-!<§:Boolean;
      
      public function §>"9§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§-o§ = [];
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function §5F§(param1:§5i§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-o§.push(param1);
            do
            {
               this.§-!<§ = false;
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§5i§ = null;
         for each(_loc1_ in this.§-o§)
         {
            if(!_loc5_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || this)
         {
            this.§-o§ = [];
         }
      }
      
      public function §7M§(param1:String) : §7!c§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§7!c§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§-o§.length)
         {
            _loc2_ = (this.§-o§[_loc3_] as §5i§).§7M§(param1);
            if(_loc4_ && _loc2_)
            {
               continue;
            }
            if(_loc2_ != null)
            {
               if(_loc5_ || this)
               {
                  return _loc2_;
               }
            }
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
               if(_loc5_ || this)
               {
                  addr87:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr87);
         }
         return null;
      }
      
      public function get §9!a§() : int
      {
         return this.§-o§.length;
      }
      
      public function §["=§(param1:int) : §5i§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr116:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr117:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           loop6:
                           while(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(this.§-!<§);
                                 if(!(_loc3_ || this))
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    if(!§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          §§push(this.§-o§);
                                          while(true)
                                          {
                                             §§pop().sortOn("name");
                                          }
                                          addr85:
                                       }
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             break loop6;
                                          }
                                          this.§-!<§ = true;
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc3_ || this))
                                          {
                                             break loop7;
                                          }
                                       }
                                       §§goto(addr35);
                                    }
                                    while(true)
                                    {
                                       §§push(this.§-o§);
                                       if(!(_loc3_ || _loc3_))
                                       {
                                          §§goto(addr85);
                                       }
                                       addr35:
                                       return §§pop()[param1];
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                       break loop7;
                                    }
                                    addr119:
                                 }
                              }
                              continue loop0;
                           }
                           §§goto(addr101);
                        }
                        addr99:
                     }
                     §§goto(addr119);
                  }
               }
            }
         }
         addr101:
         return null;
      }
   }
}
