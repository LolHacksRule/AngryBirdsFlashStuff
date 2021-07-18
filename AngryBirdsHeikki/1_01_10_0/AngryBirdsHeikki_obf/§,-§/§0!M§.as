package §,-§
{
   public class §0!M§ implements §3!f§
   {
       
      
      private var §+_§:Array;
      
      private var §<^§:Boolean;
      
      public function §0!M§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§+_§ = [];
         }
         do
         {
            super();
         }
         while(_loc2_ && this);
         
      }
      
      public function §3u§(param1:§]M§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§+_§.push(param1);
            do
            {
               this.§<^§ = false;
            }
            while(!_loc2_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]M§ = null;
         for each(_loc1_ in this.§+_§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_)
         {
            this.§+_§ = [];
         }
      }
      
      public function §?&§(param1:String) : §!>§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§!>§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§+_§.length)
            {
               return null;
            }
            _loc2_ = (this.§+_§[_loc3_] as §]M§).§?&§(param1);
            if(!(_loc4_ || _loc3_))
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(_loc4_)
               {
                  break;
               }
            }
            §§push(_loc3_);
            if(_loc4_)
            {
               §§push(§§pop() + 1);
               if(!(_loc5_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc3_ = §§pop();
         }
         return _loc2_;
      }
      
      public function get §[J§() : int
      {
         return this.§+_§.length;
      }
      
      public function §^m§(param1:int) : §]M§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr125:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr126:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 addr78:
                                 loop10:
                                 while(_loc2_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§<^§ = true;
                                       if(_loc2_ || _loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§+_§);
                                             if(_loc2_ || _loc3_)
                                             {
                                                break;
                                             }
                                             addr76:
                                             while(true)
                                             {
                                                §§pop().sortOn("name");
                                                continue loop10;
                                             }
                                          }
                                          return §§pop()[param1];
                                          addr19:
                                       }
                                       continue loop10;
                                    }
                                 }
                              }
                              addr122:
                           }
                           addr46:
                           addr95:
                           while(true)
                           {
                              §§push(this.§<^§);
                              if(_loc3_ && _loc3_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    §§goto(addr76);
                                    §§push(this.§+_§);
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr19);
                              §§goto(addr122);
                           }
                           while(!_loc3_)
                           {
                              if(_loc2_ || this)
                              {
                                 continue loop6;
                              }
                              continue loop2;
                              §§goto(addr46);
                           }
                        }
                        return null;
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
         §§goto(addr85);
      }
   }
}
