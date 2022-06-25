package §_-vJ§
{
   import §_-0BH§.§_-FK§;
   import §_-0Ea§.§_-AY§;
   import §_-4g§.§_-9c§;
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-0FF§;
   import §_-9T§.§_-0D7§;
   import §_-9T§.§_-QO§;
   import §_-9T§.§_-xG§;
   import §_-Ga§.§_-bm§;
   import §_-JK§.§_-S2§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-2p§;
   
   public class §_-OI§
   {
      
      public static const §_-Vj§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-Vj§ = true;
         }
      }
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-0Cr§:§_-0D7§;
      
      private var §_-Ac§:Vector.<§_-h5§>;
      
      private var §_-0DY§:Sprite;
      
      private var §_-3N§:Sprite;
      
      private var §_-08I§:Sprite;
      
      private var §_-3A§:Number;
      
      private var §_-3r§:Number;
      
      private var §_-Pa§:Number;
      
      private var §_-0Ch§:Boolean = true;
      
      private var §_-0E4§:Boolean = true;
      
      private var §_-ZB§:§_-9c§;
      
      private var §_-I0§:Number;
      
      public function §_-OI§(param1:String, param2:Number, param3:§_-0FF§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§_-Ac§ = new Vector.<§_-h5§>();
            while(true)
            {
               super();
               while(true)
               {
                  this.§_-00g§ = param3;
                  loop2:
                  while(_loc5_ || param2)
                  {
                     while(true)
                     {
                        this.§_-3r§ = 0;
                        do
                        {
                           this.§_-Pa§ = 0;
                           loop5:
                           do
                           {
                              this.§_-3A§ = param2;
                              loop6:
                              while(true)
                              {
                                 this.§_-0DY§ = new Sprite();
                                 while(_loc5_)
                                 {
                                    this.§_-3N§ = new Sprite();
                                    continue loop6;
                                    if(_loc5_ || param1)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           while(_loc6_);
                           
                        }
                        while(!(_loc5_ || param1));
                        
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      public function get §_-0BE§() : Boolean
      {
         return this.§_-0Ch§;
      }
      
      public function get §_-xH§() : Sprite
      {
         return this.§_-08I§;
      }
      
      public function get §_-pH§() : Sprite
      {
         return this.§_-0DY§;
      }
      
      public function get §_-BL§() : Sprite
      {
         return this.§_-3N§;
      }
      
      protected function get textureManager() : §_-0FF§
      {
         return this.§_-00g§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-0-Z§();
            loop0:
            while(true)
            {
               §§push(this.§_-0DY§);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§_-0DY§);
                        addr129:
                        while(true)
                        {
                           §§pop().dispose();
                           addr130:
                           while(true)
                           {
                              this.§_-0DY§ = null;
                              addr120:
                              while(true)
                              {
                              }
                           }
                        }
                     }
                     addr127:
                  }
                  loop2:
                  while(true)
                  {
                     §§push(this.§_-3N§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§_-3N§);
                              addr107:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr108:
                                 while(_loc1_ || _loc2_)
                                 {
                                    this.§_-3N§ = null;
                                    continue loop3;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        loop4:
                        while(true)
                        {
                           §§push(this.§_-08I§);
                           if(_loc1_ || this)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§_-08I§);
                                    addr68:
                                    loop6:
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       while(_loc1_ || _loc1_)
                                       {
                                          this.§_-08I§ = null;
                                          if(_loc2_)
                                          {
                                             continue;
                                          }
                                          if(!_loc1_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc1_)
                                          {
                                             if(_loc1_ || _loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      addr44:
                                                      break loop4;
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr127);
                                             }
                                             else
                                             {
                                                §§goto(addr108);
                                             }
                                          }
                                          §§goto(addr81);
                                       }
                                       §§goto(addr130);
                                    }
                                 }
                              }
                              break;
                           }
                           §§goto(addr68);
                           §§goto(addr81);
                        }
                        return;
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr129);
            }
         }
         §§goto(addr44);
      }
      
      public function §_-cq§() : Boolean
      {
         return this.§_-0E4§;
      }
      
      public function §_-Vf§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-0E4§);
            loop0:
            for(; §§pop() != param1; §§push(param1),if(!_loc3_)
            {
               continue;
            },if(!§§pop())
            {
               addr59:
               this.§_-0-Z§();
               if(!(_loc3_ || this))
               {
                  §§goto(addr90);
               }
               §§goto(addr78);
            },this.§_-Wq§(this.§_-0Cr§.mName,this.§_-I0§),if(!_loc2_)
            {
               if(!_loc3_)
               {
                  §§goto(addr59);
               }
               addr25:
               return;
            },§§goto(addr59))
            {
               loop1:
               while(true)
               {
                  this.§_-0E4§ = param1;
                  addr90:
                  addr78:
                  while(true)
                  {
                     if(!(_loc2_ && _loc3_))
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr25);
                  }
                  break loop0;
               }
            }
         }
      }
      
      public function §_-st§() : String
      {
         return this.§_-0Cr§.§_-M8§;
      }
      
      private function §_-0-Z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         loop0:
         while(true)
         {
            §§push(this.§_-3N§);
            if(_loc2_)
            {
               if(§§pop().numChildren <= 0)
               {
                  loop1:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(this.§_-0DY§);
                        if(!_loc1_)
                        {
                           if(§§pop().numChildren <= 0)
                           {
                              while(true)
                              {
                                 if(_loc2_ || _loc1_)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(this.§_-Ac§.length <= 0)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          this.§_-Ac§.pop().dispose();
                                       }
                                    }
                                    continue;
                                 }
                              }
                              continue loop1;
                           }
                           addr92:
                           this.§_-0DY§.removeChildAt(0,true);
                           if(_loc1_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr92);
                     }
                     continue loop0;
                  }
               }
               else
               {
                  §§push(this.§_-3N§);
               }
            }
            §§pop().removeChildAt(0,true);
         }
      }
      
      private function §_-Wq§(param1:String, param2:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:§_-QO§ = null;
         var _loc5_:Sprite = null;
         var _loc6_:§_-h5§ = null;
         if(_loc7_ || _loc3_)
         {
            this.§_-0Cr§ = §_-xG§.§_-lv§(param1);
         }
         while(true)
         {
            if(this.§_-0Cr§ == null)
            {
               loop1:
               for(; _loc7_; if(!(_loc7_ || param2))
               {
                  continue;
               },§§goto(addr52))
               {
                  §§push(§_-FK§);
                  §§push("UNKNOWN LEVEL THEME! ");
                  if(_loc7_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().log(§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§_-bm§.§_-0A0§);
                     if(!_loc8_)
                     {
                        §§push(§§pop());
                     }
                     param1 = §§pop();
                     loop3:
                     while(true)
                     {
                        this.§_-0Cr§ = §_-xG§.§_-lv§(param1);
                        addr104:
                        while(true)
                        {
                           addr74:
                           if(_loc7_ || param2)
                           {
                              this.§_-u8§();
                              if(!(_loc7_ || param1))
                              {
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc7_ || this)
                                    {
                                       addr67:
                                       if(!(_loc8_ && param1))
                                       {
                                          §§goto(addr74);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§_-3N§.y = this.§_-3A§;
                                             §§goto(addr67);
                                          }
                                          addr97:
                                       }
                                    }
                                    while(!_loc8_)
                                    {
                                       do
                                       {
                                          this.§_-08I§.y = this.§_-3A§;
                                          continue loop9;
                                       }
                                       while(false);
                                       
                                       var _loc3_:int = 0;
                                       addr280:
                                       if(_loc3_ < this.§_-0Cr§.§_-Ac§.length)
                                       {
                                          _loc4_ = this.§_-0Cr§.§_-Ac§[_loc3_];
                                          if(_loc7_)
                                          {
                                             §§push(§_-AY§.§_-H3§);
                                             if(!(_loc8_ && param2))
                                             {
                                                §§push(!§§pop());
                                                if(_loc7_ || param2)
                                                {
                                                   addr174:
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc8_ && this))
                                                      {
                                                         §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            §§push(_loc4_.§_-Tp§);
                                                            if(_loc7_)
                                                            {
                                                               addr191:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     addr199:
                                                                     _loc5_ = new Sprite();
                                                                     _loc6_ = new §_-h5§(_loc4_,_loc5_,this.§_-00g§,param2);
                                                                     if(!_loc8_)
                                                                     {
                                                                        this.§_-Ac§.push(_loc6_);
                                                                        addr260:
                                                                        if(_loc6_.§_-D0§)
                                                                        {
                                                                           addr237:
                                                                           if(_loc7_)
                                                                           {
                                                                              this.§_-3N§.addChild(_loc5_);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr279:
                                                                                 _loc3_++;
                                                                                 addr261:
                                                                                 addr245:
                                                                              }
                                                                              §§goto(addr280);
                                                                           }
                                                                           §§goto(addr260);
                                                                        }
                                                                        this.§_-0DY§.addChild(_loc5_);
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 §§goto(addr260);
                                                                              }
                                                                              §§goto(addr261);
                                                                           }
                                                                           §§goto(addr237);
                                                                        }
                                                                        §§goto(addr280);
                                                                     }
                                                                     §§goto(addr245);
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                               if(_loc4_.§_-052§)
                                                               {
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     addr272:
                                                                     this.§_-m7§(parseInt(_loc4_.§_-052§,16));
                                                                  }
                                                               }
                                                               §§goto(addr279);
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                   }
                                                }
                                                §§goto(addr191);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr272);
                                       }
                                       return;
                                    }
                                    continue loop3;
                                 }
                                 continue;
                              }
                              if(_loc7_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               continue;
            }
            while(true)
            {
               this.§_-0DY§.y = this.§_-3A§;
               §§goto(addr97);
               §§goto(addr104);
            }
         }
      }
      
      private function §_-u8§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§_-2p§ = null;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§_-0Cr§);
            if(!_loc3_)
            {
               §§push(§§pop().§_-Zy§);
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this.§_-m7§(this.§_-0Cr§.§_-Zy§);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§goto(addr58);
                        }
                     }
                     §§goto(addr62);
                  }
               }
            }
            §§goto(addr58);
         }
         addr58:
         if(this.§_-0Cr§.§_-0-9§)
         {
            addr62:
            §§push(this);
            if(!(_loc3_ && _loc3_))
            {
               §§push(uint(0));
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        §§pop();
                        addr94:
                        §§push(uint(this.§_-0Cr§.§_-0-9§));
                     }
                  }
               }
               _loc1_ = §§pop().createGroundQuad(§§pop());
               if(_loc2_)
               {
                  _loc1_.y = 0;
                  if(_loc2_ || _loc3_)
                  {
                  }
                  §§goto(addr117);
               }
               this.§_-08I§.addChild(_loc1_);
               §§goto(addr117);
            }
            §§goto(addr94);
         }
         addr117:
      }
      
      protected function createGroundQuad(param1:uint) : §_-2p§
      {
         return new §_-2p§(4096,4096,param1);
      }
      
      private function §_-m7§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(§_-AY§.§_-un§);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().color = param1;
         }
         addr44:
         if(_loc2_)
         {
            §§push(§_-AY§.§_-un§);
         }
      }
      
      public function §_-h2§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§_-0-Z§();
            while(true)
            {
               §§push(§_-FK§);
               §§push("Switch background! NEW BACKGROUND NAME = ");
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().log(§§pop());
               §§goto(addr77);
            }
         }
         addr77:
         while(true)
         {
            this.§_-Wq§(param1,this.§_-I0§);
            if(!(_loc3_ && this))
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function §_-bN§(param1:Boolean, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-h5§ = null;
         if(_loc6_)
         {
            if(param1 == this.§_-0Ch§)
            {
               if(!(_loc7_ && param2))
               {
                  §§goto(addr52);
               }
            }
            this.§_-0Ch§ = param1;
            for each(_loc3_ in this.§_-Ac§)
            {
               if(!_loc7_)
               {
                  _loc3_.§_-bN§(param1);
               }
            }
            return;
         }
         addr52:
      }
      
      public function §_-7k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(§_-pX§.§_-BM§("CHANNEL_AMBIENT"));
            loop0:
            while(true)
            {
               §§push(§§pop() == null);
               if(!(_loc2_ && _loc1_))
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 continue loop0;
                              }
                              §_-pX§.playSound(this.§_-0Cr§.§_-2z§,"CHANNEL_AMBIENT",999);
                           }
                           break;
                        }
                        §§push(§§pop().§_-3t§());
                        addr49:
                        break;
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                        }
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr98:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                           §§goto(addr49);
                        }
                        addr98:
                     }
                     return;
                     addr55:
                  }
               }
               §§goto(addr98);
            }
            addr87:
         }
         while(true)
         {
            §§push(§_-pX§.§_-BM§("CHANNEL_AMBIENT"));
            if(!(_loc2_ && _loc2_))
            {
               §§goto(addr49);
            }
            else
            {
               §§goto(addr87);
            }
            §§goto(addr98);
         }
      }
      
      public function §_-Ye§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-pX§.§_-0B7§("CHANNEL_AMBIENT");
         }
      }
      
      public function §_-UX§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:DisplayObject = null;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(this.§_-0DY§);
               if(!(_loc3_ && _loc2_))
               {
                  if(§§pop() < §§pop().numChildren)
                  {
                     if(_loc4_)
                     {
                        _loc2_ = this.§_-0DY§.getChildAt(param1);
                        addr43:
                        if(!_loc3_)
                        {
                           §§goto(addr100);
                        }
                        §§goto(addr109);
                     }
                     else
                     {
                        addr73:
                        §§push(this.§_-3N§);
                        §§push(param1);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() - this.§_-0DY§.numChildren);
                        }
                        _loc2_ = §§pop().getChildAt(§§pop());
                     }
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        addr69:
                        if(§§pop() - this.§_-0DY§.numChildren < this.§_-3N§.numChildren)
                        {
                           §§goto(addr73);
                        }
                     }
                     §§goto(addr69);
                  }
                  addr100:
                  if(_loc2_)
                  {
                     if(!(_loc3_ && this))
                     {
                        addr109:
                        §§push(_loc2_);
                        §§push(_loc2_.visible);
                        if(!_loc3_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().visible = §§pop();
                     }
                  }
                  return;
               }
            }
            §§goto(addr69);
         }
         §§goto(addr43);
      }
      
      public function §_-12§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         if(!(_loc5_ && param1))
         {
            this.§_-3r§ = param1;
            while(true)
            {
               this.§_-Pa§ = param2;
               addr74:
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               loop2:
               while(true)
               {
                  while(true)
                  {
                     if(_loc3_ >= this.§_-Ac§.length)
                     {
                        break loop2;
                     }
                     this.§_-Ac§[_loc3_].setSideScroll(this.§_-3r§,this.§_-Pa§);
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc3_++;
                        if(_loc6_)
                        {
                           if(false)
                           {
                              break;
                           }
                           continue;
                        }
                     }
                     else
                     {
                        addr103:
                        §§push(this.§_-08I§);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop() != null)
                           {
                              if(!_loc5_)
                              {
                                 §§push(this.§_-08I§);
                                 if(_loc6_ || param2)
                                 {
                                    addr135:
                                    §§push(this.§_-08I§.scaleY = 1 / §_-S2§.§_-4-§);
                                    if(!_loc5_)
                                    {
                                       §§pop().scaleX = §§pop();
                                       if(_loc6_ || _loc3_)
                                       {
                                          addr220:
                                          §§push(this.§_-08I§);
                                          loop4:
                                          while(true)
                                          {
                                             §§push(§_-S2§.§_-qy§);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(-§§pop());
                                                while(true)
                                                {
                                                   §§push(1 / §_-S2§.§_-4-§);
                                                   addr234:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   addr192:
                                                   if(_loc6_ || this)
                                                   {
                                                      §§pop().y = §§pop();
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         addr158:
                                                         return;
                                                         addr217:
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                addr230:
                                             }
                                             addr235:
                                             while(true)
                                             {
                                                §§pop().x = §§pop();
                                                continue loop4;
                                             }
                                          }
                                          addr220:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§_-08I§);
                                          if(_loc6_ || param2)
                                          {
                                             §§push(this.§_-3A§);
                                             if(_loc6_ || param1)
                                             {
                                                §§push(this.§_-Pa§);
                                                if(_loc6_)
                                                {
                                                   addr185:
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc6_ || this)
                                                   {
                                                      §§goto(addr192);
                                                   }
                                                   §§goto(addr235);
                                                }
                                                break;
                                             }
                                             §§goto(addr185);
                                          }
                                          else
                                          {
                                             §§goto(addr220);
                                          }
                                       }
                                       §§goto(addr234);
                                       addr236:
                                    }
                                    §§goto(addr230);
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr217);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr158);
                  }
               }
               if(_loc6_ || param2)
               {
                  §§goto(addr103);
               }
               §§goto(addr236);
            }
         }
         for(; this.§_-Ac§ != null; if(!(_loc6_ || param1))
         {
            continue;
         },_loc3_ = 0,§§goto(addr74))
         {
            if(_loc6_ || this)
            {
               continue;
            }
            §§goto(addr74);
         }
         §§goto(addr103);
      }
      
      public function §_-hZ§() : String
      {
         return this.§_-0Cr§.mName;
      }
      
      public function update(param1:Number) : void
      {
      }
   }
}
