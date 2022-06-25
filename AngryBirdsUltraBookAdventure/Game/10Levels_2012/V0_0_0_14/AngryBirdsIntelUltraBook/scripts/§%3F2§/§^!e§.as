package §?2§
{
   public class §^!e§ implements §3N§
   {
       
      
      private var §2!b§:Array;
      
      private var §9!X§:Boolean;
      
      public function §^!e§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§2!b§ = [];
         }
         do
         {
            super();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §?!d§(param1:§]!'§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§2!b§.push(param1);
            do
            {
               this.§9!X§ = false;
            }
            while(!_loc3_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§]!'§ = null;
         var _loc3_:* = this.§2!b§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || _loc1_)
         {
            this.§2!b§ = [];
         }
      }
      
      public function §4T§(param1:String) : §=!L§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§=!L§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§2!b§.length)
         {
            _loc2_ = (this.§2!b§[_loc3_] as §]!'§).§4T§(param1);
            if(_loc5_ || this)
            {
               if(_loc2_ != null)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
                  continue;
               }
            }
            §§push(_loc3_);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc5_ || _loc2_)
               {
                  addr82:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr82);
         }
         return null;
      }
      
      public function get §?%§() : int
      {
         return this.§2!b§.length;
      }
      
      public function §6!q§(param1:int) : §]!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                  loop2:
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
                                 §§goto(addr126);
                              }
                              loop7:
                              while(true)
                              {
                                 §§push(this.§9!X§);
                                 if(_loc2_ && param1)
                                 {
                                    continue loop6;
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc3_ || param1)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc2_ && param1))
                                          {
                                             §§push(this.§2!b§);
                                             while(true)
                                             {
                                                §§pop().sortOn("name");
                                             }
                                             addr112:
                                          }
                                          while(true)
                                          {
                                             this.§9!X§ = true;
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc3_ || this))
                                             {
                                                continue loop7;
                                             }
                                             if(!(_loc3_ || param1))
                                             {
                                                break;
                                             }
                                             if(_loc2_ && _loc3_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr126);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§2!b§);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr112);
                                       }
                                       return §§pop()[param1];
                                    }
                                    break;
                                 }
                                 addr134:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                              }
                              continue loop2;
                           }
                        }
                        addr124:
                     }
                     §§goto(addr134);
                  }
               }
            }
         }
         addr126:
         return null;
      }
   }
}
