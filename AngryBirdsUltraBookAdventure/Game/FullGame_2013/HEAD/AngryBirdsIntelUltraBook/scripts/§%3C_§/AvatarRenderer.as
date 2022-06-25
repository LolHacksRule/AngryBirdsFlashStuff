package §<_§
{
   import §!!V§.AvatarCreatorPopup;
   import §!!]§.§%X§;
   import §!!]§.Avatar;
   import §3!@§.ServerIdParser;
   import §6v§.§ ![§;
   import §]_§.§%1§;
   import §]_§.Item;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class AvatarRenderer implements § ![§
   {
       
      
      private var §9D§:Array;
      
      private var §&!C§:Boolean = false;
      
      public function AvatarRenderer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            loop0:
            do
            {
               this.§9D§ = [];
               loop1:
               while(true)
               {
                  loop2:
                  do
                  {
                     super();
                     while(!_loc1_)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc1_ && this);
                  
                  continue loop0;
               }
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function §!Q§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || processQueue$0)
         {
         }
         if(_loc5_ && this)
         {
         }
         var object:Object = null;
         while(true)
         {
            loop1:
            while(!_loc5_)
            {
               loop2:
               do
               {
                  this.§&!C§ = true;
                  while(_loc6_)
                  {
                     if(_loc6_)
                     {
                        continue loop2;
                     }
                  }
                  continue loop1;
               }
               while(false);
               
               var _loc2_:int = 0;
               for each(object in this.§9D§)
               {
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        try
                        {
                           addr93:
                           this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
                           if(_loc5_)
                           {
                           }
                        }
                        catch(e:Error)
                        {
                           if(!(_loc5_ && this))
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 trace("couldnt render avatar!");
                              }
                           }
                           if(!_loc6_)
                           {
                           }
                           continue;
                        }
                        addr111:
                        continue;
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr93);
               }
               if(_loc5_ && this)
               {
               }
               return;
            }
         }
      }
      
      public function §4<§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!_loc2_)
         {
         }
         do
         {
            this.§&!C§ = true;
            while(!(_loc2_ || _loc1_))
            {
            }
         }
         while(!_loc2_);
         
      }
      
      public function render(avatarString:String, callBack:Function, imageSize:int = 50, ignoreBackground:Boolean = false) : BitmapData
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         if(!_loc21_)
         {
         }
         var holderSprite:Sprite = null;
         var avCreator:§5!2§ = null;
         var allAvatars:Array = null;
         var character:§%1§ = null;
         var parsedItems:Array = null;
         var avatarContainer:§%X§ = null;
         var avatar:Avatar = null;
         var item:Item = null;
         var imageSizeMargin:Number = NaN;
         var scale:Number = NaN;
         var bmd:BitmapData = null;
         var av:Avatar = null;
         var item2:Item = null;
         var mat:Matrix = null;
         if(!_loc22_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  addr112:
                  if(_loc22_ && avatarString)
                  {
                     continue;
                  }
                  if(!_loc21_)
                  {
                     continue loop0;
                  }
                  this.§9D§.push({
                     "avatarString":avatarString,
                     "callBack":callBack,
                     "imageSize":imageSize,
                     "ignoreBackground":ignoreBackground
                  });
                  addr121:
                  if(!_loc22_)
                  {
                     addr79:
                     if(!(_loc22_ && this))
                     {
                        if(false)
                        {
                           loop5:
                           while(true)
                           {
                              §§push(this.§&!C§);
                              if(_loc21_ || callBack)
                              {
                                 §§push(!§§pop());
                              }
                              if(§§pop())
                              {
                                 if(_loc21_ || this)
                                 {
                                    addr108:
                                    while(true)
                                    {
                                       if(!_loc22_)
                                       {
                                          if(_loc21_)
                                          {
                                             §§goto(addr112);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr127:
                                          }
                                       }
                                       while(true)
                                       {
                                          continue loop5;
                                       }
                                       §§goto(addr121);
                                    }
                                    continue loop1;
                                    addr108:
                                 }
                                 §§goto(addr108);
                              }
                              else
                              {
                                 holderSprite = new Sprite();
                                 if(_loc22_)
                                 {
                                 }
                                 avCreator = new §5!2§();
                                 if(_loc22_ && avatarString)
                                 {
                                 }
                                 allAvatars = [];
                                 if(_loc22_ && imageSize)
                                 {
                                 }
                                 var _loc19_:* = 0;
                                 var _loc20_:* = §5!2§.§<o§().characters;
                                 addr244:
                                 for each(character in _loc20_)
                                 {
                                    if(_loc21_ || this)
                                    {
                                       if(_loc22_)
                                       {
                                       }
                                    }
                                    av = new Avatar(character);
                                    if(!(_loc22_ && this))
                                    {
                                       addr236:
                                       allAvatars.push(av);
                                       addr243:
                                       if(!(_loc22_ && this))
                                       {
                                          if(!(_loc22_ && imageSize))
                                          {
                                             addr234:
                                             if(false)
                                             {
                                                §§goto(addr236);
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr243);
                                       }
                                       addr241:
                                       §§goto(addr241);
                                    }
                                    §§goto(addr234);
                                 }
                                 if(_loc21_ || avatarString)
                                 {
                                 }
                                 parsedItems = ServerIdParser.§,1§(avatarString);
                                 if(_loc22_ && avatarString)
                                 {
                                 }
                                 avatarContainer = new §%X§();
                                 if(_loc21_ || imageSize)
                                 {
                                    if(_loc21_)
                                    {
                                       addr293:
                                       holderSprite.addChild(avatarContainer);
                                       if(!_loc22_)
                                       {
                                          if(!(_loc22_ && this))
                                          {
                                             if(false)
                                             {
                                                §§goto(addr293);
                                             }
                                             §§push(0);
                                             if(_loc21_ || this)
                                             {
                                                _loc19_ = §§pop();
                                                if(!(_loc22_ && imageSize))
                                                {
                                                   _loc20_ = parsedItems;
                                                   addr380:
                                                   for each(item in _loc20_)
                                                   {
                                                      if(!(_loc22_ && avatarString))
                                                      {
                                                         if(!(_loc22_ && callBack))
                                                         {
                                                            if(item.§[L§ == "CategoryBirds")
                                                            {
                                                               if(_loc21_ || avatarString)
                                                               {
                                                                  addr358:
                                                                  avatar = avatarContainer.§=W§(item.§7!D§,AvatarCreatorPopup.STARTUP_CHARACTER_SID,"CategoryBirds",allAvatars,100,170,true);
                                                                  if(_loc22_ && this)
                                                                  {
                                                                  }
                                                               }
                                                               §§goto(addr358);
                                                            }
                                                            §§goto(addr380);
                                                         }
                                                      }
                                                      §§goto(addr358);
                                                   }
                                                }
                                                if(_loc21_)
                                                {
                                                   addr495:
                                                   if(ignoreBackground)
                                                   {
                                                      avatar.§<U§();
                                                      addr486:
                                                      if(!_loc22_)
                                                      {
                                                         addr481:
                                                      }
                                                      §§goto(addr495);
                                                      addr493:
                                                      addr492:
                                                   }
                                                   addr470:
                                                   imageSizeMargin = imageSize * 0.4;
                                                   addr469:
                                                   addr467:
                                                   if(_loc21_ || callBack)
                                                   {
                                                      addr450:
                                                      if(!(_loc22_ && avatarString))
                                                      {
                                                         if(!(_loc22_ && callBack))
                                                         {
                                                            addr405:
                                                            §§push(imageSize);
                                                            if(!_loc22_)
                                                            {
                                                               addr409:
                                                               §§push(§§pop() / 100);
                                                               if(_loc21_)
                                                               {
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(§§pop() / 2);
                                                                     if(_loc21_ || avatarString)
                                                                     {
                                                                        addr434:
                                                                        if(!(_loc22_ && avatarString))
                                                                        {
                                                                           addr442:
                                                                           scale = §§pop();
                                                                           addr443:
                                                                           if(_loc21_)
                                                                           {
                                                                              if(_loc21_)
                                                                              {
                                                                                 if(_loc21_ || avatarString)
                                                                                 {
                                                                                    if(!(_loc22_ && avatarString))
                                                                                    {
                                                                                       addr403:
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr405);
                                                                                       }
                                                                                       bmd = new BitmapData(imageSize + imageSizeMargin,imageSize + imageSizeMargin,true,16777215);
                                                                                       if(!_loc22_)
                                                                                       {
                                                                                          if(_loc21_ || avatarString)
                                                                                          {
                                                                                             if(avatar)
                                                                                             {
                                                                                                if(!(_loc22_ && imageSize))
                                                                                                {
                                                                                                   addr545:
                                                                                                }
                                                                                                addr517:
                                                                                                addr546:
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   if(_loc21_ || avatarString)
                                                                                                   {
                                                                                                      if(!_loc22_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            §§goto(addr517);
                                                                                                         }
                                                                                                         _loc19_ = 0;
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            _loc20_ = parsedItems;
                                                                                                            addr720:
                                                                                                            for each(item2 in _loc20_)
                                                                                                            {
                                                                                                               if(_loc22_ && callBack)
                                                                                                               {
                                                                                                               }
                                                                                                               addr708:
                                                                                                               §§push(Boolean(item2.§[L§ != "CategoryBirds"));
                                                                                                               §§push(Boolean(item2.§[L§ != "CategoryBirds"));
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                               }
                                                                                                               addr719:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  addr716:
                                                                                                                  §§pop();
                                                                                                                  addr670:
                                                                                                                  addr717:
                                                                                                                  §§push(item2.§[L§ == "CategoryBackgrounds");
                                                                                                                  if(!(_loc22_ && callBack))
                                                                                                                  {
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                        §§push(!§§pop());
                                                                                                                        if(!_loc22_)
                                                                                                                        {
                                                                                                                           addr688:
                                                                                                                           if(!_loc22_)
                                                                                                                           {
                                                                                                                              if(!(_loc22_ && imageSize))
                                                                                                                              {
                                                                                                                                 addr698:
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(!_loc22_)
                                                                                                                                 {
                                                                                                                                    addr700:
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       avatar.§&3§(item2);
                                                                                                                                       addr703:
                                                                                                                                       addr702:
                                                                                                                                       if(!(_loc22_ && callBack))
                                                                                                                                       {
                                                                                                                                          addr652:
                                                                                                                                          §§push(item2.§[L§);
                                                                                                                                          if(!(_loc22_ && imageSize))
                                                                                                                                          {
                                                                                                                                             if(!(_loc22_ && this))
                                                                                                                                             {
                                                                                                                                                §§push("CategoryBackgrounds");
                                                                                                                                                if(!_loc22_)
                                                                                                                                                {
                                                                                                                                                   if(_loc21_ || callBack)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() == §§pop())
                                                                                                                                                      {
                                                                                                                                                         addr637:
                                                                                                                                                         if(!_loc22_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc22_)
                                                                                                                                                            {
                                                                                                                                                               addr642:
                                                                                                                                                               if(!(_loc22_ && this))
                                                                                                                                                               {
                                                                                                                                                                  addr588:
                                                                                                                                                                  avatar.§4!T§(item2.§7!D§);
                                                                                                                                                                  if(_loc21_ || callBack)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc21_ || callBack)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc22_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc22_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc22_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr588);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr720);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr703);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr642);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr588);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr702);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr637);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr652);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr719);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr703);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr720);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr708);
                                                                                                                                                }
                                                                                                                                                §§goto(addr670);
                                                                                                                                             }
                                                                                                                                             §§goto(addr708);
                                                                                                                                          }
                                                                                                                                          §§goto(addr670);
                                                                                                                                       }
                                                                                                                                       §§goto(addr717);
                                                                                                                                    }
                                                                                                                                    §§goto(addr652);
                                                                                                                                 }
                                                                                                                                 §§goto(addr716);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr708);
                                                                                                                        }
                                                                                                                        §§goto(addr698);
                                                                                                                     }
                                                                                                                     §§goto(addr708);
                                                                                                                  }
                                                                                                                  §§goto(addr688);
                                                                                                               }
                                                                                                               §§goto(addr700);
                                                                                                            }
                                                                                                         }
                                                                                                         if(!(_loc22_ && callBack))
                                                                                                         {
                                                                                                            addr731:
                                                                                                            if(!(_loc22_ && avatarString))
                                                                                                            {
                                                                                                               mat = new Matrix();
                                                                                                               if(_loc21_ || callBack)
                                                                                                               {
                                                                                                               }
                                                                                                               mat.scale(scale,scale);
                                                                                                               addr821:
                                                                                                               if(!_loc22_)
                                                                                                               {
                                                                                                                  mat.translate(imageSizeMargin / 2,imageSizeMargin / 2);
                                                                                                                  addr791:
                                                                                                                  if(_loc21_ || avatarString)
                                                                                                                  {
                                                                                                                     addr769:
                                                                                                                     bmd.draw(avatarContainer,mat,null,null,null,true);
                                                                                                                     if(!(_loc22_ && imageSize))
                                                                                                                     {
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           if(_loc21_ || imageSize)
                                                                                                                           {
                                                                                                                              if(!(_loc22_ && avatarString))
                                                                                                                              {
                                                                                                                                 if(false)
                                                                                                                                 {
                                                                                                                                    §§goto(addr769);
                                                                                                                                 }
                                                                                                                                 addr824:
                                                                                                                                 §§push(callBack);
                                                                                                                                 if(!(_loc22_ && imageSize))
                                                                                                                                 {
                                                                                                                                    if(§§pop() != null)
                                                                                                                                    {
                                                                                                                                       if(_loc21_ || this)
                                                                                                                                       {
                                                                                                                                          if(!(_loc22_ && callBack))
                                                                                                                                          {
                                                                                                                                             addr873:
                                                                                                                                             callBack(bmd);
                                                                                                                                             addr869:
                                                                                                                                             addr877:
                                                                                                                                          }
                                                                                                                                          §§goto(addr861);
                                                                                                                                       }
                                                                                                                                       addr867:
                                                                                                                                       if(true)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr869);
                                                                                                                                    }
                                                                                                                                    addr861:
                                                                                                                                    return bmd;
                                                                                                                                 }
                                                                                                                                 §§goto(addr873);
                                                                                                                              }
                                                                                                                              §§goto(addr821);
                                                                                                                           }
                                                                                                                           §§goto(addr769);
                                                                                                                        }
                                                                                                                        §§goto(addr821);
                                                                                                                     }
                                                                                                                     §§goto(addr791);
                                                                                                                  }
                                                                                                                  addr809:
                                                                                                                  §§goto(addr809);
                                                                                                               }
                                                                                                               addr823:
                                                                                                               §§goto(addr823);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr877);
                                                                                                      }
                                                                                                      §§goto(addr731);
                                                                                                   }
                                                                                                   §§goto(addr546);
                                                                                                }
                                                                                                §§goto(addr867);
                                                                                             }
                                                                                             §§goto(addr824);
                                                                                          }
                                                                                          §§goto(addr731);
                                                                                       }
                                                                                       §§goto(addr545);
                                                                                    }
                                                                                    §§goto(addr450);
                                                                                 }
                                                                                 §§goto(addr443);
                                                                              }
                                                                              §§goto(addr493);
                                                                           }
                                                                           §§goto(addr481);
                                                                        }
                                                                        §§goto(addr470);
                                                                     }
                                                                     §§goto(addr442);
                                                                  }
                                                                  §§goto(addr469);
                                                               }
                                                               §§goto(addr434);
                                                            }
                                                            §§goto(addr467);
                                                            addr464:
                                                         }
                                                         §§goto(addr492);
                                                      }
                                                      §§goto(addr470);
                                                      addr478:
                                                   }
                                                   §§goto(addr486);
                                                   addr386:
                                                }
                                                §§goto(addr403);
                                             }
                                             §§goto(addr409);
                                          }
                                          §§goto(addr386);
                                       }
                                       §§goto(addr478);
                                    }
                                    §§goto(addr495);
                                 }
                                 §§goto(addr464);
                              }
                           }
                           §§goto(addr879);
                        }
                        addr879:
                        return null;
                     }
                     while(true)
                     {
                        §§goto(addr127);
                        §§goto(addr79);
                     }
                     addr130:
                  }
                  §§goto(addr108);
               }
            }
         }
         §§goto(addr130);
      }
   }
}
