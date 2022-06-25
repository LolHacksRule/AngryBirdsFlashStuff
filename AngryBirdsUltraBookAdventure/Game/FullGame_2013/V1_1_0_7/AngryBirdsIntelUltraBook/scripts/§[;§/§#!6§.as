package §[;§
{
   import §"!i§.§8K§;
   import §"!i§.LevelManager;
   import §-^§.§4-§;
   import §-^§.§45§;
   import §-^§.§7!6§;
   import §0b§.§"V§;
   import §1!B§.Base64;
   import §40§.§-!8§;
   import §7! §.§[!E§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §@!Z§.§,Z§;
   import §[!1§.§+!6§;
   import §[!1§.UserProgressEvent;
   import §^!m§.§4!i§;
   import §^!m§.§;0§;
   import §`!#§.§>!4§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class §#!6§ extends §+!6§
   {
      
      public static const §,!G§:String = "tt";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §#!6§)
         {
            §,!G§ = "tt";
         }
      }
      
      protected var §]?§:Dictionary;
      
      private var §?!1§:Dictionary;
      
      private var §6z§:Dictionary;
      
      protected var §0!T§:String;
      
      protected var §9!l§:String;
      
      protected var §&I§:String;
      
      private var §;!S§:Array;
      
      private var §^q§:Array;
      
      private var §"!%§:Array;
      
      private var §0!E§:Array;
      
      private var §^!t§:Array;
      
      private var §"!q§:Array;
      
      private var §<!J§:Array;
      
      private var §3!7§:Array;
      
      private var mName:Array;
      
      private var §0H§:Array;
      
      private var §9!3§:Array;
      
      private var §05§:Array;
      
      private var §9!#§:Array;
      
      private var §6s§:§45§;
      
      private var §,;§:Array;
      
      private var §[!e§:§45§;
      
      private var § each§:Array;
      
      public function §#!6§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§;!S§ = [47,115,117,98,109,105,116,115,99,111,114,101];
            loop0:
            while(true)
            {
               this.§^q§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
               loop1:
               while(true)
               {
                  this.§"!%§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
                  addr323:
                  while(true)
                  {
                     this.§0!E§ = [101,112,105,115,111,100,101];
                  }
                  addr77:
                  if(!(_loc3_ || param1))
                  {
                     continue;
                  }
                  this.§,;§ = [];
                  loop15:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     loop14:
                     while(true)
                     {
                        if(_loc3_ || param1)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           §§goto(addr77);
                        }
                        addr112:
                        loop12:
                        for(; _loc3_ || _loc2_; continue loop14)
                        {
                           super(param1);
                           while(_loc3_)
                           {
                              this.§]?§ = new Dictionary();
                              continue loop14;
                           }
                           while(true)
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 addr147:
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       addr156:
                                       if(_loc2_ && this)
                                       {
                                          break;
                                       }
                                       this.§9!#§ = [99,111,117,110,116,67,111,110,115,117,109,97,98,108,101,115];
                                       continue loop12;
                                    }
                                    while(true)
                                    {
                                       this.§"!q§ = [112,111,105,110,116,115];
                                       break loop15;
                                    }
                                    addr290:
                                 }
                                 while(true)
                                 {
                                    this.§0H§ = [115,101,99,117,114,105,116,121];
                                    §§goto(addr147);
                                 }
                                 addr233:
                              }
                              addr199:
                              addr259:
                              while(_loc3_ || param1)
                              {
                                 this.§9!3§ = [98,108,111,99,107,115];
                                 break loop12;
                              }
                              while(true)
                              {
                                 this.mName = [100,115,107,102,83,33,110,117,68,121,50,105,55,114,110,68,105,99,115,107,51,56];
                                 §§goto(addr233);
                                 §§goto(addr199);
                              }
                           }
                           while(true)
                           {
                              this.§^!t§ = [108,101,118,101,108];
                              §§goto(addr290);
                              §§goto(addr156);
                           }
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              continue loop0;
                           }
                           this.§05§ = [112,108,97,121,83,101,115,115,105,111,110,84,111,107,101,110];
                           §§goto(addr140);
                           §§goto(addr112);
                        }
                        continue loop1;
                     }
                     §§goto(addr323);
                  }
                  while(true)
                  {
                     this.§<!J§ = [115,116,97,114,115];
                     §§goto(addr269);
                  }
               }
            }
         }
         §§goto(addr302);
      }
      
      override public function getTotalStars() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§8K§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc5_)
            {
               if(§§pop() >= LevelManager.§%!1§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§!!A§(_loc2_);
               if(!_loc6_)
               {
                  if(_loc3_.name != "2000")
                  {
                     if(_loc5_ || this)
                     {
                        addr90:
                        §§push(int(§0q§(_loc3_)));
                        while(true)
                        {
                           _loc4_ = §§pop();
                        }
                        addr94:
                     }
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc1_);
                           if(!_loc6_)
                           {
                              §§push(int(§§pop() + _loc4_));
                           }
                           if(_loc6_ && _loc2_)
                           {
                              break;
                           }
                           _loc1_ = §§pop();
                           loop3:
                           while(true)
                           {
                              addr35:
                              while(true)
                              {
                                 _loc2_++;
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr94);
                     }
                  }
                  §§goto(addr35);
               }
               §§goto(addr90);
            }
            break;
         }
         return §§pop();
      }
      
      public function §1R§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§2B§ = null;
         if(_loc4_)
         {
            if(this.§6z§[param1])
            {
               addr37:
               _loc2_ = this.§6z§[param1];
               if(!_loc3_)
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §#!O§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§?!1§[param1])
            {
               if(_loc2_)
               {
                  §§goto(addr25);
               }
            }
            return 0;
         }
         addr25:
         return this.§?!1§[param1];
      }
      
      public function §'!7§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§?!1§[param1] = param2;
         }
      }
      
      public function §>!&§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§2B§ = new §2B§(param2);
         if(!(_loc5_ && this))
         {
            this.§6z§[param1] = _loc3_;
         }
      }
      
      public function §@z§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§]?§[param1])
            {
               if(!_loc3_)
               {
                  return this.§]?§[param1];
               }
            }
         }
         return 0;
      }
      
      public function §%N§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§]?§[param1] = param2;
         }
      }
      
      public function §-!#§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(!_loc6_)
         {
            this.§?!1§ = new Dictionary();
            if(_loc5_ || this)
            {
               this.§6z§ = new Dictionary();
            }
         }
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(_loc2_.p)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     this.§>!&§(_loc2_.l,_loc2_.p);
                     if(_loc5_)
                     {
                        addr88:
                        if(!_loc2_.r)
                        {
                           continue;
                        }
                        if(!_loc5_)
                        {
                           continue;
                        }
                     }
                     this.§'!7§(_loc2_.l,_loc2_.r);
                  }
                  continue;
               }
            }
            §§goto(addr88);
         }
      }
      
      public function §0!2§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:Object = null;
         if(!(_loc10_ && param1))
         {
            this.§0!T§ = param2;
            while(true)
            {
               this.§9!l§ = param3;
               loop1:
               for(; _loc11_ || param1; while(true)
               {
                  if(!(_loc10_ && this))
                  {
                     if(param5 != null)
                     {
                        if(_loc11_)
                        {
                           if(!(_loc11_ || this))
                           {
                              continue;
                           }
                           §§goto(addr41);
                        }
                        §§goto(addr51);
                     }
                     break;
                  }
                  continue loop1;
               },addr96:,for each(_loc7_ in param1)
               {
                  if(_loc7_.p)
                  {
                     if(_loc11_ || param2)
                     {
                        §<C§(_loc7_.l,_loc7_.p);
                        if(_loc10_ && param1)
                        {
                           continue;
                        }
                     }
                  }
                  if(_loc7_.me)
                  {
                     if(!_loc10_)
                     {
                        §3!L§(_loc7_.l,_loc7_.me);
                        if(_loc11_ || param1)
                        {
                           addr159:
                           if(!_loc7_.r)
                           {
                              continue;
                           }
                           if(_loc10_ && param1)
                           {
                              continue;
                           }
                        }
                        this.§%N§(_loc7_.l,_loc7_.r);
                        continue;
                     }
                  }
                  §§goto(addr159);
               },return)
               {
                  this.§&I§ = param4;
                  while(true)
                  {
                     addr53:
                     addr41:
                     while(true)
                     {
                        this.§ each§ = param6;
                        continue loop1;
                     }
                     if(_loc10_ && param2)
                     {
                        continue;
                     }
                     this.§,;§ = param5;
                     while(true)
                     {
                        if(true)
                        {
                           §§goto(addr96);
                        }
                        §§goto(addr53);
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      override public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push("10-1");
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc3_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(!§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc3_ && param1)
                                 {
                                    break;
                                 }
                                 §§push("-");
                                 if(!(_loc2_ || _loc3_))
                                 {
                                    continue loop2;
                                 }
                                 if(§§pop().split(§§pop())[0] == "1000")
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(this.§8E§(param1));
                                    }
                                    else
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          continue;
                                       }
                                       if(!(_loc2_ || this))
                                       {
                                          break loop3;
                                       }
                                       while(true)
                                       {
                                          addr24:
                                          while(true)
                                          {
                                             §§push(super.isLevelOpen(param1));
                                             if(_loc2_)
                                             {
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                addr135:
                                                if(_loc2_ || _loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       addr149:
                                       while(true)
                                       {
                                          §§pop();
                                          addr150:
                                          while(true)
                                          {
                                             §§push(param1);
                                             break loop4;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr24);
                              }
                              continue loop0;
                           }
                           if(!(_loc3_ && this))
                           {
                              §§goto(addr135);
                              §§push(true);
                           }
                           else
                           {
                              §§goto(addr150);
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr149);
               }
            }
         }
         §§goto(addr101);
      }
      
      private function §=!&§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8K§ = LevelManager.§`r§(param1);
         §§push(§[!E§);
         if(_loc3_ || _loc3_)
         {
            if(_loc2_)
            {
               return _loc2_.name.§"F§([!!_loc3_ ? §§pop() : §§pop(),param1,§,!s§.§ Q§.getScore(),getStarsForLevel(param1,§,!s§.§ Q§.getScore()),§,!s§.§ Q§.getEagleScore(),this.§8§()].join("|"));
               addr51:
            }
            else
            {
               §§push(this.§"!+§());
            }
            §§goto(addr59);
         }
         §§goto(addr51);
      }
      
      private function §5Q§(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(!(_loc6_ && param1))
            {
               §§push(_loc2_);
               if(_loc7_ || param1)
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §8§() : String
      {
         return this.§5Q§(this.mName);
      }
      
      private function §6F§() : String
      {
         return this.§5Q§(this.§;!S§);
      }
      
      private function §"!+§() : String
      {
         return this.§5Q§(this.§^q§);
      }
      
      private function §#e§() : String
      {
         return this.§5Q§(this.§"!%§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§ each§.indexOf(param1) != -1)
            {
               if(_loc3_ || this)
               {
                  §§push(true);
                  if(_loc3_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr51:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr51);
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§45§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            if(!_loc8_)
            {
               this.§ each§.push(_loc3_);
            }
         }
         §§push(§7!6§);
         §§push(§0!m§ + "/tutorialshown/");
         if(_loc9_)
         {
            §§push(§§pop() + param1);
         }
         (_loc4_ = §§pop().§7V§(§§pop())).method = URLRequestMethod.POST;
         if(_loc9_ || _loc2_)
         {
            _loc4_.contentType = this.§#e§();
         }
         (_loc5_ = new §45§(null,2)).addEventListener(Event.COMPLETE,this.§=J§);
         if(_loc9_ || param1)
         {
            _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§-![§);
            loop1:
            while(true)
            {
               _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-![§);
               do
               {
                  _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
                  continue loop1;
               }
               while(!_loc9_);
               
            }
         }
      }
      
      private function §=J§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§45§ = null;
         if(!_loc4_)
         {
            if(param1.currentTarget is §45§)
            {
               addr26:
               _loc2_ = param1.currentTarget as §45§;
               if(_loc3_ || _loc3_)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§=J§);
               }
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
            return;
         }
         §§goto(addr26);
      }
      
      private function §-![§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§45§ = null;
         if(_loc3_)
         {
            if(param1.currentTarget is §45§)
            {
               _loc2_ = param1.currentTarget as §45§;
               addr26:
               if(!_loc4_)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§=J§);
                  loop0:
                  while(true)
                  {
                     addr66:
                     while(true)
                     {
                        _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        continue loop0;
                     }
                  }
               }
               while(false)
               {
                  §§goto(addr66);
               }
            }
            return;
         }
         §§goto(addr26);
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || param2)
         {
            if(this.§;!1§)
            {
               if(!_loc10_)
               {
                  throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
               }
            }
         }
         §§push(§7!6§);
         §§push(§0!m§ + this.§6F§() + "/");
         if(!_loc10_)
         {
            §§push(§§pop() + param3.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §§pop().§7V§(§§pop())).method = URLRequestMethod.POST;
         if(!_loc10_)
         {
            _loc4_.contentType = this.§#e§();
         }
         var _loc5_:§8K§ = LevelManager.§`r§(param1);
         §§push(§,!s§.§ Q§.getScore());
         if(!_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:int = getStarsForLevel(param1,§,!s§.§ Q§.getScore());
         var _loc8_:Object;
         (_loc8_ = {})[this.§5Q§(this.§0!E§)] = !!_loc5_ ? _loc5_.name : this.§"!+§();
         if(!(_loc10_ && param1))
         {
            _loc8_[this.§5Q§(this.§^!t§)] = param1;
            loop0:
            while(true)
            {
               _loc8_[this.§5Q§(this.§"!q§)] = _loc6_;
               loop1:
               while(true)
               {
                  _loc8_[this.§5Q§(this.§<!J§)] = _loc7_;
                  loop2:
                  while(true)
                  {
                     _loc8_[this.§5Q§(this.§3!7§)] = §,!s§.§ Q§.getEagleScore();
                     loop3:
                     while(true)
                     {
                        _loc8_[this.§5Q§(this.§0H§)] = this.§=!&§(param1);
                        loop4:
                        for(; !_loc10_; while(!(_loc10_ && param3))
                        {
                           _loc4_.data = Base64.encode(§,Z§.encode(_loc8_));
                           §§goto(addr231);
                           §§goto(addr174);
                        })
                        {
                           _loc8_[this.§5Q§(this.§9!3§)] = §-!8§.§#$§();
                           while(true)
                           {
                              _loc8_[this.§5Q§(this.§05§)] = §>!4§.§`!e§;
                              addr263:
                              while(!_loc10_)
                              {
                                 _loc8_[this.§5Q§(this.§9!#§)] = (§,!s§.§=!I§ as §"V§).§,,§();
                                 continue loop4;
                              }
                              addr181:
                              continue loop3;
                              if(_loc9_ || param3)
                              {
                                 loop16:
                                 while(true)
                                 {
                                    §§push(this.§6s§);
                                    addr136:
                                    loop17:
                                    for(; _loc9_ || this; §§push(this.§6s§),if(_loc10_ && param2)
                                    {
                                       continue;
                                    },§§pop().load(_loc4_),if(!_loc9_)
                                    {
                                       §§goto(addr148);
                                    },if(!_loc10_)
                                    {
                                       if(_loc9_)
                                       {
                                          break loop16;
                                       }
                                       §§goto(addr214);
                                    },while(_loc9_ || this)
                                    {
                                       §§goto(addr181);
                                    },continue loop4,addr174:)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                          addr148:
                                          while(!(_loc10_ && this))
                                          {
                                             continue loop17;
                                          }
                                          while(_loc9_)
                                          {
                                             if(!_loc10_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   §§push(this.§6s§);
                                                   break loop17;
                                                }
                                                continue loop1;
                                             }
                                             §§goto(addr263);
                                             §§goto(addr148);
                                          }
                                          addr148:
                                          while(!_loc10_)
                                          {
                                             §§push(this.§6s§);
                                             while(true)
                                             {
                                                §§pop().addEventListener(Event.COMPLETE,this.§8S§);
                                                addr214:
                                                while(true)
                                                {
                                                   §§push(this.§6s§);
                                                }
                                             }
                                          }
                                          while(!_loc10_)
                                          {
                                             this.§6s§ = new §45§();
                                             §§goto(addr220);
                                          }
                                          addr220:
                                          continue loop2;
                                          addr199:
                                          addr231:
                                       }
                                       while(_loc9_)
                                       {
                                          §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                          §§goto(addr199);
                                       }
                                       §§goto(addr209);
                                    }
                                    while(true)
                                    {
                                       §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                       §§goto(addr174);
                                       §§goto(addr136);
                                    }
                                 }
                                 return;
                                 addr188:
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr188);
      }
      
      private function §8S§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§6s§ = null;
         }
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§ ?§);
         if(!(_loc3_ && this))
         {
            _loc2_.data = param1.currentTarget.data;
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(_loc3_);
         
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(param1.type != §4-§.§4!m§)
            {
               §4!i§.§>t§();
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     this.§6s§ = null;
                     if(!(_loc3_ || _loc3_))
                     {
                        break;
                     }
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           return;
                        }
                        addr76:
                        while(true)
                        {
                           §4!i§.§>t§(§;0§.§-!W§);
                        }
                     }
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr76);
         }
         §§goto(addr80);
      }
      
      public function §8E§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§,;§);
            if(_loc3_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr59:
                     if(this.§,;§.indexOf(param1) != -1)
                     {
                        if(_loc3_)
                        {
                           addr65:
                           §§push(true);
                           if(_loc3_ || _loc2_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr74:
                           return false;
                        }
                        return §§pop();
                     }
                  }
               }
               §§goto(addr74);
            }
            §§goto(addr59);
         }
         §§goto(addr65);
      }
      
      public function §<!_§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§8E§(param1))
            {
               if(!_loc4_)
               {
                  return;
               }
               while(true)
               {
               }
               addr47:
            }
            while(true)
            {
               §4!i§.§,!Z§(param1);
               do
               {
                  this.§,;§.push(param1);
               }
               while(_loc4_);
               
               if(_loc3_ || this)
               {
                  if(true)
                  {
                     break;
                  }
                  continue;
               }
            }
            §§push(§7!6§);
            §§push(§0!m§ + "/eggfound/");
            if(_loc3_)
            {
               §§push(§§pop() + param1);
            }
            var _loc2_:URLRequest = §§pop().§7V§(§§pop());
            if(_loc3_ || _loc2_)
            {
               _loc2_.method = URLRequestMethod.POST;
               while(true)
               {
                  _loc2_.contentType = this.§#e§();
                  addr125:
                  if(_loc3_ || _loc3_)
                  {
                     return;
                  }
               }
            }
            loop3:
            while(true)
            {
               this.§[!e§ = new §45§(null,2);
               loop4:
               while(true)
               {
                  §§push(this.§[!e§);
                  while(true)
                  {
                     §§pop().addEventListener(Event.COMPLETE,this.§5m§);
                     continue loop4;
                     addr105:
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     §§pop().load(_loc2_);
                     if(!_loc3_)
                     {
                        loop12:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue loop3;
                           }
                           addr141:
                           §§push(this.§[!e§);
                           if(_loc3_ || param1)
                           {
                              addr81:
                              if(!(_loc4_ && this))
                              {
                                 addr88:
                                 if(_loc3_ || _loc2_)
                                 {
                                    §§goto(addr105);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                       §§goto(addr88);
                                    }
                                    addr161:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§[!e§);
                                 }
                                 addr166:
                              }
                              while(true)
                              {
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                 continue loop3;
                                 §§goto(addr81);
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                 continue loop12;
                                 §§goto(addr141);
                              }
                              addr136:
                           }
                        }
                        continue;
                     }
                     if(_loc3_)
                     {
                        addr118:
                        if(!(_loc3_ || param1))
                        {
                           continue loop4;
                        }
                        §§goto(addr125);
                     }
                     else
                     {
                        §§goto(addr166);
                     }
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §5m§(param1:Event) : void
      {
      }
      
      public function get §;!1§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§6s§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get userName() : String
      {
         return this.§0!T§;
      }
      
      public function get avatarString() : String
      {
         return this.§9!l§;
      }
      
      public function set avatarString(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§9!l§ = param1;
         }
      }
      
      public function get § z§() : String
      {
         return this.§&I§;
      }
   }
}
