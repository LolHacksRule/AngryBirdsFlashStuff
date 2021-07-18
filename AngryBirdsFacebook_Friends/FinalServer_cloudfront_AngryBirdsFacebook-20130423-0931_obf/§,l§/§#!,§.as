package §,l§
{
   import §2<§.§3d§;
   import §2<§.§9!7§;
   import §2<§.§9G§;
   import §5!Y§.§9"6§;
   import §5!Y§.§]!I§;
   import §9!n§.LevelManager;
   import §9@§.§1!j§;
   import §9@§.§4Z§;
   import §9@§.§@q§;
   import §^"F§.§0"&§;
   import §^"F§.§4!2§;
   import §^"F§.§^"K§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class §#!,§ extends EventDispatcher
   {
      
      protected static var §+!Y§:§#!,§;
      
      private static const §!o§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!o§ = ["2000-83","Test-PlayLevel"];
         }
      }
      
      protected var §,u§:Boolean = false;
      
      protected var §@!f§:§3d§;
      
      protected var §+?§:§4Z§;
      
      protected var §-"P§:§4Z§;
      
      protected var §`!?§:§4Z§;
      
      protected var §1;§:§0"&§;
      
      public function §#!,§()
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^"K§ = null;
         if(_loc4_)
         {
            this.§+?§ = new §4Z§();
            loop0:
            while(true)
            {
               this.§-"P§ = new §4Z§();
               while(true)
               {
                  this.§`!?§ = new §4Z§();
                  loop2:
                  while(_loc4_)
                  {
                     if(!_loc4_)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        super();
                        while(§+!Y§)
                        {
                           if(_loc4_)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 if(_loc4_)
                                 {
                                    §§goto(addr36);
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                           if(true)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        var _loc2_:int = 0;
                        var _loc3_:* = §4!2§.§1!V§;
                        addr113:
                        for each(_loc1_ in _loc3_)
                        {
                           if(!(_loc5_ && _loc1_))
                           {
                              this.§+?§[_loc1_.§1!#§] = 0;
                           }
                           §§goto(addr113);
                        }
                        if(_loc4_ || this)
                        {
                           §+!Y§ = this;
                        }
                        return;
                     }
                  }
               }
            }
         }
         addr36:
         throw new Error("Only one instance of PowerupsInventory should exist at a time.");
      }
      
      public static function get §&"5§() : §#!,§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(§+!Y§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     addr39:
                     §+!Y§ = new §#!,§();
                  }
               }
               return §+!Y§;
            }
         }
         §§goto(addr39);
      }
      
      public static function §[!f§(param1:String = "") : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || §#!,§)
         {
            §§push(param1);
            if(!_loc2_)
            {
               if(§§pop() == "")
               {
                  while(true)
                  {
                     §§push(LevelManager.§ T§);
                     if(!_loc2_)
                     {
                        addr87:
                        §§push(§§pop());
                        while(true)
                        {
                           param1 = §§pop();
                           addr88:
                           while(true)
                           {
                           }
                        }
                        addr87:
                     }
                     §§goto(addr87);
                     addr65:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr73);
                  }
               }
               for(; §!o§.indexOf(param1) >= 0; §§goto(addr88))
               {
                  if(_loc2_)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr65);
               }
               §§push(false);
               if(_loc3_ || param1)
               {
                  return §§pop();
               }
               addr73:
               return true;
            }
            §§goto(addr87);
         }
         §§goto(addr88);
      }
      
      public function §@J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§@!f§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§@!f§);
                     loop2:
                     while(true)
                     {
                        §§pop().removeEventListener(Event.COMPLETE,this.§-!G§);
                        while(true)
                        {
                           §§push(this.§@!f§);
                           loop4:
                           while(_loc2_ || _loc1_)
                           {
                              §§pop().removeEventListener(IOErrorEvent.IO_ERROR,this.§0!>§);
                              loop5:
                              while(true)
                              {
                                 §§push(this.§@!f§);
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!>§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§@!f§);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§9G§.§33§);
                                          addr192:
                                          while(true)
                                          {
                                             §§pop().removeEventListener(§§pop(),this.§0!>§);
                                             loop10:
                                             while(true)
                                             {
                                                this.§@!f§ = null;
                                                while(_loc2_)
                                                {
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue loop1;
                                                   }
                                                   loop18:
                                                   while(!(_loc1_ && _loc1_))
                                                   {
                                                      §§push(this.§@!f§);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§0!>§);
                                                         loop20:
                                                         while(true)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               addr104:
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§@!f§);
                                                               while(true)
                                                               {
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     addr120:
                                                                     addr120:
                                                                     while(_loc2_ || this)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.§0!>§);
                                                                              continue loop18;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  §§push(this.§@!f§);
                                                                  addr93:
                                                                  continue loop19;
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop().load(§9!7§.§,!l§(AngryBirdsFP11.§?8§ + "/getitems"));
                                                                  if(_loc1_ && this)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc1_ && _loc1_)
                                                                  {
                                                                     continue loop20;
                                                                  }
                                                                  addr50:
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  addr172:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§@!f§);
                                                                     continue loop8;
                                                                     §§goto(addr50);
                                                                  }
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop18;
                                                         }
                                                         addr159:
                                                         while(!(_loc1_ && this))
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr120);
                                                            }
                                                            §§goto(addr104);
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§@!f§ = new §3d§();
                  §§goto(addr172);
               }
            }
         }
         §§goto(addr166);
      }
      
      public function get §9!9§() : §0"&§
      {
         return this.§1;§;
      }
      
      public function §?v§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§+?§ = new §4Z§();
            while(true)
            {
               this.§-"P§ = new §4Z§();
               loop1:
               while(_loc3_)
               {
                  this.§[!V§(param1);
                  while(true)
                  {
                     this.§@!f§ = null;
                     if(!_loc2_)
                     {
                        if(!(_loc2_ && _loc3_))
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
         §§goto(addr67);
      }
      
      private function §[!V§(param1:Object, param2:Boolean = false) : Array
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:§^"K§ = null;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc3_:Array = [];
         if(_loc12_ || _loc3_)
         {
            this.§1;§ = new §0"&§(param1.ownedBundles,param1.claimableBundles);
         }
         loop0:
         for each(_loc4_ in param1.items)
         {
            if(_loc4_ is Array)
            {
               if(!(_loc13_ && this))
               {
                  throw new Error("Responseobject should not be Array!! Inject object.items instead");
               }
               _loc3_.push(new §!!s§(_loc7_,§["K§.§0#§));
               addr175:
               if(_loc12_)
               {
                  addr194:
                  §@q§.§+!7§(_loc4_.q);
               }
               continue;
            }
            if(param1.itemsPrev)
            {
               if(_loc12_ || param2)
               {
                  _loc5_ = this.§@!`§(_loc4_.i,param1.itemsPrev);
                  addr102:
                  if(_loc4_.i == §["K§.§0#§)
                  {
                     if(_loc12_ || _loc3_)
                     {
                        if(_loc5_)
                        {
                           if(!(_loc13_ && _loc3_))
                           {
                              addr123:
                              §§push(§%"S§.§!C§);
                              if(!(_loc13_ && param1))
                              {
                                 §§push(§§pop().§9"%§);
                                 if(_loc12_)
                                 {
                                    §§push(§§pop().§,T§);
                                    if(!(_loc13_ && param2))
                                    {
                                       §§pop().§'"T§(_loc5_.q,true);
                                       if(_loc12_)
                                       {
                                          addr153:
                                          §§push(§%"S§.§!C§.§9"%§.§,T§.§'"T§(_loc4_.q,param2));
                                          if(!_loc13_)
                                          {
                                             §§push(int(§§pop()));
                                             if(!(_loc13_ && this))
                                             {
                                                addr167:
                                                §§push(§§pop());
                                                if(_loc12_)
                                                {
                                                   _loc7_ = §§pop();
                                                   addr171:
                                                   §§push(0);
                                                }
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr175);
                                                   }
                                                }
                                                §§goto(addr194);
                                             }
                                             §§goto(addr171);
                                          }
                                          §§goto(addr167);
                                       }
                                       §§goto(addr175);
                                    }
                                 }
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr123);
                  }
                  else
                  {
                     if(_loc6_ = §4!2§.§return§(_loc4_.i))
                     {
                        if(_loc12_ || param1)
                        {
                           §§push(this.§+?§);
                           if(_loc12_)
                           {
                              §§pop()[_loc6_.§1!#§] = 0;
                              if(!_loc13_)
                              {
                                 this.§-"P§[_loc6_.§1!#§] = Number(_loc4_.s);
                              }
                              else
                              {
                                 loop13:
                                 while(true)
                                 {
                                    _loc3_.push(new §!!s§(_loc9_,_loc4_.i));
                                    addr268:
                                    loop9:
                                    while(_loc12_ || param1)
                                    {
                                       if(!(_loc13_ && param1))
                                       {
                                          while(true)
                                          {
                                             §@q§.§@P§(_loc4_.i,_loc4_.q);
                                             if(_loc12_)
                                             {
                                                break;
                                             }
                                             continue loop9;
                                          }
                                          addr225:
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc9_);
                                                if(_loc12_ || param1)
                                                {
                                                   if(§§pop() != 0)
                                                   {
                                                      if(_loc13_ && _loc3_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      addr254:
                                                      if(!(_loc13_ && param2))
                                                      {
                                                         continue loop13;
                                                      }
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            loop4:
                                                            while(true)
                                                            {
                                                               §§push(int(_loc4_.q - _loc8_));
                                                               addr309:
                                                               loop5:
                                                               while(!_loc13_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§+?§);
                                                                     if(_loc13_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop()[_loc4_.i] = _loc4_.q;
                                                                        break loop9;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop()[_loc4_.i]));
                                                                     break loop5;
                                                                     §§goto(addr312);
                                                                  }
                                                                  addr312:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     continue loop3;
                                                                  }
                                                                  addr342:
                                                                  while(true)
                                                                  {
                                                                     _loc8_ = §§pop();
                                                                     continue loop4;
                                                                  }
                                                               }
                                                            }
                                                            addr303:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr303);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr225);
                                                   }
                                                }
                                                §§goto(addr309);
                                                §§goto(addr225);
                                             }
                                             addr236:
                                          }
                                          continue loop0;
                                       }
                                       addr332:
                                       while(true)
                                       {
                                          if(!(_loc13_ && _loc3_))
                                          {
                                             §§push(int(_loc5_.q));
                                          }
                                          addr351:
                                          continue loop0;
                                       }
                                       §§goto(addr342);
                                    }
                                    while(true)
                                    {
                                       if(_loc12_)
                                       {
                                          if(_loc13_)
                                          {
                                             this.§`!?§[_loc4_.i] = true;
                                             break;
                                             addr371:
                                          }
                                          §§goto(addr236);
                                       }
                                       §§goto(addr312);
                                       §§goto(addr268);
                                    }
                                    §§goto(addr351);
                                 }
                              }
                              §§goto(addr371);
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr351);
                     }
                     else if(!_loc5_)
                     {
                        §§goto(addr318);
                        §§push(this.§+?§);
                     }
                     §§goto(addr332);
                  }
               }
               §§goto(addr175);
            }
            §§goto(addr102);
            §§goto(addr194);
         }
         if(_loc12_ || _loc3_)
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         return _loc3_;
      }
      
      private function §@!`§(param1:String, param2:Object) : Object
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(!_loc7_)
            {
               if(_loc3_.i == param1)
               {
                  if(!_loc7_)
                  {
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §6"M§(param1:Object, param2:Boolean = false) : Array
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(param1 == null)
            {
               if(!(_loc3_ && param1))
               {
                  return [];
               }
            }
         }
         return this.§[!V§(param1,param2);
      }
      
      protected function §-!G§(param1:Event) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(_loc4_)
            {
               var e:Event = param1;
               addr29:
            }
            try
            {
               var responseObjects:Object = JSON.parse(this.§@!f§.data);
               if(_loc4_)
               {
                  this.§?v§(responseObjects);
               }
            }
            catch(e:Error)
            {
               throw new Error("Error parsing JSON: " + §@!f§.data,§1!j§.§%e§);
            }
            return;
         }
         §§goto(addr29);
      }
      
      protected function §0!>§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.type == §9G§.§33§)
            {
               if(!(_loc3_ && this))
               {
                  §9"6§.§>_§(§]!I§.§`'§);
               }
               do
               {
                  loop1:
                  while(true)
                  {
                     this.§@!f§ = null;
                     if(!(_loc3_ && _loc3_))
                     {
                        break;
                     }
                     addr62:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
               while(_loc3_);
               
               return;
            }
            §9"6§.§#!o§();
         }
         §§goto(addr62);
      }
      
      public function §1!r§(param1:String) : Number
      {
         return this.§-"P§[param1];
      }
      
      public function §]![§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§1!r§(param1) > 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr41);
               }
            }
            return this.§+?§[param1];
         }
         addr41:
         return 1;
      }
      
      public function §6"F§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§+?§[param1] = param2;
         }
         do
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         while(_loc4_);
         
      }
      
      public function usePowerup(param1:String) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(this.§]![§(param1) <= 0)
            {
               if(!(_loc5_ && this))
               {
                  throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
                  addr31:
               }
               else
               {
                  addr92:
                  dispatchEvent(new Event(Event.CHANGE));
               }
            }
            else
            {
               var _loc2_:*;
               var _loc3_:*;
               var _loc4_:* = (_loc2_ = this.§+?§)[_loc3_ = param1] - 1;
               if(_loc6_ || _loc2_)
               {
                  _loc2_[_loc3_] = _loc4_;
               }
               if(_loc6_ || _loc2_)
               {
                  §§goto(addr92);
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §<"H§(param1:String) : Boolean
      {
         return this.§`!?§[param1];
      }
      
      public function get §each §() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§@!f§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
   }
}
