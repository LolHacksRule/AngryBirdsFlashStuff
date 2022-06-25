package §9c§
{
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §#!X§.ChapterModel;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
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
         var STATE_NAME:Boolean = false;
         var TWEEN_TIME:Boolean = true;
         if(TWEEN_TIME || StateChapterSelection)
         {
         }
         loop0:
         while(true)
         {
            STATE_NAME = "ChapterSelectionState";
            while(true)
            {
               while(TWEEN_TIME || TWEEN_TIME)
               {
                  if(TWEEN_TIME)
                  {
                     TWEEN_TIME = 0.5;
                     if(TWEEN_TIME)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private var §9l§:Sprite;
      
      private var §@v§:UIContainerRovio;
      
      private var §!j§:Array;
      
      private var §?!K§:Array;
      
      private var §^!W§:int = 0;
      
      private var §?!Q§:Number = 0;
      
      private var §3!'§:Number = 0;
      
      private var §!!c§:Dictionary;
      
      private var §^!P§:Dictionary;
      
      private var §]!L§:§9h§ = null;
      
      private var §?K§:Boolean = false;
      
      private var §9w§:Number = 0;
      
      public function StateChapterSelection(initObject:Boolean, name:String = "ChapterSelectionState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr70:
                  while(_loc4_)
                  {
                  }
                  continue loop0;
                  addr52:
                  if(!(_loc3_ && initObject))
                  {
                     return;
                     addr59:
                  }
               }
            }
         }
         while(true)
         {
            super(initObject,name);
            while(!_loc3_)
            {
               if(_loc3_)
               {
                  continue;
               }
               §§goto(addr52);
            }
            §§goto(addr70);
         }
         §§goto(addr59);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §^,§ = new §-!H§(this);
                     loop3:
                     while(true)
                     {
                        loop4:
                        for(; !_loc1_; if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        },this.§4!V§(),while(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           continue loop3;
                        },§§goto(addr61))
                        {
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           §^,§.init(§3!5§.§4@§.Views.View_ChapterSelection[0]);
                           while(true)
                           {
                              addr61:
                              while(_loc2_)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            addr117:
         }
         while(true)
         {
            if(_loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr117);
            }
            §§goto(addr54);
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
         if(!_loc7_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super.activate();
                     while(true)
                     {
                        addr66:
                        while(_loc6_ || chapterNum)
                        {
                           continue loop2;
                        }
                     }
                  }
                  while(_loc6_ || this)
                  {
                     if(_loc7_ && chapter)
                     {
                        continue;
                     }
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     §§goto(addr66);
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr49);
         }
         §§push(0);
         if(!(_loc7_ && image))
         {
            §§push(int(§§pop()));
         }
         var chapterNum:* = §§pop();
         if(_loc6_ || chapter)
         {
         }
         loop8:
         for each(image in this.§!j§)
         {
            if(!_loc7_)
            {
               if(!_loc7_)
               {
                  addr130:
               }
               chapter = LevelManager.§ m§(chapterNum);
               if(_loc6_ || chapterNum)
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
                              image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]!$§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§#!-§(chapter);
                              while(true)
                              {
                                 addr284:
                                 addr273:
                                 while(true)
                                 {
                                 }
                                 loop15:
                                 for(; !(_loc7_ && chapter); if(_loc7_ && chapter)
                                 {
                                    continue;
                                 },while(true)
                                 {
                                    §§goto(addr177);
                                 })
                                 {
                                    loop16:
                                    while(true)
                                    {
                                       image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§8!2§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§@!3§(chapter);
                                       loop17:
                                       while(true)
                                       {
                                          loop18:
                                          while(true)
                                          {
                                             addr233:
                                             while(true)
                                             {
                                                if(image.Textfield_Score == null)
                                                {
                                                   addr177:
                                                   do
                                                   {
                                                      §§push(chapterNum);
                                                      if(_loc6_)
                                                      {
                                                         §§push(§§pop() + 1);
                                                         if(_loc6_ || chapterNum)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                      }
                                                      chapterNum = §§pop();
                                                      while(!_loc7_)
                                                      {
                                                         continue loop10;
                                                         if(!_loc6_)
                                                         {
                                                            continue;
                                                         }
                                                         addr149:
                                                         if(_loc6_ || chapter)
                                                         {
                                                            continue loop17;
                                                         }
                                                         addr203:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop15;
                                                            }
                                                            continue loop18;
                                                            §§goto(addr149);
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      continue loop16;
                                                   }
                                                   while(false);
                                                   
                                                   continue loop8;
                                                   addr177:
                                                }
                                                if(!_loc6_)
                                                {
                                                }
                                                while(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8!6§(chapter);
                                                      continue loop18;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop11;
                                                addr241:
                                                continue loop18;
                                             }
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
                        if(image.Textfield_CollectedStars != null)
                        {
                           §§goto(addr273);
                        }
                        §§goto(addr233);
                        §§goto(addr284);
                     }
                  }
               }
               §§goto(addr214);
            }
            §§goto(addr130);
         }
         if(_loc7_ && chapterNum)
         {
         }
      }
      
      private function §4!V§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_)
         {
         }
         var chapter:ChapterModel = null;
         var chapterName:String = null;
         if(!_loc6_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  for(; !_loc6_; if(!(_loc5_ || offsetX))
                  {
                     continue;
                  },if(_loc5_)
                  {
                     if(!_loc6_)
                     {
                        continue loop1;
                     }
                     addr82:
                     while(true)
                     {
                        this.§!j§ = [];
                        addr79:
                        while(true)
                        {
                           addr74:
                           loop6:
                           while(true)
                           {
                              addr44:
                              addr104:
                              while(true)
                              {
                                 this.§?!K§ = [];
                                 continue loop6;
                              }
                              var offsetX:* = Number(0);
                              if(!_loc6_)
                              {
                                 this.§9l§ = new Sprite();
                                 this.§9l§.y = AngryBirdsFP11.include / 2;
                                 addr218:
                                 addr228:
                                 addr244:
                                 if(!(_loc6_ && offsetX))
                                 {
                                    this.§?!Q§ = AngryBirdsFP11.§8!Z§ / 2;
                                    this.§9l§.x = this.§?!Q§;
                                    addr205:
                                    addr208:
                                    addr196:
                                    addr193:
                                    if(!(_loc6_ && chapter))
                                    {
                                       this.§@v§.mClip.addChild(this.§9l§);
                                       addr174:
                                       if(_loc5_)
                                       {
                                          addr163:
                                          if(!_loc6_)
                                          {
                                             addr137:
                                             this.§^!P§ = new Dictionary();
                                             if(!(_loc6_ && this))
                                             {
                                                if(_loc5_ || chapter)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc5_ || this)
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(_loc5_ || chapterNum)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        §§goto(addr137);
                                                                     }
                                                                     §§push(0);
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                     }
                                                                     var chapterNum:* = §§pop();
                                                                     addr357:
                                                                     §§push(chapterNum);
                                                                     if(!(_loc6_ && chapter))
                                                                     {
                                                                        if(§§pop() < LevelManager.§8H§())
                                                                        {
                                                                           addr259:
                                                                           addr274:
                                                                           if(_loc5_)
                                                                           {
                                                                              if(_loc5_ || offsetX)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    chapter = LevelManager.§ m§(chapterNum);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push("MovieClip_");
                                                                                       if(_loc5_ || chapter)
                                                                                       {
                                                                                          if(_loc5_ || offsetX)
                                                                                          {
                                                                                             §§push(§§pop() + chapter.menuImage);
                                                                                          }
                                                                                       }
                                                                                       chapterName = §§pop();
                                                                                       addr356:
                                                                                    }
                                                                                    §§push(this.§7A§(chapterName,offsetX,chapterNum));
                                                                                    if(!(_loc6_ && offsetX))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    offsetX = §§pop();
                                                                                    addr309:
                                                                                    addr331:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(chapterNum);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§pop() + 1);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr291:
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                             chapterNum = §§pop();
                                                                                             if(_loc5_ || chapter)
                                                                                             {
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr309);
                                                                                                   }
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                                §§goto(addr331);
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                          §§goto(addr291);
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                    addr334:
                                                                                    §§goto(addr334);
                                                                                 }
                                                                                 addr409:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc5_ || chapterNum)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             addr457:
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                §§push(this.§7A§("MovieClip_Chapter_Selection_Shop",offsetX,chapterNum));
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      addr436:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!(_loc6_ && chapter))
                                                                                                      {
                                                                                                         offsetX = §§pop();
                                                                                                         addr412:
                                                                                                         if(!(_loc6_ && chapterNum))
                                                                                                         {
                                                                                                            this.§ use§();
                                                                                                            §§goto(addr409);
                                                                                                            addr419:
                                                                                                         }
                                                                                                         addr472:
                                                                                                         if(_loc5_ || chapterNum)
                                                                                                         {
                                                                                                            §§push(chapterNum);
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() + 1);
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                               }
                                                                                                               addr468:
                                                                                                               chapterNum = §§pop();
                                                                                                               §§goto(addr457);
                                                                                                               addr469:
                                                                                                            }
                                                                                                            §§goto(addr468);
                                                                                                            §§push(int(§§pop()));
                                                                                                            addr479:
                                                                                                         }
                                                                                                         §§goto(addr472);
                                                                                                         addr444:
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   offsetX = §§pop();
                                                                                                   §§goto(addr472);
                                                                                                }
                                                                                                §§goto(addr436);
                                                                                             }
                                                                                             §§goto(addr469);
                                                                                          }
                                                                                          return;
                                                                                       }
                                                                                       §§goto(addr444);
                                                                                    }
                                                                                    §§goto(addr412);
                                                                                 }
                                                                                 §§goto(addr409);
                                                                              }
                                                                              §§goto(addr274);
                                                                           }
                                                                           §§goto(addr479);
                                                                        }
                                                                        if(_loc5_ || chapterNum)
                                                                        {
                                                                           if(!(_loc6_ && offsetX))
                                                                           {
                                                                              §§goto(addr436);
                                                                              §§push(this.§7A§("MovieClip_Chapter_Selection_More_Coming",offsetX,chapterNum));
                                                                           }
                                                                           §§goto(addr419);
                                                                        }
                                                                        §§goto(addr412);
                                                                     }
                                                                     §§goto(addr468);
                                                                  }
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr174);
                                                            }
                                                            §§goto(addr163);
                                                         }
                                                         §§goto(addr137);
                                                         addr160:
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr196);
                                             }
                                             §§goto(addr193);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr205);
                                    }
                                    §§goto(addr244);
                                 }
                                 addr246:
                                 §§goto(addr246);
                              }
                              §§goto(addr160);
                           }
                        }
                     }
                  },while(true)
                  {
                     if(_loc5_ || this)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr57);
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr74);
                  },§§goto(addr93))
                  {
                     this.§@v§ = §^,§.getItemByName("Container_ChapterSelection") as UIContainerRovio;
                     while(true)
                     {
                        addr57:
                        if(!(_loc6_ && offsetX))
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop0;
                  if(!(_loc5_ || chapterNum))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr44);
                  }
                  §§goto(addr104);
               }
            }
         }
         §§goto(addr82);
      }
      
      private function § use§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         var dotCls:Class = null;
         var image:MovieClip = null;
         if(!_loc6_)
         {
         }
         loop0:
         while(true)
         {
            addr60:
            while(true)
            {
               continue loop0;
            }
         }
      }
      
      private function §7A§(chapterName:String, offsetX:Number, chapterNum:int) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || chapterNum)
         {
         }
         var chapter:ChapterModel = null;
         var chapterCls:Class = null;
         var image:MovieClip = null;
         if(_loc7_ || offsetX)
         {
            while(true)
            {
            }
            addr111:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               addr103:
               addr467:
               while(AssetCache.§0u§(chapterName))
               {
                  while(true)
                  {
                     continue loop1;
                  }
               }
               return offsetX;
               addr73:
               if(_loc8_ && chapterName)
               {
                  continue;
               }
               if(!(_loc8_ && this))
               {
                  addr51:
                  if(!_loc8_)
                  {
                     if(false)
                     {
                        loop7:
                        while(true)
                        {
                           addr57:
                           while(true)
                           {
                              if(!(_loc8_ && this))
                              {
                                 if(_loc8_ && chapterNum)
                                 {
                                    continue loop1;
                                 }
                                 if(_loc7_)
                                 {
                                    §§goto(addr73);
                                 }
                                 else
                                 {
                                    §§goto(addr92);
                                 }
                              }
                              else
                              {
                                 while(!_loc8_)
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr111);
                                 addr83:
                              }
                           }
                           continue loop2;
                        }
                        §§goto(addr103);
                     }
                     chapter = LevelManager.§ m§(chapterNum);
                     if(_loc8_)
                     {
                     }
                     chapterCls = AssetCache.§,!k§(chapterName);
                     if(_loc7_ || chapterName)
                     {
                     }
                     image = new chapterCls();
                     if(!(_loc8_ && chapterName))
                     {
                        image.x = offsetX;
                        addr466:
                     }
                     this.§9l§.addChild(image);
                     this.§!j§.push(image);
                     addr459:
                     addr446:
                     addr449:
                     addr456:
                     if(_loc7_ || chapterName)
                     {
                        §§push(offsetX);
                        if(_loc7_)
                        {
                           §§push(§§pop() + image.width * 1.55);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        offsetX = §§pop();
                        addr403:
                        addr419:
                        if(_loc7_)
                        {
                           this.§^!P§[image] = chapterNum;
                           image.addEventListener(MouseEvent.CLICK,this.§2!N§);
                           image.buttonMode = true;
                           addr400:
                           addr393:
                           addr390:
                           if(_loc7_ || offsetX)
                           {
                              if(!_loc8_)
                              {
                                 if(_loc7_ || chapterName)
                                 {
                                    addr356:
                                    if(image.Textfield_CollectedStars != null)
                                    {
                                       addr336:
                                       if(!(_loc8_ && chapterName))
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_ || offsetX)
                                             {
                                                image.Textfield_CollectedStars.text.text = AngryBirdsFP11.sUserProgress.§8!2§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§@!3§(chapter);
                                                addr297:
                                                if(!(_loc8_ && this))
                                                {
                                                   if(_loc7_ || chapterName)
                                                   {
                                                      addr272:
                                                      if(image.Textfield_Score != null)
                                                      {
                                                         if(_loc7_ || offsetX)
                                                         {
                                                         }
                                                         addr285:
                                                         if(!_loc8_)
                                                         {
                                                            if(!(_loc8_ && this))
                                                            {
                                                               image.Textfield_Score.text.text = AngryBirdsFP11.sUserProgress.§8!6§(chapter);
                                                               addr271:
                                                               addr260:
                                                               if(image.Textfield_ME_Score != null)
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                  }
                                                                  addr243:
                                                                  if(!(_loc8_ && this))
                                                                  {
                                                                     if(!(_loc8_ && chapterNum))
                                                                     {
                                                                        addr176:
                                                                        image.Textfield_ME_Score.text.text = AngryBirdsFP11.sUserProgress.§]!$§(chapter) + "/" + AngryBirdsFP11.sUserProgress.§#!-§(chapter);
                                                                        if(_loc7_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(!(_loc8_ && chapterNum))
                                                                              {
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    if(!(_loc8_ && chapterNum))
                                                                                    {
                                                                                       if(_loc7_ || chapterNum)
                                                                                       {
                                                                                          if(!(_loc8_ && chapterName))
                                                                                          {
                                                                                             if(!(_loc8_ && chapterName))
                                                                                             {
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      if(false)
                                                                                                      {
                                                                                                         §§goto(addr176);
                                                                                                      }
                                                                                                      §§goto(addr467);
                                                                                                   }
                                                                                                   §§goto(addr459);
                                                                                                }
                                                                                                §§goto(addr446);
                                                                                             }
                                                                                             §§goto(addr403);
                                                                                          }
                                                                                          §§goto(addr400);
                                                                                       }
                                                                                       §§goto(addr176);
                                                                                    }
                                                                                    §§goto(addr419);
                                                                                 }
                                                                                 §§goto(addr336);
                                                                              }
                                                                              §§goto(addr285);
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr243);
                                                                     }
                                                                     §§goto(addr449);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               §§goto(addr467);
                                                            }
                                                            §§goto(addr393);
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr271);
                                                   }
                                                   §§goto(addr336);
                                                }
                                                addr330:
                                                §§goto(addr330);
                                             }
                                             §§goto(addr459);
                                          }
                                          §§goto(addr400);
                                       }
                                       §§goto(addr356);
                                    }
                                    §§goto(addr272);
                                 }
                                 §§goto(addr456);
                              }
                              §§goto(addr390);
                           }
                           addr380:
                           §§goto(addr380);
                        }
                        §§goto(addr466);
                     }
                     addr464:
                     §§goto(addr464);
                  }
                  §§goto(addr103);
               }
               §§goto(addr57);
            }
         }
      }
      
      private function §1c§(e:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
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
                  §§push(this.§?K§);
                  if(_loc2_ || this)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     break;
                  }
                  if(_loc2_ || _loc2_)
                  {
                     continue;
                  }
                  addr96:
                  while(_loc2_)
                  {
                     this.§=M§(this.§!!c§[e.target]);
                     while(_loc2_)
                     {
                        if(_loc2_ || e)
                        {
                           break loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               return;
            }
         }
         while(true)
         {
            §§goto(addr96);
         }
      }
      
      private function §2!N§(e:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && _loc3_)
         {
         }
         var chapter:MovieClip = null;
         if(!_loc3_)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(this.§?K§);
               while(true)
               {
                  §§push(!§§pop());
                  addr66:
                  addr221:
                  while(§§pop())
                  {
                     if(_loc3_ || this)
                     {
                     }
                     continue loop1;
                  }
                  return;
                  addr44:
                  if(_loc3_ || this)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           addr54:
                           if(false)
                           {
                              while(true)
                              {
                                 addr59:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(e.currentTarget is MovieClip);
                                    if(_loc4_ && chapter)
                                    {
                                       break;
                                    }
                                    §§goto(addr44);
                                 }
                                 §§goto(addr66);
                                 §§goto(addr54);
                              }
                              addr57:
                           }
                           chapter = MovieClip(e.currentTarget);
                           if(!(_loc4_ && this))
                           {
                              if(this.§^!W§ != this.§^!P§[chapter])
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_ || chapter)
                                    {
                                       this.§=M§(this.§^!P§[chapter]);
                                       §§goto(addr221);
                                       addr220:
                                       addr139:
                                    }
                                    else
                                    {
                                       addr151:
                                       if(false)
                                       {
                                          addr153:
                                          mNextState = StateLevelSelection.STATE_NAME;
                                          if(!(_loc4_ && this))
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || this)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      §§goto(addr151);
                                                   }
                                                   addr171:
                                                   if(_loc3_ || e)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr153);
                                                      }
                                                      addr211:
                                                   }
                                                   LevelManager.§3V§ = this.§^!P§[chapter];
                                                   §§goto(addr171);
                                                   addr199:
                                                }
                                                §§goto(addr153);
                                                addr168:
                                             }
                                             §§goto(addr220);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr221);
                                 }
                                 §§goto(addr168);
                              }
                              else if(this.§^!P§[chapter] < LevelManager.§8H§())
                              {
                                 §§goto(addr211);
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr59);
                     }
                     return;
                  }
               }
            }
            if(_loc4_ && e)
            {
               continue;
            }
            §§goto(addr57);
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || _loc3_)
         {
            loop0:
            while(true)
            {
               addr40:
               while(true)
               {
                  while(true)
                  {
                     if(_loc4_)
                     {
                        if(!(_loc3_ && deltaTime))
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
            §§goto(addr40);
         }
         §§push(super.run(deltaTime));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(_loc4_)
         {
            loop4:
            while(true)
            {
               §§push(superReturn);
               loop5:
               do
               {
                  if(§§pop() != StateBase.STATE_STATUS_RUNNING)
                  {
                     addr183:
                     continue;
                  }
                  loop6:
                  while(true)
                  {
                     this.§5!-§();
                     do
                     {
                        this.§+Q§();
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue loop5;
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    §§goto(addr183);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop6;
                                    }
                                    addr176:
                                 }
                              }
                           }
                           continue loop4;
                           addr108:
                        }
                     }
                     while(!(_loc4_ || superReturn));
                     
                     return StateBase.STATE_STATUS_COMPLETED;
                  }
               }
               while(§§push(superReturn), _loc3_ && deltaTime);
               
               return §§pop();
            }
         }
         §§goto(addr176);
      }
      
      private function §+Q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         var distance:* = NaN;
         if(_loc4_)
         {
            if(_loc4_ || this)
            {
               addr38:
            }
            §§push(0);
            if(!(_loc3_ && i))
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               §§push(i);
               if(_loc4_ || distance)
               {
                  if(§§pop() >= this.§!j§.length)
                  {
                     if(_loc4_ || i)
                     {
                        if(!(_loc3_ && distance))
                        {
                           if(!(_loc3_ && this))
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(!(_loc3_ && i))
                                 {
                                    addr103:
                                    if(!(_loc3_ && this))
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          if(!(_loc3_ && distance))
                                          {
                                             break;
                                          }
                                          loop29:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr200:
                                                   if(_loc4_ || i)
                                                   {
                                                      addr207:
                                                      §§push(this.§!j§);
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr164:
                                                            §§push(i);
                                                            if(!(_loc3_ && i))
                                                            {
                                                               §§pop()[§§pop()].y = distance / 1000 * -200;
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(i);
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr138:
                                                                              §§push(§§pop() + 1);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    i = §§pop();
                                                                                    while(!(_loc4_ || this))
                                                                                    {
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             continue loop29;
                                                                                          }
                                                                                          loop33:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§9l§.x + this.§!j§[i].x - AngryBirdsFP11.§8!Z§ / 2);
                                                                                             loop34:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop35:
                                                                                                while(true)
                                                                                                {
                                                                                                   distance = §§pop();
                                                                                                   addr399:
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr380:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(Math.abs(distance)));
                                                                                                         loop2:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            distance = §§pop();
                                                                                                            addr377:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr359:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(distance);
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                     §§push(§§pop() * 0.55);
                                                                                                                  }
                                                                                                                  loop5:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc3_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop35;
                                                                                                                     }
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        distance = §§pop();
                                                                                                                        loop7:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr338:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(distance);
                                                                                                                              addr323:
                                                                                                                              while(_loc4_)
                                                                                                                              {
                                                                                                                                 if(§§pop() <= 1000)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§!j§);
                                                                                                                                       addr265:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(i);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop()[§§pop()].scaleX = 1.1 - distance / 1000;
                                                                                                                                             addr273:
                                                                                                                                             loop18:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc3_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc4_ || i))
                                                                                                                                                   {
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§!j§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(i);
                                                                                                                                                         addr249:
                                                                                                                                                         addr211:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop()[§§pop()].scaleY = 1.1 - distance / 1000;
                                                                                                                                                            break loop26;
                                                                                                                                                         }
                                                                                                                                                         while(!(_loc3_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(i);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc3_ && distance))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§pop()[§§pop()].alpha = 1 - distance / 1000 * 1.5;
                                                                                                                                                                  continue loop26;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr249);
                                                                                                                                                               §§goto(addr164);
                                                                                                                                                            }
                                                                                                                                                            continue loop18;
                                                                                                                                                            §§goto(addr207);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr200);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr262:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ && i))
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(1000);
                                                                                                                                       }
                                                                                                                                       addr335:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          continue loop33;
                                                                                                                                       }
                                                                                                                                       addr406:
                                                                                                                                    }
                                                                                                                                    §§goto(addr273);
                                                                                                                                 }
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr305:
                                                                                                                        if(_loc4_ || distance)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop35;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(!_loc3_)
                                                                                       {
                                                                                          while(_loc4_)
                                                                                          {
                                                                                             §§goto(addr211);
                                                                                             §§push(this.§!j§);
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr146:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§goto(addr305);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              addr138:
                                                                           }
                                                                           §§goto(addr138);
                                                                        }
                                                                        addr156:
                                                                     }
                                                                     §§goto(addr399);
                                                                  }
                                                                  §§goto(addr359);
                                                               }
                                                               addr179:
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         §§goto(addr265);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§goto(addr256);
                                             }
                                             §§goto(addr242);
                                          }
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr380);
                              }
                              §§goto(addr290);
                           }
                           §§goto(addr273);
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr406);
               }
               §§goto(addr138);
            }
            return;
         }
         §§goto(addr38);
      }
      
      private function §5!-§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         var j:* = 0;
         if(!(_loc4_ && this))
         {
            if(_loc3_ || i)
            {
            }
         }
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop0:
         while(true)
         {
            §§push(i);
            if(!(_loc4_ && i))
            {
               if(_loc3_)
               {
                  if(!(_loc4_ && this))
                  {
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && j))
                        {
                           §§push(this.§?!K§);
                           if(!(_loc4_ && i))
                           {
                              if(§§pop() >= §§pop().length)
                              {
                                 loop1:
                                 while(true)
                                 {
                                    addr133:
                                    loop2:
                                    while(!_loc4_)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc3_)
                                             {
                                                if(_loc3_ || j)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      this.§9w§ = this.§9l§.x;
                                                      continue loop1;
                                                   }
                                                   loop59:
                                                   while(true)
                                                   {
                                                      loop57:
                                                      while(true)
                                                      {
                                                         §§push(j);
                                                         loop58:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            loop32:
                                                            while(true)
                                                            {
                                                               §§push(int(§§pop()));
                                                               loop73:
                                                               while(true)
                                                               {
                                                                  j = §§pop();
                                                                  addr510:
                                                                  loop50:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || this)
                                                                     {
                                                                        addr517:
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(j);
                                                                           loop78:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§?!K§);
                                                                              loop66:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop().length)
                                                                                 {
                                                                                    loop46:
                                                                                    while(true)
                                                                                    {
                                                                                       addr502:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§push(this.§?!K§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(i);
                                                                                                   loop47:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§pop()[§§pop()].gotoAndStop("Selected");
                                                                                                         loop24:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc3_ || this)
                                                                                                                  {
                                                                                                                     loop25:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(-this.§9l§.x);
                                                                                                                        loop45:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              §§push(800);
                                                                                                                              if(!(_loc4_ && i))
                                                                                                                              {
                                                                                                                                 addr405:
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop11:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc4_ && i))
                                                                                                                                    {
                                                                                                                                       §§push(this.§!j§);
                                                                                                                                       loop43:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc3_ || j)
                                                                                                                                          {
                                                                                                                                             if(_loc3_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(i);
                                                                                                                                                loop42:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() <= §§pop()[§§pop()].x);
                                                                                                                                                      if(!_loc4_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            loop39:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc4_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(!(_loc4_ && i))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        addr463:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 break loop11;
                                                                                                                                                                              }
                                                                                                                                                                              addr578:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr580:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr542:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                          addr537:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(int(§§pop()));
                                                                                                                                                                                             addr538:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                j = §§pop();
                                                                                                                                                                                                addr539:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr464:
                                                                                                                                                                        }
                                                                                                                                                                        loop40:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              loop23:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc3_ || _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop30;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop24;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                       addr293:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(int(§§pop()));
                                                                                                                                                                                          loop68:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             j = §§pop();
                                                                                                                                                                                             addr305:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop8:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(j);
                                                                                                                                                                                                   addr216:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc3_ || i))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop58;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§?!K§);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop66;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop() >= §§pop().length)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc4_ && j))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop2;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr267:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(j);
                                                                                                                                                                                                                        addr246:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + 1);
                                                                                                                                                                                                                           addr247:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop68;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop73;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc3_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop32;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    j = §§pop();
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop8;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr254:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr233:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(this.§?!K§);
                                                                                                                                                                                                                     addr271:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(j);
                                                                                                                                                                                                                        addr272:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc3_ || j))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop47;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr267);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§9w§);
                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc4_ && i)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop11;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(-§§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc4_ && this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop45;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§!j§);
                                                                                                                                                                                                                                          if(_loc4_ && i)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(i);
                                                                                                                                                                                                                                          if(!(_loc3_ || i))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() > §§pop()[§§pop()].x);
                                                                                                                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_ && this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop39;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc4_ && i))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop40;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr464);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop44:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(-§§pop());
                                                                                                                                                                                                                                             addr547:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc4_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§!j§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(i);
                                                                                                                                                                                                                                                      addr557:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc4_ && j))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr564:
                                                                                                                                                                                                                                                            §§push(§§pop() < §§pop()[§§pop()].x);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc4_ && this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                        addr605:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           if(_loc3_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr614:
                                                                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                       addr616:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop44;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr615:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr614:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr614);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr604:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr578);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr605);
                                                                                                                                                                                                                                                               §§goto(addr564);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr567:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr601:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr604);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr556:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop64:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(800);
                                                                                                                                                                                                                                                      addr597:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         addr598:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§!j§);
                                                                                                                                                                                                                                                            addr600:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop64;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr596:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr601);
                                                                                                                                                                                                                                                continue loop44;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                                                                    §§goto(addr578);
                                                                                                                                                                                                                                    break loop11;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr467:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr290:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr538);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr229:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr537);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr254);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop68;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr389:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§?!K§);
                                                                                                                                                                                       addr524:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(j);
                                                                                                                                                                                          addr525:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop()[§§pop()].gotoAndStop("UnSelected");
                                                                                                                                                                                             continue loop59;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr534:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop30;
                                                                                                                                                                           }
                                                                                                                                                                           loop6:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(i);
                                                                                                                                                                              addr158:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                                                                                 if(!(_loc4_ && i))
                                                                                                                                                                                 {
                                                                                                                                                                                    addr167:
                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc4_ && i))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             i = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop6;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr191:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                             addr177:
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop78;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr247);
                                                                                                                                                                                       §§goto(addr539);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr167:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr167);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr614);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr463);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr615);
                                                                                                                                                            }
                                                                                                                                                            addr445:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr567);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr445);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr557);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr600);
                                                                                                                                          }
                                                                                                                                          §§goto(addr556);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr598);
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 §§goto(addr467);
                                                                                                                              }
                                                                                                                              §§goto(addr597);
                                                                                                                           }
                                                                                                                           §§goto(addr547);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr616);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr580);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr525);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr524);
                                                                                             }
                                                                                             addr483:
                                                                                          }
                                                                                          §§goto(addr542);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr534);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr579);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr502);
                                             }
                                             §§goto(addr389);
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr262);
                                    }
                                    while(true)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§push(this.§?!K§);
                                          if(!_loc4_)
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(i);
                                                if(!_loc4_)
                                                {
                                                   §§pop()[§§pop()].gotoAndStop("Selected");
                                                   while(true)
                                                   {
                                                      if(_loc3_ || i)
                                                      {
                                                         §§goto(addr191);
                                                      }
                                                      §§goto(addr305);
                                                   }
                                                   addr206:
                                                }
                                                §§goto(addr272);
                                             }
                                             §§goto(addr483);
                                          }
                                          §§goto(addr271);
                                       }
                                       §§goto(addr510);
                                    }
                                 }
                              }
                              §§goto(addr620);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr293);
                     }
                     §§goto(addr246);
                  }
                  §§goto(addr216);
               }
               §§goto(addr158);
            }
            §§goto(addr167);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(!_loc1_)
         {
            while(true)
            {
               super.deActivate();
            }
            addr116:
         }
         while(true)
         {
            loop2:
            while(!(_loc1_ && this))
            {
               §4!T§.§1t§.clearLevel();
               do
               {
                  while(!(_loc1_ && _loc1_))
                  {
                     (§^,§.getItemByName("Button_Back") as UIButtonRovio).setComponentVisualState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     for(; !(_loc1_ && _loc2_); if(_loc1_ && _loc1_)
                     {
                        continue;
                     },§§goto(addr37))
                     {
                        if(!_loc1_)
                        {
                           continue;
                        }
                        §§goto(addr116);
                     }
                  }
                  continue loop2;
               }
               while(_loc1_);
               
               return;
            }
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(!(_loc7_ && eventIndex))
         {
            while(true)
            {
               while(!_loc7_)
               {
                  if(!_loc6_)
                  {
                     continue;
                  }
                  var _loc4_:* = eventName;
                  if(_loc6_ || eventIndex)
                  {
                     §§push("BACK");
                     if(!_loc7_)
                     {
                        if(_loc6_)
                        {
                           §§push(_loc4_);
                           if(_loc6_ || eventIndex)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    §§push(0);
                                    if(!_loc6_)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    addr498:
                                    §§push(3);
                                    if(!_loc6_)
                                    {
                                       addr507:
                                    }
                                 }
                                 §§goto(addr509);
                              }
                              else
                              {
                                 §§push("PREV");
                                 if(!_loc7_)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       addr414:
                                       §§push(_loc4_);
                                       if(_loc6_ || eventName)
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(1);
                                                if(_loc6_ || eventIndex)
                                                {
                                                }
                                                §§goto(addr509);
                                             }
                                             else
                                             {
                                                §§goto(addr498);
                                             }
                                          }
                                          else
                                          {
                                             §§push("NEXT");
                                             if(_loc6_ || eventName)
                                             {
                                                if(!(_loc7_ && eventName))
                                                {
                                                   addr450:
                                                   §§push(_loc4_);
                                                   if(_loc7_ && this)
                                                   {
                                                   }
                                                   addr495:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr498);
                                                      }
                                                      else
                                                      {
                                                         addr504:
                                                         §§push(4);
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr507);
                                                         }
                                                         §§goto(addr509);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr504);
                                                      }
                                                      else
                                                      {
                                                         addr509:
                                                         loop18:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               addr324:
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §§push(SoundEngine.§`B§("Menu_Back"));
                                                                  if(_loc7_ && eventIndex)
                                                                  {
                                                                     addr215:
                                                                     §§pop();
                                                                     if(!(_loc7_ && this))
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr227:
                                                                           break loop18;
                                                                           addr235:
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!(_loc7_ && component))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr359:
                                                                     loop8:
                                                                     while(!(_loc6_ || this))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§=M§(this.§^!W§);
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     addr346:
                                                                     break loop18;
                                                                     addr366:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop13:
                                                                     while(!_loc7_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           addr193:
                                                                           while(!(_loc7_ && component))
                                                                           {
                                                                              §§push(this.§?K§);
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§push(!§§pop());
                                                                              }
                                                                              while(§§pop())
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 addr344:
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       addr326:
                                                                                       while(true)
                                                                                       {
                                                                                          AngryBirdsFP11.§8R§.§,!f§();
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr366);
                                                                              }
                                                                              §§goto(addr346);
                                                                           }
                                                                           break loop2;
                                                                           addr193:
                                                                        }
                                                                        §§push((_loc4_ = this).§^!W§);
                                                                        if(_loc6_ || component)
                                                                        {
                                                                           §§push(§§pop() + 1);
                                                                        }
                                                                        var _loc5_:* = §§pop();
                                                                        if(_loc6_ || eventName)
                                                                        {
                                                                           _loc4_.§^!W§ = _loc5_;
                                                                        }
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr368);
                                                                        §§goto(addr368);
                                                                     }
                                                                     addr296:
                                                                  }
                                                                  §§goto(addr368);
                                                                  §§goto(addr193);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break loop18;
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                               break;
                                                               addr324:
                                                            case 1:
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  §§push(SoundEngine.§`B§("Menu_Confirm"));
                                                                  if(_loc6_)
                                                                  {
                                                                     §§pop();
                                                                     loop14:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc7_ && eventIndex))
                                                                           {
                                                                              §§push(this.§?K§);
                                                                              if(!(_loc7_ && eventIndex))
                                                                              {
                                                                                 §§push(!§§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc6_ || eventIndex)
                                                                                       {
                                                                                          if(_loc6_ || eventName)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push((_loc4_ = this).§^!W§);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() - 1);
                                                                                                }
                                                                                                _loc5_ = §§pop();
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   _loc4_.§^!W§ = _loc5_;
                                                                                                }
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(_loc6_ || eventName)
                                                                                                   {
                                                                                                      §§goto(addr268);
                                                                                                   }
                                                                                                   §§goto(addr332);
                                                                                                }
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr96);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr344);
                                                                                       }
                                                                                       §§goto(addr324);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr185);
                                                                                 §§goto(addr344);
                                                                              }
                                                                              §§goto(addr185);
                                                                           }
                                                                           §§goto(addr359);
                                                                        }
                                                                        §§goto(addr227);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr215);
                                                                  }
                                                                  §§goto(addr324);
                                                               }
                                                               §§goto(addr296);
                                                            case 2:
                                                               if(_loc6_)
                                                               {
                                                                  §§push(SoundEngine.§`B§("Menu_Confirm"));
                                                                  if(!(_loc7_ && eventIndex))
                                                                  {
                                                                     §§goto(addr215);
                                                                  }
                                                                  §§goto(addr341);
                                                               }
                                                               §§goto(addr349);
                                                            case 3:
                                                               §§goto(addr349);
                                                         }
                                                         return;
                                                         §§push(4);
                                                      }
                                                      §§goto(addr509);
                                                   }
                                                   §§goto(addr504);
                                                }
                                                addr493:
                                                §§goto(addr495);
                                                §§push(_loc4_);
                                                addr493:
                                             }
                                             §§goto(addr493);
                                          }
                                          §§goto(addr509);
                                       }
                                       if(§§pop() === §§pop())
                                       {
                                          if(_loc6_ || eventName)
                                          {
                                             §§push(2);
                                             if(_loc6_ || eventIndex)
                                             {
                                             }
                                             §§goto(addr509);
                                          }
                                          else
                                          {
                                             §§goto(addr504);
                                          }
                                       }
                                       else
                                       {
                                          §§push("FULLSCREEN_BUTTON");
                                          if(_loc6_ || eventName)
                                          {
                                          }
                                          §§goto(addr493);
                                       }
                                       §§goto(addr504);
                                    }
                                    §§goto(addr450);
                                 }
                                 §§goto(addr493);
                              }
                           }
                           §§goto(addr450);
                        }
                        §§goto(addr493);
                     }
                     §§goto(addr414);
                  }
                  §§goto(addr504);
               }
            }
         }
         §§goto(addr148);
      }
      
      private function §=M§(chapterNum:int) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  while(true)
                  {
                     loop3:
                     for(; !(_loc6_ && distance); while(_loc5_ || chapterNum)
                     {
                        §§goto(addr139);
                        §§push(chapterNum);
                     })
                     {
                        loop4:
                        while(true)
                        {
                           this.§?K§ = true;
                           loop5:
                           while(!_loc6_)
                           {
                              continue loop3;
                              loop19:
                              while(true)
                              {
                                 if(!(_loc6_ && distance))
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       this.§^!W§ = chapterNum;
                                       addr47:
                                       loop13:
                                       while(!(_loc6_ && newX))
                                       {
                                          if(!_loc6_)
                                          {
                                             continue loop4;
                                          }
                                          addr104:
                                          while(true)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                break loop13;
                                             }
                                             addr145:
                                             while(true)
                                             {
                                                continue loop1;
                                             }
                                          }
                                       }
                                       while(!_loc6_)
                                       {
                                          while(true)
                                          {
                                             §§push(0);
                                             if(!_loc6_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             if(_loc5_ || this)
                                             {
                                                chapterNum = §§pop();
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop19;
                                                   }
                                                }
                                                addr87:
                                             }
                                             else
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc5_ || chapterNum)
                                                   {
                                                      if(§§pop() >= 0)
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr104);
                                                   }
                                                   else
                                                   {
                                                      addr126:
                                                      while(!(_loc6_ && this))
                                                      {
                                                         chapterNum = §§pop();
                                                         while(_loc6_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop12;
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() <= this.§!j§.length - 1)
                                                         {
                                                            §§push(chapterNum);
                                                            continue loop8;
                                                         }
                                                         §§goto(addr126);
                                                      }
                                                      addr126:
                                                      addr139:
                                                   }
                                                   §§goto(addr145);
                                                }
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr47);
                                       }
                                       continue loop3;
                                    }
                                    addr43:
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      private function §0!§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
         }
         if(_loc2_ || _loc2_)
         {
            if(_loc3_)
            {
            }
         }
         §§push(0);
         if(_loc2_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop0:
         while(true)
         {
            §§push(i);
            if(_loc2_ || _loc3_)
            {
               if(_loc2_ || this)
               {
                  if(§§pop() >= this.§?!K§.length)
                  {
                     loop1:
                     while(true)
                     {
                        addr117:
                        addr184:
                        while(!_loc3_)
                        {
                           this.§?K§ = false;
                           continue loop1;
                        }
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§?!K§);
                              loop6:
                              while(true)
                              {
                                 §§push(i);
                                 loop7:
                                 while(true)
                                 {
                                    §§pop()[§§pop()].gotoAndStop("Selected");
                                    addr169:
                                    while(true)
                                    {
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          break loop7;
                                       }
                                       if(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(i);
                                             if(_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() + 1);
                                                   break;
                                                }
                                             }
                                             break;
                                             addr134:
                                          }
                                          addr128:
                                          i = int(§§pop());
                                          addr127:
                                          continue loop0;
                                       }
                                       addr189:
                                       while(true)
                                       {
                                          §§push(i);
                                       }
                                       while(true)
                                       {
                                          if(§§pop() == this.§^!W§)
                                          {
                                             continue loop4;
                                          }
                                          §§push(this.§?!K§);
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§push(i);
                                          if(_loc3_)
                                          {
                                             continue loop7;
                                          }
                                          §§pop()[§§pop()].gotoAndStop("UnSelected");
                                          loop10:
                                          while(true)
                                          {
                                             addr132:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   break loop10;
                                                }
                                                continue loop10;
                                             }
                                          }
                                          §§goto(addr134);
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr189);
               }
               §§goto(addr127);
            }
            §§goto(addr128);
         }
      }
   }
}
