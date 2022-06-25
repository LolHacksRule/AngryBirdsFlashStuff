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
         if(_loc2_)
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
         if(_loc3_ || param1)
         {
            this.§,!>§.push(param1);
            do
            {
               this.§[§ = false;
            }
            while(!_loc3_);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§=!=§ = null;
         var _loc3_:* = this.§,!>§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.dispose();
            }
         }
         if(_loc4_ || _loc1_)
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
      
      public function get §2P§() : int
      {
         return this.§,!>§.length;
      }
      
      public function §@y§(param1:int) : §=!=§
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
                                 §§push(this.§[§);
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
                                             §§push(this.§,!>§);
                                             while(true)
                                             {
                                                §§pop().sortOn("name");
                                             }
                                             addr112:
                                          }
                                          while(true)
                                          {
                                             this.§[§ = true;
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
                                          §§push(this.§,!>§);
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
