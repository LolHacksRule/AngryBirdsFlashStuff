package §^!y§
{
   import §%_§.§4m§;
   import §'i§.§5A§;
   import §'i§.§6-§;
   import §'i§.§8p§;
   import §62§.§9o§;
   import §=!M§.§9!P§;
   import §`!y§.§,!u§;
   import flash.utils.Dictionary;
   
   public class §'"#§ extends §,!u§
   {
      
      public static const XP:String = "XP";
      
      public static const COINS:String = "coins";
      
      public static const BOLTS:String = "currentBolts";
      
      public static const §"2§:String = "maxBolts";
      
      public static const ISLEVELUP:String = "ISLEVELUP";
      
      public static const OLDXP:String = "OLDXP";
      
      public static const NEWXP:String = "NEWXP";
      
      public static const MINXP:String = "MINXP";
      
      public static const MAXXP:String = "MAXXP";
      
      public static const OLDXPLEVEL:String = "OLDXPLEVEL";
      
      public static const NEWXPLEVEL:String = "NEWXPLEVEL";
      
      public static const BLOCKS:String = "maxNumPlaceableObjects";
      
      public static const §>m§:String = "maxOldBlocks";
      
      public static const §<I§:String = "maxNewBlocks";
      
      public static const USERNAME:String = "USERNAME";
      
      public static const USERID:String = "USERID";
      
      public static const §5!5§:String = "items";
      
      public static const §3!;§:String = "experienceLevel";
      
      public static const §[",§:String = "newItems";
      
      public static const §%!<§:Object = "completedQuests";
      
      public static const §`!Q§:Object = "sandboxAvailable";
      
      public static const §0v§:String = "oldCoins";
      
      public static const §&"7§:String = "newCoins";
      
      public static const §?c§:String = "newBolts";
      
      private static var §extends§:Class;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            XP = "XP";
            loop0:
            while(true)
            {
               COINS = "coins";
               loop1:
               while(true)
               {
                  BOLTS = "currentBolts";
                  loop2:
                  while(true)
                  {
                     §"2§ = "maxBolts";
                     loop3:
                     while(true)
                     {
                        ISLEVELUP = "ISLEVELUP";
                        loop4:
                        while(true)
                        {
                           OLDXP = "OLDXP";
                           loop5:
                           while(true)
                           {
                              NEWXP = "NEWXP";
                              loop6:
                              while(true)
                              {
                                 MINXP = "MINXP";
                                 continue loop2;
                                 addr87:
                                 if(!(_loc2_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 §&"7§ = "newCoins";
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       loop21:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr99:
                                             while(_loc2_ || _loc1_)
                                             {
                                                if(!_loc1_)
                                                {
                                                   §0v§ = "oldCoins";
                                                   continue loop21;
                                                }
                                                continue loop1;
                                             }
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   BLOCKS = "maxNumPlaceableObjects";
                                                   while(true)
                                                   {
                                                      §>m§ = "maxOldBlocks";
                                                      addr32:
                                                      if(!(_loc1_ && §'"#§))
                                                      {
                                                         return;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      NEWXPLEVEL = "NEWXPLEVEL";
                                                      continue loop10;
                                                   }
                                                   addr209:
                                                }
                                             }
                                             addr99:
                                             continue loop2;
                                          }
                                          §§goto(addr87);
                                       }
                                       continue loop6;
                                    }
                                    if(!_loc1_)
                                    {
                                       addr60:
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          if(_loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                addr71:
                                                if(_loc2_ || _loc2_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   §?c§ = "newBolts";
                                                   continue loop3;
                                                }
                                                while(!_loc1_)
                                                {
                                                   USERNAME = "USERNAME";
                                                   §§goto(addr71);
                                                }
                                                continue loop5;
                                                addr178:
                                             }
                                             while(true)
                                             {
                                                USERID = "USERID";
                                             }
                                          }
                                          while(true)
                                          {
                                             §5!5§ = "items";
                                             addr161:
                                             loop16:
                                             while(!_loc1_)
                                             {
                                                §3!;§ = "experienceLevel";
                                                loop17:
                                                while(_loc2_ || _loc1_)
                                                {
                                                   §[",§ = "newItems";
                                                   continue loop16;
                                                   while(true)
                                                   {
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop17;
                                                   }
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   §<I§ = "maxNewBlocks";
                                                   §§goto(addr178);
                                                   §§goto(addr149);
                                                }
                                                addr149:
                                             }
                                             continue loop4;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc2_ || §'"#§)
                                          {
                                             §%!<§ = "completedQuests";
                                             §§goto(addr113);
                                          }
                                          break;
                                          §§goto(addr60);
                                       }
                                       §§goto(addr161);
                                    }
                                    §§goto(addr113);
                                    §§goto(addr185);
                                 }
                                 while(true)
                                 {
                                    OLDXPLEVEL = "OLDXPLEVEL";
                                    §§goto(addr209);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr190);
      }
      
      private var §"!k§:Dictionary;
      
      private var §5!Y§:Vector.<Object>;
      
      private var §8!`§:§5A§;
      
      public function §'"#§(param1:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§"!k§ = new Dictionary();
            if(!(_loc4_ && this))
            {
               this.§5!Y§ = new Vector.<Object>();
               if(!(_loc4_ && _loc2_))
               {
                  super(param1);
                  loop0:
                  while(true)
                  {
                     this.§"!k§[§<I§] = 10;
                     loop1:
                     while(true)
                     {
                        this.§"!k§[BLOCKS] = 10;
                        loop2:
                        while(true)
                        {
                           this.§"!k§[§>m§] = 10;
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 this.§"!k§[MAXXP] = 100;
                                 if(!_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop2;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §9!P§.log("Server root:" + param1);
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          if(false)
                                          {
                                             continue loop4;
                                          }
                                          addr147:
                                          addr147:
                                          §extends§["registerMethod"]("login",this.§ else§);
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          §extends§["registerMethod"]("onSetCoins",this.onSetCoins);
                                          if(_loc3_)
                                          {
                                             §extends§["registerMethod"]("onSetBlocks",this.onSetBlocks);
                                             addr183:
                                             return;
                                             addr161:
                                          }
                                          §§goto(addr183);
                                       }
                                       break;
                                    }
                                    §extends§["registerMethod"]("onSetBolts",this.onSetBolts);
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       §§goto(addr147);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr161);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr183);
            }
            §§goto(addr147);
         }
         §§goto(addr50);
      }
      
      public function onSetBolts(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(!this.§0!r§(param1))
            {
               loop0:
               while(true)
               {
                  this.§"!k§[§"2§] = param1.maxBolts;
                  while(true)
                  {
                     this.§"!k§[BOLTS] = param1.currentBolts;
                     loop2:
                     for(; _loc2_; if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     },§§goto(addr72))
                     {
                        while(true)
                        {
                           §§push(this.§8!`§);
                           if(!(_loc2_ || _loc2_))
                           {
                              addr60:
                              §§pop().dispatchEvent(new §9o§(§9o§.§,0§));
                              continue loop2;
                           }
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr82);
      }
      
      private function onSetBlocks(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!k§[§<I§] = param1 + this.§"!k§[§<I§];
            while(true)
            {
               this.§"!k§[BLOCKS] = param1 + this.§"!k§[BLOCKS];
            }
            addr108:
         }
         loop1:
         while(true)
         {
            this.§"!k§[§>m§] = this.§"!k§[BLOCKS];
            while(true)
            {
               if(_loc3_ || this)
               {
                  §§push(this.§8!`§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr56:
                        if(_loc3_)
                        {
                           break loop1;
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr20);
                  }
                  break;
               }
               continue loop1;
            }
            §§pop().dispatchEvent(new §9o§(§9o§.§,0§));
            §§goto(addr56);
         }
         addr20:
      }
      
      private function §0!r§(param1:Object) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(Boolean(param1));
            if(_loc3_ || param1)
            {
               §§push(§§pop());
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        loop6:
                        while(true)
                        {
                           §§push(Boolean(param1.error));
                           if(_loc3_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       §§pop();
                                       loop3:
                                       while(true)
                                       {
                                          §§push(param1.error === true);
                                          addr118:
                                          while(true)
                                          {
                                             §6-§.showError(_loc2_);
                                             if(!_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(true);
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§goto(addr55);
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    continue;
                                    addr136:
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          §§push(false);
                                          if(!(_loc3_ || param1))
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(param1.message)
                                          {
                                             addr102:
                                             §§push(param1.message);
                                             if(_loc3_ || _loc2_)
                                             {
                                                addr114:
                                                §§push(§§pop());
                                             }
                                             _loc2_ = §§pop();
                                             if(_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             §§goto(addr118);
                                          }
                                          else
                                          {
                                             §§push("An error occured.");
                                          }
                                          §§goto(addr114);
                                       }
                                       §§goto(addr102);
                                    }
                                    §§goto(addr48);
                                 }
                                 addr55:
                                 return §§pop();
                              }
                              continue loop0;
                              addr131:
                           }
                           §§goto(addr136);
                        }
                     }
                     addr162:
                  }
                  §§goto(addr131);
               }
            }
            §§goto(addr162);
         }
         §§goto(addr118);
      }
      
      public function onSetCoins(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§"!k§[COINS] = param1;
            loop0:
            while(true)
            {
               §§push(this.§8!`§);
               if(!(_loc2_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     §§goto(addr25);
                  }
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§8!`§);
                  }
               }
               while(true)
               {
                  §§pop().dispatchEvent(new §9o§(§9o§.§,0§));
                  continue loop0;
               }
            }
            addr25:
            return;
         }
         §§goto(addr57);
      }
      
      public function §[!y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§"!k§[§5!5§] = null;
         }
      }
      
      private function § else§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = JSON.parse(param1);
         if(!(_loc4_ && _loc2_))
         {
            this.§5u§(_loc2_["user"]);
            loop0:
            do
            {
               this.§5u§(_loc2_["userProgress"]);
               while(true)
               {
                  this.§5u§(_loc2_["user"]["bolts"]);
                  while(_loc3_ || _loc3_)
                  {
                     this.§"!k§[§5!5§] = _loc2_.items;
                     if(!(_loc4_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
      
      public function §>!D§(... rest) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§8p§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in rest)
         {
            if(!(_loc5_ && _loc3_))
            {
               if(_loc2_ as §5A§ == null)
               {
                  continue;
               }
               if(_loc5_)
               {
                  continue;
               }
            }
            this.§8!`§ = _loc2_ as §5A§;
         }
      }
      
      public function §5u§(param1:Object) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         for(_loc2_ in param1)
         {
            if(!(_loc5_ && _loc3_))
            {
               this.§"!k§[_loc2_] = param1[_loc2_];
            }
         }
         if(!(_loc5_ && param1))
         {
            §§push(this.§8!`§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(_loc6_ || _loc2_)
                  {
                     addr91:
                     this.§8!`§.dispatchEvent(new §9o§(§9o§.§,0§));
                  }
               }
               return;
            }
         }
         §§goto(addr91);
      }
      
      public function getValue(param1:String) : *
      {
         return this.§"!k§[param1];
      }
      
      public function §?Z§(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            if(this.§"!k§[§5!5§] == null)
            {
               if(_loc5_ || param1)
               {
                  return true;
               }
            }
         }
         var _loc3_:int = 0;
         var _loc4_:* = this.§"!k§[§5!5§];
         loop0:
         while(§§hasnext(_loc4_,_loc3_))
         {
            §§push(§§nextname(_loc3_,_loc4_));
            loop1:
            while(true)
            {
               _loc2_ = §§pop();
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        break;
                     }
                     §§push(§§pop() == param1);
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              loop6:
                              while(true)
                              {
                                 §§push(this.§"!k§[§5!5§][_loc2_] == 0);
                                 if(_loc5_ || param1)
                                 {
                                    §§push(!§§pop());
                                    if(_loc6_)
                                    {
                                       return §§pop();
                                    }
                                    addr74:
                                    if(!_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                          addr78:
                                       }
                                       while(§§pop())
                                       {
                                          if(_loc6_ && this)
                                          {
                                             if(!_loc6_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop6;
                                          }
                                          §§push(true);
                                       }
                                       continue loop0;
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr74);
                              }
                              continue loop4;
                           }
                        }
                        §§goto(addr78);
                     }
                  }
                  continue loop1;
               }
            }
         }
         return false;
      }
      
      public function get §!R§() : String
      {
         return this.§"!k§[USERID];
      }
      
      public function get §=a§() : String
      {
         return this.§"!k§[USERNAME];
      }
      
      public function get xp() : Number
      {
         return this.§"!k§[XP];
      }
      
      public function get coins() : Number
      {
         return this.§"!k§[COINS];
      }
      
      public function get oldCoins() : Number
      {
         return this.§"!k§[§0v§];
      }
      
      public function get newCoins() : Number
      {
         return this.§"!k§[§&"7§];
      }
      
      public function get newBolts() : Number
      {
         return this.§"!k§[§?c§];
      }
      
      public function get blocks() : int
      {
         return this.§"!k§[BLOCKS];
      }
      
      public function set blocks(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§"!k§[BLOCKS] = param1;
         }
      }
      
      public function get §]!s§() : Vector.<String>
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            if(this.§"!k§[§5!5§] == null)
            {
               if(!(_loc6_ && _loc3_))
               {
                  return null;
               }
            }
         }
         var _loc1_:Vector.<String> = new Vector.<String>();
         for(_loc2_ in this.§"!k§[§5!5§])
         {
            if(!_loc6_)
            {
               _loc1_.push(_loc2_);
            }
         }
         return _loc1_;
      }
      
      public function get bolts() : int
      {
         return this.§"!k§[BOLTS];
      }
      
      public function get §[!W§() : Boolean
      {
         return this.§"!k§[ISLEVELUP];
      }
      
      public function get maxXp() : int
      {
         return this.§"!k§[MAXXP];
      }
      
      public function get minXp() : int
      {
         return this.§"!k§[MINXP];
      }
      
      public function get oldXp() : int
      {
         return this.§"!k§[OLDXP];
      }
      
      public function get newXp() : int
      {
         return this.§"!k§[NEWXP];
      }
      
      public function get oldXpLevel() : int
      {
         return this.§"!k§[OLDXPLEVEL];
      }
      
      public function get newXpLevel() : int
      {
         return this.§"!k§[NEWXPLEVEL];
      }
      
      public function get boltsMax() : int
      {
         return this.§"!k§[§"2§];
      }
      
      public function get §=!Q§() : int
      {
         return this.§"!k§[§>m§];
      }
      
      public function get §!T§() : int
      {
         return this.§"!k§[§<I§];
      }
      
      public function §'L§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.newXpLevel);
            if(_loc2_ || this)
            {
               if(§§pop() > 0)
               {
                  if(!_loc1_)
                  {
                     §§push(this.newXpLevel);
                  }
                  else
                  {
                     §§goto(addr60);
                  }
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         addr60:
         return this.§"!k§[§3!;§];
      }
      
      public function get newItems() : Object
      {
         return this.§"!k§[§[",§];
      }
      
      public function get completedQuests() : Vector.<Object>
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§"!k§[§%!<§] == null)
            {
               if(!_loc1_)
               {
                  this.§"!k§[§%!<§] = new Vector.<Object>();
                  addr37:
               }
            }
            return this.§"!k§[§%!<§];
         }
         §§goto(addr37);
      }
      
      public function §^e§(param1:Object) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(_loc5_ || _loc2_)
         {
            if(this.§"!k§[§%!<§] == null)
            {
               if(!(_loc6_ && _loc3_))
               {
                  addr39:
                  this.§"!k§[§%!<§] = new Vector.<Object>();
               }
            }
            var _loc3_:int = 0;
            var _loc4_:* = this.§"!k§[§%!<§];
            while(true)
            {
               for each(_loc2_ in _loc4_)
               {
                  if(!(_loc5_ || _loc3_))
                  {
                     break;
                  }
                  if(_loc2_.id == param1.id)
                  {
                     if(_loc5_ || this)
                     {
                        break;
                     }
                  }
               }
               if(!(_loc6_ && param1))
               {
                  this.§"!k§[§%!<§].push(param1);
               }
               return;
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function get sandboxAvailable() : Boolean
      {
         return this.§"!k§[§`!Q§];
      }
      
      public function set sandboxAvailable(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§"!k§[§`!Q§] = param1;
         }
      }
   }
}
