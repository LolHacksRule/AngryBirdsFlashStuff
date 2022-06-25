package § 3§
{
   import §,!J§.UserProgress;
   import §,!J§.UserProgressEvent;
   import §5=§.Integer;
   import §7!A§.SHA1;
   import §;!1§.§9u§;
   import §;!1§.ErrorPopup;
   import §;+§.FacebookLeveLMain;
   import §<u§.Base64;
   import §>!_§.ChapterModel;
   import §>!_§.LevelManager;
   import §>o§.§7b§;
   import §?!Y§.§`S§;
   import §[!$§.StateFacebookPlay;
   import §]!@§.ScoreCollector;
   import §^!7§.§+!I§;
   import §^!7§.RetryingURLLoaderErrorEvent;
   import §^!7§.§[!<§;
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
         var TOURNAMENT_TUTORIAL:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(TOURNAMENT_TUTORIAL && TOURNAMENT_TUTORIAL))
         {
            do
            {
               TOURNAMENT_TUTORIAL = "tt";
            }
            while(TOURNAMENT_TUTORIAL);
            
         }
      }
      
      protected var §2!e§:Dictionary;
      
      private var §8![§:Dictionary;
      
      private var §!O§:Dictionary;
      
      protected var §3=§:String;
      
      protected var §-!%§:String;
      
      protected var §?!f§:String;
      
      private var §4B§:Array;
      
      private var §'!N§:Array;
      
      private var §'!S§:Array;
      
      private var §#$§:Array;
      
      private var §6<§:Array;
      
      private var §`1§:Array;
      
      private var §'J§:Array;
      
      private var §<!V§:Array;
      
      private var mName:Array;
      
      private var §@B§:Array;
      
      private var §#b§:Array;
      
      private var §8^§:Array;
      
      private var §@c§:Array;
      
      private var §&!§:§[!<§;
      
      private var §8p§:Array;
      
      private var §#!6§:§[!<§;
      
      private var §"!%§:Array;
      
      public function FacebookUserProgress(serverRoot:String)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§4B§ = [47,115,117,98,109,105,116,115,99,111,114,101];
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        this.§'!N§ = [117,110,107,110,111,119,110,69,112,105,115,111,100,101];
                        while(true)
                        {
                           loop5:
                           while(!_loc3_)
                           {
                              this.§'!S§ = [97,112,112,108,105,99,97,116,105,111,110,47,106,115,111,110];
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.§#$§ = [101,112,105,115,111,100,101];
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          this.§6<§ = [108,101,118,101,108];
                                          loop10:
                                          while(true)
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                this.§`1§ = [112,111,105,110,116,115];
                                                loop12:
                                                while(true)
                                                {
                                                   loop13:
                                                   for(; !_loc3_; loop17:
                                                   while(_loc2_ || _loc3_)
                                                   {
                                                      §§push(this);
                                                      if(_loc3_)
                                                      {
                                                      }
                                                      §§push(100);
                                                      §§push(115);
                                                      §§push(107);
                                                      §§push(102);
                                                      §§push(83);
                                                      §§push(33);
                                                      §§push(110);
                                                      §§push(117);
                                                      §§push(68);
                                                      §§push(121);
                                                      §§push(50);
                                                      §§push(105);
                                                      §§push(55);
                                                      §§push(114);
                                                      §§push(110);
                                                      §§push(68);
                                                      §§push(105);
                                                      §§push(99);
                                                      if(_loc3_ && serverRoot)
                                                      {
                                                      }
                                                      §§pop().mName = null;
                                                      loop18:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop17;
                                                            addr91:
                                                            if(!(_loc2_ || _loc3_))
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc3_)
                                                            {
                                                               this.§!O§ = new Dictionary();
                                                               loop37:
                                                               while(true)
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     addr70:
                                                                     if(_loc2_ || this)
                                                                     {
                                                                        addr77:
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     while(!_loc3_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           this.§8![§ = new Dictionary();
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr448);
                                                                        }
                                                                        §§goto(addr70);
                                                                     }
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           addr203:
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 super(serverRoot);
                                                                                 loop29:
                                                                                 while(!_loc3_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       loop30:
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          this.§2!e§ = new Dictionary();
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                break loop37;
                                                                                             }
                                                                                             break;
                                                                                             addr41:
                                                                                             if(_loc3_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             addr302:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this);
                                                                                                if(_loc3_ && _loc2_)
                                                                                                {
                                                                                                }
                                                                                                §§push(112);
                                                                                                §§push(108);
                                                                                                §§push(97);
                                                                                                §§push(121);
                                                                                                §§push(83);
                                                                                                §§push(101);
                                                                                                §§push(115);
                                                                                                §§push(115);
                                                                                                §§push(105);
                                                                                                §§push(111);
                                                                                                §§push(110);
                                                                                                §§push(84);
                                                                                                §§push(111);
                                                                                                §§push(107);
                                                                                                §§push(101);
                                                                                                if(_loc3_ && serverRoot)
                                                                                                {
                                                                                                }
                                                                                                §§pop().§8^§ = null;
                                                                                                break loop30;
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             break loop29;
                                                                                             §§goto(addr172);
                                                                                          }
                                                                                          addr172:
                                                                                          if(!(_loc3_ && serverRoot))
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop12;
                                                                                          }
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop10;
                                                                                    loop33:
                                                                                    while(!(_loc3_ && _loc2_))
                                                                                    {
                                                                                       §§goto(addr134);
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc2_ || serverRoot))
                                                                                          {
                                                                                             continue loop33;
                                                                                          }
                                                                                          §§goto(addr113);
                                                                                       }
                                                                                       continue loop12;
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    this.§#b§ = [98,108,111,99,107,115];
                                                                                    break loop27;
                                                                                 }
                                                                              }
                                                                              return;
                                                                              addr57:
                                                                              addr210:
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr245:
                                                                        while(true)
                                                                        {
                                                                           §§push(this);
                                                                           if(_loc3_ && this)
                                                                           {
                                                                           }
                                                                           §§push(99);
                                                                           §§push(111);
                                                                           §§push(117);
                                                                           §§push(110);
                                                                           §§push(116);
                                                                           §§push(67);
                                                                           §§push(111);
                                                                           §§push(110);
                                                                           §§push(115);
                                                                           §§push(117);
                                                                           §§push(109);
                                                                           §§push(97);
                                                                           §§push(98);
                                                                           §§push(108);
                                                                           §§push(101);
                                                                           if(!_loc2_)
                                                                           {
                                                                           }
                                                                           §§pop().§@c§ = null;
                                                                           addr242:
                                                                           while(true)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           continue loop27;
                                                                        }
                                                                     }
                                                                     addr134:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr302);
                                                                        §§goto(addr203);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr91);
                                                                        }
                                                                        §§goto(addr438);
                                                                        continue loop37;
                                                                     }
                                                                     §§goto(addr242);
                                                                     addr87:
                                                                  }
                                                                  §§goto(addr106);
                                                               }
                                                               while(!_loc3_)
                                                               {
                                                                  continue loop7;
                                                                  §§goto(addr77);
                                                               }
                                                               §§goto(addr433);
                                                            }
                                                            §§goto(addr438);
                                                         }
                                                         continue loop11;
                                                      }
                                                   })
                                                   {
                                                      this.§'J§ = [115,116,97,114,115];
                                                      while(true)
                                                      {
                                                         addr438:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                            }
                                                            §§push(100);
                                                            §§push(101);
                                                            §§push(115);
                                                            §§push(116);
                                                            §§push(114);
                                                            §§push(117);
                                                            §§push(99);
                                                            §§push(116);
                                                            §§push(105);
                                                            §§push(111);
                                                            §§push(110);
                                                            §§push(80);
                                                            §§push(101);
                                                            §§push(114);
                                                            if(_loc3_ && _loc2_)
                                                            {
                                                            }
                                                            §§pop().§<!V§ = null;
                                                            addr433:
                                                            while(!_loc3_)
                                                            {
                                                               continue loop13;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                   }
                                                   continue loop2;
                                                }
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   continue;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop9;
                                                }
                                                this.§@B§ = [115,101,99,117,114,105,116,121];
                                                §§goto(addr329);
                                             }
                                          }
                                       }
                                    }
                                    if(_loc3_ && serverRoot)
                                    {
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    this.§8p§ = [];
                                    §§goto(addr145);
                                 }
                                 while(_loc2_ || serverRoot)
                                 {
                                    §§goto(addr245);
                                 }
                              }
                           }
                        }
                        if(_loc3_ && this)
                        {
                           continue;
                        }
                        §§goto(addr87);
                     }
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      override public function getTotalStars() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
         }
         var chapter:ChapterModel = null;
         var chapterStars:* = 0;
         if(_loc6_ || total)
         {
            loop0:
            while(true)
            {
               addr45:
               while(true)
               {
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr45);
         }
         §§push(0);
         if(_loc6_ || total)
         {
            §§push(int(§§pop()));
         }
         var total:* = §§pop();
         if(!_loc6_)
         {
         }
         §§push(0);
         if(_loc6_ || chapter)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop4:
         while(true)
         {
            §§push(i);
            if(_loc6_)
            {
               if(§§pop() >= LevelManager.§3!3§())
               {
                  if(_loc6_)
                  {
                     addr231:
                  }
               }
               else if(_loc6_)
               {
                  if(_loc6_)
                  {
                     chapter = LevelManager.§7Z§(i);
                     if(!(_loc5_ && this))
                     {
                        while(true)
                        {
                           if(chapter.name != "2000")
                           {
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       trace("chapter!",chapter.name);
                                       loop9:
                                       while(true)
                                       {
                                          addr189:
                                          while(_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(int(§]J§(chapter)));
                                                addr183:
                                                while(true)
                                                {
                                                   chapterStars = §§pop();
                                                   addr184:
                                                   addr186:
                                                   while(!_loc6_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && chapter))
                                                      {
                                                         §§push(total);
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop() + chapterStars));
                                                            addr155:
                                                            while(true)
                                                            {
                                                               total = §§pop();
                                                               continue loop9;
                                                            }
                                                         }
                                                         addr152:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr184);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(i);
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc6_)
                                    {
                                       addr116:
                                       §§push(int(§§pop()));
                                    }
                                    if(!(_loc5_ && total))
                                    {
                                       if(_loc6_ || chapter)
                                       {
                                          i = §§pop();
                                          if(_loc6_ || this)
                                          {
                                             if(!_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr145);
                                                }
                                                §§goto(addr186);
                                             }
                                             §§goto(addr156);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr183);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr116);
                              §§goto(addr149);
                           }
                           continue loop4;
                        }
                     }
                     §§goto(addr191);
                  }
                  else
                  {
                     §§goto(addr231);
                  }
               }
               return total;
            }
            break;
         }
         return §§pop();
      }
      
      public function §8n§(levelId:String) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && levelId)
         {
         }
         var scoreInteger:Integer = null;
         if(_loc4_ || _loc3_)
         {
            while(true)
            {
               addr53:
               if(!(_loc3_ && _loc3_))
               {
                  if(false)
                  {
                     loop2:
                     for(; this.§!O§[levelId]; §§goto(addr62))
                     {
                        while(_loc4_)
                        {
                           while(!_loc4_)
                           {
                           }
                           if(!_loc4_)
                           {
                              continue;
                           }
                           §§goto(addr53);
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     addr62:
                     return 0;
                  }
                  scoreInteger = this.§!O§[levelId];
                  if(!_loc4_)
                  {
                  }
                  return scoreInteger.getValue();
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §9!e§(levelId:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || levelId)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               addr80:
               if(_loc3_ || _loc2_)
               {
                  return this.§8![§[levelId];
               }
            }
         }
         while(this.§8![§[levelId])
         {
            if(!_loc3_)
            {
               continue;
            }
            §§goto(addr80);
         }
         return 0;
      }
      
      public function §4!Y§(levelId:String, rank:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         if(!(_loc4_ && rank))
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(!(_loc4_ && levelId))
                  {
                     while(true)
                     {
                        this.§8![§[levelId] = rank;
                        while(!(_loc4_ && rank))
                        {
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function §3K§(levelId:String, score:int) : void
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
               while(true)
               {
                  addr34:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            if(_loc4_ || this)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr34);
            }
            §§goto(addr36);
         }
         var scoreInteger:Integer = new Integer(score);
         if(_loc4_ || scoreInteger)
         {
            while(true)
            {
               this.§!O§[levelId] = scoreInteger;
               loop6:
               while(_loc4_ || scoreInteger)
               {
                  while(_loc5_)
                  {
                     continue loop6;
                  }
                  return;
               }
            }
         }
         §§goto(addr106);
      }
      
      public function §"8§(levelId:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            do
            {
               if(!this.§2!e§[levelId])
               {
                  return 0;
               }
               if(_loc3_ || _loc3_)
               {
               }
            }
            while(!(_loc3_ || this));
            
         }
         return this.§2!e§[levelId];
      }
      
      public function §!!F§(levelId:String, rank:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_ || levelId)
         {
            while(true)
            {
               addr70:
               if(_loc3_ || _loc3_)
               {
                  addr77:
                  if(_loc4_ && levelId)
                  {
                     while(!_loc4_)
                     {
                        §§goto(addr70);
                        §§goto(addr77);
                     }
                     while(!_loc4_)
                     {
                        this.§2!e§[levelId] = rank;
                        §§goto(addr68);
                     }
                     addr68:
                     while(true)
                     {
                        §§goto(addr80);
                     }
                     addr80:
                     addr85:
                  }
                  return;
               }
            }
         }
         §§goto(addr85);
      }
      
      public function include(tournamentScores:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc3_)
         {
         }
         var levelScore:Object = null;
         if(!(_loc5_ && tournamentScores))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     this.§8![§ = new Dictionary();
                     loop3:
                     while(!(_loc5_ && tournamentScores))
                     {
                        if(_loc5_)
                        {
                           continue loop1;
                        }
                        loop4:
                        while(true)
                        {
                           addr57:
                           while(true)
                           {
                              this.§!O§ = new Dictionary();
                              loop6:
                              while(!_loc5_)
                              {
                                 while(true)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       continue loop4;
                                    }
                                    continue loop6;
                                 }
                                 var _loc3_:int = 0;
                                 loop8:
                                 for each(levelScore in tournamentScores)
                                 {
                                    if(!(_loc5_ && levelScore))
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(Boolean(levelScore.p));
                                          loop10:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                }
                                                continue loop9;
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                §§push(Boolean(levelScore.r));
                                                if(!_loc6_)
                                                {
                                                   continue loop10;
                                                }
                                                if(!§§pop())
                                                {
                                                   break;
                                                }
                                                if(_loc5_)
                                                {
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      continue loop9;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§4!Y§(levelScore.l,levelScore.r);
                                                      addr147:
                                                      addr175:
                                                      while(_loc6_ || this)
                                                      {
                                                      }
                                                      addr191:
                                                      while(_loc6_ || levelScore)
                                                      {
                                                         continue loop14;
                                                         §§goto(addr147);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr175);
                                                      }
                                                   }
                                                   addr130:
                                                   if(!(_loc6_ || tournamentScores))
                                                   {
                                                      continue;
                                                   }
                                                   if(true)
                                                   {
                                                      break loop14;
                                                   }
                                                   §§goto(addr139);
                                                }
                                             }
                                             continue loop8;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc6_ || levelScore)
                                       {
                                          §§goto(addr130);
                                       }
                                       §§goto(addr147);
                                    }
                                 }
                                 if(_loc5_ && _loc3_)
                                 {
                                 }
                                 return;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §?!7§(dataObject:Array, userName:String, avatar:String, userId:String, unlockedEggs:Array, tutorials:Array) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc10_)
         {
         }
         var levelProgress:Object = null;
         if(!_loc10_)
         {
            while(true)
            {
               addr182:
               while(true)
               {
               }
            }
            addr184:
         }
         loop2:
         while(true)
         {
            while(true)
            {
               loop4:
               while(true)
               {
                  loop5:
                  while(_loc11_)
                  {
                     while(true)
                     {
                        loop7:
                        while(true)
                        {
                           this.§3=§ = userName;
                           addr138:
                           while(true)
                           {
                              if(_loc11_)
                              {
                                 if(!_loc11_)
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              continue loop7;
                           }
                           continue loop5;
                        }
                     }
                  }
                  §§goto(addr182);
               }
               if(_loc10_ && this)
               {
                  continue;
               }
               loop15:
               while(true)
               {
                  if(unlockedEggs != null)
                  {
                     loop16:
                     while(true)
                     {
                        if(_loc11_)
                        {
                           if(!_loc10_)
                           {
                              while(true)
                              {
                                 addr49:
                                 while(true)
                                 {
                                    this.§8p§ = unlockedEggs;
                                    addr53:
                                    while(true)
                                    {
                                       if(_loc10_)
                                       {
                                          continue loop15;
                                       }
                                       §§goto(addr55);
                                    }
                                    continue loop2;
                                 }
                                 addr31:
                                 continue loop16;
                                 if(!(_loc10_ && dataObject))
                                 {
                                    continue loop16;
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr128);
                     }
                     §§goto(addr165);
                  }
                  else
                  {
                     §§goto(addr185);
                  }
               }
            }
         }
      }
      
      override public function isLevelOpen(levelId:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || levelId)
         {
         }
         if(_loc2_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(levelId);
                  loop2:
                  while(true)
                  {
                     §§push("10-1");
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(§§pop())
                              {
                                 loop12:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          §§push(levelId);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          addr67:
                                          §§push("-");
                                          if(!_loc2_)
                                          {
                                             while(!_loc3_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                §§goto(addr67);
                                             }
                                             continue loop3;
                                             addr120:
                                          }
                                          if(§§pop().split(§§pop())[0] == "1000")
                                          {
                                             if(_loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop0;
                                                }
                                             }
                                             else
                                             {
                                                addr97:
                                                if(_loc3_)
                                                {
                                                   continue;
                                                }
                                                if(_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(this.isEggUnlocked(levelId));
                                                      addr49:
                                                      while(true)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr51:
                                                            if(_loc2_ || _loc3_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr159:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               §§goto(addr51);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               addr134:
                                                               while(_loc2_)
                                                               {
                                                                  continue loop12;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr123:
                                                         }
                                                      }
                                                   }
                                                   addr101:
                                                }
                                                else
                                                {
                                                   §§goto(addr148);
                                                }
                                                §§goto(addr134);
                                             }
                                             while(true)
                                             {
                                                §§push(levelId);
                                                break loop13;
                                             }
                                          }
                                          else
                                          {
                                             §§push(super.isLevelOpen(levelId));
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc2_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr104);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr49);
                                          §§goto(addr123);
                                       }
                                       continue loop2;
                                    }
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    addr148:
                                    addr104:
                                    §§push(true);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    addr148:
                                    §§goto(addr134);
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr159);
                           }
                           return §§pop();
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      private function §+K§(levelId:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && this)
         {
         }
         if(_loc3_ || this)
         {
            loop0:
            while(true)
            {
               addr46:
               while(true)
               {
                  continue loop0;
               }
            }
            addr50:
         }
         while(true)
         {
            if(!_loc3_)
            {
               continue;
            }
            if(_loc3_ || this)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr50);
            }
            §§goto(addr46);
         }
         var episode:ChapterModel = LevelManager.§6X§(levelId);
         if(_loc4_ && episode)
         {
         }
         §§push(SHA1);
         if(_loc3_)
         {
            if(!(_loc4_ && levelId))
            {
               addr87:
               if(episode)
               {
                  §§goto(addr90);
               }
               else
               {
                  §§push(this.§`!§());
               }
               §§goto(addr103);
            }
            addr90:
            §§push(episode.name);
            §§push([!(_loc4_ && episode) ? §§pop() : §§pop(),levelId,§`S§.controller.getScore(),getStarsForLevel(levelId,§`S§.controller.getScore()),§`S§.controller.getEagleScore(),this.§[!!§()]);
            §§push("|");
            if(!_loc3_)
            {
            }
            return §§pop().§+=§(§§pop().join(§§pop()));
         }
         §§goto(addr87);
      }
      
      private function §+b§(data:Array) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || name)
         {
         }
         var i:int = 0;
         if(!_loc7_)
         {
            loop0:
            while(true)
            {
               addr38:
               while(true)
               {
                  continue loop0;
               }
            }
            addr42:
         }
         while(true)
         {
            if(!_loc6_)
            {
               continue;
            }
            if(!_loc7_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr42);
            }
            §§goto(addr38);
         }
         §§push("");
         if(_loc6_ || data)
         {
         }
         var name:* = §§pop();
         if(_loc7_)
         {
         }
         loop3:
         for each(i in data)
         {
            while(true)
            {
               loop5:
               while(true)
               {
                  addr81:
                  while(true)
                  {
                     §§push(name);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + String.fromCharCode(i));
                     }
                     name = §§pop();
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
      
      private function §[!!§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§+b§(this.mName);
      }
      
      private function §]m§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§+b§(this.§4B§);
      }
      
      private function §`!§() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc2_)
         {
         }
         return this.§+b§(this.§'!N§);
      }
      
      private function §%!H§() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         return this.§+b§(this.§'!S§);
      }
      
      override public function hasTutorialBeenSeen(tutorialId:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
            }
            addr101:
         }
         while(true)
         {
            if(this.§"!%§.indexOf(tutorialId) == -1)
            {
               §§push(false);
               if(_loc2_ || tutorialId)
               {
                  return §§pop();
               }
               break;
            }
            if(!_loc3_)
            {
               §§push(true);
               break;
            }
            §§goto(addr101);
         }
         return §§pop();
      }
      
      override public function saveTutorialSeen(tutorialIds:String) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc8_)
         {
         }
         var tutorialString:String = null;
         var urlRequest:URLRequest = null;
         var tutorialSavingUrlLoader:§[!<§ = null;
         if(_loc8_ || tutorialString)
         {
            while(true)
            {
               loop3:
               while(_loc8_ || tutorialsInside)
               {
                  while(true)
                  {
                     while(!(_loc8_ || tutorialIds))
                     {
                     }
                     if(_loc8_)
                     {
                        continue;
                     }
                     continue loop3;
                  }
                  loop2:
                  while(true)
                  {
                     if(_loc8_ || tutorialsInside)
                     {
                        continue loop3;
                     }
                     addr77:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      private function §1J§(e:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         var tutorialSavingUrlLoader:§[!<§ = null;
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
                  while(e.currentTarget is §[!<§)
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
                     tutorialSavingUrlLoader = e.currentTarget as §[!<§;
                     if(_loc3_)
                     {
                        tutorialSavingUrlLoader.removeEventListener(Event.COMPLETE,this.§1J§);
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
      
      private function §`f§(e:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         var tutorialSavingUrlLoader:§[!<§ = null;
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
               },if(this.§1U§)
               {
                  §§goto(addr65);
               },§§push(§+!I§),§§push(§ l§ + this.§]m§() + "/"),if(!(_loc10_ && tournamentScore))
               {
                  §§push(§§pop() + tournamentScore.toString());
               },var urlRequest:URLRequest = §§pop().§[O§(§§pop()),if(_loc10_)
               {
               },urlRequest.method = URLRequestMethod.POST,addr187:,urlRequest.contentType = this.§%!H§(),addr206:,addr197:,if(!_loc10_)
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
                           var episode:ChapterModel = LevelManager.§6X§(levelId);
                           if(!_loc9_)
                           {
                           }
                           §§push(§`S§.controller.getScore());
                           if(!(_loc10_ && this))
                           {
                              §§push(int(§§pop()));
                           }
                           var newPoints:* = §§pop();
                           if(_loc10_ && meInUse)
                           {
                           }
                           var newStars:int = getStarsForLevel(levelId,§`S§.controller.getScore());
                           if(_loc10_)
                           {
                           }
                           var object:Object = {};
                           if(!_loc10_)
                           {
                              addr680:
                              §§push(object);
                              §§push(this.§+b§(this.§#$§));
                              if(episode)
                              {
                                 addr677:
                                 §§pop()[§§pop()] = episode.name;
                                 object[this.§+b§(this.§6<§)] = levelId;
                                 object[this.§+b§(this.§`1§)] = newPoints;
                                 addr660:
                                 addr678:
                                 addr657:
                                 addr635:
                                 if(!_loc10_)
                                 {
                                    object[this.§+b§(this.§'J§)] = newStars;
                                    addr614:
                                    if(!(_loc10_ && this))
                                    {
                                       object[this.§+b§(this.§<!V§)] = §`S§.controller.getEagleScore();
                                       addr583:
                                       addr605:
                                       addr602:
                                       if(!(_loc10_ && tournamentScore))
                                       {
                                          object[this.§+b§(this.§@B§)] = this.§+K§(levelId);
                                          addr578:
                                          if(!_loc10_)
                                          {
                                             object[this.§+b§(this.§#b§)] = ScoreCollector.§>t§();
                                             object[this.§+b§(this.§8^§)] = StateFacebookPlay.sPlaySessionToken;
                                             addr548:
                                             addr567:
                                             addr564:
                                             addr553:
                                             if(!_loc10_)
                                             {
                                                object[this.§+b§(this.§@c§)] = (§`S§.§[o§ as FacebookLeveLMain).§@n§();
                                                urlRequest.data = Base64.encode(§7b§.encode(object));
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
                                                         this.§&!§ = new §[!<§();
                                                         addr477:
                                                         if(_loc9_ || levelId)
                                                         {
                                                            if(_loc9_ || meInUse)
                                                            {
                                                               addr464:
                                                               if(_loc9_ || meInUse)
                                                               {
                                                                  addr454:
                                                                  this.§&!§.addEventListener(Event.COMPLETE,this.§&E§);
                                                                  addr448:
                                                                  addr461:
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr401:
                                                                     this.§&!§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
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
                                                                                       this.§&!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
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
                                                                                                      §§push(this.§&!§);
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
                                                                                                                           §§push(this.§&!§);
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
                              §§push(this.§`!§());
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
      
      private function §&E§(e:Event) : void
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
                  if(e.type != RetryingURLLoaderErrorEvent.§6!O§)
                  {
                     §9u§.§4!L§();
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
                                 this.§&!§ = null;
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
                              §9u§.§4!L§(ErrorPopup.THIRD_PARTY_COOKIES_DISABLED_ERROR);
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
               for(§§push(this.§8p§); §§pop() != null; )
               {
                  §§push(this.§8p§);
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
                     §9u§.§'W§(eggId);
                     addr91:
                     loop4:
                     while(!(_loc3_ && eggId))
                     {
                        while(_loc4_)
                        {
                           while(true)
                           {
                              this.§8p§.push(eggId);
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
            §§push(§+!I§);
            §§push(§ l§ + "/eggfound/");
            if(!(_loc3_ && eggId))
            {
               §§push(§§pop() + eggId);
            }
            var urlRequest:URLRequest = §§pop().§[O§(§§pop());
            if(_loc4_ || this)
            {
               urlRequest.method = URLRequestMethod.POST;
               urlRequest.contentType = this.§%!H§();
               addr349:
               addr342:
               if(!(_loc3_ && eggId))
               {
                  this.§#!6§ = new §[!<§(null,2);
                  addr326:
                  if(!_loc3_)
                  {
                     addr296:
                     if(!(_loc3_ && eggId))
                     {
                        addr279:
                        this.§#!6§.addEventListener(Event.COMPLETE,this.§each §);
                        addr286:
                        if(_loc4_ || this)
                        {
                           addr263:
                           this.§#!6§.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                           addr275:
                           if(!_loc3_)
                           {
                              addr259:
                              §§push(this.§#!6§);
                              if(!_loc3_)
                              {
                                 §§pop().addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onError);
                                 addr254:
                                 if(!_loc3_)
                                 {
                                    addr232:
                                    this.§#!6§.dataFormat = URLLoaderDataFormat.TEXT;
                                    if(_loc4_)
                                    {
                                       addr226:
                                       if(_loc4_)
                                       {
                                          §§push(this.§#!6§);
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
      
      private function §each §(e:Event) : void
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
      
      public function get §1U§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc1_)
         {
         }
         §§push(this.§&!§ == null);
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
         return this.§3=§;
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
         return this.§-!%§;
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
                  this.§-!%§ = value;
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
         return this.§?!f§;
      }
   }
}
