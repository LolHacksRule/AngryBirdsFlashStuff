package §?j§
{
   import § 2§.SHA1;
   import § D§.§]!B§;
   import §![§.FacebookLeveLMain;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §%!4§.ErrorPopup;
   import §%!4§.§]!e§;
   import §2!H§.ScoreCollector;
   import §6!a§.§"!F§;
   import §6!a§.§>!K§;
   import §6!a§.RetryingURLLoaderErrorEvent;
   import §6b§.Base64;
   import §7p§.Integer;
   import §?!G§.§8!-§;
   import §?!O§.UserProgress;
   import §?!O§.UserProgressEvent;
   import §@z§.StateFacebookPlay;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.utils.Dictionary;
   
   public class FacebookUserProgress extends UserProgress
   {
      
      public static const TOURNAMENT_TUTORIAL:String = "tt";
      
      {
         var TOURNAMENT_TUTORIAL:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            do
            {
               TOURNAMENT_TUTORIAL = "tt";
            }
            while(!(TOURNAMENT_TUTORIAL || TOURNAMENT_TUTORIAL));
            
         }
      }
      
      protected var §@! §:Dictionary;
      
      private var §`0§:Dictionary;
      
      private var §<B§:Dictionary;
      
      protected var §2'§:String;
      
      protected var §[5§:String;
      
      protected var §;4§:String;
      
      private var § do§:Array;
      
      private var §%_§:Array;
      
      private var §%!K§:Array;
      
      private var §!'§:Array;
      
      private var §7F§:Array;
      
      private var §"!S§:Array;
      
      private var §91§:Array;
      
      private var §`!i§:Array;
      
      private var mName:Array;
      
      private var §2!Y§:Array;
      
      private var §-0§:Array;
      
      private var §9U§:Array;
      
      private var §9!?§:Array;
      
      private var §[X§:§>!K§;
      
      private var §?§:Array;
      
      private var §9!F§:§>!K§;
      
      private var §[!"§:Array;
      
      public function FacebookUserProgress(serverRoot:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               while(true)
               {
                  this.§ do§ = [47,115,117,98,109,105,116,115,99,111,114,101];
                  while(true)
                  {
                     while(true)
                     {
                        this.§%_§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              this.§%!K§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
                              addr509:
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc2_ && _loc3_)
               {
                  continue;
               }
               super(serverRoot);
               §§goto(addr166);
            }
         }
         §§goto(addr466);
      }
      
      override public function getTotalStars() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var chapter:ChapterModel = null;
         var chapterStars:* = 0;
         if(!(_loc6_ && this))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(!_loc5_)
                  {
                  }
                  if(_loc5_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     §§push(0);
                     if(_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     var total:* = §§pop();
                     if(!_loc5_)
                     {
                     }
                     §§push(0);
                     if(_loc5_)
                     {
                        §§push(int(§§pop()));
                     }
                     var i:* = §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(i);
                        if(!(_loc6_ && i))
                        {
                           if(§§pop() >= LevelManager.§??§())
                           {
                              if(_loc6_)
                              {
                              }
                           }
                           else if(_loc5_)
                           {
                              if(!(_loc6_ && total))
                              {
                                 chapter = LevelManager.§;![§(i);
                                 if(_loc5_ || total)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       if(chapter.name != "2000")
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             addr213:
                                             loop19:
                                             while(true)
                                             {
                                                addr187:
                                                while(!(_loc5_ || this))
                                                {
                                                   continue loop19;
                                                }
                                                if(!_loc6_)
                                                {
                                                   trace("chapter!",chapter.name);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(int(§,l§(chapter)));
                                                            addr170:
                                                            while(true)
                                                            {
                                                               chapterStars = §§pop();
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  addr160:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  addr144:
                                                                  §§push(total);
                                                                  while(true)
                                                                  {
                                                                     §§push(int(§§pop() + chapterStars));
                                                                     addr147:
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        total = §§pop();
                                                                        addr148:
                                                                        addr157:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && i))
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop12;
                                                                           }
                                                                           §§goto(addr160);
                                                                           continue loop18;
                                                                        }
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           addr137:
                                                                           addr141:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              §§goto(addr148);
                                                                              continue loop8;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr184:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr187);
                                                      }
                                                   }
                                                   addr206:
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(i);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() + 1);
                                             if(!(_loc6_ && i))
                                             {
                                                addr98:
                                                §§push(int(§§pop()));
                                             }
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && total))
                                                {
                                                   if(_loc5_ || total)
                                                   {
                                                      i = §§pop();
                                                      if(_loc5_ || chapter)
                                                      {
                                                         if(true)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                      §§goto(addr137);
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr144);
                                             }
                                             §§goto(addr147);
                                          }
                                          §§goto(addr98);
                                          §§goto(addr141);
                                       }
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr213);
                              }
                           }
                           §§push(total);
                           break;
                        }
                        break;
                     }
                     return §§pop();
                     addr39:
                  }
                  break;
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §'j§(levelId:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         var scoreInteger:Integer = null;
         if(_loc4_)
         {
            while(true)
            {
               loop1:
               while(_loc4_)
               {
                  loop2:
                  while(this.§<B§[levelId])
                  {
                     if(_loc3_)
                     {
                        while(true)
                        {
                           if(_loc4_ || scoreInteger)
                           {
                              if(true)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        scoreInteger = this.§<B§[levelId];
                     }
                     continue loop1;
                     if(_loc4_ || _loc3_)
                     {
                        return scoreInteger.getValue();
                     }
                     continue loop1;
                  }
                  return 0;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §6!"§(levelId:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(_loc3_)
         {
         }
         while(true)
         {
            while(!_loc3_)
            {
               if(!this.§`0§[levelId])
               {
                  return 0;
               }
               if(_loc2_ || levelId)
               {
                  return this.§`0§[levelId];
               }
            }
         }
      }
      
      public function §?!c§(levelId:String, rank:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && this)
         {
         }
         if(_loc4_)
         {
         }
         loop0:
         while(true)
         {
            do
            {
               continue loop0;
            }
            while(!_loc3_);
            
            return;
         }
      }
      
      public function §?=§(levelId:String, score:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc4_)
         {
         }
         if(!_loc5_)
         {
            while(true)
            {
               loop1:
               while(!(_loc5_ && score))
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc4_)
                        {
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     addr27:
                     while(false)
                     {
                        continue loop2;
                     }
                     var scoreInteger:Integer = new Integer(score);
                     if(_loc5_ && levelId)
                     {
                     }
                     while(true)
                     {
                        this.§<B§[levelId] = scoreInteger;
                        while(!_loc5_)
                        {
                           if(!(_loc5_ && score))
                           {
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr27);
      }
      
      public function §`q§(levelId:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            do
            {
               if(this.§@! §[levelId])
               {
                  if(_loc2_ && this)
                  {
                     break;
                  }
                  continue;
               }
            }
            while(_loc2_ && _loc3_);
            
            return this.§@! §[levelId];
         }
         return 0;
      }
      
      public function §5Q§(levelId:String, rank:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               while(_loc4_ || _loc3_)
               {
                  while(_loc4_ || levelId)
                  {
                     this.§@! §[levelId] = rank;
                     loop3:
                     while(_loc4_ || levelId)
                     {
                        while(_loc3_ && levelId)
                        {
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function §9A§(tournamentScores:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         var levelScore:Object = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     this.§`0§ = new Dictionary();
                     addr68:
                     while(!(_loc5_ && tournamentScores))
                     {
                        continue loop0;
                     }
                  }
                  addr55:
                  loop4:
                  for(; _loc6_ || _loc3_; while(true)
                  {
                     this.§<B§ = new Dictionary();
                     while(_loc5_ && tournamentScores)
                     {
                     }
                     if(_loc5_)
                     {
                        break;
                     }
                     if(!_loc5_)
                     {
                        if(true)
                        {
                           var _loc3_:int = 0;
                           loop8:
                           for each(levelScore in tournamentScores)
                           {
                              if(!_loc5_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(Boolean(levelScore.p));
                                    loop10:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       loop11:
                                       while(true)
                                       {
                                          loop12:
                                          while(true)
                                          {
                                             this.§?=§(levelScore.l,levelScore.p);
                                             while(true)
                                             {
                                                addr182:
                                                while(!(_loc5_ && levelScore))
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      continue loop10;
                                                   }
                                                   continue loop11;
                                                }
                                                addr169:
                                                continue loop12;
                                                if(!(_loc6_ || this))
                                                {
                                                   continue;
                                                }
                                                loop16:
                                                for(; _loc6_; while(_loc6_ || levelScore)
                                                {
                                                   continue loop9;
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      this.§?!c§(levelScore.l,levelScore.r);
                                                      continue loop16;
                                                   }
                                                }
                                                §§goto(addr182);
                                             }
                                          }
                                       }
                                    }
                                    if(_loc5_ && this)
                                    {
                                       continue;
                                    }
                                    while(true)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          if(true)
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr127);
                                       }
                                       §§goto(addr135);
                                    }
                                    addr149:
                                 }
                              }
                              §§goto(addr149);
                           }
                           if(_loc6_ || levelScore)
                           {
                           }
                        }
                        continue;
                        return;
                     }
                     §§goto(addr68);
                  })
                  {
                     while(true)
                     {
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §=d§(dataObject:Array, userName:String, avatar:String, userId:String, unlockedEggs:Array, tutorials:Array) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         if(_loc11_ && userName)
         {
         }
         var levelProgress:Object = null;
         if(!_loc11_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        addr192:
                        while(true)
                        {
                        }
                        loop10:
                        while(_loc10_ || this)
                        {
                           while(true)
                           {
                              this.§;4§ = userId;
                              loop12:
                              while(true)
                              {
                                 if(_loc10_ || avatar)
                                 {
                                    if(!_loc10_)
                                    {
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       this.§[!"§ = tutorials;
                                       loop14:
                                       while(true)
                                       {
                                          if(_loc10_ || this)
                                          {
                                             while(true)
                                             {
                                                if(_loc11_)
                                                {
                                                   continue loop10;
                                                }
                                                addr102:
                                                if(!(_loc11_ && dataObject))
                                                {
                                                   if(unlockedEggs == null)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc10_ || avatar)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            addr78:
                                                            if(!(_loc10_ || avatar))
                                                            {
                                                               break loop14;
                                                            }
                                                            if(_loc11_)
                                                            {
                                                               break loop12;
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop14;
                                                }
                                                addr161:
                                                while(true)
                                                {
                                                   §§goto(addr102);
                                                }
                                             }
                                             §§goto(addr204);
                                          }
                                          while(true)
                                          {
                                             this.§[5§ = avatar;
                                             continue loop10;
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                 }
                                 while(!_loc11_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr192);
                           }
                        }
                     }
                  }
               }
            }
         }
         addr189:
         while(true)
         {
            §§goto(addr78);
         }
         if(_loc10_ || dataObject)
         {
            if(false)
            {
               §§goto(addr51);
            }
            addr204:
            var _loc8_:int = 0;
            var _loc9_:* = dataObject;
            addr352:
         }
         continue loop13;
         for each(levelProgress in _loc9_)
         {
            if(_loc10_ || dataObject)
            {
               addr340:
               if(levelProgress.p)
               {
                  if(_loc10_ || this)
                  {
                  }
                  §@!f§(levelProgress.l,levelProgress.p);
                  addr316:
                  addr349:
                  addr335:
               }
               addr300:
               addr351:
               §§push(Boolean(levelProgress.me));
               if(_loc10_ || userName)
               {
                  if(§§pop())
                  {
                     if(!_loc11_)
                     {
                        addr310:
                     }
                     addr311:
                     if(_loc10_)
                     {
                        §&t§(levelProgress.l,levelProgress.me);
                        addr293:
                        if(!_loc11_)
                        {
                           addr284:
                           §§push(Boolean(levelProgress.r));
                           if(!(_loc11_ && dataObject))
                           {
                              if(§§pop())
                              {
                                 if(_loc11_ && avatar)
                                 {
                                 }
                                 addr270:
                                 if(_loc10_)
                                 {
                                    if(_loc10_)
                                    {
                                       if(!(_loc11_ && userName))
                                       {
                                          addr239:
                                          this.§5Q§(levelProgress.l,levelProgress.r);
                                          if(_loc10_)
                                          {
                                             if(!_loc11_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   if(_loc10_ || userName)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr239);
                                                      }
                                                      §§goto(addr352);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr293);
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr270);
                                       }
                                       §§goto(addr349);
                                    }
                                    §§goto(addr335);
                                 }
                                 §§goto(addr284);
                              }
                              §§goto(addr352);
                           }
                           §§goto(addr300);
                        }
                        §§goto(addr311);
                     }
                     §§goto(addr351);
                  }
                  §§goto(addr284);
               }
               §§goto(addr340);
            }
            §§goto(addr310);
         }
         if(!_loc10_)
         {
         }
      }
      
      override public function isLevelOpen(levelId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               §§push(levelId);
               loop1:
               while(true)
               {
                  §§push("10-1");
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(!§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 addr171:
                                 while(true)
                                 {
                                    §§push(levelId);
                                    addr125:
                                    while(true)
                                    {
                                       §§push("11-1");
                                       addr126:
                                       while(_loc3_ || this)
                                       {
                                          §§push(§§pop() == §§pop());
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr145:
                                             while(!_loc3_)
                                             {
                                                continue loop5;
                                             }
                                             if(!_loc3_)
                                             {
                                                continue loop3;
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
                              if(§§pop())
                              {
                                 continue loop0;
                              }
                              §§push(levelId);
                              if(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 §§push("-");
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(§§pop().split(§§pop())[0] == "1000")
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          §§push(this.isEggUnlocked(levelId));
                                       }
                                       §§goto(addr171);
                                    }
                                    else
                                    {
                                       §§push(super.isLevelOpen(levelId));
                                       if(_loc3_ || _loc3_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    if(!(_loc2_ && levelId))
                                    {
                                       if(!_loc2_)
                                       {
                                          return §§pop();
                                       }
                                       continue loop4;
                                    }
                                    addr112:
                                    if(_loc3_ || _loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr145);
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr125);
                           }
                           return §§pop();
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      private function §'e§(levelId:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && episode)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  continue loop0;
               }
            }
            addr46:
         }
         while(true)
         {
            if(_loc3_ && this)
            {
               continue;
            }
            if(_loc4_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr46);
            }
            §§goto(addr42);
         }
         var episode:ChapterModel = LevelManager.§;<§(levelId);
         if(_loc3_ && this)
         {
         }
         §§push(SHA1);
         if(!_loc3_)
         {
            if(_loc4_ || episode)
            {
               if(episode)
               {
                  §§goto(addr86);
               }
               else
               {
                  §§push(this.§"B§());
               }
               §§goto(addr94);
            }
         }
         addr86:
         §§push(episode.name);
         §§push([!_loc3_ ? §§pop() : §§pop(),levelId,§]!B§.controller.getScore(),getStarsForLevel(levelId,§]!B§.controller.getScore()),§]!B§.controller.getEagleScore(),this.§ !;§()]);
         §§push("|");
         if(_loc4_ || levelId)
         {
         }
         return §§pop().§>y§(§§pop().join(§§pop()));
      }
      
      private function §8"§(data:Array) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_ && i)
         {
         }
         var i:int = 0;
         if(_loc7_)
         {
         }
         while(true)
         {
            while(true)
            {
               while(_loc7_)
               {
               }
               if(_loc6_ || name)
               {
                  if(true)
                  {
                     §§push("");
                     if(_loc7_)
                     {
                     }
                     var name:* = §§pop();
                     if(!_loc6_)
                     {
                     }
                  }
                  continue;
                  loop3:
                  for each(i in data)
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              §§push(name);
                              if(_loc6_ || data)
                              {
                                 §§push(§§pop() + String.fromCharCode(i));
                              }
                              name = §§pop();
                              while(!_loc7_)
                              {
                                 continue loop4;
                                 if(_loc6_)
                                 {
                                    if(true)
                                    {
                                       break loop6;
                                    }
                                    continue loop6;
                                 }
                              }
                              continue loop5;
                           }
                           continue loop3;
                        }
                     }
                  }
                  if(!_loc6_)
                  {
                  }
                  return name;
               }
               break;
            }
         }
      }
      
      private function § !;§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§8"§(this.mName);
      }
      
      private function §]T§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§8"§(this.§ do§);
      }
      
      private function §"B§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc2_)
         {
         }
         return this.§8"§(this.§%_§);
      }
      
      private function §>§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc1_ || _loc1_)
         {
         }
         return this.§8"§(this.§%!K§);
      }
      
      override public function hasTutorialBeenSeen(tutorialId:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_ || this)
         {
            while(true)
            {
            }
            addr97:
         }
         while(true)
         {
            if(this.§[!"§.indexOf(tutorialId) == -1)
            {
               §§push(false);
               if(_loc3_ || _loc3_)
               {
                  return §§pop();
               }
               break;
            }
            if(!_loc3_)
            {
               continue;
            }
            if(_loc3_)
            {
               §§push(true);
               break;
            }
            §§goto(addr97);
         }
         return §§pop();
      }
      
      override public function saveTutorialSeen(tutorialIds:String) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc8_)
         {
         }
         var tutorialString:String = null;
         var urlRequest:URLRequest = null;
         var tutorialSavingUrlLoader:§>!K§ = null;
         if(!_loc8_)
         {
            while(true)
            {
               addr53:
               if(_loc8_ && tutorialString)
               {
                  continue;
               }
               if(false)
               {
                  loop4:
                  while(true)
                  {
                     while(_loc8_)
                     {
                     }
                     if(!_loc8_)
                     {
                        addr39:
                        if(!(_loc8_ && tutorialsInside))
                        {
                           addr46:
                           if(_loc8_ && tutorialsInside)
                           {
                              break;
                           }
                           §§goto(addr53);
                        }
                        while(true)
                        {
                           §§goto(addr39);
                        }
                        addr70:
                     }
                     while(true)
                     {
                        continue loop4;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr70);
                     §§goto(addr46);
                  }
                  addr73:
               }
               var tutorialsInside:Array = tutorialIds.split(",");
               if(_loc9_ || tutorialString)
               {
               }
               var _loc6_:int = 0;
               var _loc7_:* = tutorialsInside;
               addr133:
               for each(tutorialString in _loc7_)
               {
                  addr122:
                  if(_loc9_)
                  {
                     addr113:
                     this.§[!"§.push(tutorialString);
                     if(_loc9_ || tutorialIds)
                     {
                        if(!(_loc8_ && tutorialsInside))
                        {
                           if(false)
                           {
                              §§goto(addr113);
                           }
                           §§goto(addr133);
                        }
                        §§goto(addr122);
                     }
                     addr119:
                     §§goto(addr119);
                  }
                  addr132:
                  §§goto(addr132);
               }
               if(_loc8_ && tutorialIds)
               {
               }
               §§push(§"!F§);
               §§push(§9<§ + "/tutorialshown/");
               if(!_loc8_)
               {
                  §§push(§§pop() + tutorialIds);
               }
               urlRequest = §§pop().§=i§(§§pop());
               if(!_loc9_)
               {
               }
               urlRequest.method = URLRequestMethod.POST;
               addr208:
               if(_loc9_ || tutorialString)
               {
                  addr186:
                  urlRequest.contentType = this.§>§();
                  if(!_loc8_)
                  {
                     if(_loc9_)
                     {
                        if(_loc9_ || tutorialIds)
                        {
                           if(false)
                           {
                              §§goto(addr186);
                           }
                           tutorialSavingUrlLoader = new §>!K§(null,2);
                           if(_loc8_ && tutorialString)
                           {
                           }
                           tutorialSavingUrlLoader.addEventListener(Event.COMPLETE,this.§"k§);
                           tutorialSavingUrlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.§-#§);
                           addr336:
                           addr348:
                           addr346:
                           if(!(_loc8_ && tutorialIds))
                           {
                              tutorialSavingUrlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§-#§);
                              addr301:
                              if(_loc9_)
                              {
                                 addr289:
                                 if(_loc9_)
                                 {
                                    tutorialSavingUrlLoader.dataFormat = URLLoaderDataFormat.TEXT;
                                    addr286:
                                    if(_loc9_ || tutorialsInside)
                                    {
                                       if(!(_loc8_ && tutorialIds))
                                       {
                                          tutorialSavingUrlLoader.load(urlRequest);
                                          addr255:
                                          if(!(_loc8_ && tutorialString))
                                          {
                                             if(_loc9_ || tutorialsInside)
                                             {
                                                if(_loc9_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      if(_loc8_ && this)
                                                      {
                                                         §§goto(addr336);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr286);
                                             }
                                             §§goto(addr255);
                                          }
                                          §§goto(addr286);
                                       }
                                       §§goto(addr348);
                                    }
                                    §§goto(addr346);
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr336);
                           }
                           addr333:
                           §§goto(addr333);
                        }
                     }
                     §§goto(addr208);
                  }
                  addr191:
                  §§goto(addr191);
               }
               addr210:
               §§goto(addr210);
            }
         }
         §§goto(addr73);
      }
      
      private function §"k§(e:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         var tutorialSavingUrlLoader:§>!K§ = null;
         if(_loc4_)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  while(e.currentTarget is §>!K§)
                  {
                     if(!(_loc4_ && this))
                     {
                        continue loop1;
                     }
                     addr55:
                     if(!(_loc3_ || tutorialSavingUrlLoader))
                     {
                        continue;
                     }
                     if(false)
                     {
                        continue loop2;
                     }
                     tutorialSavingUrlLoader = e.currentTarget as §>!K§;
                     if(_loc3_)
                     {
                        tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.§"k§);
                        tutorialSavingUrlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onError);
                        addr163:
                        addr165:
                        addr153:
                        if(_loc3_)
                        {
                           if(!(_loc4_ && this))
                           {
                              if(_loc3_)
                              {
                                 addr103:
                                 tutorialSavingUrlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr101:
                                          if(false)
                                          {
                                             §§goto(addr103);
                                          }
                                          break;
                                       }
                                       §§goto(addr103);
                                    }
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr153);
                        }
                        addr150:
                        §§goto(addr150);
                     }
                     §§goto(addr101);
                  }
                  return;
               }
            }
            if(_loc4_ && tutorialSavingUrlLoader)
            {
               continue;
            }
            §§goto(addr55);
         }
      }
      
      private function §-#§(e:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         var tutorialSavingUrlLoader:§>!K§ = null;
         if(_loc4_ || _loc3_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               addr51:
               while(true)
               {
                  addr53:
                  addr167:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  addr167:
                  return;
               }
            }
         }
      }
      
      override public function saveLevelProgress(levelId:String, meInUse:Boolean = false, tournamentScore:Boolean = false) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || tournamentScore)
         {
         }
         if(_loc9_ || levelId)
         {
            while(true)
            {
               addr138:
               while(true)
               {
               }
            }
            addr140:
         }
         loop2:
         while(true)
         {
            while(true)
            {
               continue loop2;
               addr112:
               loop5:
               for(; !(_loc10_ && levelId); if(!(_loc9_ || levelId))
               {
                  continue;
               },if(this.§`! §)
               {
                  §§goto(addr65);
               },§§push(§"!F§),§§push(§9<§ + this.§]T§() + "/"),if(!(_loc10_ && tournamentScore))
               {
                  §§push(§§pop() + tournamentScore.toString());
               },var urlRequest:URLRequest = §§pop().§=i§(§§pop()),if(_loc10_)
               {
               },urlRequest.method = URLRequestMethod.POST,addr187:,urlRequest.contentType = this.§>§(),addr206:,addr197:,if(!_loc10_)
               {
                  if(!(_loc10_ && this))
                  {
                     if(_loc9_)
                     {
                        if(_loc9_ || tournamentScore)
                        {
                           if(false)
                           {
                              §§goto(addr187);
                           }
                           var episode:ChapterModel = LevelManager.§;<§(levelId);
                           if(!_loc9_)
                           {
                           }
                           §§push(§]!B§.controller.getScore());
                           if(!(_loc10_ && this))
                           {
                              §§push(int(§§pop()));
                           }
                           var newPoints:* = §§pop();
                           if(_loc10_ && meInUse)
                           {
                           }
                           var newStars:int = getStarsForLevel(levelId,§]!B§.controller.getScore());
                           if(_loc10_)
                           {
                           }
                           var object:Object = {};
                           if(!_loc10_)
                           {
                              addr680:
                              §§push(object);
                              §§push(this.§8"§(this.§!'§));
                              if(episode)
                              {
                                 addr677:
                                 §§pop()[§§pop()] = episode.name;
                                 object[this.§8"§(this.§7F§)] = levelId;
                                 object[this.§8"§(this.§"!S§)] = newPoints;
                                 addr660:
                                 addr678:
                                 addr657:
                                 addr635:
                                 if(!_loc10_)
                                 {
                                    object[this.§8"§(this.§91§)] = newStars;
                                    addr614:
                                    if(!(_loc10_ && this))
                                    {
                                       object[this.§8"§(this.§`!i§)] = §]!B§.controller.getEagleScore();
                                       addr583:
                                       addr605:
                                       addr602:
                                       if(!(_loc10_ && tournamentScore))
                                       {
                                          object[this.§8"§(this.§2!Y§)] = this.§'e§(levelId);
                                          addr578:
                                          if(!_loc10_)
                                          {
                                             object[this.§8"§(this.§-0§)] = ScoreCollector.§@!^§();
                                             object[this.§8"§(this.§9U§)] = StateFacebookPlay.sPlaySessionToken;
                                             addr548:
                                             addr567:
                                             addr564:
                                             addr553:
                                             if(!_loc10_)
                                             {
                                                object[this.§8"§(this.§9!?§)] = (§]!B§.§>F§ as FacebookLeveLMain).§6!8§();
                                                urlRequest.data = Base64.encode(§8!-§.encode(object));
                                                addr509:
                                                addr537:
                                                addr519:
                                                addr534:
                                                if(!(_loc10_ && meInUse))
                                                {
                                                   addr494:
                                                   if(_loc9_)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         this.§[X§ = new §>!K§();
                                                         addr477:
                                                         if(_loc9_ || levelId)
                                                         {
                                                            if(_loc9_ || meInUse)
                                                            {
                                                               addr464:
                                                               if(_loc9_ || meInUse)
                                                               {
                                                                  addr454:
                                                                  this.§[X§.addEventListener(Event.COMPLETE,this.§0_§);
                                                                  addr448:
                                                                  addr461:
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr401:
                                                                     this.§[X§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                                                                     if(!(_loc10_ && meInUse))
                                                                     {
                                                                        if(!(_loc10_ && levelId))
                                                                        {
                                                                           if(!(_loc10_ && meInUse))
                                                                           {
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 if(_loc9_ || levelId)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr364:
                                                                                       this.§[X§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                                                                       if(!(_loc10_ && levelId))
                                                                                       {
                                                                                          if(!(_loc10_ && meInUse))
                                                                                          {
                                                                                             if(!(_loc10_ && levelId))
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   addr358:
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      addr311:
                                                                                                      §§push(this.§[X§);
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         if(!(_loc10_ && meInUse))
                                                                                                         {
                                                                                                            §§pop().dataFormat = URLLoaderDataFormat.TEXT;
                                                                                                            addr339:
                                                                                                            if(_loc9_ || meInUse)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     addr298:
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        if(_loc9_ || meInUse)
                                                                                                                        {
                                                                                                                           §§push(this.§[X§);
                                                                                                                           if(!(_loc10_ && tournamentScore))
                                                                                                                           {
                                                                                                                              if(!_loc10_)
                                                                                                                              {
                                                                                                                                 §§pop().load(urlRequest);
                                                                                                                                 addr279:
                                                                                                                                 if(_loc9_ || levelId)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc10_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr279);
                                                                                                                                          }
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       §§goto(addr660);
                                                                                                                                    }
                                                                                                                                    §§goto(addr339);
                                                                                                                                 }
                                                                                                                                 §§goto(addr298);
                                                                                                                              }
                                                                                                                              §§goto(addr364);
                                                                                                                           }
                                                                                                                           §§goto(addr311);
                                                                                                                        }
                                                                                                                        §§goto(addr578);
                                                                                                                     }
                                                                                                                     §§goto(addr448);
                                                                                                                  }
                                                                                                                  §§goto(addr509);
                                                                                                               }
                                                                                                               §§goto(addr461);
                                                                                                            }
                                                                                                            §§goto(addr358);
                                                                                                         }
                                                                                                         §§goto(addr454);
                                                                                                      }
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                   §§goto(addr364);
                                                                                                }
                                                                                                §§goto(addr548);
                                                                                             }
                                                                                             §§goto(addr464);
                                                                                          }
                                                                                          §§goto(addr401);
                                                                                       }
                                                                                       addr397:
                                                                                       §§goto(addr397);
                                                                                    }
                                                                                    §§goto(addr680);
                                                                                 }
                                                                                 §§goto(addr678);
                                                                              }
                                                                              §§goto(addr567);
                                                                           }
                                                                           §§goto(addr564);
                                                                        }
                                                                        §§goto(addr553);
                                                                     }
                                                                     §§goto(addr477);
                                                                  }
                                                                  §§goto(addr494);
                                                               }
                                                               §§goto(addr657);
                                                            }
                                                            §§goto(addr537);
                                                         }
                                                         §§goto(addr519);
                                                      }
                                                      §§goto(addr583);
                                                   }
                                                   §§goto(addr534);
                                                }
                                                §§goto(addr660);
                                             }
                                             §§goto(addr605);
                                          }
                                          §§goto(addr602);
                                       }
                                       §§goto(addr614);
                                    }
                                    §§goto(addr635);
                                 }
                                 addr638:
                                 §§goto(addr638);
                              }
                              §§goto(addr677);
                              §§push(this.§"B§());
                           }
                           §§goto(addr583);
                        }
                        §§goto(addr206);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr187);
               },addr204:,§§goto(addr204))
               {
                  loop6:
                  while(true)
                  {
                     while(true)
                     {
                        if(!(_loc9_ || levelId))
                        {
                           continue loop6;
                           if(_loc9_ || tournamentScore)
                           {
                              if(!_loc10_)
                              {
                                 addr74:
                                 if(!(_loc10_ && this))
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue;
                           }
                        }
                        continue loop5;
                        addr65:
                     }
                     if(_loc9_)
                     {
                        if(!_loc10_)
                        {
                           throw new Error("Error, trying to save user progress while a save operation is still in progress. Level " + levelId + ", ME: " + meInUse.toString());
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr138);
                  }
               }
            }
         }
      }
      
      private function §0_§(e:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(_loc3_ && userProgressEvent)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               addr49:
               while(_loc4_)
               {
                  continue loop0;
               }
            }
         }
      }
      
      private function onError(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!(_loc3_ && e))
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(e.type != RetryingURLLoaderErrorEvent.§3Y§)
                  {
                     §]!e§.§3!T§();
                     while(true)
                     {
                        loop3:
                        for(; !_loc3_; if(_loc3_ && e)
                        {
                           continue;
                        },§§goto(addr43))
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc2_ || _loc2_)
                           {
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§[X§ = null;
                                 loop5:
                                 while(_loc2_ || e)
                                 {
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                    return;
                                 }
                                 addr116:
                              }
                           }
                           else
                           {
                              while(true)
                              {
                              }
                              addr124:
                           }
                           while(true)
                           {
                              §]!e§.§3!T§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr124);
               }
            }
         }
         §§goto(addr65);
      }
      
      public function isEggUnlocked(eggId:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(!(_loc3_ && _loc3_))
         {
            loop0:
            while(true)
            {
               for(§§push(this.§?§); §§pop() != null; )
               {
                  §§push(this.§?§);
                  continue loop0;
                  if(!_loc3_)
                  {
                     if(§§pop().indexOf(eggId) != -1)
                     {
                        if(_loc3_ && eggId)
                        {
                        }
                        §§goto(addr38);
                     }
                     break;
                  }
               }
            }
         }
         §§push(false);
         if(!_loc3_)
         {
            return §§pop();
         }
         addr38:
         return true;
      }
      
      public function setEggUnlocked(eggId:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || eggId)
         {
         }
         if(_loc4_ || urlRequest)
         {
            while(true)
            {
            }
            addr116:
         }
         while(true)
         {
            loop2:
            while(true)
            {
               if(!this.isEggUnlocked(eggId))
               {
                  loop3:
                  while(true)
                  {
                     §]!e§.§?!K§(eggId);
                     addr91:
                     loop4:
                     while(!(_loc3_ && eggId))
                     {
                        while(_loc4_)
                        {
                           while(true)
                           {
                              this.§?§.push(eggId);
                              continue loop2;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                  }
               }
               else
               {
                  addr107:
               }
               addr108:
               return;
            }
            if(!(_loc4_ || this))
            {
               continue;
            }
            if(false)
            {
               §§goto(addr63);
            }
            §§push(§"!F§);
            §§push(§9<§ + "/eggfound/");
            if(!(_loc3_ && eggId))
            {
               §§push(§§pop() + eggId);
            }
            var urlRequest:URLRequest = §§pop().§=i§(§§pop());
            if(_loc4_ || this)
            {
               urlRequest.method = URLRequestMethod.POST;
               urlRequest.contentType = this.§>§();
               addr349:
               addr342:
               if(!(_loc3_ && eggId))
               {
                  this.§9!F§ = new §>!K§(null,2);
                  addr326:
                  if(!_loc3_)
                  {
                     addr296:
                     if(!(_loc3_ && eggId))
                     {
                        addr279:
                        this.§9!F§.addEventListener(Event.COMPLETE,this.§!!X§);
                        addr286:
                        if(_loc4_ || this)
                        {
                           addr263:
                           this.§9!F§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                           addr275:
                           if(!_loc3_)
                           {
                              addr259:
                              §§push(this.§9!F§);
                              if(!_loc3_)
                              {
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                 addr254:
                                 if(!_loc3_)
                                 {
                                    addr232:
                                    this.§9!F§.dataFormat = URLLoaderDataFormat.TEXT;
                                    if(_loc4_)
                                    {
                                       addr226:
                                       if(_loc4_)
                                       {
                                          §§push(this.§9!F§);
                                          if(!(_loc3_ && eggId))
                                          {
                                             if(!_loc3_)
                                             {
                                                if(_loc4_ || urlRequest)
                                                {
                                                   §§pop().load(urlRequest);
                                                   addr205:
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && eggId))
                                                         {
                                                            if(_loc4_ || urlRequest)
                                                            {
                                                               if(_loc4_ || urlRequest)
                                                               {
                                                                  if(_loc4_ || urlRequest)
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§goto(addr286);
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr275);
                                                                  }
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr205);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                         §§goto(addr275);
                                                      }
                                                      §§goto(addr254);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr263);
                                             }
                                             §§goto(addr259);
                                          }
                                       }
                                       §§goto(addr232);
                                    }
                                    addr241:
                                    §§goto(addr241);
                                    addr256:
                                 }
                                 §§goto(addr349);
                              }
                              §§goto(addr279);
                           }
                           §§goto(addr296);
                        }
                     }
                     §§goto(addr326);
                  }
                  §§goto(addr342);
               }
               addr351:
               §§goto(addr351);
            }
            §§goto(addr256);
         }
      }
      
      private function §!!X§(e:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            while(true)
            {
            }
            addr81:
         }
         loop1:
         do
         {
            trace("complete!");
            while(_loc2_)
            {
               if(_loc2_ || _loc3_)
               {
                  continue loop1;
               }
            }
            §§goto(addr81);
         }
         while(!(_loc2_ || e));
         
      }
      
      public function get §`! §() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         §§push(this.§[X§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function get userName() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc1_)
         {
         }
         if(_loc1_ && this)
         {
         }
         return this.§2'§;
      }
      
      public function get avatarString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc2_ || _loc1_)
         {
         }
         return this.§[5§;
      }
      
      public function set avatarString(value:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            do
            {
               while(true)
               {
                  this.§[5§ = value;
                  while(!(_loc2_ && _loc3_))
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function get userID() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc1_)
         {
         }
         return this.§;4§;
      }
   }
}
