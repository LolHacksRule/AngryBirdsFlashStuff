package §3w§
{
   import §+!1§.AvatarCreatorPopup;
   import §5!'§.§^E§;
   import §[!H§.§6!4§;
   import §[!H§.Avatar;
   import §^B§.Item;
   import §^B§.§[_§;
   import §^`§.ServerIdParser;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class AvatarRenderer implements §^E§
   {
       
      
      private var §1k§:Array;
      
      private var §'n§:Boolean = false;
      
      public function AvatarRenderer()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && _loc1_))
         {
            loop0:
            while(true)
            {
               this.§1k§ = [];
               while(true)
               {
                  while(!(_loc2_ && _loc1_))
                  {
                     super();
                     while(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && this))
                           {
                              return;
                              addr61:
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §'I§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc5_)
         {
         }
         if(!_loc6_)
         {
         }
         var object:Object = null;
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               addr46:
               while(true)
               {
                  this.§'n§ = true;
                  while(!_loc5_)
                  {
                     if(!(_loc5_ && processQueue$0))
                     {
                        continue loop0;
                     }
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
      }
      
      public function §+!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc2_ && this)
         {
         }
         do
         {
            this.§'n§ = true;
            while(!(_loc1_ || _loc1_))
            {
            }
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function render(avatarString:String, callBack:Function, imageSize:int = 50, ignoreBackground:Boolean = false) : BitmapData
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         if(_loc21_)
         {
         }
         var holderSprite:Sprite = null;
         var avCreator:§1!!§ = null;
         var allAvatars:Array = null;
         var character:§[_§ = null;
         var parsedItems:Array = null;
         var avatarContainer:§6!4§ = null;
         var avatar:Avatar = null;
         var item:Item = null;
         var imageSizeMargin:Number = NaN;
         var scale:* = NaN;
         var bmd:BitmapData = null;
         var av:Avatar = null;
         var item2:Item = null;
         var mat:Matrix = null;
         if(_loc22_ || avatarString)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(true)
               {
                  loop3:
                  while(_loc22_)
                  {
                     loop4:
                     while(true)
                     {
                        addr89:
                        addr795:
                        while(true)
                        {
                           §§push(this.§'n§);
                           if(!_loc21_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc22_)
                              {
                                 if(!_loc21_)
                                 {
                                    continue loop2;
                                 }
                                 continue loop3;
                              }
                              continue loop4;
                           }
                           holderSprite = new Sprite();
                           if(_loc22_ || avatarString)
                           {
                           }
                           avCreator = new §1!!§();
                           if(_loc21_ && this)
                           {
                           }
                           allAvatars = [];
                           if(_loc21_)
                           {
                           }
                           var _loc19_:* = 0;
                           var _loc20_:* = §1!!§.§=x§().characters;
                           addr225:
                           for each(character in _loc20_)
                           {
                              if(!_loc21_)
                              {
                                 if(_loc22_)
                                 {
                                    addr190:
                                 }
                                 av = new Avatar(character);
                                 if(_loc21_ && callBack)
                                 {
                                 }
                                 addr215:
                                 allAvatars.push(av);
                                 if(_loc22_)
                                 {
                                    if(_loc22_ || avatarString)
                                    {
                                       if(false)
                                       {
                                          §§goto(addr215);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr215);
                                 }
                                 addr224:
                                 §§goto(addr224);
                              }
                              §§goto(addr190);
                           }
                           if(_loc22_ || imageSize)
                           {
                           }
                           parsedItems = ServerIdParser.§@E§(avatarString);
                           if(_loc21_ && this)
                           {
                           }
                           avatarContainer = new §6!4§();
                           if(_loc22_)
                           {
                              if(!_loc21_)
                              {
                                 addr269:
                                 holderSprite.addChild(avatarContainer);
                                 if(!_loc21_)
                                 {
                                    if(!(_loc21_ && imageSize))
                                    {
                                       if(false)
                                       {
                                          §§goto(addr269);
                                       }
                                       §§push(0);
                                       if(!_loc21_)
                                       {
                                          _loc19_ = §§pop();
                                          if(!_loc21_)
                                          {
                                             _loc20_ = parsedItems;
                                             addr331:
                                             for each(item in _loc20_)
                                             {
                                                if(!(_loc21_ && callBack))
                                                {
                                                   if(_loc22_)
                                                   {
                                                      if(item.§-!@§ == "CategoryBirds")
                                                      {
                                                         if(!_loc21_)
                                                         {
                                                            addr314:
                                                            avatar = avatarContainer.§!!=§(item.§<!B§,AvatarCreatorPopup.STARTUP_CHARACTER_SID,"CategoryBirds",allAvatars,100,170,true);
                                                            if(!_loc22_)
                                                            {
                                                            }
                                                            addr313:
                                                         }
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   §§goto(addr313);
                                                }
                                                §§goto(addr314);
                                             }
                                          }
                                          if(_loc22_)
                                          {
                                             addr446:
                                             if(ignoreBackground)
                                             {
                                                addr436:
                                                if(_loc22_ || this)
                                                {
                                                   avatar.§%!2§();
                                                   addr420:
                                                   if(_loc22_ || this)
                                                   {
                                                      addr409:
                                                      imageSizeMargin = imageSize * 0.4;
                                                      addr408:
                                                      addr406:
                                                      if(!(_loc21_ && avatarString))
                                                      {
                                                         addr394:
                                                         if(_loc22_)
                                                         {
                                                            if(!(_loc21_ && this))
                                                            {
                                                               addr346:
                                                               §§push(imageSize);
                                                               if(!_loc21_)
                                                               {
                                                                  addr350:
                                                                  §§push(§§pop() / 100);
                                                                  if(_loc22_)
                                                                  {
                                                                     if(!(_loc21_ && imageSize))
                                                                     {
                                                                        §§push(§§pop() / 2);
                                                                        if(!(_loc21_ && this))
                                                                        {
                                                                           addr370:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        if(!_loc21_)
                                                                        {
                                                                           scale = §§pop();
                                                                           addr374:
                                                                           if(_loc22_ || callBack)
                                                                           {
                                                                              if(!_loc21_)
                                                                              {
                                                                                 if(!_loc21_)
                                                                                 {
                                                                                    addr344:
                                                                                    if(false)
                                                                                    {
                                                                                       §§goto(addr346);
                                                                                    }
                                                                                    bmd = new BitmapData(imageSize + imageSizeMargin,imageSize + imageSizeMargin,true,16777215);
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                       if(!(_loc21_ && avatarString))
                                                                                       {
                                                                                          if(avatar)
                                                                                          {
                                                                                             if(_loc22_ || callBack)
                                                                                             {
                                                                                                addr489:
                                                                                                if(!_loc21_)
                                                                                                {
                                                                                                   addr473:
                                                                                                   if(!_loc21_)
                                                                                                   {
                                                                                                      if(_loc22_ || avatarString)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr473);
                                                                                                         }
                                                                                                         _loc19_ = 0;
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            _loc20_ = parsedItems;
                                                                                                            addr661:
                                                                                                            for each(item2 in _loc20_)
                                                                                                            {
                                                                                                               if(_loc22_ || callBack)
                                                                                                               {
                                                                                                                  addr646:
                                                                                                                  §§push(item2.§-!@§ == "CategoryBirds");
                                                                                                                  if(_loc22_)
                                                                                                                  {
                                                                                                                     §§push(!§§pop());
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(!(_loc21_ && this))
                                                                                                                  {
                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                  }
                                                                                                                  addr660:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr657:
                                                                                                                     §§pop();
                                                                                                                     addr658:
                                                                                                                     §§push(item2.§-!@§);
                                                                                                                     if(!(_loc21_ && callBack))
                                                                                                                     {
                                                                                                                        addr609:
                                                                                                                        §§push("CategoryBackgrounds");
                                                                                                                        if(_loc22_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(!_loc21_)
                                                                                                                           {
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 §§push(!§§pop());
                                                                                                                                 if(!(_loc21_ && imageSize))
                                                                                                                                 {
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       addr627:
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       if(!(_loc21_ && callBack))
                                                                                                                                       {
                                                                                                                                          addr634:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             avatar.§1$§(item2);
                                                                                                                                             addr637:
                                                                                                                                             addr636:
                                                                                                                                             if(!_loc21_)
                                                                                                                                             {
                                                                                                                                                addr553:
                                                                                                                                                §§push(item2.§-!@§);
                                                                                                                                                if(!_loc21_)
                                                                                                                                                {
                                                                                                                                                   §§push("CategoryBackgrounds");
                                                                                                                                                   if(!_loc21_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc21_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!_loc21_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc22_ || callBack)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc22_ || avatarString)
                                                                                                                                                                  {
                                                                                                                                                                     addr535:
                                                                                                                                                                     avatar.§+!U§(item2.§<!B§);
                                                                                                                                                                     if(!_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc21_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc22_ || avatarString)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr535);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr661);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr535);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr658);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr637);
                                                                                                                                                                     }
                                                                                                                                                                     addr586:
                                                                                                                                                                     §§goto(addr586);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr660);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr636);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr637);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr535);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr661);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr609);
                                                                                                                                                }
                                                                                                                                                §§goto(addr658);
                                                                                                                                             }
                                                                                                                                             addr597:
                                                                                                                                             §§goto(addr597);
                                                                                                                                          }
                                                                                                                                          §§goto(addr553);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr646);
                                                                                                                                 }
                                                                                                                                 §§goto(addr627);
                                                                                                                              }
                                                                                                                              §§goto(addr657);
                                                                                                                           }
                                                                                                                           §§goto(addr627);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr646);
                                                                                                                  }
                                                                                                                  §§goto(addr634);
                                                                                                               }
                                                                                                               §§goto(addr535);
                                                                                                            }
                                                                                                         }
                                                                                                         if(_loc22_)
                                                                                                         {
                                                                                                            if(_loc22_ || imageSize)
                                                                                                            {
                                                                                                               addr675:
                                                                                                               mat = new Matrix();
                                                                                                               if(_loc22_)
                                                                                                               {
                                                                                                                  mat.scale(scale,scale);
                                                                                                                  addr744:
                                                                                                                  if(!_loc21_)
                                                                                                                  {
                                                                                                                     mat.translate(imageSizeMargin / 2,imageSizeMargin / 2);
                                                                                                                     addr705:
                                                                                                                     addr730:
                                                                                                                     if(!(_loc21_ && avatarString))
                                                                                                                     {
                                                                                                                        if(!(_loc21_ && callBack))
                                                                                                                        {
                                                                                                                           addr690:
                                                                                                                           bmd.draw(avatarContainer,mat,null,null,null,true);
                                                                                                                           if(_loc22_)
                                                                                                                           {
                                                                                                                              if(_loc22_)
                                                                                                                              {
                                                                                                                                 if(!_loc21_)
                                                                                                                                 {
                                                                                                                                    addr688:
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr690);
                                                                                                                                    }
                                                                                                                                    §§push(callBack);
                                                                                                                                    if(_loc22_)
                                                                                                                                    {
                                                                                                                                       if(§§pop() != null)
                                                                                                                                       {
                                                                                                                                          if(_loc22_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc21_ && callBack))
                                                                                                                                             {
                                                                                                                                                addr789:
                                                                                                                                                callBack(bmd);
                                                                                                                                                addr793:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                addr776:
                                                                                                                                                if(true)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             if(_loc21_ && imageSize)
                                                                                                                                             {
                                                                                                                                                §§goto(addr793);
                                                                                                                                             }
                                                                                                                                             addr772:
                                                                                                                                             return bmd;
                                                                                                                                             addr787:
                                                                                                                                          }
                                                                                                                                          §§goto(addr776);
                                                                                                                                       }
                                                                                                                                       §§goto(addr772);
                                                                                                                                    }
                                                                                                                                    §§goto(addr789);
                                                                                                                                 }
                                                                                                                                 §§goto(addr705);
                                                                                                                              }
                                                                                                                              §§goto(addr690);
                                                                                                                           }
                                                                                                                           §§goto(addr730);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr744);
                                                                                                                  }
                                                                                                                  addr742:
                                                                                                                  §§goto(addr742);
                                                                                                               }
                                                                                                               §§goto(addr688);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr789);
                                                                                                   }
                                                                                                   §§goto(addr787);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr675);
                                                                                          }
                                                                                          §§goto(addr688);
                                                                                       }
                                                                                       §§goto(addr675);
                                                                                    }
                                                                                    §§goto(addr489);
                                                                                 }
                                                                                 §§goto(addr420);
                                                                              }
                                                                              §§goto(addr374);
                                                                              addr391:
                                                                           }
                                                                           §§goto(addr394);
                                                                        }
                                                                        §§goto(addr409);
                                                                     }
                                                                     §§goto(addr408);
                                                                  }
                                                                  §§goto(addr370);
                                                               }
                                                               §§goto(addr406);
                                                               addr403:
                                                            }
                                                            §§goto(addr436);
                                                         }
                                                         §§goto(addr409);
                                                      }
                                                      §§goto(addr436);
                                                      addr404:
                                                      addr427:
                                                   }
                                                   addr432:
                                                   §§goto(addr432);
                                                }
                                                §§goto(addr446);
                                             }
                                             §§goto(addr404);
                                          }
                                          §§goto(addr403);
                                       }
                                       §§goto(addr350);
                                    }
                                    §§goto(addr391);
                                 }
                              }
                              §§goto(addr344);
                           }
                           §§goto(addr427);
                        }
                        return null;
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
   }
}
