package §,"R§
{
   public class §0"G§ implements §>!E§
   {
       
      
      private var §3"1§:Array;
      
      private var §`!S§:Boolean;
      
      public function §0"G§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§3"1§ = [];
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §default§(param1:§,!+§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§3"1§.push(param1);
            do
            {
               this.§`!S§ = false;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§,!+§ = null;
         var _loc3_:* = this.§3"1§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_ || this)
         {
            this.§3"1§ = [];
         }
      }
      
      public function §5!y§(param1:String) : §2!J§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§2!J§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§3"1§.length)
            {
               return null;
            }
            _loc2_ = (this.§3"1§[_loc3_] as §,!+§).§5!y§(param1);
            if(!_loc4_)
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
               if(!_loc5_)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc3_ = §§pop();
         }
         return _loc2_;
      }
      
      public function get §=!;§() : int
      {
         return this.§3"1§.length;
      }
      
      public function §#"W§(param1:int) : §,!+§
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
               addr111:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr112:
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
                                 §§push(this.§`!S§);
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 if(!§§pop())
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§3"1§);
                                       loop9:
                                       while(true)
                                       {
                                          §§pop().sortOn("name");
                                          do
                                          {
                                             this.§`!S§ = true;
                                          }
                                          while(_loc2_);
                                          
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.§3"1§);
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      continue loop9;
                                                   }
                                                   return §§pop()[param1];
                                                   addr20:
                                                }
                                                break;
                                             }
                                             if(_loc3_ || _loc2_)
                                             {
                                                continue loop7;
                                             }
                                             continue loop0;
                                          }
                                          continue loop8;
                                       }
                                       §§goto(addr99);
                                    }
                                 }
                                 §§goto(addr20);
                              }
                              while(_loc3_)
                              {
                                 continue loop6;
                              }
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                              addr114:
                              addr95:
                           }
                           addr99:
                           return null;
                        }
                     }
                     §§goto(addr114);
                  }
               }
            }
         }
         §§goto(addr108);
      }
   }
}
