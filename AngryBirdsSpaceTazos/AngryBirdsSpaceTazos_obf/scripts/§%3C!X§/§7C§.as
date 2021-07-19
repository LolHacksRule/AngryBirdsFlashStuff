package §<!X§
{
   public class §7C§
   {
      
      public static const §-!Z§:String = "none";
      
      public static const §@!=§:String = "run";
      
      public static const §?x§:String = "in";
      
      public static const §>">§:String = "out";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §-!Z§ = "none";
            while(true)
            {
               §@!=§ = "run";
               while(!(_loc2_ && §7C§))
               {
                  §?x§ = "in";
                  do
                  {
                     §>">§ = "out";
                  }
                  while(!(_loc1_ || _loc2_));
                  
                  if(!(_loc1_ || §7C§))
                  {
                     continue;
                  }
                  return;
                  addr56:
               }
            }
         }
         §§goto(addr56);
      }
      
      private var §]c§:String;
      
      private var §66§:String;
      
      private var §4!;§:String;
      
      private var §,!l§:String;
      
      private var §!k§:String;
      
      public var loop:Boolean;
      
      public var stageQuality:String;
      
      public function §7C§(param1:String = "", param2:String = "", param3:String = "", param4:String = "none", param5:Boolean = false, param6:String = "best")
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super();
            while(true)
            {
               this.§]c§ = param1;
               loop1:
               for(; !(_loc7_ && this); while(_loc8_ || this)
               {
                  this.loop = param5;
                  §§goto(addr48);
               })
               {
                  this.§!k§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§4!;§ = param2;
                     while(true)
                     {
                        this.§,!l§ = param3;
                        continue loop1;
                        addr48:
                        while(_loc8_ || param3)
                        {
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr34);
      }
      
      public function get startLabel() : String
      {
         return this.§]c§;
      }
      
      public function set startLabel(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§]c§ = param1;
         }
         do
         {
            this.§;"7§();
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      public function get defaultStartLabel() : String
      {
         return this.§66§;
      }
      
      public function get §%!D§() : String
      {
         return this.§4!;§;
      }
      
      public function set §%!D§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4!;§ = param1;
         }
      }
      
      public function get §>!F§() : String
      {
         return this.§,!l§;
      }
      
      public function set §>!F§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§,!l§ = param1;
         }
      }
      
      public function get type() : String
      {
         return this.§!k§;
      }
      
      public function set type(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!k§ = param1;
         }
         do
         {
            this.§;"7§();
         }
         while(_loc2_ && _loc3_);
         
      }
      
      protected function §;"7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§66§ = "";
            loop0:
            while(true)
            {
               §§push(this.§!k§);
               loop1:
               while(true)
               {
                  §§push(§-!Z§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§]c§);
                                 loop6:
                                 while(_loc1_)
                                 {
                                    §§push(§§pop() == "");
                                    if(!(_loc1_ || _loc1_))
                                    {
                                       continue loop4;
                                    }
                                    if(!_loc1_)
                                    {
                                       continue loop3;
                                    }
                                    addr35:
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    §§push(§>">§);
                                    if(!_loc2_)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             if(_loc1_)
                                             {
                                                if(_loc2_ && _loc1_)
                                                {
                                                   continue loop0;
                                                }
                                                if(_loc2_)
                                                {
                                                   continue loop5;
                                                }
                                                this.§66§ = §]d§.§>!u§();
                                                §§goto(addr78);
                                             }
                                             §§goto(addr93);
                                          }
                                          addr78:
                                          if(!_loc1_)
                                          {
                                             addr97:
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(this.§!k§);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(§?x§);
                                                      addr85:
                                                      while(true)
                                                      {
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            if(§§pop() != §§pop())
                                                            {
                                                               §§push(this.§!k§);
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§goto(addr35);
                                                            }
                                                            addr93:
                                                            this.§66§ = §]d§.§%"<§();
                                                            continue loop8;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                addr81:
                                             }
                                          }
                                          §§goto(addr24);
                                       }
                                       addr24:
                                       return;
                                    }
                                    §§goto(addr85);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              continue loop0;
                           }
                           §§goto(addr81);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      public function clone() : §7C§
      {
         return new §7C§(this.§]c§,this.§4!;§,this.§,!l§,this.§!k§,this.loop);
      }
   }
}
