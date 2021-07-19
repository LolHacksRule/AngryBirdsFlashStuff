package §`g§
{
   public class §=X§ implements §[N§
   {
       
      
      private var §,!G§:Array;
      
      private var §++§:Boolean;
      
      public function §=X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!G§ = [];
            do
            {
               super();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function §^l§(param1:§&_§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§,!G§.push(param1);
            do
            {
               this.§++§ = false;
            }
            while(_loc2_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§&_§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§,!G§)
         {
            if(!_loc5_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            this.§,!G§ = [];
         }
      }
      
      public function §,!<§(param1:String) : §]!3§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§]!3§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§,!G§.length)
            {
               return null;
            }
            _loc2_ = (this.§,!G§[_loc3_] as §&_§).§,!<§(param1);
            if(_loc5_)
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(_loc4_ || this)
               {
                  break;
               }
            }
            else
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
                  if(!_loc5_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function get §0!>§() : int
      {
         return this.§,!G§.length;
      }
      
      public function §5&§(param1:int) : §&_§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         loop0:
         while(true)
         {
            §§push(0);
            addr132:
            while(true)
            {
               §§push(§§pop() < §§pop());
               addr133:
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
                           while(true)
                           {
                              §§push(this.§++§);
                              if(!(_loc3_ || _loc2_))
                              {
                                 break;
                              }
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop2;
                              }
                              if(!§§pop())
                              {
                                 if(_loc2_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(this.§,!G§);
                                 loop8:
                                 while(true)
                                 {
                                    §§pop().sortOn("name");
                                    while(_loc3_ || param1)
                                    {
                                       this.§++§ = true;
                                       if(_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             break loop8;
                                          }
                                          continue loop8;
                                       }
                                    }
                                    §§goto(addr127);
                                 }
                                 continue loop0;
                                 addr79:
                              }
                              while(true)
                              {
                                 §§push(this.§,!G§);
                                 if(!(_loc2_ && this))
                                 {
                                    return §§pop()[param1];
                                 }
                                 §§goto(addr79);
                              }
                           }
                           while(_loc3_ || _loc3_)
                           {
                              continue loop6;
                              §§goto(addr42);
                           }
                           addr42:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr135:
                           addr118:
                        }
                        addr127:
                        return null;
                     }
                  }
                  §§goto(addr135);
               }
            }
         }
      }
   }
}
