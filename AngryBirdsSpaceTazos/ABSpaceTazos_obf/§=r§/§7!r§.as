package §=r§
{
   import §!?§.§'k§;
   import §7!0§.§-!^§;
   import §7!0§.§4!u§;
   import §7!B§.§@!^§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §7!r§ extends EventDispatcher implements §-!^§
   {
      
      protected static var §1'§:§7!r§;
       
      
      private var §8!e§:int;
      
      private var §6M§:§?"9§;
      
      public function §7!r§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
         loop0:
         for(; !§1'§; while(_loc1_ || _loc2_)
         {
            §1'§ = this;
            for(; _loc1_ || _loc1_; this.§6M§ = new §?"9§(this),if(!_loc2_)
            {
               if(!(_loc2_ && _loc1_))
               {
                  return;
               }
               break loop0;
            })
            {
               if(!(_loc2_ && _loc2_))
               {
                  continue;
               }
               §§goto(addr101);
            }
         })
         {
            while(true)
            {
               this.§#!§();
               continue loop0;
               addr101:
            }
         }
         throw new Error("Only one instance of PowerupsInventory should exist at a time.");
      }
      
      public static function get §[!1§() : §7!r§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§1'§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §1'§ = new §7!r§();
                     addr59:
                     §§push(§1'§);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         §§goto(addr59);
      }
      
      public function §#!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§8!e§ = 0;
            loop0:
            while(true)
            {
               §§push(this.§6M§);
               loop1:
               while(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(this.§6M§);
                     loop2:
                     while(true)
                     {
                        §§push(§=!<§.§3!7§);
                        loop3:
                        while(true)
                        {
                           §§pop().removeEventListener(§§pop(),this.§6"G§);
                           addr101:
                           loop4:
                           while(true)
                           {
                              §§push(this.§6M§);
                              while(!_loc1_)
                              {
                                 §§push(§=!<§.§7k§);
                                 continue loop3;
                                 addr72:
                                 §§push(this.§6M§);
                                 if(!_loc1_)
                                 {
                                    if(!_loc1_)
                                    {
                                       §§push(§=!<§.§9E§);
                                       if(_loc2_)
                                       {
                                          §§pop().removeEventListener(§§pop(),this.§'c§);
                                          if(!_loc1_)
                                          {
                                             break loop1;
                                             addr68:
                                          }
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop4;
                                             }
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr72);
                                          }
                                          continue loop2;
                                       }
                                       continue loop3;
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr101);
               }
               return;
            }
         }
         §§goto(addr101);
      }
      
      public function §-!F§() : void
      {
         var _loc1_:String = "getItems";
         var _loc2_:Object = {"id":§@!^§.§2j§.id};
         var _loc3_:§'k§ = new §'k§(_loc2_,§`Y§.§6T§ + _loc1_,this,§'k§.§;!^§);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:* = null;
         var _loc2_:Object = §4!u§.§&"D§((param1.currentTarget as URLLoader).data);
         if(!(_loc11_ && param1))
         {
            if(_loc2_.error)
            {
               if(!(_loc11_ && this))
               {
                  dispatchEvent(new §=!<§(§=!<§.§="9§));
                  if(_loc10_)
                  {
                     §§goto(addr62);
                  }
               }
            }
            var _loc3_:Array = _loc2_.items;
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.type == "VuelaTazos")
               {
                  if(_loc10_)
                  {
                     this.§8!e§ = _loc4_.count;
                  }
               }
            }
            (_loc5_ = {}).type = "VuelaTazos";
            if(_loc10_ || this)
            {
               _loc5_.count = this.§8!e§;
            }
            (_loc6_ = []).push(_loc5_);
            if(!(_loc11_ && this))
            {
               §§push(§'k§.§5-§(§@!^§.§2j§.id,_loc6_));
               if(_loc10_ || _loc2_)
               {
                  §§push(§§pop());
                  if(_loc10_)
                  {
                     §§push(_loc7_ = §§pop());
                  }
               }
               if(§§pop() == _loc2_.itemsSecurity)
               {
                  while(true)
                  {
                     dispatchEvent(new §=!<§(§=!<§.§9E§));
                     if(_loc11_)
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        continue;
                     }
                     if(_loc10_ || _loc3_)
                     {
                        return;
                     }
                  }
                  loop2:
                  while(_loc11_)
                  {
                     while(true)
                     {
                        dispatchEvent(new §=!<§(§=!<§.§="9§));
                        continue loop2;
                     }
                  }
                  return;
               }
               this.§8!e§ = 0;
               §§goto(addr204);
            }
            §§goto(addr159);
         }
         addr62:
      }
      
      public function §9o§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §[G§(param1:IOErrorEvent) : void
      {
      }
      
      public function §2"2§() : int
      {
         return this.§8!e§;
      }
      
      public function §#!+§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!e§ = param1;
         }
      }
      
      public function §="5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§6M§);
            while(true)
            {
               §§push(§=!<§.§3!7§);
               addr106:
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.§6"G§);
               }
               addr38:
               if(!(_loc2_ && this))
               {
                  §§pop().§="5§();
                  addr45:
                  if(!_loc1_)
                  {
                     loop7:
                     for(; _loc1_ || _loc2_; §§goto(addr45))
                     {
                        addr78:
                        §§push(this.§6M§);
                        if(_loc1_ || _loc2_)
                        {
                           §§goto(addr38);
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc1_)
                              {
                                 §§push(§=!<§.§9E§);
                                 if(!_loc2_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§'c§);
                                    continue loop7;
                                 }
                                 addr84:
                                 while(!_loc2_)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§^f§);
                                    break loop7;
                                 }
                                 §§goto(addr106);
                              }
                              break;
                              §§goto(addr78);
                           }
                           while(true)
                           {
                              §§goto(addr84);
                           }
                           addr62:
                           addr82:
                        }
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr62);
                           §§push(this.§6M§);
                        }
                        break;
                        §§goto(addr71);
                     }
                     addr71:
                     while(true)
                     {
                        §§goto(addr82);
                     }
                     addr109:
                  }
                  return;
               }
            }
         }
         §§goto(addr109);
      }
      
      private function §6"G§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            dispatchEvent(new §=!<§(§=!<§.§3!7§));
            while(true)
            {
               §§push(this.§6M§);
               loop1:
               while(true)
               {
                  §§push(§=!<§.§3!7§);
                  addr81:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§6"G§);
                     continue loop1;
                  }
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr75:
            }
         }
         §§goto(addr75);
      }
      
      private function §^f§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            dispatchEvent(new §=!<§(§=!<§.§7k§));
            while(true)
            {
               §§push(this.§6M§);
               addr58:
               loop1:
               while(true)
               {
                  §§push(§=!<§.§3!7§);
                  addr60:
                  while(true)
                  {
                     §§pop().removeEventListener(§§pop(),this.§6"G§);
                     continue loop1;
                  }
               }
               addr47:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         while(true)
         {
            §§push(this.§6M§);
            if(!_loc3_)
            {
               §§push(§=!<§.§7k§);
               if(_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.§^f§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr47);
               }
               §§goto(addr60);
            }
            §§goto(addr58);
         }
         §§goto(addr54);
      }
      
      private function §'c§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            dispatchEvent(new §=!<§(§=!<§.§9E§));
         }
         do
         {
            this.§6M§.removeEventListener(§=!<§.§9E§,this.§'c§);
         }
         while(!(_loc3_ || param1));
         
      }
   }
}
