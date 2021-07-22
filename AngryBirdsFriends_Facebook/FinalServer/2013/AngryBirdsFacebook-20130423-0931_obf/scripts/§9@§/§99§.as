package §9@§
{
   public class §99§
   {
      
      private static const §%!u§:uint = 2147483646;
      
      private static const §-j§:int = 16807;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §%!u§ = 2147483646;
         }
         do
         {
            §-j§ = 16807;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §^5§:uint;
      
      public function §99§(param1:int = 1)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§"O§ = param1;
         }
         while(_loc2_);
         
      }
      
      public function set §"O§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(§§pop() < 1);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              break;
                           }
                           loop2:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                           continue loop0;
                           addr79:
                        }
                        while(true)
                        {
                           this.§^5§ = param1;
                           if(_loc3_ || _loc2_)
                           {
                              break;
                           }
                           §§goto(addr79);
                        }
                        §§pop() > §%!u§;
                        addr50:
                        return;
                        if(_loc3_)
                        {
                           continue;
                        }
                        addr89:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr89:
                     }
                     throw new Error("Invalid seed value. Seed must be between 1 and " + §%!u§);
                  }
               }
               §§goto(addr89);
            }
         }
         §§goto(addr81);
      }
      
      public function get §"O§() : uint
      {
         return this.§^5§;
      }
      
      public function get §#g§() : uint
      {
         return this.§%j§();
      }
      
      public function get §@"&§() : Number
      {
         return this.§%j§() / int.MAX_VALUE;
      }
      
      private function §%j§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this);
            §§push(this.§^5§ * §-j§);
            if(_loc1_ || _loc2_)
            {
               §§push(§§pop() % int.MAX_VALUE);
            }
            §§pop().§"O§ = §§pop();
         }
         return this.§^5§;
      }
   }
}
