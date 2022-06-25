package §%!c§
{
   import §!!9§.Texture;
   import §,6§.§!o§;
   import §1!T§.§6!H§;
   import §4p§.§#Q§;
   import §9E§.§1!w§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §`b§ extends §#Q§
   {
      
      private static const §=Q§:Number = 1.5;
      
      private static const §7N§:Number = 0.15;
      
      private static const §4q§:Number = 0.25;
      
      private static const §+J§:Number = 3.0;
      
      private static const §,!2§:Number = 20.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §=Q§ = 1.5;
            loop0:
            while(true)
            {
               §7N§ = 0.15;
               addr81:
               while(true)
               {
                  §4q§ = 0.25;
                  continue loop0;
               }
            }
         }
      }
      
      private var §#!v§:Number;
      
      private var §+t§:Number;
      
      private var §return§:§1!w§;
      
      private var §6!@§:Boolean;
      
      private var §=+§:Number;
      
      private var §<q§:BitmapData;
      
      private var §=§:Texture;
      
      private var §5!>§:int = 0;
      
      public function §`b§(param1:String, param2:Number, param3:§!o§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4);
            do
            {
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(_loc5_ || param3)
               {
                  §§push(-§§pop());
               }
               §§pop().§#!v§ = §§pop();
            }
            while(!_loc5_);
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§=§)
            {
               loop0:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§=§);
                  loop1:
                  while(true)
                  {
                     this.§=§ = null;
                     while(!_loc1_)
                     {
                        while(_loc2_ || this)
                        {
                           if(!_loc1_)
                           {
                              this.§<q§ = null;
                              loop6:
                              while(_loc2_ || this)
                              {
                                 if(!_loc1_)
                                 {
                                    while(true)
                                    {
                                       super.dispose();
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       continue loop6;
                                    }
                                    return;
                                    addr24:
                                    addr29:
                                 }
                                 else
                                 {
                                    addr68:
                                 }
                                 while(true)
                                 {
                                    this.§<q§.dispose();
                                    break loop6;
                                 }
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               if(this.§<q§)
               {
                  §§goto(addr68);
               }
               §§goto(addr24);
            }
         }
         §§goto(addr29);
      }
      
      override protected function createGroundQuad(param1:uint) : §1!w§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(this.§=§)
            {
               addr104:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§=§);
                  addr108:
                  while(true)
                  {
                     this.§=§ = null;
                     addr100:
                     while(true)
                     {
                     }
                  }
               }
               addr104:
            }
            loop0:
            while(true)
            {
               if(this.§<q§)
               {
                  if(_loc4_)
                  {
                     if(_loc4_)
                     {
                        this.§<q§.dispose();
                        loop1:
                        while(true)
                        {
                           this.§<q§ = null;
                           loop2:
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§<q§ = new BitmapData(2,2,false,param1);
                                       while(true)
                                       {
                                          if(_loc4_ || _loc2_)
                                          {
                                             this.§=§ = textureManager.getTextureFromBitmapData(this.§<q§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                continue loop2;
                                             }
                                             continue;
                                          }
                                          §§goto(addr104);
                                       }
                                    }
                                    var _loc2_:§1!w§ = new §;!U§(this.§=§,true,false);
                                    addr109:
                                    if(_loc4_ || _loc3_)
                                    {
                                       _loc2_.width = 4096;
                                    }
                                    _loc2_.height = 4096;
                                    addr155:
                                    if(_loc3_ && this)
                                    {
                                       §§goto(addr155);
                                    }
                                    return _loc2_;
                                    addr48:
                                 }
                                 break;
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        addr95:
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr95);
               }
               §§goto(addr109);
            }
         }
         §§goto(addr104);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(this.§return§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(_loc3_ || param1)
               {
                  if(this.§#!v§ > 0)
                  {
                     addr133:
                     while(true)
                     {
                        this.§8!!§();
                        addr135:
                        while(true)
                        {
                        }
                     }
                     addr133:
                  }
                  while(true)
                  {
                     break loop0;
                  }
               }
            }
            while(true)
            {
               this.§!d§();
               §§goto(addr53);
            }
         }
         §§goto(addr133);
      }
      
      private function §8!!§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(_loc4_ || _loc2_)
         {
            if(§[o§.numChildren > 0)
            {
               addr34:
               _loc1_ = §[o§.getChildAt(0) as Sprite;
               if(_loc4_ || _loc1_)
               {
                  if(_loc1_)
                  {
                     if(_loc4_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(!(_loc3_ && _loc2_))
                        {
                           _loc2_.top -= 2048;
                           while(true)
                           {
                              this.§return§ = new §1!w§(_loc2_.width,_loc2_.height,16777215);
                              while(true)
                              {
                                 §§push(this.§return§);
                                 while(true)
                                 {
                                    §§pop().x = _loc2_.left;
                                    while(true)
                                    {
                                       §§push(this.§return§);
                                       loop4:
                                       while(true)
                                       {
                                          §§pop().y = _loc2_.top;
                                          addr108:
                                          while(true)
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                              if(!(_loc4_ || this))
                              {
                                 continue;
                              }
                              while(false)
                              {
                                 §§goto(addr85);
                              }
                              addr144:
                              this.§5!>§ = 0;
                              if(!_loc3_)
                              {
                                 this.§#!v§ = 0;
                                 loop14:
                                 while(true)
                                 {
                                    if(Math.random() >= 0.25)
                                    {
                                       §§push(this);
                                       §§push(0.3);
                                       if(_loc4_)
                                       {
                                          §§push(Math.random() * (§=Q§ - 0.3));
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() * 0.3);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§+t§ = §§pop();
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(0.2);
                                             if(_loc4_)
                                             {
                                                §§push(§§pop() + Math.random() * 2);
                                             }
                                             §§pop().§=+§ = §§pop();
                                             while(_loc4_ || _loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   this.§6!@§ = false;
                                                   if(!(_loc4_ || _loc2_))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop10;
                                                         }
                                                         continue loop10;
                                                      }
                                                      addr163:
                                                   }
                                                   continue;
                                                }
                                                addr250:
                                                continue loop10;
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr255);
                                       }
                                       addr210:
                                    }
                                    while(_loc3_ && _loc3_)
                                    {
                                       continue loop14;
                                    }
                                    §§push(this);
                                    §§push(0.7);
                                    if(_loc4_ || this)
                                    {
                                       §§push(§§pop() + Math.random() * (§=Q§ - 0.7));
                                    }
                                    §§pop().§+t§ = §§pop();
                                    §§goto(addr250);
                                 }
                                 addr254:
                              }
                              §§goto(addr163);
                              addr83:
                           }
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr210);
                  }
                  §§goto(addr144);
               }
               §§goto(addr254);
            }
            addr255:
            return;
         }
         §§goto(addr34);
      }
      
      private function §7!j§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc11_ && _loc3_))
         {
            §§push(this.§#!v§);
            loop0:
            while(true)
            {
               §§push(§7N§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(this.§#!v§);
                     continue loop0;
                  }
                  loop35:
                  while(true)
                  {
                     §§push(this.§#!v§);
                     if(!_loc11_)
                     {
                        §§push(§7N§);
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                        }
                        addr337:
                     }
                     loop27:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop28:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop16:
                           while(true)
                           {
                              loop17:
                              while(true)
                              {
                                 this.§return§.alpha = _loc2_;
                                 if(_loc12_)
                                 {
                                    if(!_loc11_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    while(true)
                                    {
                                       if(!_loc11_)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(1);
                                             if(_loc12_ || this)
                                             {
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   §§push(this.§#!v§);
                                                   if(_loc12_ || _loc1_)
                                                   {
                                                      §§push(§7N§);
                                                      if(_loc12_ || _loc1_)
                                                      {
                                                         §§push(§§pop() + this.§+t§);
                                                         if(!_loc11_)
                                                         {
                                                            addr175:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               §§push(§4q§);
                                                            }
                                                            if(_loc12_ || this)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc12_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(!(_loc11_ && this))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              §§goto(addr196);
                                                                           }
                                                                           addr195:
                                                                        }
                                                                        §§goto(addr233);
                                                                     }
                                                                     §§goto(addr234);
                                                                  }
                                                               }
                                                               §§goto(addr195);
                                                            }
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr175);
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr282);
                                             }
                                             §§goto(addr208);
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr235);
                                    }
                                 }
                                 addr196:
                                 loop7:
                                 while(true)
                                 {
                                    if(_loc12_ || _loc1_)
                                    {
                                       if(!_loc11_)
                                       {
                                          while(true)
                                          {
                                             continue loop17;
                                          }
                                          addr205:
                                       }
                                    }
                                    else
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(1);
                                          addr208:
                                          while(true)
                                          {
                                             §§push(_loc7_);
                                             addr209:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                loop30:
                                                while(true)
                                                {
                                                   if(!(_loc12_ || this))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(!_loc11_)
                                                   {
                                                      §§push(Math.random() * _loc7_);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            if(_loc12_ || _loc3_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  addr234:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr235:
                                                                     while(true)
                                                                     {
                                                                        if(_loc12_ || this)
                                                                        {
                                                                           if(!_loc11_)
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr305:
                                                                           while(true)
                                                                           {
                                                                              §§push(this);
                                                                              §§push(this.§5!>§ + 1);
                                                                              if(!(_loc11_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() % 2);
                                                                              }
                                                                              §§pop().§5!>§ = §§pop();
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc12_ || this))
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           §§push(this.§5!>§);
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() != 1)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       break loop7;
                                                                                    }
                                                                                    continue loop35;
                                                                                 }
                                                                                 addr284:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§=Q§);
                                                                                    addr247:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          if(!(_loc11_ && _loc2_))
                                                                                          {
                                                                                             §§push(this.§+t§);
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc11_ && _loc2_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§push(§=Q§);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * 3);
                                                                                                   addr271:
                                                                                                   addr301:
                                                                                                   while(_loc12_)
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            break loop22;
                                                                                                         }
                                                                                                         addr276:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr337);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§+t§);
                                                                                                      addr303:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         break loop19;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop8;
                                                                                             addr258:
                                                                                          }
                                                                                          continue loop27;
                                                                                       }
                                                                                       continue loop28;
                                                                                    }
                                                                                 }
                                                                                 addr245:
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               addr233:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            §§push(this.§#!v§);
                                                            if(_loc11_ && this)
                                                            {
                                                               continue loop31;
                                                            }
                                                            if(!(_loc12_ || _loc3_))
                                                            {
                                                               continue loop30;
                                                            }
                                                            if(!(_loc11_ && _loc3_))
                                                            {
                                                               §§push(§7N§);
                                                               if(_loc12_ || _loc3_)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(this.§+t§);
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc12_ || _loc3_)
                                                                        {
                                                                           addr109:
                                                                           §§push(§4q§);
                                                                           if(!(_loc11_ && _loc3_))
                                                                           {
                                                                              addr117:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc11_)
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(§§pop() < §§pop())
                                                                                    {
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop17;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr223);
                                                                              }
                                                                              §§goto(addr269);
                                                                           }
                                                                           §§goto(addr303);
                                                                        }
                                                                        §§goto(addr117);
                                                                     }
                                                                     §§goto(addr109);
                                                                  }
                                                                  §§goto(addr271);
                                                               }
                                                               §§goto(addr109);
                                                            }
                                                            §§goto(addr247);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                      addr223:
                                                      continue loop1;
                                                   }
                                                   §§goto(addr276);
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr284);
                                 }
                                 return;
                              }
                              var _loc3_:uint = Math.round((1 - _loc2_) * 255);
                              if(_loc12_ || _loc3_)
                              {
                                 §§push(this.§#!v§);
                                 if(!(_loc11_ && _loc1_))
                                 {
                                    if(§§pop() > §=Q§)
                                    {
                                       if(!(_loc11_ && _loc2_))
                                       {
                                          if(§[o§.numChildren > 0)
                                          {
                                             if(!_loc11_)
                                             {
                                                addr391:
                                                if(_loc8_ = §[o§.getChildAt(0) as Sprite)
                                                {
                                                   if(_loc12_ || _loc3_)
                                                   {
                                                      _loc8_.removeChild(this.§return§,true);
                                                   }
                                                }
                                             }
                                             §§goto(addr429);
                                          }
                                          this.§return§ = null;
                                          if(!_loc11_)
                                          {
                                             §§push(255);
                                             if(_loc12_ || _loc2_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   addr429:
                                                   §§push(this);
                                                   §§push(§+J§);
                                                   if(!(_loc11_ && this))
                                                   {
                                                      §§push(§,!2§);
                                                      if(!(_loc11_ && _loc3_))
                                                      {
                                                         §§push(§§pop() - §+J§);
                                                         if(!_loc11_)
                                                         {
                                                            §§push(§§pop() * Math.random());
                                                         }
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!_loc11_)
                                                      {
                                                         §§push(-§§pop());
                                                      }
                                                   }
                                                   §§pop().§#!v§ = §§pop();
                                                   §§goto(addr458);
                                                }
                                                addr458:
                                                §§goto(addr462);
                                             }
                                             addr462:
                                             §§goto(addr461);
                                          }
                                       }
                                    }
                                    §§goto(addr429);
                                 }
                                 addr461:
                                 var _loc4_:*;
                                 §§push(_loc4_ = int(§[o§.numChildren - 1));
                                 if(!(_loc11_ && _loc1_))
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 addr608:
                                 §§push(_loc5_);
                                 if(_loc12_ || _loc2_)
                                 {
                                    §§push(1);
                                    if(_loc12_ || this)
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          addr579:
                                          _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
                                          addr553:
                                          addr574:
                                          addr578:
                                          addr571:
                                          addr570:
                                          addr580:
                                          if(_loc3_ == 255)
                                          {
                                             addr557:
                                             if(_loc12_)
                                             {
                                                §§push(255);
                                                if(!_loc11_)
                                                {
                                                   addr563:
                                                   _loc9_ = §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      addr474:
                                                      §§push(_loc9_);
                                                      if(!(_loc11_ && _loc1_))
                                                      {
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  §§push(16);
                                                                  if(!(_loc11_ && _loc3_))
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(§§pop() << §§pop());
                                                                        if(_loc12_ || this)
                                                                        {
                                                                           §§push(_loc9_ << 8);
                                                                           if(!_loc11_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc11_ && _loc3_))
                                                                              {
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(!(_loc11_ && _loc1_))
                                                                                    {
                                                                                       §§push(§§pop() + _loc9_);
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          addr538:
                                                                                          §§push(uint(§§pop()));
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             if(_loc12_ || _loc1_)
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      §§goto(addr553);
                                                                                                   }
                                                                                                   _loc1_ = §[o§.getChildAt(_loc5_);
                                                                                                   if(_loc12_ || _loc3_)
                                                                                                   {
                                                                                                      _loc1_.color = _loc10_;
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(_loc12_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         _loc5_ = §§pop();
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr608);
                                                                                                }
                                                                                                §§goto(addr557);
                                                                                             }
                                                                                             §§goto(addr628);
                                                                                          }
                                                                                          §§goto(addr553);
                                                                                       }
                                                                                       addr628:
                                                                                       §§push(int(§]!=§.numChildren - 1));
                                                                                       if(_loc12_ || this)
                                                                                       {
                                                                                          addr637:
                                                                                          §§push(_loc4_ = §§pop());
                                                                                          if(_loc11_ && this)
                                                                                          {
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr646);
                                                                                    }
                                                                                    §§goto(addr574);
                                                                                 }
                                                                                 §§goto(addr578);
                                                                              }
                                                                              §§goto(addr538);
                                                                           }
                                                                           §§goto(addr637);
                                                                        }
                                                                        addr646:
                                                                        var _loc6_:* = int(§§pop());
                                                                        §§goto(addr645);
                                                                     }
                                                                     §§goto(addr571);
                                                                  }
                                                                  §§goto(addr553);
                                                               }
                                                               §§goto(addr570);
                                                            }
                                                            §§goto(addr579);
                                                         }
                                                         §§goto(addr563);
                                                      }
                                                      §§goto(addr538);
                                                   }
                                                   §§goto(addr628);
                                                }
                                                §§goto(addr637);
                                             }
                                             §§goto(addr580);
                                          }
                                          §§goto(addr474);
                                       }
                                       §§goto(addr628);
                                    }
                                    §§goto(addr637);
                                 }
                                 addr645:
                                 if(!_loc11_)
                                 {
                                    addr693:
                                    if(_loc6_ >= 0)
                                    {
                                       _loc1_ = §]!=§.getChildAt(_loc6_);
                                       if(_loc12_ || this)
                                       {
                                          §§push(_loc1_);
                                          §§push((_loc9_ << 16) + (_loc9_ << 8));
                                          if(!_loc11_)
                                          {
                                             §§push(§§pop() + _loc9_);
                                          }
                                          §§pop().color = §§pop();
                                          if(_loc12_)
                                          {
                                             addr688:
                                             §§push(_loc6_);
                                             if(_loc12_)
                                             {
                                                §§push(§§pop() - 1);
                                             }
                                             _loc6_ = §§pop();
                                          }
                                          §§goto(addr693);
                                       }
                                       §§goto(addr688);
                                    }
                                    if(_loc12_)
                                    {
                                       §"V§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr391);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      private function §!d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§#!v§ > this.§=+§)
            {
               while(!this.§6!@§)
               {
                  if(_loc2_ || _loc2_)
                  {
                     §6!H§.§;!M§("Lightning04","ChannelExplosions");
                  }
                  do
                  {
                     this.§6!@§ = true;
                  }
                  while(!(_loc2_ || this));
                  
                  if(_loc2_ || this)
                  {
                     addr62:
                     break;
                  }
               }
            }
            return;
         }
         §§goto(addr62);
      }
   }
}
