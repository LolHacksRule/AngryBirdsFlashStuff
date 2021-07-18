package §,"N§
{
   import §#!'§.§&G§;
   import §#!'§.§6"]§;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.utils.Dictionary;
   
   public class §%"[§ extends EventDispatcher
   {
       
      
      protected var §^!m§:String;
      
      protected var §+"V§:String;
      
      protected var §9v§:§&G§;
      
      protected var §7!Q§:String;
      
      protected var §`W§:String;
      
      protected var §8#>§:Number;
      
      protected var §0"q§:Number;
      
      protected var §@-§:Number;
      
      protected var §^!g§:Dictionary;
      
      protected var §'Q§:Boolean;
      
      public function §%"[§(param1:String, param2:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super();
         }
         loop0:
         do
         {
            this.§^!m§ = param1;
            loop1:
            while(true)
            {
               this.§+"V§ = param2;
               do
               {
                  this.§'Q§ = false;
                  do
                  {
                     this.§8!$§();
                     loop4:
                     do
                     {
                        this.§!Q§();
                        while(_loc3_)
                        {
                           this.§7!^§();
                           if(!_loc4_)
                           {
                              continue loop4;
                           }
                        }
                        continue loop1;
                     }
                     while(!_loc3_);
                     
                  }
                  while(!_loc3_);
                  
               }
               while(_loc4_ && param1);
               
               continue loop0;
            }
         }
         while(_loc4_);
         
      }
      
      public function set §?,§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7!Q§ = param1;
         }
      }
      
      public function get §'#=§() : String
      {
         return this.§`W§;
      }
      
      public function get isLoaded() : Boolean
      {
         return this.§'Q§;
      }
      
      public function §7!^§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§9v§ = new §&G§(this.§+"V§,{"fields":"currency"});
            loop0:
            while(true)
            {
               §§push(this.§9v§);
               addr101:
               while(true)
               {
                  §§pop().addEventListener(Event.COMPLETE,this.§1#+§);
                  continue loop0;
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §%#;§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§-#A§())
            {
               if(!(_loc2_ && param1))
               {
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(this.§0"q§);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           §§goto(addr85);
                        }
                     }
                     else
                     {
                        addr84:
                        addr85:
                        return §§pop();
                        §§push(§§pop() * §§pop());
                     }
                     §§goto(addr85);
                  }
                  return §§pop();
               }
               addr65:
               §§push(param1);
               if(!(_loc2_ && this))
               {
                  §§goto(addr84);
                  §§push(0.1);
               }
               §§goto(addr85);
            }
         }
         §§goto(addr65);
      }
      
      private function onError(param1:ErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §6"]§.§ #7§(null);
            while(true)
            {
               this.§!Q§();
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            dispatchEvent(new Event(Event.COMPLETE));
            if(_loc2_ || _loc3_)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §]!z§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§^!g§[param1]);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     addr46:
                     §§push(param1);
                     if(!_loc3_)
                     {
                        §§push(§§pop());
                        if(!_loc3_)
                        {
                           addr52:
                           §§push(§§pop());
                        }
                        var _loc2_:* = §§pop();
                        if(_loc4_ || this)
                        {
                           §§push(_loc2_);
                           if(_loc4_ || _loc3_)
                           {
                              if(§§pop() == null)
                              {
                                 addr82:
                                 return "";
                              }
                              else
                              {
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    addr87:
                                    return §§pop();
                                 }
                              }
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr82);
                     }
                  }
               }
            }
            §§goto(addr52);
         }
         §§goto(addr46);
      }
      
      public function §<H§(param1:Number, param2:Boolean = true, param3:String = "") : String
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:String = this.§%#;§(param1).toFixed(this.§>!k§());
         §§push(this.§]!z§(this.§`W§));
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(_loc8_)
         {
            if(param2)
            {
               addr37:
               §§push(_loc5_);
               if(!(_loc7_ && this))
               {
                  §§push(param3);
                  if(_loc8_)
                  {
                     §§push(§§pop() + §§pop() + _loc4_.toString());
                     if(_loc8_ || param2)
                     {
                        addr97:
                        §§push(§§pop());
                        §§push(§§pop());
                     }
                     else
                     {
                        addr74:
                        §§push(§§pop().toString() + param3 + _loc5_);
                        if(_loc8_ || this)
                        {
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr97);
                  }
                  var _loc6_:* = §§pop();
                  return §§pop();
               }
               §§goto(addr97);
            }
            else
            {
               §§push(_loc4_);
               if(_loc8_)
               {
                  §§goto(addr74);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr37);
      }
      
      protected function §!Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§`W§ = "USD";
            while(true)
            {
               this.§8#>§ = 10;
               loop1:
               while(_loc1_)
               {
                  this.§0"q§ = 0.1;
                  while(true)
                  {
                     this.§@-§ = 100;
                     if(!(_loc2_ && this))
                     {
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      protected function §1#+§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            addr54:
            while(true)
            {
               addr45:
               while(true)
               {
                  §§push(§§newactivation());
                  while(true)
                  {
                     §§pop().§§slot[1] = param1;
                     addr49:
                     while(true)
                     {
                        §§push(§§newactivation());
                        if(_loc5_ && this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      protected function §>!k§() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = 0;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§-#A§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr27:
                  return §§pop();
               }
               while(true)
               {
                  §§push(this.§@-§);
                  if(_loc2_)
                  {
                     §§push(§§pop().toString().length - 1);
                  }
                  §§push(int(§§pop()));
                  loop2:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr108:
                     while(true)
                     {
                        §§push(_loc1_);
                        loop4:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop2;
                              while(true)
                              {
                                 §§push(2);
                                 if(_loc3_)
                                 {
                                    break loop4;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop0;
                           §§goto(addr27);
                        }
                     }
                  }
               }
               addr89:
               addr82:
               return §§pop();
            }
         }
         §§goto(addr85);
      }
      
      protected function §8!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§^!g§ = new Dictionary();
            loop0:
            while(true)
            {
               this.§^!g§["EUR"] = "€";
               loop1:
               while(true)
               {
                  this.§^!g§["USD"] = "$";
                  loop2:
                  while(_loc2_)
                  {
                     this.§^!g§["GBP"] = "£";
                     while(!_loc1_)
                     {
                        this.§^!g§["JPY"] = "¥";
                        if(!(_loc1_ && _loc1_))
                        {
                           if(!_loc1_)
                           {
                              return;
                              addr49:
                           }
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §-#A§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§`W§ == this.§7!Q§)
            {
               addr39:
               §§push(false);
               if(_loc2_ || _loc2_)
               {
               }
            }
            else
            {
               return true;
            }
            return §§pop();
         }
         §§goto(addr39);
      }
      
      private function §,!H§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§""t§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
         if(_loc2_)
         {
            if(_loc1_)
            {
               if(_loc2_)
               {
                  addr50:
                  _loc1_.§9"'§(true);
               }
            }
            return;
         }
         §§goto(addr50);
      }
   }
}
