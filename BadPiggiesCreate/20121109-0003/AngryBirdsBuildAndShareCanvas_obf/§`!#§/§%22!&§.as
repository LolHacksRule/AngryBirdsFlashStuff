package §`!#§
{
   import §%!n§.§;!'§;
   import §0§.§-!G§;
   import §0x§.§6z§;
   
   public class §"!&§ extends §[!O§ implements §"!%§
   {
       
      
      protected var §#"+§:§6z§;
      
      protected var §!f§:§-!G§;
      
      public function §"!&§(param1:§;!'§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1,0);
         }
      }
      
      public function set time(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §!"-§ = param1;
         }
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(0);
         if(_loc3_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc4_ && param1))
                  {
                     §§push(param1);
                     if(_loc3_ || _loc2_)
                     {
                        addr101:
                        if(§§pop() >= §!"-§)
                        {
                           §§push(Number(1));
                           if(_loc3_ || param1)
                           {
                              if(_loc3_)
                              {
                                 _loc2_ = §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!(_loc4_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             this.§!f§.update(_loc2_);
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          return;
                                          addr38:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§#"+§.§85§(param1,0,1,§!"-§));
                                          }
                                          addr103:
                                       }
                                       §§goto(addr38);
                                    }
                                    addr122:
                                    while(true)
                                    {
                                       §§goto(addr38);
                                    }
                                 }
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr121:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr122);
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr122);
               }
               §§goto(addr38);
            }
            §§goto(addr101);
         }
         §§goto(addr122);
      }
      
      public function get §#!!§() : §-!G§
      {
         return this.§!f§;
      }
      
      public function get §3!`§() : §6z§
      {
         return this.§#"+§;
      }
      
      override protected function copyFrom(param1:§[!O§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super.copyFrom(param1);
         }
         var _loc2_:§"!&§ = param1 as §"!&§;
         if(!_loc4_)
         {
            this.§#"+§ = _loc2_.§#"+§;
         }
         do
         {
            this.§!f§ = _loc2_.§!f§.clone();
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override protected function newInstance() : §[!O§
      {
         return new §"!&§(§`!D§);
      }
      
      public function set §3!`§(param1:§6z§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§#"+§ = param1;
         }
      }
      
      public function get target() : Object
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!f§);
            if(_loc2_)
            {
               return §§pop() != null ? this.§!f§.target : null;
            }
         }
         §§goto(addr47);
      }
      
      public function set §#!!§(param1:§-!G§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!f§ = param1;
         }
      }
      
      public function get time() : Number
      {
         return §!"-§;
      }
   }
}
