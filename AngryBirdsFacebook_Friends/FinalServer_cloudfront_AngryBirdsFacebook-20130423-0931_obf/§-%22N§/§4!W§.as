package §-"N§
{
   import §'!6§.§ "E§;
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §8m§.§@"M§;
   import §<5§.Texture;
   import §<T§.§`m§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §4!W§ extends §3!K§
   {
      
      private static const §[!-§:Number = 1.5;
      
      private static const §#"U§:Number = 0.15;
      
      private static const §`0§:Number = 0.25;
      
      private static const §;b§:Number = 3.0;
      
      private static const §="§:Number = 20.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §[!-§ = 1.5;
            while(true)
            {
               §#"U§ = 0.15;
               while(true)
               {
                  §`0§ = 0.25;
                  §§goto(addr76);
               }
            }
         }
         addr76:
         while(true)
         {
            §;b§ = 3;
            do
            {
               §="§ = 20;
            }
            while(_loc1_);
            
            if(!(_loc1_ && §4!W§))
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private var § !R§:Number;
      
      private var §6!4§:Number;
      
      private var §=s§:§5T§;
      
      private var §2Z§:Boolean;
      
      private var §>G§:Number;
      
      private var §,]§:BitmapData;
      
      private var §[!1§:Texture;
      
      private var §+"%§:int = 0;
      
      public function §4!W§(param1:String, param2:Number, param3:§`m§, param4:Number)
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
               if(_loc5_)
               {
                  §§push(-§§pop());
               }
               §§pop().§ !R§ = §§pop();
            }
            while(!(_loc5_ || param3));
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§[!1§)
            {
               if(!(_loc2_ && this))
               {
                  textureManager.unregisterBitmapDataTexture(this.§[!1§);
                  addr104:
                  while(true)
                  {
                     this.§[!1§ = null;
                     addr89:
                     while(true)
                     {
                     }
                  }
                  addr104:
               }
               §§goto(addr104);
            }
            while(true)
            {
               if(this.§,]§)
               {
                  if(_loc1_ || this)
                  {
                     if(!_loc2_)
                     {
                        this.§,]§.dispose();
                     }
                     else
                     {
                        §§goto(addr104);
                     }
                  }
                  loop1:
                  for(; _loc1_; if(_loc1_ || this)
                  {
                     addr50:
                  },continue,return)
                  {
                     this.§,]§ = null;
                     loop2:
                     while(true)
                     {
                        addr23:
                        while(true)
                        {
                           super.dispose();
                           if(_loc1_ || _loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        §§goto(addr50);
                     }
                  }
                  continue;
               }
               §§goto(addr23);
            }
         }
         §§goto(addr104);
      }
      
      override protected function createGroundQuad(param1:uint) : §5T§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§[!1§)
            {
               if(_loc3_)
               {
                  textureManager.unregisterBitmapDataTexture(this.§[!1§);
               }
               while(true)
               {
                  this.§[!1§ = null;
                  addr77:
                  while(true)
                  {
                  }
               }
               addr97:
            }
            loop2:
            while(true)
            {
               if(this.§,]§)
               {
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        this.§,]§.dispose();
                        while(_loc3_)
                        {
                           this.§,]§ = null;
                           while(true)
                           {
                           }
                        }
                        continue loop2;
                        addr70:
                     }
                     §§goto(addr97);
                  }
                  addr65:
               }
               loop5:
               while(true)
               {
                  this.§,]§ = new BitmapData(2,2,false,param1);
                  while(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        this.§[!1§ = textureManager.getTextureFromBitmapData(this.§,]§);
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           if(true)
                           {
                              break loop5;
                           }
                           continue loop5;
                        }
                     }
                     else
                     {
                        §§goto(addr65);
                     }
                     §§goto(addr70);
                  }
               }
               var _loc2_:§5T§ = new § "E§(this.§[!1§,true,false);
               if(_loc3_)
               {
                  _loc2_.width = 4096;
                  _loc2_.height = 4096;
                  addr124:
                  if(!_loc3_)
                  {
                     §§goto(addr124);
                  }
               }
               return _loc2_;
            }
         }
         §§goto(addr60);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§=s§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  §§push(this.§=s§);
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(!(_loc3_ && param1))
                           {
                              this.§+!f§();
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr117);
                              }
                              addr99:
                           }
                           §§goto(addr119);
                        }
                        addr80:
                     }
                     break;
                  }
                  continue;
               }
               if(!(_loc3_ && _loc3_))
               {
                  if(this.§ !R§ > 0)
                  {
                     addr117:
                     while(true)
                     {
                        this.§^!_§();
                        addr119:
                        while(true)
                        {
                        }
                     }
                     addr117:
                  }
                  while(true)
                  {
                     break loop0;
                     §§goto(addr119);
                  }
               }
               §§goto(addr117);
            }
            while(true)
            {
               this.§%!+§();
               while(!_loc3_)
               {
                  §§push(this);
                  §§push(this.§ !R§);
                  if(_loc2_ || this)
                  {
                     §§push(param1);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§ !R§ = §§pop();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     return;
                  }
                  §§goto(addr80);
               }
               §§goto(addr99);
            }
            §§goto(addr117);
         }
         §§goto(addr119);
      }
      
      private function §^!_§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!_loc3_)
         {
            if(backgroundLayersSprite.numChildren > 0)
            {
               addr29:
               _loc1_ = backgroundLayersSprite.getChildAt(0) as Sprite;
               if(_loc4_)
               {
                  if(_loc1_)
                  {
                     if(!(_loc3_ && this))
                     {
                        addr47:
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(!_loc3_)
                        {
                           _loc2_.top -= 2048;
                           while(true)
                           {
                              this.§=s§ = new §5T§(_loc2_.width,_loc2_.height,16777215);
                              addr121:
                              while(true)
                              {
                                 §§push(this.§=s§);
                                 addr97:
                                 while(true)
                                 {
                                    §§pop().x = _loc2_.left;
                                 }
                              }
                           }
                           addr128:
                        }
                        loop9:
                        while(true)
                        {
                           §§push(this.§=s§);
                           loop10:
                           for(; !_loc3_; loop12:
                           while(true)
                           {
                              §§push(this.§=s§);
                              if(!(_loc4_ || _loc2_))
                              {
                                 break;
                              }
                              §§pop().alpha = 0;
                              for(; _loc4_; _loc1_.addChild(this.§=s§),if(_loc3_)
                              {
                                 continue;
                              },if(_loc3_)
                              {
                                 continue loop9;
                              },if(false)
                              {
                                 continue loop12;
                              },addr129:,this.§+"%§ = 0,if(!_loc3_)
                              {
                                 this.§ !R§ = 0;
                                 loop3:
                                 while(true)
                                 {
                                    if(Math.random() < 0.25)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(this);
                                          §§push(0.7);
                                          if(!_loc3_)
                                          {
                                             §§push(§§pop() + Math.random() * (§[!-§ - 0.7));
                                          }
                                          §§pop().§6!4§ = §§pop();
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(0.2);
                                             if(!_loc3_)
                                             {
                                                §§push(§§pop() + Math.random() * 2);
                                             }
                                             §§pop().§>G§ = §§pop();
                                             while(true)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   continue;
                                                }
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                          addr178:
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr178);
                                    }
                                    if(!§§pop())
                                    {
                                       §§push(Math.random() * (§[!-§ - 0.3));
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * 0.3);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§6!4§ = §§pop();
                                    §§goto(addr200);
                                 }
                              },§§goto(addr175))
                              {
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr91);
                           })
                           {
                              §§pop().y = _loc2_.top;
                              while(!_loc3_)
                              {
                                 continue loop10;
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr200);
                  }
                  §§goto(addr129);
               }
               §§goto(addr47);
            }
            §§goto(addr240);
         }
         §§goto(addr29);
      }
      
      private function §+!f§() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc7_:* = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:* = uint(0);
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(_loc11_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc11_)
         {
            §§push(this.§ !R§);
            if(!(_loc12_ && _loc1_))
            {
               §§push(§#"U§);
               loop0:
               for(; §§pop() >= §§pop(); if(_loc12_ && _loc1_)
               {
                  continue;
               },§§goto(addr130),§§push(§`0§))
               {
                  §§push(this.§ !R§);
                  loop1:
                  while(true)
                  {
                     §§push(§#"U§);
                     while(true)
                     {
                        §§push(this.§6!4§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           loop4:
                           while(§§pop() >= §§pop())
                           {
                              §§push(this.§ !R§);
                              if(!(_loc12_ && _loc3_))
                              {
                                 if(!_loc12_)
                                 {
                                    if(!_loc11_)
                                    {
                                       continue loop1;
                                    }
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(§#"U§);
                                       if(_loc11_ || _loc3_)
                                       {
                                          if(_loc11_ || _loc2_)
                                          {
                                             if(!_loc11_)
                                             {
                                                continue;
                                             }
                                             if(!_loc11_)
                                             {
                                                break loop3;
                                             }
                                             §§push(this.§6!4§);
                                             if(!(_loc12_ && this))
                                             {
                                                if(!_loc11_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!_loc12_)
                                                {
                                                   addr120:
                                                   if(_loc11_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr291:
                                                   §§push(§§pop() / §§pop());
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop17:
                                                      while(true)
                                                      {
                                                         _loc7_ = §§pop();
                                                         while(true)
                                                         {
                                                            addr218:
                                                            §§push(1);
                                                            addr298:
                                                            if(_loc11_ || this)
                                                            {
                                                               addr227:
                                                               §§push(§§pop() - _loc7_);
                                                               if(!(_loc11_ || _loc1_))
                                                               {
                                                                  continue loop17;
                                                               }
                                                               addr234:
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  addr245:
                                                                  §§push(Math.random() * _loc7_);
                                                                  if(_loc11_)
                                                                  {
                                                                     addr247:
                                                                     if(!(_loc12_ && _loc2_))
                                                                     {
                                                                        addr255:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc12_)
                                                                        {
                                                                           addr258:
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc12_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc11_ || _loc3_)
                                                                           {
                                                                              _loc2_ = §§pop();
                                                                              addr268:
                                                                              if(!(_loc11_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr64:
                                                                              while(true)
                                                                              {
                                                                                 this.§=s§.alpha = _loc2_;
                                                                                 if(_loc12_ && _loc3_)
                                                                                 {
                                                                                    addr213:
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       break loop0;
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc12_ && _loc3_)
                                                                                 {
                                                                                    break loop4;
                                                                                 }
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr64);
                                                                              }
                                                                              var _loc3_:uint = Math.round((1 - _loc2_) * 255);
                                                                              if(_loc11_)
                                                                              {
                                                                                 §§push(this.§ !R§);
                                                                                 if(!(_loc12_ && _loc2_))
                                                                                 {
                                                                                    if(§§pop() > §[!-§)
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          if(backgroundLayersSprite.numChildren > 0)
                                                                                          {
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(_loc8_ = backgroundLayersSprite.getChildAt(0) as Sprite)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      _loc8_.removeChild(this.§=s§,true);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr462:
                                                                                             addr466:
                                                                                             addr465:
                                                                                             var _loc4_:*;
                                                                                             §§push(_loc4_ = int(backgroundLayersSprite.numChildren - 1));
                                                                                             if(_loc11_ || _loc3_)
                                                                                             {
                                                                                                §§push(int(§§pop()));
                                                                                             }
                                                                                             var _loc5_:* = §§pop();
                                                                                             addr632:
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc12_)
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      addr593:
                                                                                                      §§push(_loc3_ * (_loc5_ + _loc4_));
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr603:
                                                                                                         _loc9_ = uint(§§pop() / (_loc4_ * 2));
                                                                                                         addr558:
                                                                                                         addr602:
                                                                                                         addr604:
                                                                                                         if(_loc3_ == 255)
                                                                                                         {
                                                                                                            if(!(_loc12_ && _loc1_))
                                                                                                            {
                                                                                                               addr570:
                                                                                                               §§push(uint(255));
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  if(!(_loc12_ && _loc1_))
                                                                                                                  {
                                                                                                                     _loc9_ = §§pop();
                                                                                                                     addr581:
                                                                                                                     if(_loc11_ || _loc2_)
                                                                                                                     {
                                                                                                                        addr478:
                                                                                                                        §§push(_loc9_);
                                                                                                                        if(_loc11_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(!(_loc12_ && _loc1_))
                                                                                                                           {
                                                                                                                              if(_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(16);
                                                                                                                                 if(_loc11_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() << §§pop());
                                                                                                                                       if(_loc11_ || _loc1_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc12_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_ << 8);
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!(_loc12_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + _loc9_);
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr642:
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   if(!(_loc12_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr651);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr654);
                                                                                                                                                }
                                                                                                                                                if(_loc11_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr546:
                                                                                                                                                   _loc10_ = §§pop();
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc11_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(false)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr558);
                                                                                                                                                         }
                                                                                                                                                         _loc1_ = backgroundLayersSprite.getChildAt(_loc5_);
                                                                                                                                                         if(!_loc12_)
                                                                                                                                                         {
                                                                                                                                                            _loc1_.color = _loc10_;
                                                                                                                                                            if(_loc11_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               addr622:
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc11_ || this)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - 1);
                                                                                                                                                               }
                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr632);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr622);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr581);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr642);
                                                                                                                                                   §§push(foregroundLayersSprite.numChildren - 1);
                                                                                                                                                }
                                                                                                                                                §§goto(addr602);
                                                                                                                                             }
                                                                                                                                             §§goto(addr651);
                                                                                                                                          }
                                                                                                                                          §§goto(addr570);
                                                                                                                                       }
                                                                                                                                       §§goto(addr654);
                                                                                                                                    }
                                                                                                                                    §§goto(addr593);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr558);
                                                                                                                           }
                                                                                                                           §§goto(addr570);
                                                                                                                        }
                                                                                                                        §§goto(addr546);
                                                                                                                     }
                                                                                                                     §§goto(addr604);
                                                                                                                  }
                                                                                                                  §§goto(addr593);
                                                                                                               }
                                                                                                               §§goto(addr603);
                                                                                                            }
                                                                                                            §§goto(addr581);
                                                                                                         }
                                                                                                         §§goto(addr478);
                                                                                                      }
                                                                                                      §§goto(addr642);
                                                                                                   }
                                                                                                   §§goto(addr546);
                                                                                                }
                                                                                                addr651:
                                                                                                §§push(_loc4_ = §§pop());
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr654:
                                                                                                   §§push(int(§§pop()));
                                                                                                }
                                                                                                var _loc6_:* = §§pop();
                                                                                                if(!(_loc12_ && _loc1_))
                                                                                                {
                                                                                                   addr717:
                                                                                                   if(_loc6_ >= 0)
                                                                                                   {
                                                                                                      _loc1_ = foregroundLayersSprite.getChildAt(_loc6_);
                                                                                                      if(_loc11_ || this)
                                                                                                      {
                                                                                                         §§push(_loc1_);
                                                                                                         §§push((_loc9_ << 16) + (_loc9_ << 8));
                                                                                                         if(_loc11_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() + _loc9_);
                                                                                                         }
                                                                                                         §§pop().color = §§pop();
                                                                                                         if(!(_loc12_ && _loc1_))
                                                                                                         {
                                                                                                            addr712:
                                                                                                            §§push(_loc6_);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                            }
                                                                                                            _loc6_ = §§pop();
                                                                                                         }
                                                                                                         §§goto(addr717);
                                                                                                      }
                                                                                                      §§goto(addr712);
                                                                                                   }
                                                                                                   if(!_loc12_)
                                                                                                   {
                                                                                                      groundSprite.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
                                                                                                   }
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr654);
                                                                                          }
                                                                                          this.§=s§ = null;
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             addr416:
                                                                                             §§push(255);
                                                                                             if(!(_loc12_ && _loc3_))
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                if(!(_loc12_ && _loc1_))
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(§;b§);
                                                                                                   if(!(_loc12_ && _loc2_))
                                                                                                   {
                                                                                                      §§push(§="§);
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §;b§);
                                                                                                         if(_loc11_ || _loc1_)
                                                                                                         {
                                                                                                            addr454:
                                                                                                            §§push(§§pop() * Math.random());
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            addr461:
                                                                                                            §§pop().§ !R§ = -§§pop();
                                                                                                            §§goto(addr462);
                                                                                                         }
                                                                                                         §§goto(addr461);
                                                                                                      }
                                                                                                      §§goto(addr454);
                                                                                                   }
                                                                                                   §§goto(addr461);
                                                                                                }
                                                                                                §§goto(addr462);
                                                                                             }
                                                                                             §§goto(addr466);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr416);
                                                                                    }
                                                                                    §§goto(addr462);
                                                                                 }
                                                                                 §§goto(addr465);
                                                                              }
                                                                              §§goto(addr416);
                                                                              addr43:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§[!-§);
                                                                              if(!(_loc12_ && _loc1_))
                                                                              {
                                                                                 §§push(§§pop() * 3);
                                                                              }
                                                                              §§goto(addr291);
                                                                           }
                                                                           addr281:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr354:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr43);
                                                                           }
                                                                        }
                                                                        addr353:
                                                                     }
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr281);
                                                                  }
                                                                  addr280:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr280);
                                                                  §§goto(addr234);
                                                               }
                                                               addr278:
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop() != 1)
                                                               {
                                                                  addr300:
                                                                  if(!_loc12_)
                                                                  {
                                                                     return;
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                               else
                                                               {
                                                                  addr276:
                                                                  §§goto(addr278);
                                                                  §§push(§[!-§);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                         }
                                                         addr351:
                                                         while(true)
                                                         {
                                                            addr352:
                                                            §§goto(addr353);
                                                            §§goto(addr247);
                                                         }
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr131:
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!(_loc12_ && _loc2_))
                                                      {
                                                         if(_loc11_ || _loc2_)
                                                         {
                                                            if(!_loc12_)
                                                            {
                                                               if(_loc11_ || _loc1_)
                                                               {
                                                                  §§push(1);
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(this.§ !R§);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(§#"U§);
                                                                        if(!(_loc12_ && this))
                                                                        {
                                                                           §§push(§§pop() + this.§6!4§);
                                                                           if(!_loc12_)
                                                                           {
                                                                              addr175:
                                                                              §§push(§§pop() - §§pop());
                                                                              if(_loc11_ || _loc1_)
                                                                              {
                                                                                 addr184:
                                                                                 §§push(§§pop() / §`0§);
                                                                              }
                                                                              if(!_loc12_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!(_loc12_ && _loc3_))
                                                                                 {
                                                                                    addr195:
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(!(_loc12_ && _loc2_))
                                                                                       {
                                                                                          addr205:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc11_ || _loc2_)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             §§goto(addr213);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr351);
                                                                                             §§push(§#"U§);
                                                                                             break loop0;
                                                                                          }
                                                                                          addr350:
                                                                                       }
                                                                                       §§goto(addr227);
                                                                                    }
                                                                                    §§goto(addr258);
                                                                                 }
                                                                                 §§goto(addr205);
                                                                              }
                                                                              §§goto(addr227);
                                                                           }
                                                                           §§goto(addr184);
                                                                        }
                                                                        §§goto(addr175);
                                                                     }
                                                                     §§goto(addr184);
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            else
                                                            {
                                                               if(_loc11_ || _loc1_)
                                                               {
                                                                  §§goto(addr276);
                                                               }
                                                               §§push(this.§+"%§);
                                                               addr336:
                                                            }
                                                            §§goto(addr298);
                                                         }
                                                         §§goto(addr268);
                                                      }
                                                      §§goto(addr213);
                                                   }
                                                }
                                                §§goto(addr43);
                                             }
                                             else
                                             {
                                                addr130:
                                                §§push(§§pop() + §§pop());
                                             }
                                             §§goto(addr131);
                                          }
                                          §§goto(addr245);
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr352);
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr195);
                           }
                           addr321:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§+"%§ + 1);
                              if(!(_loc12_ && this))
                              {
                                 §§push(§§pop() % 2);
                              }
                              §§pop().§+"%§ = §§pop();
                              §§goto(addr336);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr350);
         }
         §§goto(addr321);
      }
      
      private function §%!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§ !R§ > this.§>G§)
            {
               if(_loc2_)
               {
                  if(!this.§2Z§)
                  {
                     if(!_loc1_)
                     {
                        addr53:
                        §@"M§.§"!0§("Lightning04","ChannelExplosions");
                     }
                  }
                  §§goto(addr30);
               }
               do
               {
                  this.§2Z§ = true;
               }
               while(!_loc2_);
               
            }
            addr30:
            return;
         }
         §§goto(addr53);
      }
   }
}
