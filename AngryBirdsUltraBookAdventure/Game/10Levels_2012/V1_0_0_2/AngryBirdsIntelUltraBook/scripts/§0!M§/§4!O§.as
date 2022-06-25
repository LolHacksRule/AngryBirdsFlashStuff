package §0!M§
{
   public class §4!O§ implements §#!d§
   {
       
      
      private var §,!>§:Array;
      
      private var §[§:Boolean;
      
      public function §4!O§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§,!>§ = [];
         }
         do
         {
            super();
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      public function §1!L§(param1:§=!=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!>§.push(param1);
         }
         do
         {
            this.§[§ = false;
         }
         while(_loc2_ && _loc3_);
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§=!=§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§,!>§)
         {
            if(!(_loc4_ && _loc2_))
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc4_ && _loc1_))
         {
            this.§,!>§ = [];
         }
      }
      
      public function §-v§(param1:String) : §,'§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§,'§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§,!>§.length)
         {
            _loc2_ = (this.§,!>§[_loc3_] as §=!=§).§-v§(param1);
            if(!_loc4_)
            {
               if(_loc2_ != null)
               {
                  if(!_loc4_)
                  {
                     return _loc2_;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() + 1);
               if(_loc5_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function get §2P§() : int
      {
         return this.§,!>§.length;
      }
      
      public function §@y§(param1:int) : §=!=§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr136:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr137:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || this)
                              {
                                 if(!_loc2_)
                                 {
                                    return null;
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 addr93:
                                 loop8:
                                 while(true)
                                 {
                                    this.§[§ = true;
                                    if(_loc3_ || param1)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          while(true)
                                          {
                                             §§push(this.§,!>§);
                                             if(!(_loc2_ && this))
                                             {
                                                break;
                                             }
                                             addr91:
                                             while(true)
                                             {
                                                §§pop().sortOn("name");
                                                continue loop8;
                                             }
                                          }
                                          return §§pop()[param1];
                                          addr25:
                                       }
                                       break;
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(this.§[§);
                              if(!(_loc3_ || _loc3_))
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr91);
                                       §§push(this.§,!>§);
                                    }
                                    §§goto(addr93);
                                 }
                                 §§goto(addr25);
                              }
                           }
                           addr113:
                           while(true)
                           {
                              if(!(_loc3_ || _loc2_))
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr135:
         }
         while(true)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(this.§2P§);
               if(!_loc2_)
               {
                  §§goto(addr113);
                  §§push(§§pop() >= §§pop());
               }
               else
               {
                  §§goto(addr136);
               }
               §§goto(addr137);
            }
            else
            {
               §§goto(addr135);
            }
         }
      }
   }
}
