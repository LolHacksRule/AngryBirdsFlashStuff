package §9"!§
{
   import §#!e§.§1"B§;
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§"A§;
   import com.rovio.assets.§8B§;
   import com.rovio.ui.setTint;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   
   public class §>"7§ extends §2a§
   {
      
      protected static const §&J§:uint = 7602176;
      
      protected static var §9p§:Texture;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §&J§ = 7602176;
         }
      }
      
      protected var § !I§:§0!N§;
      
      protected var §3"C§:§0!N§;
      
      private var §'!g§:Boolean = false;
      
      public function §>"7§(param1:§9"3§, param2:§1"B§, param3:§1!$§.Sprite)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function get §?!k§() : Boolean
      {
         return this.§'!g§;
      }
      
      public function set §?!k§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§"A§ = null;
         var _loc3_:Texture = null;
         var _loc4_:Texture = null;
         if(!_loc5_)
         {
            §§push(this.§'!g§);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() == param1)
               {
                  if(_loc6_)
                  {
                     return;
                  }
               }
               this.§'!g§ = param1;
               addr62:
               if(_loc6_ || _loc2_)
               {
                  §§push(this.§'!g§);
               }
               _loc2_ = this.getSlingshotAnimation();
               _loc3_ = _loc2_.getFrame(0).texture;
               _loc4_ = _loc2_.getFrame(1).texture;
               loop0:
               while(true)
               {
                  if(§3^§.numChildren > 0)
                  {
                     §3^§.removeChildAt(0);
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     §4!l§ = new §0!N§(_loc3_);
                     loop2:
                     while(!(_loc5_ && param1))
                     {
                        §&!1§ = new §0!N§(_loc4_);
                        while(true)
                        {
                           §3^§.addChild(§4!l§);
                           loop4:
                           while(true)
                           {
                              §3^§.addChild(§&P§);
                              loop5:
                              while(!(_loc5_ && param1))
                              {
                                 §3^§.addChild(§,!&§);
                                 while(true)
                                 {
                                    §3^§.addChild(§<!M§);
                                    loop7:
                                    while(_loc6_ || param1)
                                    {
                                       §3^§.addChild(§"!p§);
                                       while(true)
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                break;
                                             }
                                             §3^§.addChild(§&!1§);
                                             continue;
                                          }
                                          continue loop7;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue loop5;
                                    }
                                    if(!(_loc6_ || this))
                                    {
                                       break;
                                    }
                                    §+!$§ = false;
                                    if(!_loc6_)
                                    {
                                       continue;
                                    }
                                    addr85:
                                    if(_loc6_)
                                    {
                                       if(true)
                                       {
                                          §§goto(addr221);
                                       }
                                       while(true)
                                       {
                                          §6$§ = true;
                                          continue loop11;
                                          §§goto(addr85);
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                           if(!(_loc6_ || param1))
                           {
                              continue;
                           }
                           §§goto(addr89);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            if(§§pop())
            {
               §§goto(addr62);
            }
            addr221:
            return;
         }
         §§goto(addr62);
      }
      
      public function §`k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§[!I§(false);
         }
      }
      
      override protected function getSlingshotAnimation() : §"A§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§'!g§)
            {
               if(_loc1_)
               {
                  return §@O§.animationManager.getAnimation("HALLOWEEN_SLINGSHOT");
               }
            }
         }
         return super.getSlingshotAnimation();
      }
      
      public function §!!2§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(Boolean(this.§ !I§));
            while(!§§pop())
            {
               do
               {
                  §§pop();
                  §§push(Boolean(this.§3"C§));
               }
               while(!(_loc5_ || _loc2_));
               
               if(!_loc4_)
               {
                  break;
               }
            }
            if(!§§pop())
            {
               var _loc1_:§"A§ = §@O§.animationManager.getAnimation("SUPER_SLINGSHOT");
               var _loc2_:Texture = _loc1_.getFrame(0).texture;
               var _loc3_:Texture = _loc1_.getFrame(1).texture;
               if(_loc5_ || _loc2_)
               {
                  this.§ !I§ = new §0!N§(_loc2_);
                  while(true)
                  {
                     this.§3"C§ = new §0!N§(_loc3_);
                     while(true)
                     {
                        this.§[!I§(true);
                        §§goto(addr127);
                     }
                  }
               }
               addr127:
               while(true)
               {
                  this.§!G§(§4"F§.§79§);
                  if(_loc5_)
                  {
                     if(!_loc4_)
                     {
                        continue loop2;
                     }
                     continue loop3;
                  }
               }
               addr122:
               return;
            }
            this.§[!I§(true);
         }
      }
      
      public function §!G§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;!M§ = null;
         for each(_loc2_ in § L§)
         {
            if(!(_loc5_ && _loc2_))
            {
               _loc2_.§&!v§ = param1;
            }
         }
      }
      
      protected function §[!I§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(§+!$§ == param1)
            {
               if(!_loc2_)
               {
                  return;
               }
               loop0:
               while(true)
               {
                  loop5:
                  while(true)
                  {
                     if(!(_loc3_ || this))
                     {
                        continue loop0;
                     }
                     loop6:
                     while(true)
                     {
                        §§push(§§findproperty(§^!d§));
                        if(!(_loc2_ && param1))
                        {
                           if(param1)
                           {
                              addr165:
                              §§push(§4"F§.§9B§);
                              if(_loc3_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc2_ && this)
                                 {
                                    addr183:
                                    §§pop().§^!d§ = Number(§§pop());
                                    addr182:
                                    do
                                    {
                                       §+!$§ = param1;
                                    }
                                    while(_loc2_ && this);
                                    
                                    if(_loc2_ && _loc2_)
                                    {
                                       while(true)
                                       {
                                          if(!(_loc3_ || this))
                                          {
                                             continue loop5;
                                          }
                                          if(!(_loc2_ && this))
                                          {
                                             continue loop6;
                                          }
                                          addr218:
                                          while(true)
                                          {
                                             this.§4h§();
                                             continue loop5;
                                          }
                                          §§goto(addr183);
                                       }
                                       addr190:
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       if(§3^§.numChildren > 0)
                                       {
                                          §3^§.removeChildAt(0);
                                          continue;
                                       }
                                       if(_loc3_)
                                       {
                                          §3^§.addChild(!!param1 ? this.§ !I§ : §4!l§);
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          §3^§.addChild(§&P§);
                                          while(!(_loc2_ && _loc3_))
                                          {
                                             §3^§.addChild(§,!&§);
                                             loop10:
                                             do
                                             {
                                                §3^§.addChild(§<!M§);
                                                loop11:
                                                while(true)
                                                {
                                                   §3^§.addChild(§"!p§);
                                                   loop12:
                                                   do
                                                   {
                                                      §3^§.addChild(!!param1 ? this.§3"C§ : §&!1§);
                                                      while(_loc3_)
                                                      {
                                                         §6$§ = true;
                                                         if(_loc3_ || param1)
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                      continue loop11;
                                                   }
                                                   while(!(_loc3_ || this));
                                                   
                                                   continue loop10;
                                                }
                                             }
                                             while(_loc2_);
                                             
                                             if(_loc3_ || _loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   return;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          continue loop7;
                                       }
                                    }
                                    addr153:
                                 }
                                 §§goto(addr183);
                              }
                           }
                           else
                           {
                              §§push(§4"F§.§`!9§);
                              if(_loc3_)
                              {
                                 §§goto(addr182);
                              }
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr165);
                     }
                  }
               }
               addr234:
            }
            while(true)
            {
               if(!param1)
               {
                  §0!P§();
                  §§goto(addr190);
               }
               §§goto(addr218);
               §§goto(addr234);
            }
         }
         §§goto(addr153);
      }
      
      override public function updateAnimations(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super.updateAnimations(param1);
            loop0:
            while(true)
            {
               if(!§+!$§)
               {
                  if(this.§'!g§)
                  {
                     if(!_loc2_)
                     {
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 §4!l§.x -= 10;
                                 §&!1§.x -= 10;
                                 addr58:
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       §&!1§.y -= 5;
                                       if(_loc2_ && _loc2_)
                                       {
                                          §§goto(addr58);
                                       }
                                       if(_loc3_ || _loc2_)
                                       {
                                          break;
                                       }
                                       addr194:
                                       §§push(this.§3"C§);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§,!k§ / §9"3§.§'"F§);
                                          if(_loc3_)
                                          {
                                             §§push(38);
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                             }
                                             addr143:
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             §§push(4);
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                addr146:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   continue loop7;
                                                }
                                                addr118:
                                                if(_loc2_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(6);
                                                if(_loc2_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc2_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   break loop9;
                                                }
                                                §§goto(addr143);
                                             }
                                          }
                                          addr131:
                                          §§pop().y = §§pop();
                                       }
                                       addr194:
                                    }
                                    break;
                                 }
                                 addr83:
                                 §§goto(addr83);
                              }
                              else
                              {
                                 addr198:
                                 §§push(this.§ !I§);
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§,!k§ / §9"3§.§'"F§);
                                    loop3:
                                    while(true)
                                    {
                                       §§push(8);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc2_)
                                          {
                                             addr211:
                                             §§push(8);
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                             }
                                             addr211:
                                          }
                                          loop4:
                                          while(true)
                                          {
                                             §§pop().x = §§pop();
                                             addr213:
                                             while(!_loc2_)
                                             {
                                                while(true)
                                                {
                                                   §§push(this.§ !I§);
                                                   if(!_loc3_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§!Q§ / §9"3§.§'"F§);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      §§push(30);
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         if(!_loc2_)
                                                         {
                                                            if(_loc2_ && _loc2_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(10);
                                                         }
                                                         addr191:
                                                         if(_loc2_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         §§pop().y = §§pop();
                                                         §§goto(addr194);
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr211);
                                                      }
                                                   }
                                                   §§goto(addr191);
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr211);
                                    }
                                 }
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr213);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr58);
                  }
                  break;
               }
               §§goto(addr198);
            }
            return;
         }
         §§goto(addr215);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:int = -1) : §;!M§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§`7§ = new §`7§(this,new §1!$§.Sprite(),param1,param2,param3);
         if(_loc6_ || param2)
         {
            if(param4 >= 0)
            {
               § L§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     §,!&§.addChild(_loc5_.sprite);
                     while(§+!$§)
                     {
                        if(_loc6_)
                        {
                           if(_loc7_ && param3)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              if(!(_loc7_ && this))
                              {
                                 this.§!G§(§4"F§.§79§);
                                 addr84:
                                 if(!_loc7_)
                                 {
                                    addr86:
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr105:
                              while(true)
                              {
                                 § L§.push(_loc5_);
                              }
                           }
                           while(true)
                           {
                              continue loop1;
                           }
                        }
                        §§goto(addr84);
                     }
                     return _loc5_;
                  }
               }
            }
            §§goto(addr105);
         }
         §§goto(addr86);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!§+!$§)
            {
               super.playBirdShotSound();
               if(!_loc2_)
               {
                  if(!_loc1_)
                  {
                     addr50:
                     §>!E§.§7N§("Powerup_Speed");
                     addr53:
                  }
                  else
                  {
                     addr47:
                  }
                  return;
               }
               §§goto(addr53);
            }
            §§goto(addr50);
         }
         §§goto(addr47);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§;!M§ = null;
         _loc2_ = § L§[§6!m§];
         §§push(§"!+§ / §^!d§);
         if(_loc5_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && this))
         {
            if(_loc2_ != null)
            {
               if(!_loc4_)
               {
                  if(_loc2_.name.toUpperCase() != "BIRD_GREEN")
                  {
                     §§push(Number(§2a§.BIRD_LAUNCH_FORCE));
                     loop0:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop1:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(_loc2_ == null);
                              loop3:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          loop6:
                                          while(_loc5_ || _loc2_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc2_.§&!v§);
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   §§push(§§pop() > 0);
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && _loc2_))
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               if(!(_loc5_ || _loc2_))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               addr182:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§2a§.BIRD_LAUNCH_FORCE_GREEN));
                                                                  addr185:
                                                                  while(true)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc1_);
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        addr63:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc5_ || _loc1_)
                                                                        {
                                                                           if(!(_loc5_ || _loc3_))
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr185);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        addr135:
                                                                        return §§pop();
                                                                        addr127:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ && _loc3_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr135);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr126:
                                                                     while(true)
                                                                     {
                                                                     }
                                                                     addr126:
                                                                  }
                                                                  §§goto(addr127);
                                                               }
                                                               §§goto(addr63);
                                                            }
                                                            return §§pop();
                                                            addr115:
                                                            addr48:
                                                         }
                                                         continue loop3;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop5;
                                                }
                                                §§goto(addr126);
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    §§goto(addr115);
                                 }
                                 §§goto(addr126);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr182);
            }
            §§goto(addr48);
         }
         §§goto(addr171);
      }
      
      public function §+!>§(param1:Number) : §;!M§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§;!M§ = null;
         _loc2_ = § L§[§6!m§];
         if(!(_loc3_ && this))
         {
            if(_loc2_.§>! § < 1)
            {
               while(true)
               {
                  _loc2_.§>! § = 1;
                  addr101:
                  while(true)
                  {
                  }
               }
               addr98:
            }
            while(true)
            {
               _loc2_.scale = param1;
               loop3:
               while(!_loc3_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr98);
                  }
                  loop7:
                  while(true)
                  {
                     if(!(_loc4_ || _loc3_))
                     {
                        continue loop3;
                     }
                     §§push(_loc2_.sprite);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(_loc2_.scale);
                     if(_loc4_)
                     {
                        §§pop().scaleY = §§pop();
                        if(!_loc3_)
                        {
                           return _loc2_;
                        }
                        continue;
                     }
                     addr76:
                     while(true)
                     {
                        §§pop().scaleX = §§pop();
                        continue loop7;
                     }
                  }
                  while(true)
                  {
                     §§goto(addr76);
                     §§goto(addr84);
                  }
               }
               §§goto(addr101);
            }
         }
         while(true)
         {
            §§goto(addr74);
         }
      }
      
      protected function §4h§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:flash.display.Sprite = null;
         var _loc3_:BitmapData = null;
         if(!_loc5_)
         {
            if(!§9p§)
            {
               if(!_loc5_)
               {
                  _loc2_ = new §8B§.§6"C§("MovieClip_SlingHolder")();
                  if(_loc4_ || _loc3_)
                  {
                     setTint(_loc2_,§&J§,1);
                  }
                  _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                  if(_loc4_)
                  {
                     _loc3_.draw(_loc2_,null,_loc2_.transform.colorTransform);
                     if(_loc4_ || _loc2_)
                     {
                        §9p§ = §@O§.textureManager.getTextureFromBitmapData(_loc3_);
                     }
                  }
               }
               addr82:
               var _loc1_:§0!N§ = new §0!N§(§9p§);
               if(_loc4_)
               {
                  _loc1_.rotation = Math.PI;
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     addr212:
                     while(true)
                     {
                        _loc1_.y = _loc1_.height / 2;
                     }
                     loop4:
                     for(; !(_loc5_ && _loc3_); if(!(_loc5_ && this))
                     {
                        return;
                     })
                     {
                        §]j§ = new §!"?§(2,2,§&J§);
                        while(true)
                        {
                           §&P§.addChild(§]j§);
                           while(_loc4_)
                           {
                              §"!p§ = new §1!$§.Sprite();
                              loop7:
                              while(_loc4_)
                              {
                                 §5>§ = new §!"?§(2,2,§&J§);
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop7;
                                 }
                                 while(!_loc5_)
                                 {
                                    §&P§ = new §1!$§.Sprite();
                                    continue loop4;
                                 }
                                 §§goto(addr212);
                              }
                              while(true)
                              {
                                 §<!M§.addChild(_loc1_);
                                 §§goto(addr194);
                              }
                              if(!(_loc5_ && _loc2_))
                              {
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr204);
            }
            §<!M§ = new §1!$§.Sprite();
         }
         §§goto(addr82);
      }
   }
}
