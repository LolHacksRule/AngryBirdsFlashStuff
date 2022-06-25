package §%t§
{
   import §#!"§.§"U§;
   import §6!Y§.§!o§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9!7§ extends MovieClip
   {
      
      public static var §'$§:Array;
      
      private static var §4=§:String;
      
      public static const §?q§:Boolean = false;
      
      private static var §->§:Object;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'$§ = [];
            while(true)
            {
               §?q§ = false;
               while(!_loc2_)
               {
                  §->§ = {};
                  if(_loc1_)
                  {
                     return;
                     addr39:
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      protected var §2-§:Sprite;
      
      protected var §`'§:Sprite;
      
      protected var §@!h§:Boolean;
      
      protected var §"!b§:Sprite;
      
      protected var §^o§:String;
      
      protected var §&Q§:String;
      
      protected var §2!b§:Boolean = false;
      
      public function §9!7§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super();
         }
         do
         {
            this.initProfile(param1,param2,param3,param4);
         }
         while(!(_loc6_ || param2));
         
      }
      
      public static function §%>§(param1:String) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9!7§ = null;
         var _loc2_:int = 0;
         if(!_loc7_)
         {
            §4=§ = param1;
            if(!(_loc7_ && _loc2_))
            {
               if(param1 != null)
               {
                  addr56:
                  for each(_loc3_ in §'$§)
                  {
                     if(_loc6_ || _loc3_)
                     {
                        _loc3_.update(§"U§.§7!2§,param1);
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr56);
      }
      
      protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            §§push(this);
            if(!_loc7_)
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_ || param3)
                  {
                     addr37:
                     §§push(§§pop());
                     if(!(_loc7_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(_loc6_ || param3)
                           {
                              addr53:
                              §§pop();
                              §§push(§?!a§.§+6§);
                              if(!(_loc7_ && param2))
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    addr66:
                                    var _loc5_:*;
                                    §§push(_loc5_ = §§pop());
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          param4 = §§pop();
                                          §§push(_loc5_);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr66);
                           }
                           §§pop().§&Q§ = §§pop();
                           if(!_loc7_)
                           {
                              this.§^o§ = param1;
                              loop0:
                              while(true)
                              {
                                 this.§@!h§ = §"U§.§7!2§ == param1;
                                 while(true)
                                 {
                                    this.§"!b§ = new Sprite();
                                    addr143:
                                    if(_loc7_ && param1)
                                    {
                                       continue;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §'$§.push(this);
                                    loop9:
                                    while(_loc6_)
                                    {
                                       addEventListener(Event.ADDED_TO_STAGE,this.§+T§);
                                       while(_loc6_)
                                       {
                                          addEventListener(Event.REMOVED_FROM_STAGE,this.§<I§);
                                          if(!_loc6_)
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             addr164:
                                             if(_loc6_)
                                             {
                                                addr112:
                                                if(_loc6_ || param2)
                                                {
                                                   addr119:
                                                   if(_loc6_ || this)
                                                   {
                                                      §§goto(addr85);
                                                   }
                                                   else
                                                   {
                                                      addr212:
                                                   }
                                                   while(true)
                                                   {
                                                      this.§"!b§.graphics.beginFill(0,0);
                                                      addr206:
                                                      while(true)
                                                      {
                                                         this.§"!b§.graphics.drawRect(0,0,50,50);
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   this.§"!b§.graphics.endFill();
                                                   break loop9;
                                                   §§goto(addr112);
                                                }
                                             }
                                             while(this.§@!h§)
                                             {
                                             }
                                             addr85:
                                             return;
                                             addr164:
                                          }
                                          while(_loc6_)
                                          {
                                             §§goto(addr143);
                                          }
                                          while(!_loc7_)
                                          {
                                             this.§0Y§(param1,param2,param3);
                                             §§goto(addr164);
                                          }
                                          §§goto(addr206);
                                       }
                                    }
                                    while(true)
                                    {
                                       addChild(this.§"!b§);
                                       §§goto(addr170);
                                    }
                                 }
                              }
                           }
                           §§goto(addr212);
                        }
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr53);
               }
               §§goto(addr37);
            }
            §§goto(addr53);
         }
         §§goto(addr164);
      }
      
      private function §]!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§+!M§)
            {
               do
               {
                  this.§2-§.visible = false;
                  do
                  {
                     this.§`'§.visible = true;
                  }
                  while(!(_loc2_ || _loc3_));
                  
               }
               while(!_loc2_);
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function §'!p§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§+!M§)
            {
               loop0:
               while(true)
               {
                  this.§2-§.visible = true;
                  addr60:
                  while(true)
                  {
                     this.§`'§.visible = false;
                     if(_loc2_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr34);
               }
            }
            addr34:
            return;
         }
         §§goto(addr60);
      }
      
      public function get §-H§() : String
      {
         return this.§^o§;
      }
      
      public function get §+!M§() : Boolean
      {
         return this.§2!b§;
      }
      
      public function set §+!M§(param1:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            this.§2!b§ = param1;
            if(_loc3_)
            {
               if(this.§+!M§)
               {
                  if(_loc3_)
                  {
                     addr53:
                     this.mouseEnabled = this.mouseChildren = true;
                     if(!_loc3_)
                     {
                     }
                  }
               }
               else
               {
                  this.mouseEnabled = this.mouseChildren = false;
               }
               §§goto(addr74);
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function §+T§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(§4=§ != null)
            {
               if(_loc2_)
               {
                  addr28:
                  this.§0Y§(this.§^o§,§4=§);
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      protected function §<I§(param1:Event) : void
      {
      }
      
      public function get §;d§() : Sprite
      {
         return this.§2-§;
      }
      
      public function get §=n§() : Boolean
      {
         return this.§@!h§;
      }
      
      protected function §0Y§(param1:String, param2:String, param3:Boolean = false, param4:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            if(this.§2-§)
            {
               if(_loc6_)
               {
                  if(this.§2-§.parent)
                  {
                     loop0:
                     while(true)
                     {
                        this.§2-§.parent.removeChild(this.§2-§);
                        loop4:
                        while(true)
                        {
                           if(_loc5_ && param3)
                           {
                              continue loop0;
                           }
                           §§push(param2);
                           loop5:
                           while(true)
                           {
                              §§push(null);
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop8:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr281:
                                             while(true)
                                             {
                                                §§push(param2);
                                                addr231:
                                                while(true)
                                                {
                                                   §§push("");
                                                   addr232:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      addr233:
                                                      while(true)
                                                      {
                                                         if(!(_loc6_ || param3))
                                                         {
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          addr280:
                                       }
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                §§push(param2);
                                                loop16:
                                                for(; _loc6_ || param3; while(true)
                                                {
                                                   §§push(param2);
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(null);
                                                         if(!(_loc6_ || param1))
                                                         {
                                                            continue loop6;
                                                         }
                                                         §§goto(addr156);
                                                         §§push(§§pop() == §§pop());
                                                      }
                                                      break;
                                                   }
                                                   continue loop16;
                                                },§§goto(addr245))
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§push("");
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         loop17:
                                                         while(!_loc5_)
                                                         {
                                                            §§push(§§pop());
                                                            loop18:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_ || param3)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(_loc6_ || param3)
                                                                                 {
                                                                                    §§pop();
                                                                                    loop25:
                                                                                    for(; !(_loc5_ && param2); while(true)
                                                                                    {
                                                                                       if(!(_loc6_ || param1))
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          break loop4;
                                                                                       }
                                                                                       §§goto(addr125);
                                                                                    })
                                                                                    {
                                                                                       if(_loc6_ || param3)
                                                                                       {
                                                                                          §§push(§?q§);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                          addr107:
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   this.createFacebookProfile(param1,param3);
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_ || this)
                                                                                                      {
                                                                                                         while(this.§"!b§)
                                                                                                         {
                                                                                                            if(!(_loc6_ || param3))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr72:
                                                                                                            continue loop27;
                                                                                                         }
                                                                                                         return;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.createAvatar(param2,param1,param3);
                                                                                                   continue loop25;
                                                                                                }
                                                                                             }
                                                                                             addr109:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr156:
                                                                                             while(_loc6_ || this)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                continue loop15;
                                                                                                §§goto(addr156);
                                                                                             }
                                                                                             addr156:
                                                                                             addr257:
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§!o§.§#7§(param1));
                                                                                             addr245:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                break loop16;
                                                                                             }
                                                                                          }
                                                                                          addr242:
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop15;
                                                                                       §§goto(addr188);
                                                                                    }
                                                                                    addr188:
                                                                                    addr254:
                                                                                 }
                                                                                 §§goto(addr233);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop24;
                                                                                 }
                                                                                 addr227:
                                                                              }
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        §§goto(addr109);
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                         }
                                                         §§goto(addr280);
                                                      }
                                                      §§goto(addr232);
                                                   }
                                                   §§goto(addr231);
                                                }
                                                continue loop5;
                                             }
                                          }
                                          §§goto(addr242);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr297:
                        loop1:
                        while(true)
                        {
                           addr255:
                           while(true)
                           {
                              §§goto(addr257);
                              continue loop1;
                           }
                        }
                     }
                  }
                  §§goto(addr255);
               }
               §§goto(addr297);
            }
            §§goto(addr255);
         }
         §§goto(addr281);
      }
      
      protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param1)
         {
            this.§+!M§ = true;
            if(_loc7_ || param3)
            {
               addr33:
               this.§`'§ = this.§,!3§(param2,this.§&Q§,param3);
            }
            §§push(this.§&Q§);
            if(!(_loc8_ && param1))
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(_loc7_)
            {
               if(param4 > 0)
               {
                  addr203:
                  while(true)
                  {
                     §§push("");
                     if(!_loc8_)
                     {
                        §§push(§§pop() + param4);
                     }
                     _loc6_ = §§pop();
                     addr210:
                     while(true)
                     {
                     }
                  }
                  addr203:
               }
               loop0:
               while(true)
               {
                  this.§2-§ = new §1§(param1,_loc6_);
                  loop1:
                  while(true)
                  {
                     §§push(param5);
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              addChild(this.§`'§);
                              addr191:
                              while(true)
                              {
                              }
                           }
                           addr187:
                        }
                        while(true)
                        {
                           this.§`'§.visible = false;
                           while(_loc7_ || param2)
                           {
                              this.§"!b§.addEventListener(MouseEvent.MOUSE_OVER,this.§]!2§);
                              loop7:
                              while(true)
                              {
                                 this.§"!b§.addEventListener(MouseEvent.MOUSE_OUT,this.§'!p§);
                                 loop8:
                                 while(true)
                                 {
                                    if(_loc8_ && param1)
                                    {
                                       continue loop7;
                                    }
                                    if(_loc7_)
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(Boolean(this.§2-§));
                                          if(!_loc8_)
                                          {
                                             if(§§pop())
                                             {
                                                loop12:
                                                while(_loc7_)
                                                {
                                                   addr130:
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(param5);
                                                      if(_loc7_)
                                                      {
                                                         if(!(_loc7_ || param1))
                                                         {
                                                            continue loop12;
                                                         }
                                                         addr70:
                                                         §§push(!§§pop());
                                                         while(true)
                                                         {
                                                            break loop11;
                                                            §§goto(addr70);
                                                         }
                                                      }
                                                      break;
                                                      §§goto(addr130);
                                                   }
                                                   while(§§pop())
                                                   {
                                                      if(!(_loc7_ || this))
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(_loc7_ || param2)
                                                      {
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               break loop8;
                                                            }
                                                            addChild(this.§2-§);
                                                            continue loop8;
                                                         }
                                                         §§goto(addr187);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr131);
                                                      }
                                                   }
                                                   addr131:
                                                   return;
                                                }
                                                continue loop2;
                                                addr128:
                                             }
                                             §§goto(addr71);
                                          }
                                          §§goto(addr128);
                                       }
                                       else
                                       {
                                          §§goto(addr203);
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            §§goto(addr203);
         }
         §§goto(addr33);
      }
      
      protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.§+!M§ = false;
            while(true)
            {
               this.§2-§ = this.§,!3§(param1,this.§&Q§,param2);
               loop1:
               for(; _loc4_; if(!(_loc4_ || param2))
               {
                  continue;
               })
               {
                  §§push(Boolean(this.§2-§));
                  if(_loc4_ || this)
                  {
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§pop();
                           addr102:
                           while(true)
                           {
                              §§push(param3);
                              if(!(_loc5_ && param2))
                              {
                                 §§push(!§§pop());
                              }
                              if(_loc4_ || this)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                        }
                        addr101:
                     }
                     while(§§pop())
                     {
                        if(_loc5_ && this)
                        {
                           break;
                        }
                        addr77:
                        if(!_loc5_)
                        {
                           continue loop1;
                        }
                        §§goto(addr102);
                     }
                     return;
                  }
                  §§goto(addr101);
               }
            }
         }
         addChild(this.§2-§);
         §§goto(addr77);
      }
      
      private function §,!3§(param1:String, param2:String, param3:Boolean = false) : §?!a§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§?!a§ = null;
         if(!(_loc5_ && this))
         {
            if(!§->§[param1 + param2])
            {
               if(_loc6_)
               {
                  §->§[param1 + param2] = [];
                  if(_loc5_)
                  {
                  }
                  §§goto(addr71);
               }
            }
            if(§->§[param1 + param2].length > 0)
            {
               §§goto(addr71);
            }
            else
            {
               _loc4_ = new §?!a§(param1,param3,param2);
            }
            §§goto(addr71);
         }
         addr71:
         return §->§[param1 + param2].pop();
      }
      
      public function update(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§0Y§(param1,param2,false);
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(Boolean(this.§2-§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr233:
                     while(true)
                     {
                        §§push(this.§2-§ is §?!a§);
                        if(!(_loc1_ || _loc1_))
                        {
                           break;
                        }
                        if(_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        if(!§->§[this.§^o§ + this.§&Q§])
                        {
                           while(true)
                           {
                              §->§[this.§^o§ + this.§&Q§] = [];
                              addr226:
                              while(true)
                              {
                              }
                           }
                           addr218:
                        }
                        while(true)
                        {
                           §->§[this.§^o§ + this.§&Q§].push(this.§2-§);
                           while(_loc1_ || _loc1_)
                           {
                              addr136:
                              if(_loc2_ && this)
                              {
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 addr145:
                                 while(true)
                                 {
                                    this.§`'§ = null;
                                    while(true)
                                    {
                                       addr36:
                                       loop19:
                                       while(true)
                                       {
                                          if(!this.§"!b§)
                                          {
                                             addr19:
                                             return;
                                          }
                                          while(!(_loc2_ && _loc1_))
                                          {
                                             if(!(_loc2_ && _loc1_))
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!(_loc2_ && this))
                                                   {
                                                      this.§"!b§.removeEventListener(MouseEvent.MOUSE_OVER,this.§]!2§);
                                                      do
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            if(_loc1_ || _loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               removeChild(this.§2-§);
                                                            }
                                                            addr160:
                                                         }
                                                         addr129:
                                                         while(true)
                                                         {
                                                            if(_loc2_ && _loc1_)
                                                            {
                                                               while(this.§2-§.parent == this)
                                                               {
                                                                  §§goto(addr160);
                                                               }
                                                               break;
                                                               addr155:
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         addr146:
                                                         while(true)
                                                         {
                                                            this.§2-§ = null;
                                                            break loop19;
                                                         }
                                                      }
                                                      while(this.§"!b§.removeEventListener(MouseEvent.MOUSE_OUT,this.§'!p§), _loc2_);
                                                      
                                                      if(!_loc2_)
                                                      {
                                                         §§goto(addr19);
                                                      }
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr146);
                                                   }
                                                }
                                                break loop19;
                                             }
                                             addr125:
                                             addr125:
                                             while(true)
                                             {
                                                removeChild(this.§`'§);
                                             }
                                             §§goto(addr129);
                                          }
                                       }
                                       loop14:
                                       while(true)
                                       {
                                          addr85:
                                          while(true)
                                          {
                                             if(this.§`'§)
                                             {
                                                if(_loc1_ || this)
                                                {
                                                   if(_loc2_ && _loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr36);
                                             }
                                             §§goto(addr129);
                                             continue loop14;
                                          }
                                          §§goto(addr218);
                                       }
                                    }
                                    §§goto(addr145);
                                 }
                                 addr80:
                              }
                              §§goto(addr226);
                           }
                           §§goto(addr233);
                        }
                     }
                  }
                  while(true)
                  {
                     if(this.§2-§)
                     {
                        §§goto(addr155);
                     }
                     §§goto(addr85);
                  }
               }
            }
         }
         §§goto(addr125);
      }
   }
}
