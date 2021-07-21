package §8s§
{
   public class §>4§ implements §=!d§
   {
       
      
      private var §!!U§:Array;
      
      private var §&!s§:Boolean;
      
      public function §>4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!!U§ = [];
         }
         do
         {
            super();
         }
         while(_loc2_);
         
      }
      
      public function §9!E§(param1:§`H§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§!!U§.push(param1);
         }
         do
         {
            this.§&!s§ = false;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`H§ = null;
         for each(_loc1_ in this.§!!U§)
         {
            if(_loc4_ || this)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || this)
         {
            this.§!!U§ = [];
         }
      }
      
      public function §#!Q§(param1:String) : §8"§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§8"§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§!!U§.length)
         {
            _loc2_ = (this.§!!U§[_loc3_] as §`H§).§#!Q§(param1);
            if(_loc5_ && _loc3_)
            {
               continue;
            }
            if(_loc2_ != null)
            {
               if(!(_loc5_ && param1))
               {
                  return _loc2_;
               }
            }
            §§push(_loc3_);
            if(_loc4_ || _loc2_)
            {
               §§push(§§pop() + 1);
               if(_loc4_ || _loc3_)
               {
                  addr91:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr91);
         }
         return null;
      }
      
      public function get §-"-§() : int
      {
         return this.§!!U§.length;
      }
      
      public function §@"=§(param1:int) : §`H§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr121:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr122:
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
                                 §§push(this.§&!s§);
                                 if(!(_loc3_ || this))
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    while(_loc3_ || _loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          return null;
                                       }
                                       addr106:
                                       §§push(this.§!!U§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          do
                                          {
                                             this.§&!s§ = true;
                                          }
                                          while(_loc2_);
                                          
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             continue loop9;
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 §§goto(addr20);
                              }
                              while(_loc3_)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    continue loop6;
                                 }
                                 continue loop2;
                                 §§goto(addr46);
                              }
                              addr46:
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                              addr124:
                              addr95:
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr124);
                  }
               }
            }
         }
         §§goto(addr45);
      }
   }
}
