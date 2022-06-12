package §%!v§
{
   import § !9§.§'!J§;
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#!e§.§ <§;
   import §#!e§.§>x§;
   import §#!e§.LevelManager;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §6o§.Base64;
   import §7"@§.§2!e§;
   import §7-§.§,!C§;
   import §9"!§.§2K§;
   import §9"!§.§?E§;
   import §<a§.§9U§;
   import §=,§.§!!W§;
   import §=,§.UserProgressEvent;
   import §[!z§.§[!Y§;
   import §]!A§.;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §[<§ extends §!!W§
   {
      
      public static const §-!W§:String = "tt";
      
      public static const §8l§:String = "btt";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-!W§ = "tt";
         }
         do
         {
            §8l§ = "btt";
         }
         while(!_loc2_);
         
      }
      
      protected var §6Z§:Dictionary;
      
      private var §6Q§:Dictionary;
      
      private var §3!&§:Dictionary;
      
      protected var §]!e§:String;
      
      protected var §@!0§:String;
      
      protected var § !b§:String;
      
      private var §5N§:Array;
      
      private var §[X§:Array;
      
      private var §-!w§:Array;
      
      private var §3_§:Array;
      
      private var §3"&§:Array;
      
      private var §>a§:Array;
      
      private var §[d§:Array;
      
      private var §23§:Array;
      
      private var override:Array;
      
      private var mName:Array;
      
      private var §-i§:Array;
      
      private var §5!7§:Array;
      
      private var §;2§:Array;
      
      private var §=]§:Array;
      
      private var §2;§:§0]§;
      
      private var §"%§:Array;
      
      private var §&w§:§0]§;
      
      private var §8!a§:Array;
      
      public function §[<§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5N§ = [47,115,117,98,109,105,116,115,99,111,114,101];
            loop0:
            while(true)
            {
               this.§[X§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
               loop1:
               while(true)
               {
                  this.§-!w§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
                  while(true)
                  {
                     this.§3_§ = [97,99,116,117,97,108,76,101,118,101,108];
                     while(true)
                     {
                        this.§3"&§ = [101,112,105,115,111,100,101];
                        while(!(_loc2_ && param1))
                        {
                           this.§>a§ = [108,101,118,101,108];
                           while(_loc3_)
                           {
                              this.§[d§ = [112,111,105,110,116,115];
                              while(true)
                              {
                                 this.§23§ = [115,116,97,114,115];
                                 loop7:
                                 while(true)
                                 {
                                    this.override = [100,101,115,116,114,117,99,116,105,111,110,80,101,114,99,101,110,116,97,103,101];
                                    while(true)
                                    {
                                       this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
                                       addr239:
                                       while(!_loc2_)
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                           if(_loc3_ || this)
                           {
                              super(param1);
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr212);
      }
      
      override public function getTotalStars() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§>x§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() >= LevelManager.§@!N§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§;X§(_loc2_);
               if(!_loc6_)
               {
                  if(_loc3_.name != "2000")
                  {
                     while(true)
                     {
                        §§push(int(§9o§(_loc3_)));
                        loop2:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr100:
                           while(true)
                           {
                              addr80:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc5_)
                                 {
                                    §§push(int(§§pop() + _loc4_));
                                 }
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 _loc1_ = §§pop();
                                 while(true)
                                 {
                                 }
                              }
                              continue loop2;
                           }
                        }
                        addr61:
                        if(_loc5_ || _loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     _loc2_++;
                     if(_loc6_ && _loc1_)
                     {
                        continue;
                     }
                     if(!(_loc6_ && this))
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr100);
                  }
                  continue;
               }
               §§goto(addr90);
            }
            break;
         }
         return §§pop();
      }
      
      public function §<U§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9U§ = null;
         if(_loc4_)
         {
            if(this.§3!&§[param1])
            {
               addr37:
               _loc2_ = this.§3!&§[param1];
               if(!(_loc3_ && this))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §4!N§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§6Q§[param1])
            {
               if(_loc2_)
               {
                  §§goto(addr25);
               }
            }
            return 0;
         }
         addr25:
         return this.§6Q§[param1];
      }
      
      public function §+"&§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§6Q§[param1] = param2;
         }
      }
      
      public function §7&§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§9U§ = new §9U§(param2);
         if(!_loc4_)
         {
            this.§3!&§[param1] = _loc3_;
         }
      }
      
      public function §#!o§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§6Z§[param1])
            {
               if(_loc3_)
               {
                  §§goto(addr41);
               }
            }
            return 0;
         }
         addr41:
         return this.§6Z§[param1];
      }
      
      public function §%"2§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§6Z§[param1] = param2;
         }
      }
      
      public function §;!i§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(_loc5_ || this)
         {
            this.§6Q§ = new Dictionary();
            if(!_loc6_)
            {
               this.§3!&§ = new Dictionary();
            }
         }
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(_loc2_.p)
               {
                  if(!_loc6_)
                  {
                     this.§7&§(_loc2_.l,_loc2_.p);
                     if(!_loc5_)
                     {
                        continue;
                     }
                  }
               }
            }
            if(_loc2_.r)
            {
               if(!_loc6_)
               {
                  this.§+"&§(_loc2_.l,_loc2_.r);
               }
            }
         }
      }
      
      public function §?"D§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc7_:Object = null;
         if(_loc10_ || this)
         {
            this.§]!e§ = param2;
            while(true)
            {
               this.§@!0§ = param3;
               while(true)
               {
                  this.§ !b§ = param4;
                  loop2:
                  while(true)
                  {
                     addr61:
                     while(true)
                     {
                        §§push(this);
                        if(!_loc11_)
                        {
                           §§pop().§8!a§ = param6 || [];
                           while(param5 != null)
                           {
                              if(!(_loc11_ && param3))
                              {
                                 if(!(_loc11_ && param1))
                                 {
                                    this.§"%§ = param5;
                                    continue loop2;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop2;
                           }
                           addr98:
                           for each(_loc7_ in param1)
                           {
                              if(_loc7_.p)
                              {
                                 if(_loc10_ || param1)
                                 {
                                    §["$§(_loc7_.l,_loc7_.p);
                                    if(!(_loc11_ && this))
                                    {
                                       addr143:
                                       if(_loc7_.me)
                                       {
                                          if(!_loc11_)
                                          {
                                             §<!,§(_loc7_.l,_loc7_.me);
                                             if(_loc11_)
                                             {
                                             }
                                             addr161:
                                             this.§%"2§(_loc7_.l,_loc7_.r);
                                             continue;
                                          }
                                          §§goto(addr161);
                                       }
                                       if(!_loc7_.r)
                                       {
                                          continue;
                                       }
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr161);
                                 }
                              }
                              §§goto(addr143);
                           }
                           return;
                           addr83:
                        }
                        §§goto(addr70);
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      override public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("10-1");
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
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
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push("11-1");
                                    addr187:
                                    while(!(_loc3_ && this))
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    continue loop1;
                                    addr109:
                                    if(!(_loc2_ || this))
                                    {
                                       continue;
                                    }
                                    §§push("-");
                                    loop19:
                                    for(; !(_loc3_ && this); §§push("-"),if(_loc3_ && this)
                                    {
                                       continue;
                                    },if(_loc2_)
                                    {
                                       if(§§pop().split(§§pop())[0] == "2000")
                                       {
                                          if(_loc3_ && this)
                                          {
                                             addr82:
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(!_loc3_)
                                                {
                                                   continue loop19;
                                                }
                                                continue loop0;
                                             }
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                §§push(super.isLevelOpen(param1));
                                                if(_loc2_ || _loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                addr79:
                                             }
                                             continue loop20;
                                             while(!_loc2_)
                                             {
                                                continue loop24;
                                             }
                                             return §§pop();
                                          }
                                          if(_loc2_)
                                          {
                                             §§goto(addr68);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr24);
                                    },§§goto(addr187))
                                    {
                                       if(§§pop().split(§§pop())[0] == "1000")
                                       {
                                          if(_loc2_ || _loc3_)
                                          {
                                             §§push(this.§6M§(param1));
                                             while(true)
                                             {
                                                if(_loc2_ || this)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   addr154:
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  while(!_loc3_)
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        addr68:
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§,!C§.§;"§.isLevelOpen(param1));
                                                                           §§goto(addr79);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                                  addr200:
                                                               }
                                                               else
                                                               {
                                                                  addr160:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§push(true);
                                                                        break;
                                                                     }
                                                                     addr166:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc2_ || _loc3_))
                                                                        {
                                                                           break loop14;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     addr102:
                                                                     while(!(_loc3_ && this))
                                                                     {
                                                                        §§goto(addr109);
                                                                     }
                                                                  }
                                                               }
                                                               return §§pop();
                                                               while(true)
                                                               {
                                                                  §§push("3002-1");
                                                                  break loop19;
                                                                  §§goto(addr102);
                                                               }
                                                            }
                                                            continue loop3;
                                                            addr196:
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr200);
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr160);
                                             }
                                             return §§pop();
                                          }
                                          while(true)
                                          {
                                             §§goto(addr38);
                                          }
                                          §§goto(addr102);
                                       }
                                       addr38:
                                       §§goto(addr82);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr154);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr196);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      private function §,!s§(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§>x§ = LevelManager.§^_§(param1);
         §§push(§[!Y§);
         if(!_loc3_)
         {
            if(_loc2_)
            {
               return _loc2_.name.§78§([!(_loc3_ && this) ? §§pop() : §§pop(),param1,§#6§.§'" §.getScore(),getStarsForLevel(param1,§#6§.§'" §.getScore()),§#6§.§'" §.getEagleScore(),this.§=§()].join("|"));
               addr37:
            }
            else
            {
               §§push(this.§2!`§());
            }
            §§goto(addr60);
         }
         §§goto(addr37);
      }
      
      private function §-W§(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && _loc2_))
            {
               §§push(_loc2_);
               if(!_loc6_)
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §=§() : String
      {
         return this.§-W§(this.mName);
      }
      
      private function §;"A§() : String
      {
         return this.§-W§(this.§5N§);
      }
      
      private function §2!`§() : String
      {
         return this.§-W§(this.§[X§);
      }
      
      private function §6!q§() : String
      {
         return this.§-W§(this.§-!w§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§8!a§.indexOf(param1) != -1)
            {
               if(_loc3_)
               {
                  addr37:
                  §§push(true);
                  if(!(_loc2_ && _loc3_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr46);
         }
         §§goto(addr37);
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§0]§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc8_ && _loc2_))
            {
               this.§8!a§.push(_loc3_);
            }
         }
         §§push(§-!l§);
         §§push(§+]§ + "/tutorialshown/");
         if(_loc9_)
         {
            §§push(§§pop() + param1);
         }
         (_loc4_ = §§pop().§%""§(§§pop())).method = URLRequestMethod.POST;
         if(!(_loc8_ && this))
         {
            _loc4_.contentType = this.§6!q§();
         }
         (_loc5_ = new §0]§(null,2)).addEventListener(Event.COMPLETE,this.§=!@§);
         if(!_loc8_)
         {
            _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§7!l§);
            while(true)
            {
               _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§7!l§);
               loop2:
               for(; _loc9_ || _loc2_; while(_loc9_ || this)
               {
                  _loc5_.load(_loc4_);
                  if(!(_loc8_ && this))
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr162);
      }
      
      private function §=!@§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0]§ = null;
         if(_loc3_)
         {
            if(param1.currentTarget is §0]§)
            {
               addr26:
               _loc2_ = param1.currentTarget as §0]§;
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§=!@§);
                  loop0:
                  while(true)
                  {
                     addr76:
                     while(true)
                     {
                        _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  if(!(_loc4_ && param1))
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr83);
               }
            }
            return;
         }
         §§goto(addr26);
      }
      
      private function §7!l§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§0]§ = null;
         if(!(_loc4_ && param1))
         {
            if(param1.currentTarget is §0]§)
            {
               _loc2_ = param1.currentTarget as §0]§;
               addr31:
               if(_loc3_)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§=!@§);
                  loop0:
                  while(true)
                  {
                     addr83:
                     while(true)
                     {
                        _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        continue loop0;
                     }
                  }
                  addr97:
               }
               while(true)
               {
                  _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  if(!(_loc4_ && _loc2_))
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     §§goto(addr97);
                  }
                  §§goto(addr83);
               }
            }
            return;
         }
         §§goto(addr31);
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && param1))
         {
            if(this.§7!I§)
            {
               if(!_loc10_)
               {
                  §§goto(addr29);
               }
            }
            §§push(§-!l§);
            §§push(§+]§ + this.§;"A§() + "/");
            if(_loc11_ || param2)
            {
               §§push(§§pop() + param3.toString());
            }
            var _loc4_:URLRequest;
            (_loc4_ = §§pop().§%""§(§§pop())).method = URLRequestMethod.POST;
            if(!_loc10_)
            {
               _loc4_.contentType = this.§6!q§();
            }
            var _loc5_:§>x§ = LevelManager.§^_§(param1);
            §§push(§#6§.§'" §.getScore());
            if(_loc11_ || param2)
            {
               §§push(int(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:int = getStarsForLevel(param1,§#6§.§'" §.getScore());
            var _loc8_:Object = {};
            §§push(§ <§.§2!V§(param1));
            if(!_loc10_)
            {
               §§push(§§pop());
            }
            var _loc9_:* = §§pop();
            if(!(_loc10_ && param3))
            {
               if(param3)
               {
                  while(true)
                  {
                     _loc9_ = String(§,!C§.§;"§.§8!z§(param1));
                     addr414:
                     while(true)
                     {
                     }
                  }
                  addr406:
               }
               loop2:
               while(true)
               {
                  _loc8_[this.§-W§(this.§3"&§)] = !!_loc5_ ? _loc5_.name : this.§2!`§();
                  loop3:
                  while(true)
                  {
                     _loc8_[this.§-W§(this.§>a§)] = param1;
                     loop4:
                     while(_loc11_ || param3)
                     {
                        _loc8_[this.§-W§(this.§[d§)] = _loc6_;
                        loop5:
                        while(true)
                        {
                           _loc8_[this.§-W§(this.§23§)] = _loc7_;
                           loop6:
                           while(true)
                           {
                              _loc8_[this.§-W§(this.override)] = §#6§.§'" §.getEagleScore();
                              loop7:
                              while(true)
                              {
                                 _loc8_[this.§-W§(this.§-i§)] = this.§,!s§(param1);
                                 addr313:
                                 if(_loc10_ && param1)
                                 {
                                    continue;
                                 }
                                 _loc8_[this.§-W§(this.§;2§)] = §2!e§.§#!W§;
                                 loop10:
                                 while(true)
                                 {
                                    _loc8_[this.§-W§(this.§=]§)] = (§#6§.§6!z§ as §2K§).§[v§();
                                    loop11:
                                    while(true)
                                    {
                                       _loc8_[this.§-W§(this.§3_§)] = _loc9_;
                                       loop12:
                                       for(; !_loc10_; if(!(_loc10_ && this))
                                       {
                                          continue loop6;
                                       })
                                       {
                                          if(!_loc11_)
                                          {
                                             continue loop4;
                                          }
                                          _loc4_.data = Base64.encode(§'!J§.encode(_loc8_));
                                          loop13:
                                          while(true)
                                          {
                                             this.§2;§ = new §0]§();
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc10_)
                                                {
                                                   continue loop11;
                                                }
                                                if(!(_loc11_ || param3))
                                                {
                                                   break;
                                                }
                                                §§push(this.§2;§);
                                                while(true)
                                                {
                                                   §§pop().addEventListener(Event.COMPLETE,this.§for §);
                                                   continue loop14;
                                                   loop19:
                                                   while(_loc11_ || param2)
                                                   {
                                                      §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(_loc11_ || param2)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(this.§2;§);
                                                            loop21:
                                                            while(!_loc10_)
                                                            {
                                                               §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  continue loop20;
                                                                  addr124:
                                                                  §§pop().load(_loc4_);
                                                                  if(_loc11_ || this)
                                                                  {
                                                                     if(_loc10_ && this)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           break loop21;
                                                                        }
                                                                        addr218:
                                                                     }
                                                                     if(_loc11_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               §§push(this.§2;§);
                                                               continue loop6;
                                                               if(!_loc11_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  §§goto(addr124);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                                  }
                                                                  addr213:
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                            continue loop19;
                                                         }
                                                         continue loop14;
                                                      }
                                                      continue loop5;
                                                   }
                                                }
                                             }
                                             loop9:
                                             while(true)
                                             {
                                                if(!(_loc10_ && param1))
                                                {
                                                   §§goto(addr313);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc8_[this.§-W§(this.§5!7§)] = §?E§.§9!T§();
                                                      continue loop9;
                                                   }
                                                   addr331:
                                                }
                                             }
                                             continue loop7;
                                          }
                                       }
                                       continue loop10;
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
            §§goto(addr331);
         }
         addr29:
         throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
      }
      
      private function §for §(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§2;§ = null;
         }
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§+!f§);
         if(_loc3_ || param1)
         {
            _loc2_.data = param1.currentTarget.data;
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(!_loc3_);
         
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(param1.type == §+!D§.§25§)
            {
               if(!_loc2_)
               {
                  addr71:
                  §%?§.§6!7§(§-d§.§]x§);
               }
               while(!_loc3_)
               {
               }
               return;
            }
            §%?§.§6!7§();
            while(true)
            {
            }
            addr63:
            while(true)
            {
               this.§2;§ = null;
               if(_loc3_)
               {
                  break;
               }
               §§goto(addr63);
            }
            §§goto(addr55);
         }
         §§goto(addr71);
      }
      
      public function §6M§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§"%§);
            if(!(_loc2_ && this))
            {
               if(§§pop() != null)
               {
                  if(_loc3_)
                  {
                     addr44:
                     if(this.§"%§.indexOf(param1) != -1)
                     {
                        if(!_loc2_)
                        {
                           addr50:
                           §§push(true);
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr54:
                           return false;
                        }
                        return §§pop();
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr50);
               }
               §§goto(addr54);
            }
            §§goto(addr44);
         }
         §§goto(addr54);
      }
      
      public function §`"3§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!this.§6M§(param1))
            {
               loop0:
               while(true)
               {
                  §%?§.§]"B§(param1);
                  loop1:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.§"%§.push(param1);
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        if(_loc3_)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue loop0;
                        }
                        §§push(§-!l§);
                        §§push(§+]§ + "/eggfound/");
                        if(_loc4_)
                        {
                           §§push(§§pop() + param1);
                        }
                        var _loc2_:URLRequest = §§pop().§%""§(§§pop());
                        if(_loc4_)
                        {
                           _loc2_.method = URLRequestMethod.POST;
                           loop3:
                           while(true)
                           {
                              _loc2_.contentType = this.§6!q§();
                              loop4:
                              while(true)
                              {
                                 this.§&w§ = new §0]§(null,2);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§&w§);
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().addEventListener(Event.COMPLETE,this.§4!M§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§&w§);
                                          while(true)
                                          {
                                             §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                             continue loop3;
                                             addr67:
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr74:
                                                §§pop().load(_loc2_);
                                                if(!(_loc4_ || _loc3_))
                                                {
                                                   loop14:
                                                   for(; _loc4_; §§goto(addr74))
                                                   {
                                                      addr110:
                                                      §§push(this.§&w§);
                                                      if(!_loc4_)
                                                      {
                                                         while(_loc4_)
                                                         {
                                                            §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                                            continue loop14;
                                                            §§goto(addr110);
                                                         }
                                                         continue loop6;
                                                         addr103:
                                                      }
                                                      §§goto(addr67);
                                                   }
                                                   continue loop5;
                                                }
                                                if(_loc4_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         return;
                                                         addr99:
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr114);
                        }
                        §§goto(addr99);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr37);
      }
      
      private function §4!M§(param1:Event) : void
      {
      }
      
      public function get §7!I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§2;§ == null);
         if(_loc1_ || this)
         {
            return !§§pop();
         }
      }
      
      public function get userName() : String
      {
         return this.§]!e§;
      }
      
      public function get avatarString() : String
      {
         return this.§@!0§;
      }
      
      public function set avatarString(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!0§ = param1;
         }
      }
      
      public function get §4v§() : String
      {
         return this.§ !b§;
      }
   }
}
