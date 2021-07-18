package §+6§
{
   public class §'2§ implements §7i§
   {
       
      
      private var §5!"§:Array;
      
      private var §7;§:Boolean;
      
      public function §'2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§5!"§ = [];
            do
            {
               super();
            }
            while(_loc2_);
            
         }
      }
      
      public function §!!P§(param1:§^j§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§5!"§.push(param1);
            do
            {
               this.§7;§ = false;
            }
            while(!(_loc2_ || _loc3_));
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^j§ = null;
         for each(_loc1_ in this.§5!"§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.dispose();
            }
         }
         if(!_loc5_)
         {
            this.§5!"§ = [];
         }
      }
      
      public function §4u§(param1:String) : §=!`§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§=!`§ = null;
         var _loc3_:* = Number(0);
         while(true)
         {
            if(_loc3_ >= this.§5!"§.length)
            {
               return null;
            }
            _loc2_ = (this.§5!"§[_loc3_] as §^j§).§4u§(param1);
            if(!_loc4_)
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(!(_loc5_ && param1))
               {
                  break;
               }
            }
            else
            {
               §§push(_loc3_);
               if(_loc4_ || param1)
               {
                  §§push(§§pop() + 1);
                  if(_loc4_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      public function get §-x§() : int
      {
         return this.§5!"§.length;
      }
      
      public function §[j§(param1:int) : §^j§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr113:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr98:
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(this.§7;§);
                                 if(!(_loc3_ && this))
                                 {
                                    if(_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§5!"§);
                                                addr75:
                                                while(true)
                                                {
                                                   §§pop().sortOn("name");
                                                }
                                             }
                                             addr73:
                                          }
                                          while(_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             this.§7;§ = true;
                                             if(!(_loc2_ || this))
                                             {
                                                continue;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop4;
                                             }
                                          }
                                          §§goto(addr98);
                                       }
                                       while(true)
                                       {
                                          §§push(this.§5!"§);
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          §§goto(addr75);
                                       }
                                       return §§pop()[param1];
                                    }
                                    break loop3;
                                 }
                                 break;
                              }
                              continue;
                              return null;
                           }
                           addr95:
                        }
                        continue loop0;
                     }
                  }
                  addr118:
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr73);
      }
   }
}
