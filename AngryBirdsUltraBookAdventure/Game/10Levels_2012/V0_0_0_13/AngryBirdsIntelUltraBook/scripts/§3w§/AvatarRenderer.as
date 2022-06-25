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
         if(_loc2_ && this)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               this.§1k§ = [];
               loop1:
               while(_loc1_ || _loc2_)
               {
                  while(true)
                  {
                     while(true)
                     {
                        super();
                        while(!(_loc2_ && this))
                        {
                           if(_loc1_)
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 return;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
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
         while(true)
         {
            loop1:
            while(_loc6_)
            {
               loop2:
               do
               {
                  this.§'n§ = true;
                  while(!_loc5_)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               var _loc2_:int = 0;
               var _loc3_:* = this.§1k§;
               for each(object in _loc3_)
               {
                  if(_loc6_ || processQueue$0)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        try
                        {
                           this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
                           if(!_loc6_)
                           {
                           }
                           addr116:
                        }
                        catch(e:Error)
                        {
                           if(_loc6_ || _loc2_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                              }
                              addr157:
                              if(_loc6_ || this)
                              {
                              }
                              continue;
                           }
                           trace("couldnt render avatar!");
                           §§goto(addr157);
                        }
                        continue;
                        §§goto(addr116);
                     }
                  }
                  §§goto(addr116);
               }
               if(_loc5_ && this)
               {
               }
               return;
            }
         }
      }
      
      public function §+!<§() : void
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
               this.§'n§ = true;
               loop1:
               while(_loc1_)
               {
                  while(!(_loc1_ || this))
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function render(avatarString:String, callBack:Function, imageSize:int = 50, ignoreBackground:Boolean = false) : BitmapData
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         if(_loc22_ && callBack)
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
         if(!_loc22_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  while(true)
                  {
                     while(!_loc22_)
                     {
                        if(!_loc21_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§goto(addr109);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(false)
            {
               addr109:
               §§goto(addr839);
            }
            addr839:
            while(true)
            {
               §§push(this.§'n§);
               if(_loc21_ || callBack)
               {
                  §§push(!§§pop());
               }
               if(§§pop())
               {
                  continue loop4;
               }
               holderSprite = new Sprite();
               if(_loc21_ || this)
               {
               }
               avCreator = new §1!!§();
               if(_loc22_)
               {
               }
               allAvatars = [];
               if(_loc22_)
               {
               }
               var _loc19_:* = 0;
               var _loc20_:* = §1!!§.§=x§().characters;
               addr239:
               for each(character in _loc20_)
               {
                  if(!_loc22_)
                  {
                     if(_loc22_ && this)
                     {
                     }
                  }
                  av = new Avatar(character);
                  if(_loc22_ && avatarString)
                  {
                  }
                  addr229:
                  allAvatars.push(av);
                  if(_loc21_)
                  {
                     if(!(_loc22_ && avatarString))
                     {
                        if(false)
                        {
                           §§goto(addr229);
                        }
                        §§goto(addr239);
                     }
                     §§goto(addr229);
                  }
                  addr238:
                  §§goto(addr238);
               }
               if(_loc22_)
               {
               }
               parsedItems = ServerIdParser.§@E§(avatarString);
               if(_loc22_)
               {
               }
               avatarContainer = new §6!4§();
               if(!(_loc22_ && this))
               {
                  if(_loc21_)
                  {
                     addr278:
                     holderSprite.addChild(avatarContainer);
                     if(!_loc22_)
                     {
                        if(_loc21_ || this)
                        {
                           if(false)
                           {
                              §§goto(addr278);
                           }
                           §§push(0);
                           if(_loc21_)
                           {
                              _loc19_ = §§pop();
                              if(!_loc22_)
                              {
                                 _loc20_ = parsedItems;
                                 addr350:
                                 for each(item in _loc20_)
                                 {
                                    if(_loc21_ || imageSize)
                                    {
                                       if(!(_loc22_ && avatarString))
                                       {
                                          if(item.§-!@§ == "CategoryBirds")
                                          {
                                             if(_loc21_ || avatarString)
                                             {
                                                addr332:
                                             }
                                             avatar = avatarContainer.§!!=§(item.§<!B§,AvatarCreatorPopup.STARTUP_CHARACTER_SID,"CategoryBirds",allAvatars,100,170,true);
                                             if(!_loc21_)
                                             {
                                             }
                                          }
                                          §§goto(addr350);
                                       }
                                    }
                                    §§goto(addr332);
                                 }
                              }
                              if(!_loc22_)
                              {
                                 addr460:
                                 if(ignoreBackground)
                                 {
                                    avatar.§%!2§();
                                    addr453:
                                    addr457:
                                    if(!(_loc22_ && imageSize))
                                    {
                                       addr437:
                                       imageSizeMargin = imageSize * 0.4;
                                       addr438:
                                       addr436:
                                       addr434:
                                       if(!_loc22_)
                                       {
                                          if(!(_loc22_ && callBack))
                                          {
                                             if(_loc21_ || avatarString)
                                             {
                                                addr374:
                                                §§push(imageSize);
                                                if(!_loc22_)
                                                {
                                                   §§push(§§pop() / 100);
                                                   if(!_loc22_)
                                                   {
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop() / 2);
                                                         if(!(_loc22_ && callBack))
                                                         {
                                                            addr394:
                                                            §§push(Number(§§pop()));
                                                            if(_loc21_ || avatarString)
                                                            {
                                                               scale = §§pop();
                                                               addr412:
                                                               if(_loc21_ || imageSize)
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     if(_loc21_)
                                                                     {
                                                                        if(_loc21_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr374);
                                                                           }
                                                                           bmd = new BitmapData(imageSize + imageSizeMargin,imageSize + imageSizeMargin,true,16777215);
                                                                           if(!(_loc22_ && callBack))
                                                                           {
                                                                              addr515:
                                                                              if(avatar)
                                                                              {
                                                                                 if(_loc21_ || avatarString)
                                                                                 {
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       addr492:
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             if(_loc21_ || avatarString)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr492);
                                                                                                }
                                                                                                _loc19_ = 0;
                                                                                                if(!_loc22_)
                                                                                                {
                                                                                                   _loc20_ = parsedItems;
                                                                                                   addr695:
                                                                                                   for each(item2 in _loc20_)
                                                                                                   {
                                                                                                      if(!(_loc22_ && avatarString))
                                                                                                      {
                                                                                                         addr682:
                                                                                                         §§push(Boolean(item2.§-!@§ != "CategoryBirds"));
                                                                                                         §§push(Boolean(item2.§-!@§ != "CategoryBirds"));
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         addr694:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr691:
                                                                                                            §§pop();
                                                                                                            addr631:
                                                                                                            addr692:
                                                                                                            §§push(item2.§-!@§);
                                                                                                            §§push("CategoryBackgrounds");
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!(_loc22_ && callBack))
                                                                                                               {
                                                                                                                  if(!(_loc22_ && callBack))
                                                                                                                  {
                                                                                                                     if(_loc21_ || imageSize)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(_loc21_ || callBack)
                                                                                                                        {
                                                                                                                           addr663:
                                                                                                                           if(!(_loc22_ && avatarString))
                                                                                                                           {
                                                                                                                              addr671:
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 addr673:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    addr676:
                                                                                                                                    addr675:
                                                                                                                                    if(!_loc22_)
                                                                                                                                    {
                                                                                                                                       avatar.§1$§(item2);
                                                                                                                                       addr612:
                                                                                                                                       if(!(_loc22_ && imageSize))
                                                                                                                                       {
                                                                                                                                          if(!(_loc22_ && avatarString))
                                                                                                                                          {
                                                                                                                                             addr606:
                                                                                                                                             §§push(item2.§-!@§);
                                                                                                                                             if(!(_loc22_ && imageSize))
                                                                                                                                             {
                                                                                                                                                if(!(_loc22_ && avatarString))
                                                                                                                                                {
                                                                                                                                                   §§push("CategoryBackgrounds");
                                                                                                                                                   if(_loc21_ || avatarString)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc21_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr594:
                                                                                                                                                         if(_loc21_ || imageSize)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc22_)
                                                                                                                                                            {
                                                                                                                                                               addr544:
                                                                                                                                                               avatar.§+!U§(item2.§<!B§);
                                                                                                                                                               if(!(_loc22_ && avatarString))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc21_ || callBack)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                     {
                                                                                                                                                                        if(false)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr544);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr695);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr544);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr612);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr594);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr676);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr606);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr695);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr631);
                                                                                                                                                }
                                                                                                                                                §§goto(addr682);
                                                                                                                                             }
                                                                                                                                             §§goto(addr631);
                                                                                                                                          }
                                                                                                                                          §§goto(addr694);
                                                                                                                                       }
                                                                                                                                       §§goto(addr675);
                                                                                                                                    }
                                                                                                                                    §§goto(addr692);
                                                                                                                                 }
                                                                                                                                 §§goto(addr606);
                                                                                                                              }
                                                                                                                              §§goto(addr682);
                                                                                                                           }
                                                                                                                           §§goto(addr691);
                                                                                                                        }
                                                                                                                        §§goto(addr671);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr682);
                                                                                                               }
                                                                                                               §§goto(addr663);
                                                                                                            }
                                                                                                            §§goto(addr682);
                                                                                                         }
                                                                                                         §§goto(addr673);
                                                                                                      }
                                                                                                      §§goto(addr676);
                                                                                                   }
                                                                                                }
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   if(!_loc22_)
                                                                                                   {
                                                                                                      mat = new Matrix();
                                                                                                      if(!(_loc22_ && avatarString))
                                                                                                      {
                                                                                                         mat.scale(scale,scale);
                                                                                                         addr781:
                                                                                                         addr783:
                                                                                                      }
                                                                                                      mat.translate(imageSizeMargin / 2,imageSizeMargin / 2);
                                                                                                      addr751:
                                                                                                      addr774:
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         if(!(_loc22_ && this))
                                                                                                         {
                                                                                                            addr736:
                                                                                                            bmd.draw(avatarContainer,mat,null,null,null,true);
                                                                                                            if(!_loc22_)
                                                                                                            {
                                                                                                               if(_loc21_ || imageSize)
                                                                                                               {
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     if(_loc21_ || callBack)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr736);
                                                                                                                        }
                                                                                                                        addr784:
                                                                                                                        §§push(callBack);
                                                                                                                        if(_loc21_ || this)
                                                                                                                        {
                                                                                                                           if(§§pop() != null)
                                                                                                                           {
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 addr796:
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    addr833:
                                                                                                                                    callBack(bmd);
                                                                                                                                    addr799:
                                                                                                                                 }
                                                                                                                                 addr811:
                                                                                                                                 return bmd;
                                                                                                                                 addr831:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr827:
                                                                                                                                 if(true)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr831);
                                                                                                                           }
                                                                                                                           §§goto(addr811);
                                                                                                                        }
                                                                                                                        §§goto(addr833);
                                                                                                                     }
                                                                                                                     §§goto(addr781);
                                                                                                                  }
                                                                                                                  §§goto(addr751);
                                                                                                               }
                                                                                                               §§goto(addr736);
                                                                                                            }
                                                                                                            §§goto(addr774);
                                                                                                         }
                                                                                                         §§goto(addr783);
                                                                                                      }
                                                                                                      addr771:
                                                                                                      §§goto(addr771);
                                                                                                   }
                                                                                                   §§goto(addr827);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr796);
                                                                                          }
                                                                                          §§goto(addr515);
                                                                                       }
                                                                                       §§goto(addr796);
                                                                                       addr513:
                                                                                    }
                                                                                    §§goto(addr799);
                                                                                 }
                                                                                 §§goto(addr796);
                                                                              }
                                                                              §§goto(addr784);
                                                                           }
                                                                           §§goto(addr513);
                                                                        }
                                                                        §§goto(addr453);
                                                                     }
                                                                  }
                                                                  §§goto(addr438);
                                                               }
                                                               addr412:
                                                               §§goto(addr412);
                                                            }
                                                            §§goto(addr436);
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                      §§goto(addr437);
                                                   }
                                                   §§goto(addr394);
                                                }
                                                §§goto(addr434);
                                                addr431:
                                             }
                                             §§goto(addr460);
                                          }
                                          §§goto(addr457);
                                       }
                                       §§goto(addr453);
                                       addr432:
                                    }
                                    addr458:
                                    §§goto(addr458);
                                 }
                                 §§goto(addr432);
                              }
                              §§goto(addr431);
                           }
                           §§goto(addr437);
                        }
                        §§goto(addr412);
                     }
                     §§goto(addr453);
                     addr289:
                  }
                  §§goto(addr412);
               }
               §§goto(addr289);
            }
            return null;
         }
      }
   }
}
