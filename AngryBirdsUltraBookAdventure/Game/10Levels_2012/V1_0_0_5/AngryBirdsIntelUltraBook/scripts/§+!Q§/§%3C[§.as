package §+!Q§
{
   import §,!5§.§;v§;
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import §2t§.§?+§;
   import §40§.§-!,§;
   import §9!y§.§2v§;
   import §9!y§.§@M§;
   import §;!5§.§ v§;
   import §;!5§.§!e§;
   import §;!5§.§3!^§;
   import §;<§.§4!d§;
   import §@N§.§2w§;
   import §]!§.§4!s§;
   import §]!§.UserProgressEvent;
   import §^_§.Base64;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   import §true§.§ _§;
   
   public class §<[§ extends §4!s§
   {
      
      public static const §[!]§:String = "tt";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §[!]§ = "tt";
         }
      }
      
      protected var §?[§:Dictionary;
      
      private var §`l§:Dictionary;
      
      private var §%l§:Dictionary;
      
      protected var §&i§:String;
      
      protected var §-!Z§:String;
      
      protected var §,!3§:String;
      
      private var §'!b§:Array;
      
      private var §1@§:Array;
      
      private var §`'§:Array;
      
      private var §<!b§:Array;
      
      private var §`P§:Array;
      
      private var §@t§:Array;
      
      private var §]!D§:Array;
      
      private var §!A§:Array;
      
      private var mName:Array;
      
      private var §&o§:Array;
      
      private var §=!3§:Array;
      
      private var §0<§:Array;
      
      private var §8!$§:Array;
      
      private var §0Y§:§!e§;
      
      private var §^!H§:Array;
      
      private var §&w§:§!e§;
      
      private var §6W§:Array;
      
      public function §<[§(param1:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§'!b§ = [47,115,117,98,109,105,116,115,99,111,114,101];
            loop0:
            while(true)
            {
               this.§1@§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
               while(true)
               {
                  this.§`'§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
                  loop2:
                  while(true)
                  {
                     this.§<!b§ = [101,112,105,115,111,100,101];
                     while(true)
                     {
                        this.§`P§ = [108,101,118,101,108];
                        while(true)
                        {
                           this.§@t§ = [112,111,105,110,116,115];
                           while(true)
                           {
                              this.§]!D§ = [115,116,97,114,115];
                              continue loop2;
                              while(_loc2_ || _loc3_)
                              {
                                 this.§%l§ = new Dictionary();
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    if(_loc2_)
                                    {
                                       return;
                                    }
                                    while(!(_loc3_ && this))
                                    {
                                       this.§?[§ = new Dictionary();
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             this.§^!H§ = [];
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§&o§ = [115,101,99,117,114,105,116,121];
                                       §§goto(addr190);
                                       §§goto(addr98);
                                    }
                                    addr98:
                                 }
                                 §§goto(addr62);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function getTotalStars() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§4n§ = null;
         var _loc4_:* = 0;
         var _loc1_:* = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_ || this)
            {
               if(§§pop() >= LevelManager.§1K§())
               {
                  §§push(_loc1_);
                  break;
               }
               _loc3_ = LevelManager.§`!-§(_loc2_);
               if(!_loc5_)
               {
                  if(_loc3_.name != "2000")
                  {
                     loop1:
                     while(true)
                     {
                        §§push(int(§&!N§(_loc3_)));
                        loop2:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           addr106:
                           loop6:
                           while(true)
                           {
                              addr57:
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(_loc5_ && this)
                                    {
                                       continue loop2;
                                    }
                                    §§push(int(§§pop() + _loc4_));
                                 }
                                 _loc1_ = §§pop();
                                 addr77:
                                 addr96:
                                 while(true)
                                 {
                                    if(_loc6_ || this)
                                    {
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    continue loop6;
                                 }
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     _loc2_++;
                     if(!(_loc5_ && this))
                     {
                        continue loop0;
                     }
                     §§goto(addr77);
                     §§goto(addr96);
                  }
                  continue;
               }
               §§goto(addr106);
            }
            break;
         }
         return §§pop();
      }
      
      public function §9F§(param1:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§&'§ = null;
         if(!_loc3_)
         {
            if(this.§%l§[param1])
            {
               addr37:
               _loc2_ = this.§%l§[param1];
               if(!(_loc3_ && param1))
               {
                  return _loc2_.getValue();
               }
            }
            return 0;
         }
         §§goto(addr37);
      }
      
      public function §>!`§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§`l§[param1])
            {
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr45);
               }
            }
            return 0;
         }
         addr45:
         return this.§`l§[param1];
      }
      
      public function §,"§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§`l§[param1] = param2;
         }
      }
      
      public function §6%§(param1:String, param2:int) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§&'§ = new §&'§(param2);
         if(_loc5_ || _loc3_)
         {
            this.§%l§[param1] = _loc3_;
         }
      }
      
      public function §,!l§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§?[§[param1])
            {
               if(!_loc2_)
               {
                  §§goto(addr41);
               }
            }
            return 0;
         }
         addr41:
         return this.§?[§[param1];
      }
      
      public function §2!@§(param1:String, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§?[§[param1] = param2;
         }
      }
      
      public function §6"§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         if(_loc5_)
         {
            this.§`l§ = new Dictionary();
            if(_loc5_)
            {
               this.§%l§ = new Dictionary();
            }
         }
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               continue;
            }
            if(_loc2_.p)
            {
               if(!(_loc6_ && param1))
               {
                  this.§6%§(_loc2_.l,_loc2_.p);
                  if(_loc5_)
                  {
                     addr83:
                     if(!_loc2_.r)
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
                  this.§,"§(_loc2_.l,_loc2_.r);
                  continue;
               }
            }
            §§goto(addr83);
         }
      }
      
      public function §90§(param1:Array, param2:String, param3:String, param4:String, param5:Array, param6:Array) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:Object = null;
         if(!(_loc10_ && param1))
         {
            this.§&i§ = param2;
            loop0:
            while(true)
            {
               this.§-!Z§ = param3;
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§,!3§ = param4;
                     while(!_loc10_)
                     {
                        loop3:
                        while(true)
                        {
                           this.§6W§ = param6;
                           loop4:
                           while(param5 != null)
                           {
                              if(_loc11_ || param1)
                              {
                                 if(!(_loc11_ || this))
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    this.§^!H§ = param5;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc10_)
                                 {
                                    break loop3;
                                 }
                                 if(_loc11_)
                                 {
                                    if(true)
                                    {
                                       break loop4;
                                    }
                                    continue loop3;
                                 }
                                 continue loop1;
                              }
                           }
                           var _loc8_:int = 0;
                           var _loc9_:* = param1;
                           addr165:
                           for each(_loc7_ in _loc9_)
                           {
                              if(_loc7_.p)
                              {
                                 if(_loc11_)
                                 {
                                    §,!i§(_loc7_.l,_loc7_.p);
                                    if(_loc11_ || param2)
                                    {
                                       addr116:
                                       if(_loc7_.me)
                                       {
                                          if(_loc11_ || this)
                                          {
                                             §5U§(_loc7_.l,_loc7_.me);
                                             if(_loc11_ || param1)
                                             {
                                                addr149:
                                                if(_loc7_.r)
                                                {
                                                   if(_loc10_ && param3)
                                                   {
                                                   }
                                                }
                                                §§goto(addr165);
                                             }
                                             this.§2!@§(_loc7_.l,_loc7_.r);
                                             §§goto(addr165);
                                          }
                                       }
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr116);
                           }
                           return;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      override public function isLevelOpen(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
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
                  do
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr121:
                           while(true)
                           {
                              §§push(param1);
                              addr99:
                              while(true)
                              {
                                 §§push("11-1");
                                 addr100:
                                 while(!(_loc2_ && param1))
                                 {
                                    §§push(§§pop() == §§pop());
                                    while(!_loc3_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(param1);
                              if(!_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§push("-");
                                 if(!_loc2_)
                                 {
                                    if(§§pop().split(§§pop())[0] == "1000")
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   addr69:
                                                   §§push(this.isEggUnlocked(param1));
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         break loop4;
                                                      }
                                                      §§goto(addr108);
                                                   }
                                                }
                                                §§goto(addr121);
                                             }
                                             else
                                             {
                                                addr112:
                                                return true;
                                             }
                                             return §§pop();
                                          }
                                          continue;
                                       }
                                       addr25:
                                       §§push(super.isLevelOpen(param1));
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr69);
                                    }
                                    §§goto(addr25);
                                 }
                                 §§goto(addr100);
                              }
                              break;
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr112);
                     }
                  }
                  while(_loc2_ && _loc3_);
                  
                  return §§pop();
               }
            }
         }
         §§goto(addr121);
      }
      
      private function §;!e§(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§4n§ = LevelManager.§2!9§(param1);
         §§push(§?+§);
         if(_loc3_)
         {
            if(_loc2_)
            {
               return _loc2_.name.§'!P§([!(_loc4_ && _loc3_) ? §§pop() : §§pop(),param1,§ _§.§?!]§.getScore(),getStarsForLevel(param1,§ _§.§?!]§.getScore()),§ _§.§?!]§.getEagleScore(),this.§=!U§()].join("|"));
               addr36:
            }
            else
            {
               §§push(this.§>&§());
            }
            §§goto(addr59);
         }
         §§goto(addr36);
      }
      
      private function §%!o§(param1:Array) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:int = 0;
         var _loc2_:* = "";
         for each(_loc3_ in param1)
         {
            if(_loc7_ || _loc3_)
            {
               §§push(_loc2_);
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() + String.fromCharCode(_loc3_));
               }
               _loc2_ = §§pop();
            }
         }
         return _loc2_;
      }
      
      private function §=!U§() : String
      {
         return this.§%!o§(this.mName);
      }
      
      private function §1D§() : String
      {
         return this.§%!o§(this.§'!b§);
      }
      
      private function §>&§() : String
      {
         return this.§%!o§(this.§1@§);
      }
      
      private function §+v§() : String
      {
         return this.§%!o§(this.§`'§);
      }
      
      override public function hasTutorialBeenSeen(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§6W§.indexOf(param1) != -1)
            {
               if(!(_loc3_ && this))
               {
                  §§push(true);
                  if(!(_loc3_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr50:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr50);
      }
      
      override public function saveTutorialSeen(param1:String) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:String = null;
         var _loc4_:URLRequest = null;
         var _loc5_:§!e§ = null;
         var _loc2_:Array = param1.split(",");
         for each(_loc3_ in _loc2_)
         {
            if(!_loc8_)
            {
               this.§6W§.push(_loc3_);
            }
         }
         §§push(§ v§);
         §§push(§3l§ + "/tutorialshown/");
         if(!_loc8_)
         {
            §§push(§§pop() + param1);
         }
         (_loc4_ = §§pop().§<N§(§§pop())).method = URLRequestMethod.POST;
         if(!(_loc8_ && this))
         {
            _loc4_.contentType = this.§+v§();
         }
         (_loc5_ = new §!e§(null,2)).addEventListener(Event.COMPLETE,this.§4T§);
         if(_loc9_)
         {
            _loc5_.addEventListener(IOErrorEvent.IO_ERROR,this.§`!+§);
            while(true)
            {
               _loc5_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§`!+§);
               loop2:
               while(_loc9_ || _loc2_)
               {
                  _loc5_.dataFormat = URLLoaderDataFormat.TEXT;
                  while(true)
                  {
                     _loc5_.load(_loc4_);
                     if(!_loc8_)
                     {
                        if(!(_loc8_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr137);
      }
      
      private function §4T§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§!e§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(param1.currentTarget is §!e§)
            {
               _loc2_ = param1.currentTarget as §!e§;
               addr31:
               if(_loc3_)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§4T§);
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
                  if(!(_loc4_ && _loc2_))
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
         §§goto(addr31);
      }
      
      private function §`!+§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§!e§ = null;
         if(_loc4_ || this)
         {
            if(param1.currentTarget is §!e§)
            {
               _loc2_ = param1.currentTarget as §!e§;
               addr32:
               if(_loc4_ || _loc3_)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§4T§);
                  while(true)
                  {
                     loop1:
                     while(true)
                     {
                        _loc2_.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        do
                        {
                           _loc2_.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                        }
                        while(!_loc4_);
                        
                        if(!(_loc3_ && this))
                        {
                           while(false)
                           {
                              continue loop1;
                           }
                           addr99:
                           return;
                           addr82:
                        }
                        break;
                     }
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr99);
         }
         §§goto(addr32);
      }
      
      override public function saveLevelProgress(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || param3)
         {
            if(this.§'!n§)
            {
               if(!_loc9_)
               {
                  throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + param1 + ", ME: " + param2.toString());
               }
            }
         }
         §§push(§ v§);
         §§push(§3l§ + this.§1D§() + "/");
         if(!(_loc9_ && this))
         {
            §§push(§§pop() + param3.toString());
         }
         var _loc4_:URLRequest;
         (_loc4_ = §§pop().§<N§(§§pop())).method = URLRequestMethod.POST;
         if(!_loc9_)
         {
            _loc4_.contentType = this.§+v§();
         }
         var _loc5_:§4n§ = LevelManager.§2!9§(param1);
         §§push(§ _§.§?!]§.getScore());
         if(_loc10_)
         {
            §§push(int(§§pop()));
         }
         var _loc6_:* = §§pop();
         var _loc7_:int = getStarsForLevel(param1,§ _§.§?!]§.getScore());
         var _loc8_:Object;
         (_loc8_ = {})[this.§%!o§(this.§<!b§)] = !!_loc5_ ? _loc5_.name : this.§>&§();
         if(_loc10_ || param2)
         {
            _loc8_[this.§%!o§(this.§`P§)] = param1;
            while(true)
            {
               _loc8_[this.§%!o§(this.§@t§)] = _loc6_;
               loop1:
               while(_loc10_ || param3)
               {
                  _loc8_[this.§%!o§(this.§]!D§)] = _loc7_;
                  loop2:
                  while(true)
                  {
                     _loc8_[this.§%!o§(this.§!A§)] = § _§.§?!]§.getEagleScore();
                     while(true)
                     {
                        _loc8_[this.§%!o§(this.§&o§)] = this.§;!e§(param1);
                        loop4:
                        for(; !(_loc9_ && param3); while(true)
                        {
                           if(_loc9_ && param1)
                           {
                              continue loop4;
                           }
                           §§goto(addr206);
                           §§push(this.§0Y§);
                        })
                        {
                           if(_loc9_)
                           {
                              continue loop1;
                           }
                           _loc8_[this.§%!o§(this.§=!3§)] = §;v§.§-1§();
                           loop5:
                           while(true)
                           {
                              _loc8_[this.§%!o§(this.§0<§)] = §-!,§.§[l§;
                              addr267:
                              loop6:
                              while(true)
                              {
                                 _loc8_[this.§%!o§(this.§8!$§)] = (§ _§.§!6§ as §2w§).§''§();
                                 while(true)
                                 {
                                    _loc4_.data = Base64.encode(§4!d§.encode(_loc8_));
                                    loop8:
                                    while(!_loc9_)
                                    {
                                       continue loop2;
                                       addr195:
                                       if(!(_loc10_ || this))
                                       {
                                          continue;
                                       }
                                       §§push(this.§0Y§);
                                       while(true)
                                       {
                                          §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                          loop15:
                                          while(!_loc9_)
                                          {
                                             if(!_loc10_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(this.§0Y§);
                                             loop16:
                                             while(true)
                                             {
                                                §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                                addr152:
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop16;
                                                   }
                                                   continue loop15;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          loop13:
                                          while(true)
                                          {
                                             if(!(_loc10_ || param3))
                                             {
                                                while(_loc10_)
                                                {
                                                   §§push(this.§0Y§);
                                                   while(true)
                                                   {
                                                      §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                      continue loop13;
                                                   }
                                                }
                                                continue loop6;
                                                addr211:
                                             }
                                             §§goto(addr195);
                                          }
                                          continue loop8;
                                          if(_loc9_ && param3)
                                          {
                                             continue;
                                          }
                                          if(_loc10_)
                                          {
                                             addr134:
                                             if(_loc10_ || param2)
                                             {
                                                §§pop().load(_loc4_);
                                                if(_loc9_)
                                                {
                                                   §§goto(addr152);
                                                }
                                                return;
                                             }
                                             while(true)
                                             {
                                                §§pop().addEventListener(Event.COMPLETE,this.§4N§);
                                                §§goto(addr211);
                                                §§goto(addr134);
                                             }
                                             addr206:
                                          }
                                          §§goto(addr183);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr267);
      }
      
      private function §4N§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§0Y§ = null;
         }
         var _loc2_:UserProgressEvent = new UserProgressEvent(UserProgressEvent.§3P§);
         if(_loc3_)
         {
            _loc2_.data = param1.currentTarget.data;
         }
         do
         {
            dispatchEvent(_loc2_);
         }
         while(_loc4_);
         
      }
      
      private function onError(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(param1.type == §3!^§.§2_§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr81:
                  §@M§.§!!g§(§2v§.§'1§);
               }
               while(true)
               {
                  §§goto(addr39);
               }
               addr85:
            }
            else
            {
               §@M§.§!!g§();
            }
            while(true)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr68);
               }
               else
               {
                  §§goto(addr85);
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      public function isEggUnlocked(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§^!H§);
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop() != null)
               {
                  if(_loc3_)
                  {
                     addr59:
                     if(this.§^!H§.indexOf(param1) != -1)
                     {
                        if(!(_loc2_ && param1))
                        {
                           addr70:
                           §§push(true);
                           if(!_loc2_)
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
         §§goto(addr70);
      }
      
      public function setEggUnlocked(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.isEggUnlocked(param1))
            {
               if(!_loc4_)
               {
                  return;
               }
               while(true)
               {
               }
               addr42:
            }
            loop0:
            while(true)
            {
               §@M§.§@!7§(param1);
               while(_loc3_)
               {
                  this.§^!H§.push(param1);
                  if(!_loc4_)
                  {
                     if(true)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
            §§push(§ v§);
            §§push(§3l§ + "/eggfound/");
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + param1);
            }
            var _loc2_:URLRequest = §§pop().§<N§(§§pop());
            if(!_loc4_)
            {
               _loc2_.method = URLRequestMethod.POST;
               while(true)
               {
                  _loc2_.contentType = this.§+v§();
                  loop3:
                  while(!_loc4_)
                  {
                     this.§&w§ = new §!e§(null,2);
                     loop4:
                     while(true)
                     {
                        §§push(this.§&w§);
                        loop5:
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§^r§);
                           loop6:
                           while(true)
                           {
                              §§push(this.§&w§);
                              while(!_loc4_)
                              {
                                 §§pop().addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                 continue loop4;
                                 loop11:
                                 while(_loc3_ || _loc2_)
                                 {
                                    §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                    while(!_loc4_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§&w§);
                                          if(!(_loc3_ || _loc3_))
                                          {
                                             continue loop11;
                                          }
                                          addr76:
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§pop().load(_loc2_);
                                             if(_loc3_)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr117);
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                §§goto(addr76);
                                             }
                                             addr123:
                                          }
                                          while(true)
                                          {
                                             continue loop11;
                                          }
                                       }
                                       return;
                                       continue loop11;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr119);
         }
         §§goto(addr42);
      }
      
      private function §^r§(param1:Event) : void
      {
      }
      
      public function get §'!n§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§0Y§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function get userName() : String
      {
         return this.§&i§;
      }
      
      public function get avatarString() : String
      {
         return this.§-!Z§;
      }
      
      public function set avatarString(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§-!Z§ = param1;
         }
      }
      
      public function get §0u§() : String
      {
         return this.§,!3§;
      }
   }
}
