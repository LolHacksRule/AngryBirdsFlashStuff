package §<!S§
{
   import § D§.§]!B§;
   import §"L§.ChapterModel;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class StateChapterSelection extends StateBase
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
      
      private static const TWEEN_TIME:Number = 0.5;
      
      {
         var STATE_NAME:Boolean = true;
         var TWEEN_TIME:Boolean = false;
         if(STATE_NAME)
         {
            loop0:
            while(true)
            {
               STATE_NAME = "ChapterSelectionState";
               while(true)
               {
                  while(STATE_NAME)
                  {
                     continue loop0;
                     TWEEN_TIME = 0.5;
                     if(!TWEEN_TIME)
                     {
                        return;
                        addr39:
                     }
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      private var §4!%§:Sprite;
      
      private var §5!?§:UIContainerRovio;
      
      private var §9!;§:Array;
      
      private var §[!2§:Array;
      
      private var §89§:int = 0;
      
      private var §,!Q§:Number = 0;
      
      private var §]!A§:Number = 0;
      
      private var §?!_§:Dictionary;
      
      private var §<<§:Dictionary;
      
      private var §9!f§:§!T§ = null;
      
      private var §=!K§:Boolean = false;
      
      private var § get§:Number = 0;
      
      public function StateChapterSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && name)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr74:
                  while(!_loc4_)
                  {
                  }
               }
               addr64:
               while(true)
               {
                  if(_loc3_ || name)
                  {
                     continue;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            super(initObject,name);
            §§goto(addr64);
         }
         §§goto(addr58);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               super.init();
               addr119:
               while(true)
               {
               }
            }
            addr121:
         }
         while(true)
         {
            §5!M§ = new §6"§(this);
            loop3:
            while(true)
            {
               while(true)
               {
                  §5!M§.init(§>!^§.§8'§.Views.View_ChapterSelection[0]);
                  loop5:
                  while(!(_loc2_ && this))
                  {
                     while(true)
                     {
                        if(!(_loc1_ || this))
                        {
                           continue loop5;
                        }
                        if(_loc2_)
                        {
                           continue loop3;
                        }
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr119);
                  }
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         var image:MovieClip = null;
         var chapter:ChapterModel = null;
         if(_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr66:
                  while(_loc6_)
                  {
                     super.activate();
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr35);
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var chapterNum:* = §§pop();
         if(_loc7_ && chapter)
         {
         }
         loop8:
         for each(image in this.§9!;§)
         {
            if(_loc6_)
            {
               if(_loc6_ || this)
               {
               }
            }
            chapter = LevelManager.§;![§(chapterNum);
            if(!(_loc7_ && chapter))
            {
               loop9:
               while(true)
               {
                  if(image.Textfield_ME_Score != null)
                  {
                     loop10:
                     while(true)
                     {
                        loop11:
                        while(true)
                        {
                           image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§6Y§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§`=§(chapter);
                           while(true)
                           {
                              loop13:
                              while(!(_loc7_ && image))
                              {
                                 while(true)
                                 {
                                    if(image.Textfield_CollectedStars != null)
                                    {
                                       loop25:
                                       while(true)
                                       {
                                          addr267:
                                          while(!_loc7_)
                                          {
                                             image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§,l§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§8!_§(chapter);
                                             loop20:
                                             while(true)
                                             {
                                                addr234:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      break loop20;
                                                   }
                                                   continue loop25;
                                                }
                                                §§goto(addr269);
                                             }
                                             addr269:
                                          }
                                          continue loop10;
                                       }
                                       addr266:
                                    }
                                    while(true)
                                    {
                                       if(image.Textfield_Score != null)
                                       {
                                          loop16:
                                          while(!(_loc7_ && image))
                                          {
                                             while(!_loc7_)
                                             {
                                                if(!(_loc7_ && chapter))
                                                {
                                                   image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8i§(chapter);
                                                   while(!(_loc7_ && chapter))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         loop19:
                                                         while(_loc6_)
                                                         {
                                                            do
                                                            {
                                                               §§push(chapterNum);
                                                               if(!(_loc7_ && chapter))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  if(_loc6_ || chapter)
                                                                  {
                                                                     addr172:
                                                                     §§push(int(§§pop()));
                                                                  }
                                                                  chapterNum = §§pop();
                                                                  while(_loc6_)
                                                                  {
                                                                     continue loop9;
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc7_ && chapter)
                                                                        {
                                                                           continue loop19;
                                                                        }
                                                                        if(_loc6_ || chapterNum)
                                                                        {
                                                                           §§goto(addr143);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr267);
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop13;
                                                               }
                                                               §§goto(addr172);
                                                            }
                                                            while(false);
                                                            
                                                            continue loop8;
                                                         }
                                                         continue;
                                                      }
                                                      continue loop16;
                                                   }
                                                   continue;
                                                }
                                                continue loop11;
                                             }
                                             §§goto(addr260);
                                          }
                                          §§goto(addr234);
                                       }
                                       §§goto(addr145);
                                       §§goto(addr260);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr261);
               }
            }
            §§goto(addr266);
         }
         if(!_loc6_)
         {
         }
      }
      
      private function §@!9§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_ && this)
         {
         }
         var chapter:ChapterModel = null;
         var chapterName:String = null;
         if(_loc6_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr88:
                  if(_loc5_ && offsetX)
                  {
                     continue;
                  }
                  loop6:
                  while(true)
                  {
                     if(_loc6_ || offsetX)
                     {
                        if(!_loc6_)
                        {
                           break;
                           addr58:
                        }
                        loop7:
                        while(true)
                        {
                           this.§[!2§ = [];
                           while(_loc6_)
                           {
                              if(!(_loc5_ && chapterNum))
                              {
                                 continue loop7;
                              }
                           }
                           continue loop6;
                        }
                        continue loop0;
                     }
                     addr81:
                     while(true)
                     {
                        if(_loc6_ || chapterNum)
                        {
                           §§goto(addr88);
                        }
                        else
                        {
                           while(true)
                           {
                              break loop6;
                           }
                           addr116:
                        }
                        continue loop6;
                     }
                     continue loop1;
                  }
                  loop4:
                  while(true)
                  {
                     if(!(_loc5_ && chapter))
                     {
                        this.§9!;§ = [];
                        §§goto(addr81);
                     }
                     else
                     {
                        while(true)
                        {
                           this.§5!?§ = §5!M§.getItemByName("Container_ChapterSelection") as UIContainerRovio;
                           continue loop4;
                        }
                        addr119:
                     }
                     §§goto(addr116);
                  }
               }
            }
         }
         §§goto(addr119);
      }
      
      private function §^W§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var dotCls:Class = null;
         var image:MovieClip = null;
         if(_loc6_ || dotCls)
         {
         }
         while(true)
         {
            loop1:
            while(_loc6_)
            {
               loop2:
               while(true)
               {
                  addr48:
                  while(true)
                  {
                     while(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §^d§(chapterName:String, offsetX:Number, chapterNum:int) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc7_)
         {
         }
         var chapter:ChapterModel = null;
         var chapterCls:Class = null;
         var image:MovieClip = null;
         if(!_loc8_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  continue loop0;
                  loop8:
                  while(_loc7_ || chapterNum)
                  {
                     if(_loc8_ && chapterName)
                     {
                        continue;
                     }
                     addr41:
                     if(_loc7_ || offsetX)
                     {
                        addr48:
                        if(_loc7_ || chapterNum)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 continue loop8;
                              }
                              loop6:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    addr71:
                                    if(_loc7_ || offsetX)
                                    {
                                       addr78:
                                       if(_loc8_ && this)
                                       {
                                          break;
                                       }
                                       §§goto(addr57);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§goto(addr71);
                                       }
                                       addr92:
                                    }
                                 }
                                 while(true)
                                 {
                                    continue loop6;
                                 }
                              }
                              addr57:
                              continue loop0;
                              addr69:
                           }
                           else
                           {
                              chapter = LevelManager.§;![§(chapterNum);
                              if(_loc8_)
                              {
                              }
                              chapterCls = AssetCache.§-9§(chapterName);
                              if(_loc8_ && offsetX)
                              {
                              }
                              image = new chapterCls();
                              if(_loc7_ || chapterNum)
                              {
                                 image.x = offsetX;
                                 this.§4!%§.addChild(image);
                                 this.§9!;§.push(image);
                                 addr456:
                                 addr439:
                                 addr446:
                                 addr466:
                                 addr459:
                                 addr464:
                                 addr449:
                                 §§push(offsetX);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + image.width * 1.55);
                                    if(!_loc8_)
                                    {
                                       addr434:
                                       §§push(Number(§§pop()));
                                    }
                                    offsetX = §§pop();
                                    this.§<<§[image] = chapterNum;
                                    addr409:
                                    addr412:
                                    if(!(_loc8_ && chapterName))
                                    {
                                       image.addEventListener(MouseEvent.CLICK,this.§"s§);
                                       image.buttonMode = true;
                                       addr392:
                                       addr382:
                                       if(_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             addr361:
                                             if(_loc7_ || chapterName)
                                             {
                                                if(_loc7_)
                                                {
                                                   if(image.Textfield_CollectedStars != null)
                                                   {
                                                      addr355:
                                                      if(_loc7_)
                                                      {
                                                         image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§,l§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§8!_§(chapter);
                                                         addr347:
                                                         if(!_loc8_)
                                                         {
                                                            addr326:
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr296);
                                                            }
                                                            §§goto(addr355);
                                                         }
                                                         §§goto(addr466);
                                                      }
                                                      §§goto(addr409);
                                                   }
                                                   addr296:
                                                   if(image.Textfield_Score != null)
                                                   {
                                                      addr301:
                                                      if(!(_loc8_ && chapterName))
                                                      {
                                                         if(!(_loc8_ && chapterNum))
                                                         {
                                                            addr316:
                                                            if(!(_loc8_ && chapterNum))
                                                            {
                                                               image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8i§(chapter);
                                                               addr281:
                                                               if(!(_loc8_ && chapterName))
                                                               {
                                                                  if(_loc7_ || offsetX)
                                                                  {
                                                                     addr242:
                                                                     if(!(_loc8_ && chapterName))
                                                                     {
                                                                        if(_loc7_ || offsetX)
                                                                        {
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              if(_loc7_ || chapterNum)
                                                                              {
                                                                                 §§goto(addr188);
                                                                              }
                                                                              §§goto(addr439);
                                                                           }
                                                                           §§goto(addr355);
                                                                        }
                                                                        §§goto(addr347);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                               }
                                                               §§goto(addr392);
                                                            }
                                                            §§goto(addr382);
                                                         }
                                                         §§goto(addr446);
                                                      }
                                                      §§goto(addr361);
                                                   }
                                                   addr188:
                                                   if(image.Textfield_ME_Score != null)
                                                   {
                                                      addr193:
                                                      if(_loc7_ || chapterName)
                                                      {
                                                         if(!(_loc8_ && this))
                                                         {
                                                            if(!(_loc8_ && chapterNum))
                                                            {
                                                               if(!(_loc8_ && offsetX))
                                                               {
                                                                  addr232:
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     addr165:
                                                                     image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§6Y§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§`=§(chapter);
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           if(!(_loc8_ && chapterNum))
                                                                           {
                                                                              if(_loc7_ || offsetX)
                                                                              {
                                                                                 addr163:
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr165);
                                                                                 }
                                                                                 §§goto(addr467);
                                                                              }
                                                                              §§goto(addr232);
                                                                           }
                                                                           §§goto(addr165);
                                                                        }
                                                                        §§goto(addr326);
                                                                     }
                                                                     §§goto(addr193);
                                                                  }
                                                                  §§goto(addr242);
                                                               }
                                                               §§goto(addr456);
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr316);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   addr467:
                                                   return offsetX;
                                                }
                                                §§goto(addr459);
                                             }
                                             §§goto(addr412);
                                          }
                                          §§goto(addr464);
                                       }
                                       §§goto(addr449);
                                    }
                                    addr436:
                                    §§goto(addr436);
                                 }
                                 §§goto(addr434);
                              }
                              §§goto(addr163);
                           }
                        }
                        else
                        {
                           while(AssetCache.§[!f§(chapterName))
                           {
                              §§goto(addr92);
                              §§goto(addr48);
                           }
                           addr96:
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr69);
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      private function §]4§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  §§push(this.§=!K§);
                  if(_loc2_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        this.§?'§(this.§?!_§[e.target]);
                        loop4:
                        while(!(_loc3_ && e))
                        {
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
                  if(_loc2_ || _loc3_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr84);
      }
      
      private function §"s§(e:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         var chapter:MovieClip = null;
         if(_loc3_ || e)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  §§push(this.§=!K§);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                  }
                  loop2:
                  for(; §§pop(); §§push(e.currentTarget is MovieClip),if(_loc3_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        return;
                     }
                     if(_loc4_)
                     {
                        while(true)
                        {
                           if(false)
                           {
                              §§goto(addr59);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr106);
                        addr57:
                     }
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  })
                  {
                     if(_loc4_ && chapter)
                     {
                     }
                     loop3:
                     while(true)
                     {
                        addr59:
                        addr90:
                        addr106:
                        while(true)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        chapter = MovieClip(e.currentTarget);
                        if(_loc3_)
                        {
                           if(this.§89§ != this.§<<§[chapter])
                           {
                              if(!(_loc4_ && e))
                              {
                                 if(!(_loc4_ && chapter))
                                 {
                                    this.§?'§(this.§<<§[chapter]);
                                 }
                                 else
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          mNextState = StateLevelSelection.STATE_NAME;
                                          addr154:
                                          addr204:
                                          loop12:
                                          while(!(_loc4_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop12;
                                                }
                                                addr139:
                                                if(_loc3_ || _loc3_)
                                                {
                                                   if(true)
                                                   {
                                                      break loop2;
                                                   }
                                                   continue loop11;
                                                }
                                                addr212:
                                                while(!(_loc4_ && _loc3_))
                                                {
                                                   continue loop13;
                                                   §§goto(addr139);
                                                }
                                                while(!_loc4_)
                                                {
                                                   §§goto(addr164);
                                                }
                                                addr164:
                                                while(true)
                                                {
                                                   LevelManager.§?Q§ = this.§<<§[chapter];
                                                   §§goto(addr180);
                                                }
                                                addr180:
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc3_ || chapter)
                                             {
                                                §§goto(addr212);
                                             }
                                             §§goto(addr154);
                                          }
                                       }
                                    }
                                 }
                              }
                              break loop2;
                           }
                           if(this.§<<§[chapter] < LevelManager.§??§())
                           {
                              §§goto(addr204);
                           }
                           break loop2;
                           §§goto(addr204);
                        }
                        §§goto(addr161);
                     }
                  }
                  return;
               }
               if(!(_loc3_ || this))
               {
                  continue;
               }
               while(true)
               {
                  §§goto(addr57);
               }
               addr56:
            }
         }
         §§goto(addr56);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && deltaTime)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc4_ && this))
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
            §§goto(addr39);
         }
         §§push(super.run(deltaTime));
         if(!(_loc4_ && this))
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(_loc3_ || this)
         {
            loop4:
            while(true)
            {
               §§push(superReturn);
               loop5:
               do
               {
                  if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                  {
                     loop6:
                     while(true)
                     {
                        this.§7v§();
                        loop7:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              while(true)
                              {
                                 this.§6n§();
                                 if(_loc3_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    if(mNextState.length <= 0)
                                    {
                                       return StateBase.STATE_STATUS_RUNNING;
                                    }
                                    continue;
                                 }
                                 continue loop7;
                              }
                              continue loop5;
                           }
                           continue loop6;
                        }
                        continue loop4;
                     }
                  }
               }
               while(§§push(superReturn), !(_loc3_ || superReturn));
               
               return §§pop();
            }
         }
         §§goto(addr119);
      }
      
      private function §6n§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         var distance:* = NaN;
         if(!_loc3_)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr33:
            }
            §§push(0);
            if(!_loc3_)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               §§push(i);
               if(_loc4_ || this)
               {
                  if(!(_loc3_ && i))
                  {
                     if(_loc4_ || _loc3_)
                     {
                        if(§§pop() >= this.§9!;§.length)
                        {
                           if(_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    break;
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    if(_loc4_ || _loc3_)
                                    {
                                       §§push(this.§9!;§);
                                       if(_loc4_)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(i);
                                             if(_loc4_ || _loc3_)
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§pop()[§§pop()].y = distance / 1000 * -200;
                                                   loop2:
                                                   for(; _loc4_; loop3:
                                                   for(; !(_loc3_ && this); while(true)
                                                   {
                                                      if(!(_loc4_ || i))
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr280);
                                                   },continue loop0)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         §§push(i);
                                                         if(!(_loc3_ && this))
                                                         {
                                                            §§push(§§pop() + 1);
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               addr95:
                                                               while(true)
                                                               {
                                                                  i = §§pop();
                                                                  continue loop3;
                                                               }
                                                            }
                                                            addr94:
                                                         }
                                                         §§goto(addr95);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr331);
                                                      }
                                                   })
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               continue;
                                                            }
                                                            loop20:
                                                            while(true)
                                                            {
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(Number(Math.abs(distance)));
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     distance = §§pop();
                                                                     addr363:
                                                                     while(!_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(distance);
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              §§push(§§pop() * 0.55);
                                                                              loop17:
                                                                              while(!(_loc3_ && distance))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    distance = §§pop();
                                                                                    addr352:
                                                                                    while(true)
                                                                                    {
                                                                                       addr331:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(distance);
                                                                                          loop6:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc4_ || i))
                                                                                             {
                                                                                                continue loop18;
                                                                                             }
                                                                                             if(_loc3_ && distance)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(§§pop() > 1000)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc3_ && i))
                                                                                                   {
                                                                                                      loop7:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(1000);
                                                                                                         addr290:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               continue loop6;
                                                                                                            }
                                                                                                            if(_loc3_ && this)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            distance = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr407:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§4!%§.x + this.§9!;§[i].x - AngryBirdsFP11.§8!6§ / 2);
                                                                                                            if(_loc4_ || this)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               break loop17;
                                                                                                            }
                                                                                                            break loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      addr411:
                                                                                                   }
                                                                                                }
                                                                                                addr320:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§9!;§);
                                                                                                loop9:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(i);
                                                                                                   addr270:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop()[§§pop()].scaleX = 1.1 - distance / 1000;
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr265:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§9!;§);
                                                                                                            addr238:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc3_ && i)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               }
                                                                                                               §§push(i);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§pop()[§§pop()].scaleY = 1.1 - distance / 1000;
                                                                                                                  addr253:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc4_ || i))
                                                                                                                     {
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        break loop2;
                                                                                                                        addr262:
                                                                                                                     }
                                                                                                                     §§goto(addr301);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 distance = §§pop();
                                                                                 continue loop20;
                                                                                 §§goto(addr343);
                                                                              }
                                                                              addr343:
                                                                           }
                                                                           §§goto(addr351);
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr320);
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(this.§9!;§);
                                                         while(true)
                                                         {
                                                            §§push(i);
                                                            addr180:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§pop()[§§pop()].alpha = 1 - distance / 1000 * 1.5;
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        if(!(_loc3_ && i))
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr363);
                                                                           }
                                                                           §§goto(addr355);
                                                                        }
                                                                        §§goto(addr352);
                                                                     }
                                                                     §§goto(addr253);
                                                                  }
                                                                  continue loop1;
                                                                  addr201:
                                                               }
                                                               §§goto(addr246);
                                                            }
                                                         }
                                                         addr179:
                                                      }
                                                      §§goto(addr407);
                                                      §§goto(addr262);
                                                   }
                                                }
                                                §§goto(addr270);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr179);
                                    }
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr96);
                           }
                           break;
                        }
                        §§goto(addr411);
                     }
                     §§goto(addr290);
                  }
                  §§goto(addr94);
               }
               §§goto(addr95);
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function §7v§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
         }
         var j:* = 0;
         if(!(_loc4_ && this))
         {
            if(_loc3_)
            {
               addr37:
            }
            §§push(0);
            if(_loc3_)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               §§push(i);
               if(!_loc4_)
               {
                  if(!(_loc4_ && j))
                  {
                     if(_loc3_ || i)
                     {
                        §§push(this.§[!2§);
                        if(_loc3_)
                        {
                           if(§§pop() >= §§pop().length)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             loop46:
                                             while(true)
                                             {
                                                this.§ get§ = this.§4!%§.x;
                                                loop47:
                                                while(_loc3_)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      continue loop46;
                                                   }
                                                   if(!(_loc4_ && j))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break loop0;
                                                            }
                                                            loop49:
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop15:
                                                                  while(_loc3_ || this)
                                                                  {
                                                                     j = §§pop();
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(j);
                                                                           loop18:
                                                                           while(!_loc4_)
                                                                           {
                                                                              §§push(this.§[!2§);
                                                                              while(true)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop().length)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§[!2§);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                if(!(_loc4_ && this))
                                                                                                {
                                                                                                   §§push(i);
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop36;
                                                                                                         }
                                                                                                         addr201:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc4_ && i))
                                                                                                            {
                                                                                                               addr467:
                                                                                                               §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                               loop1:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr448:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_ || this)
                                                                                                                     {
                                                                                                                        loop3:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(-this.§4!%§.x);
                                                                                                                           loop4:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(800);
                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop5:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§9!;§);
                                                                                                                                    addr400:
                                                                                                                                    loop6:
                                                                                                                                    while(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(i);
                                                                                                                                       while(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                          loop8:
                                                                                                                                          while(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc4_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && j))
                                                                                                                                                      {
                                                                                                                                                         addr439:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§ get§);
                                                                                                                                                                        if(_loc4_ && this)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop4;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc3_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        addr580:
                                                                                                                                                                        addr582:
                                                                                                                                                                        addr582:
                                                                                                                                                                        §§push(this.§9!;§);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           addr583:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr546:
                                                                                                                                                                     §§push(this.§9!;§);
                                                                                                                                                                     break loop6;
                                                                                                                                                                     addr445:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                               addr373:
                                                                                                                                                               if(_loc4_ && i)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop49;
                                                                                                                                                                     }
                                                                                                                                                                     addr382:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(i);
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop15;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() + 1);
                                                                                                                                                                        }
                                                                                                                                                                        addr130:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop18;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc3_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc3_ || i)
                                                                                                                                                                                 {
                                                                                                                                                                                    i = §§pop();
                                                                                                                                                                                    while(_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop57:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc4_ && j))
                                                                                                                                                                                          {
                                                                                                                                                                                             loop25:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(j);
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + 1);
                                                                                                                                                                                                   break loop15;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr495:
                                                                                                                                                                                                loop27:
                                                                                                                                                                                                while(_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   j = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr524:
                                                                                                                                                                                                         loop29:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(j);
                                                                                                                                                                                                            break loop18;
                                                                                                                                                                                                            addr529:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§[!2§);
                                                                                                                                                                                                            addr507:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(j);
                                                                                                                                                                                                               addr508:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                                                  continue loop57;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop25;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr524:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(-this.§4!%§.x);
                                                                                                                                                                                                            addr578:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop4;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr595:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(0);
                                                                                                                                                                                                      addr527:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(int(§§pop()));
                                                                                                                                                                                                         break loop27;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   j = §§pop();
                                                                                                                                                                                                   §§goto(addr529);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr519:
                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                             addr503:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr524);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                    addr148:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr495);
                                                                                                                                                                              }
                                                                                                                                                                              addr140:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 j = §§pop();
                                                                                                                                                                                 addr230:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr445);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc4_ && j))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§[!2§);
                                                                                                                                                                                                      break loop36;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr569:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr532);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr572:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr591:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§ get§);
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr546);
                                                                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr578);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr546);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr582);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr572);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr529);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr498);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr262:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr546);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr229:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr498);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr123:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr380:
                                                                                                                                                            }
                                                                                                                                                            addr588:
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr380);
                                                                                                                                                         §§goto(addr546);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr588);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr439);
                                                                                                                                                addr356:
                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc3_ || i))
                                                                                                                                                   {
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   addr565:
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr373);
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr567);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr590);
                                                                                                                                                   continue loop8;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   §§goto(addr591);
                                                                                                                                                }
                                                                                                                                                addr590:
                                                                                                                                             }
                                                                                                                                             while(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr569);
                                                                                                                                             }
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          §§goto(addr565);
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                       }
                                                                                                                                       §§goto(addr554);
                                                                                                                                       §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                    }
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr551);
                                                                                                                                       §§push(i);
                                                                                                                                    }
                                                                                                                                    §§goto(addr582);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr580);
                                                                                                                              §§goto(addr578);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr503);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr471:
                                                                                                            }
                                                                                                            §§goto(addr508);
                                                                                                         }
                                                                                                         addr460:
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                      addr257:
                                                                                                      addr252:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr507);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§goto(addr252);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr459);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr212:
                                                                                    }
                                                                                    §§goto(addr262);
                                                                                 }
                                                                                 addr478:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() >= §§pop().length)
                                                                                    {
                                                                                       break loop47;
                                                                                    }
                                                                                    §§goto(addr524);
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§goto(addr478);
                                                                              §§push(this.§[!2§);
                                                                           }
                                                                           §§goto(addr527);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr495);
                                                                  }
                                                                  addr221:
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ && i)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     §§goto(addr229);
                                                                     §§push(int(§§pop()));
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr148);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr481);
                                                }
                                             }
                                             addr122:
                                          }
                                          §§goto(addr471);
                                       }
                                       §§goto(addr448);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr153);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr595);
                        }
                        §§goto(addr208);
                     }
                     §§goto(addr221);
                  }
                  §§goto(addr130);
               }
               §§goto(addr140);
            }
            return;
         }
         §§goto(addr37);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc2_ && _loc2_)
         {
         }
         loop0:
         while(true)
         {
            super.deActivate();
            loop1:
            while(true)
            {
               addr96:
               while(!_loc2_)
               {
                  §]!B§.§>F§.clearLevel();
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc6_)
         {
         }
         if(_loc6_)
         {
            do
            {
               while(!(_loc6_ || component))
               {
               }
            }
            while(_loc7_ && eventIndex);
            
         }
         var _loc4_:* = eventName;
         if(!(_loc7_ && eventIndex))
         {
            §§push("BACK");
            if(_loc6_)
            {
               if(!_loc7_)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§push(0);
                           if(_loc7_)
                           {
                           }
                        }
                        else
                        {
                           addr442:
                           §§push(2);
                           if(_loc7_ && this)
                           {
                           }
                        }
                        §§goto(addr490);
                     }
                     else
                     {
                        §§push("PREV");
                        if(!(_loc7_ && component))
                        {
                           if(_loc6_ || eventName)
                           {
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(!(_loc7_ && eventIndex))
                                    {
                                       §§push(1);
                                       if(_loc7_)
                                       {
                                       }
                                       §§goto(addr490);
                                    }
                                    else
                                    {
                                       §§goto(addr442);
                                    }
                                 }
                                 else
                                 {
                                    §§push("NEXT");
                                    if(_loc6_)
                                    {
                                       addr418:
                                       if(_loc6_ || eventName)
                                       {
                                       }
                                       addr470:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(3);
                                             if(_loc6_ || component)
                                             {
                                                §§goto(addr482);
                                             }
                                          }
                                          else
                                          {
                                             addr485:
                                             §§push(4);
                                             if(!_loc6_)
                                             {
                                             }
                                          }
                                       }
                                       else if(false)
                                       {
                                          §§goto(addr485);
                                       }
                                       else
                                       {
                                          addr490:
                                          loop20:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                if(_loc6_)
                                                {
                                                   §§push(SoundEngine.§9!X§("Menu_Back"));
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§pop();
                                                      if(_loc6_ || component)
                                                      {
                                                         loop3:
                                                         while(true)
                                                         {
                                                            mNextState = StateStart.STATE_NAME;
                                                            if(_loc6_ || this)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  break loop20;
                                                               }
                                                               loop4:
                                                               while(true)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop20;
                                                                  }
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     AngryBirdsFP11.§5V§.§>J§();
                                                                     while(!_loc7_)
                                                                     {
                                                                        if(!(_loc6_ || this))
                                                                        {
                                                                           this.§?'§(this.§89§);
                                                                           break loop5;
                                                                        }
                                                                        addr354:
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     addr319:
                                                                     while(true)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr343:
                                                                     while(_loc7_)
                                                                     {
                                                                        break loop5;
                                                                     }
                                                                     break loop20;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr343);
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr301);
                                                         }
                                                      }
                                                      §§goto(addr354);
                                                   }
                                                   §§goto(addr327);
                                                }
                                                else
                                                {
                                                   this.§?'§(this.§89§);
                                                   while(true)
                                                   {
                                                      if(_loc6_ || eventIndex)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            addr216:
                                                            break loop20;
                                                         }
                                                         continue;
                                                      }
                                                   }
                                                   break;
                                                   addr171:
                                                   addr259:
                                                }
                                                §§goto(addr343);
                                             case 1:
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(SoundEngine.§9!X§("Menu_Confirm"));
                                                   if(_loc6_ || eventIndex)
                                                   {
                                                      §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         loop13:
                                                         while(!(_loc7_ && component))
                                                         {
                                                            §§push(this.§=!K§);
                                                            if(!(_loc7_ && eventIndex))
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§push((_loc4_ = this).§89§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        var _loc5_:* = §§pop();
                                                                        if(!(_loc7_ && eventIndex))
                                                                        {
                                                                           _loc4_.§89§ = _loc5_;
                                                                        }
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr171);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr214:
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || component)
                                                                              {
                                                                                 §§push(this.§=!K§);
                                                                                 if(_loc6_ || eventName)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    addr182:
                                                                                 }
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          continue loop16;
                                                                                       }
                                                                                       §§push((_loc4_ = this).§89§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          §§push(§§pop() + 1);
                                                                                       }
                                                                                       _loc5_ = §§pop();
                                                                                       if(!(_loc7_ && eventIndex))
                                                                                       {
                                                                                          _loc4_.§89§ = _loc5_;
                                                                                       }
                                                                                       if(_loc6_ || eventName)
                                                                                       {
                                                                                          break loop13;
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr335);
                                                                                    }
                                                                                    §§goto(addr352);
                                                                                 }
                                                                                 §§goto(addr343);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr343);
                                                                     }
                                                                     §§goto(addr335);
                                                                  }
                                                                  §§goto(addr216);
                                                               }
                                                            }
                                                            §§goto(addr182);
                                                         }
                                                         §§goto(addr354);
                                                      }
                                                      else
                                                      {
                                                         §§push(SoundEngine.§9!X§("Menu_Confirm"));
                                                         if(!_loc7_)
                                                         {
                                                            break;
                                                         }
                                                         addr228:
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   break;
                                                }
                                                §§pop();
                                                if(_loc6_ || component)
                                                {
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr343);
                                             case 2:
                                                if(!_loc7_)
                                                {
                                                   if(!(_loc7_ && eventIndex))
                                                   {
                                                      §§goto(addr228);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr259);
                                                   }
                                                }
                                                §§goto(addr354);
                                             case 3:
                                                §§goto(addr340);
                                          }
                                          return;
                                          §§push(4);
                                       }
                                       §§goto(addr490);
                                       addr469:
                                    }
                                 }
                                 §§goto(addr490);
                              }
                              addr434:
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc7_ && eventIndex))
                                 {
                                    §§goto(addr442);
                                 }
                                 else
                                 {
                                    §§goto(addr485);
                                 }
                              }
                              else
                              {
                                 §§push("FULLSCREEN_BUTTON");
                                 if(_loc6_ || eventName)
                                 {
                                    §§goto(addr469);
                                 }
                                 §§goto(addr470);
                              }
                              §§goto(addr485);
                           }
                           §§push(_loc4_);
                           if(!(_loc7_ && eventName))
                           {
                              §§goto(addr434);
                           }
                        }
                        §§goto(addr470);
                     }
                  }
                  §§goto(addr434);
               }
               §§goto(addr470);
            }
            §§goto(addr418);
         }
         §§goto(addr485);
      }
      
      private function §?'§(chapterNum:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(!(_loc6_ && newX))
         {
            while(true)
            {
               loop1:
               while(_loc5_ || this)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        loop4:
                        while(_loc5_ || chapterNum)
                        {
                           this.§=!K§ = true;
                           loop5:
                           while(true)
                           {
                              loop6:
                              for(; !_loc6_; while(!(_loc6_ && chapterNum))
                              {
                                 §§push(0);
                                 if(_loc5_ || this)
                                 {
                                    §§goto(addr92);
                                 }
                                 §§goto(addr102);
                              })
                              {
                                 §§push(chapterNum);
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop() <= this.§9!;§.length - 1)
                                    {
                                       §§push(chapterNum);
                                       while(true)
                                       {
                                          if(_loc5_ || this)
                                          {
                                             if(§§pop() >= 0)
                                             {
                                                loop13:
                                                while(true)
                                                {
                                                   this.§89§ = chapterNum;
                                                   addr61:
                                                   addr103:
                                                   while(_loc5_ || chapterNum)
                                                   {
                                                      if(_loc6_ && chapterNum)
                                                      {
                                                         while(_loc5_)
                                                         {
                                                         }
                                                         continue loop1;
                                                         addr160:
                                                      }
                                                      if(_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc6_ && distance))
                                                      {
                                                         if(!(_loc5_ || chapterNum))
                                                         {
                                                            continue loop6;
                                                         }
                                                         addr46:
                                                         if(!(_loc6_ && distance))
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(false)
                                                            {
                                                               continue loop13;
                                                            }
                                                            §§push(this.§9!;§);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop6;
                                                               §§goto(addr46);
                                                            }
                                                            addr125:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop13;
                                                               }
                                                               continue loop4;
                                                            }
                                                            addr163:
                                                            while(true)
                                                            {
                                                               §§push(this.§9!;§);
                                                               if(_loc6_)
                                                               {
                                                                  addr204:
                                                                  §§push(-§§pop()[chapterNum].x);
                                                                  if(!(_loc6_ && chapterNum))
                                                                  {
                                                                     §§push(§§pop() + this.§,!Q§);
                                                                     if(!(_loc6_ && newX))
                                                                     {
                                                                        addr225:
                                                                        §§push(Number(§§pop()));
                                                                        break loop13;
                                                                     }
                                                                     break loop13;
                                                                  }
                                                                  break loop13;
                                                               }
                                                               §§push(§§pop().length - 1);
                                                               if(!(_loc6_ && newX))
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  while(true)
                                                                  {
                                                                     chapterNum = §§pop();
                                                                     addr151:
                                                                     while(true)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  addr150:
                                                               }
                                                               §§goto(addr225);
                                                            }
                                                         }
                                                         addr78:
                                                      }
                                                      §§goto(addr204);
                                                      §§goto(addr163);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ && chapterNum))
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr78);
                                                         }
                                                         addr110:
                                                      }
                                                      §§goto(addr151);
                                                      §§goto(addr61);
                                                   }
                                                }
                                                var newX:* = §§pop();
                                                if(!_loc5_)
                                                {
                                                }
                                                §§push(this.§4!%§.x - newX);
                                                if(_loc5_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                var distance:* = §§pop();
                                                if(_loc6_ && this)
                                                {
                                                }
                                                var tweenTime:* = Number(Math.abs(distance));
                                                if(!_loc5_)
                                                {
                                                }
                                                addr500:
                                                tweenTime /= 400;
                                                addr501:
                                                addr498:
                                                addr499:
                                                addr497:
                                                if(_loc5_)
                                                {
                                                   addr494:
                                                   §§push(tweenTime * TWEEN_TIME);
                                                   if(_loc5_ || chapterNum)
                                                   {
                                                      addr483:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc6_ && newX))
                                                      {
                                                         tweenTime = §§pop();
                                                         addr491:
                                                         addr459:
                                                         §§push(tweenTime);
                                                         §§push(1);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               addr453:
                                                               if(!_loc6_)
                                                               {
                                                                  addr456:
                                                                  §§push(Number(1));
                                                                  if(_loc5_ || this)
                                                                  {
                                                                     if(_loc5_ || newX)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!(_loc6_ && newX))
                                                                              {
                                                                                 tweenTime = §§pop();
                                                                                 addr437:
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       addr405:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr397:
                                                                                          if(this.§9!f§ != null)
                                                                                          {
                                                                                             addr399:
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr391:
                                                                                                this.§9!f§.stop();
                                                                                                addr393:
                                                                                                addr402:
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr358:
                                                                                                   this.§9!f§ = TweenManager.§8!X§.§8m§(this.§4!%§,{"x":newX},null,tweenTime,TweenManager.§&T§);
                                                                                                   addr375:
                                                                                                   if(!(_loc6_ && this))
                                                                                                   {
                                                                                                      addr343:
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(_loc5_ || chapterNum)
                                                                                                         {
                                                                                                            addr321:
                                                                                                            §§push(this.§9!f§);
                                                                                                            if(!(_loc6_ && distance))
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§pop().onComplete = this.§?X§;
                                                                                                                  addr333:
                                                                                                                  if(_loc5_ || chapterNum)
                                                                                                                  {
                                                                                                                     addr296:
                                                                                                                     if(_loc5_ || newX)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && chapterNum))
                                                                                                                        {
                                                                                                                           if(!(_loc6_ && this))
                                                                                                                           {
                                                                                                                              §§push(this.§9!f§);
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 §§pop().play();
                                                                                                                                 addr291:
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!_loc6_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          if(_loc6_ && this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr399);
                                                                                                                                          }
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       §§goto(addr343);
                                                                                                                                    }
                                                                                                                                    §§goto(addr291);
                                                                                                                                 }
                                                                                                                                 §§goto(addr296);
                                                                                                                              }
                                                                                                                              §§goto(addr321);
                                                                                                                           }
                                                                                                                           §§goto(addr494);
                                                                                                                        }
                                                                                                                        §§goto(addr405);
                                                                                                                     }
                                                                                                                     §§goto(addr333);
                                                                                                                  }
                                                                                                                  §§goto(addr393);
                                                                                                               }
                                                                                                               §§goto(addr397);
                                                                                                            }
                                                                                                            §§goto(addr391);
                                                                                                         }
                                                                                                         §§goto(addr402);
                                                                                                      }
                                                                                                      §§goto(addr375);
                                                                                                   }
                                                                                                   §§goto(addr391);
                                                                                                }
                                                                                                §§goto(addr501);
                                                                                             }
                                                                                             §§goto(addr437);
                                                                                          }
                                                                                          §§goto(addr358);
                                                                                       }
                                                                                       §§goto(addr491);
                                                                                    }
                                                                                    §§goto(addr453);
                                                                                 }
                                                                                 §§goto(addr456);
                                                                              }
                                                                              §§goto(addr500);
                                                                           }
                                                                        }
                                                                        §§goto(addr494);
                                                                     }
                                                                     §§goto(addr483);
                                                                  }
                                                                  §§goto(addr491);
                                                               }
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr397);
                                                         }
                                                         §§goto(addr498);
                                                      }
                                                      §§goto(addr499);
                                                   }
                                                   §§goto(addr497);
                                                }
                                                addr505:
                                                §§goto(addr505);
                                             }
                                             §§goto(addr125);
                                          }
                                          §§goto(addr150);
                                          addr92:
                                          if(!(_loc5_ || distance))
                                          {
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             continue loop7;
                                          }
                                          chapterNum = int(§§pop());
                                          §§goto(addr103);
                                       }
                                    }
                                    §§goto(addr160);
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      private function §?X§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            if(!_loc3_)
            {
               addr25:
            }
            §§push(0);
            if(_loc2_ || i)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               §§push(i);
               if(!(_loc3_ && i))
               {
                  if(_loc2_ || i)
                  {
                     if(!_loc3_)
                     {
                        if(§§pop() >= this.§[!2§.length)
                        {
                           loop1:
                           while(!(_loc3_ && i))
                           {
                              loop2:
                              while(_loc2_)
                              {
                                 this.§=!K§ = false;
                                 while(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(!(_loc2_ || i))
                                       {
                                          continue loop2;
                                       }
                                       if(_loc2_ || _loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break loop0;
                                             }
                                             addr179:
                                             addr171:
                                             §§push(i);
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop() == this.§89§)
                                                {
                                                   break loop2;
                                                }
                                                addr137:
                                                §§push(this.§[!2§);
                                                if(!_loc3_)
                                                {
                                                   §§push(i);
                                                   if(_loc2_)
                                                   {
                                                      §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop()[§§pop()].gotoAndStop("Selected");
                                                         loop7:
                                                         while(true)
                                                         {
                                                            addr114:
                                                            while(true)
                                                            {
                                                               §§push(i);
                                                               addr116:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + 1);
                                                                  addr117:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                     §§push(int(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        i = §§pop();
                                                                        addr121:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                               break loop1;
                                                            }
                                                         }
                                                      }
                                                      addr164:
                                                   }
                                                   while(true)
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr137);
                                                   }
                                                   addr163:
                                                }
                                                §§goto(addr164);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§goto(addr163);
                                          }
                                          addr175:
                                       }
                                       §§goto(addr121);
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§goto(addr175);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr114);
                           }
                        }
                        else
                        {
                           §§goto(addr179);
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr117);
               }
               §§goto(addr120);
            }
            return;
         }
         §§goto(addr25);
      }
   }
}
