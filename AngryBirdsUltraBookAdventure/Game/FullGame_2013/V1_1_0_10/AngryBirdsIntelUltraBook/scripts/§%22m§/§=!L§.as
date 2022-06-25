package §"m§
{
   import §8!A§.§-!i§;
   import §=`§.§6!I§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §=!L§ extends §-!i§
   {
      
      private static const §>!P§:Number = 1.5;
      
      private static const §<d§:Number = 0.15;
      
      private static const §,?§:Number = 0.25;
      
      private static const §-!p§:Number = 3.0;
      
      private static const §<z§:Number = 20.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §>!P§ = 1.5;
            do
            {
               §<d§ = 0.15;
               loop1:
               do
               {
                  §,?§ = 0.25;
                  while(true)
                  {
                     §-!p§ = 3;
                     while(_loc2_)
                     {
                        §<z§ = 20;
                        if(_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private var §+V§:Number;
      
      private var §?5§:Number;
      
      private var §30§:§ O§;
      
      private var § !]§:Boolean;
      
      private var §<=§:Number;
      
      private var §1+§:BitmapData;
      
      private var §5$§:Texture;
      
      private var §4!u§:int = 0;
      
      public function §=!L§(param1:String, param2:Number, param3:§6!I§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super(param1,param2,param3,param4);
            do
            {
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(_loc5_ || param1)
               {
                  §§push(-§§pop());
               }
               §§pop().§+V§ = §§pop();
            }
            while(_loc6_ && this);
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§5$§)
            {
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§5$§);
                  addr104:
                  while(true)
                  {
                     this.§5$§ = null;
                     addr96:
                     while(true)
                     {
                     }
                  }
               }
               addr100:
            }
            loop3:
            while(true)
            {
               if(this.§1+§)
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     this.§1+§.dispose();
                  }
                  while(_loc1_)
                  {
                     this.§1+§ = null;
                     loop5:
                     for(; _loc1_ || _loc1_; while(true)
                     {
                        super.dispose();
                        if(!(_loc1_ || _loc1_))
                        {
                           continue loop5;
                        }
                        if(!_loc2_)
                        {
                           break loop3;
                        }
                        §§goto(addr100);
                     })
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        §§goto(addr104);
                     }
                  }
                  continue;
               }
               §§goto(addr28);
            }
         }
      }
      
      override protected function createGroundQuad(param1:uint) : § O§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.§5$§)
            {
               loop0:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§5$§);
                  loop1:
                  while(true)
                  {
                     this.§5$§ = null;
                     addr104:
                     while(true)
                     {
                        loop5:
                        while(_loc3_ || param1)
                        {
                           if(!_loc4_)
                           {
                              this.§1+§ = null;
                              loop6:
                              for(; !(_loc4_ && this); if(!(_loc4_ && this))
                              {
                                 while(false)
                                 {
                                    §§goto(addr42);
                                 }
                                 var _loc2_:§ O§ = new §"<§(this.§5$§,true,false);
                                 if(_loc3_ || param1)
                                 {
                                    _loc2_.width = 4096;
                                    do
                                    {
                                       _loc2_.height = 4096;
                                    }
                                    while(_loc4_ && this);
                                    
                                 }
                                 return _loc2_;
                                 addr40:
                              })
                              {
                                 while(true)
                                 {
                                    this.§1+§ = new BitmapData(2,2,false,param1);
                                    loop8:
                                    while(_loc3_)
                                    {
                                       addr53:
                                       if(!(_loc4_ && param1))
                                       {
                                          this.§5$§ = textureManager.getTextureFromBitmapData(this.§1+§);
                                          if(!(_loc4_ && _loc3_))
                                          {
                                             continue loop6;
                                          }
                                          continue;
                                       }
                                       addr87:
                                       while(true)
                                       {
                                          this.§1+§.dispose();
                                          break loop8;
                                          §§goto(addr53);
                                       }
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(this.§1+§)
               {
                  §§goto(addr87);
               }
               §§goto(addr42);
               §§goto(addr104);
            }
         }
         §§goto(addr40);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§30§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  §§push(this.§30§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           this.§9x§();
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              §§goto(addr95);
                           }
                           §§goto(addr120);
                        }
                        addr93:
                     }
                     break;
                  }
                  continue;
               }
               if(_loc3_ || _loc2_)
               {
                  addr114:
                  if(this.§+V§ > 0)
                  {
                     while(true)
                     {
                        this.§4!,§();
                        addr120:
                        while(true)
                        {
                        }
                        addr95:
                        if(_loc3_ || param1)
                        {
                           addr102:
                           break loop0;
                        }
                     }
                     addr118:
                  }
                  while(true)
                  {
                     break loop0;
                  }
               }
               §§goto(addr118);
               §§goto(addr120);
            }
            while(true)
            {
               this.§>4§();
               do
               {
                  §§push(this);
                  §§push(this.§+V§);
                  if(_loc3_ || this)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§+V§ = §§pop();
               }
               while(_loc2_ && _loc2_);
               
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr93);
               §§goto(addr102);
            }
            return;
         }
         §§goto(addr114);
      }
      
      private function §4!,§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!_loc4_)
         {
            if(§8y§.numChildren > 0)
            {
               addr28:
               _loc1_ = §8y§.getChildAt(0) as Sprite;
               if(_loc3_ || _loc1_)
               {
                  if(_loc1_)
                  {
                     if(_loc3_)
                     {
                        addr46:
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(_loc3_ || _loc3_)
                        {
                           _loc2_.top -= 2048;
                           loop7:
                           while(true)
                           {
                              this.§30§ = new § O§(_loc2_.width,_loc2_.height,16777215);
                              loop8:
                              while(true)
                              {
                                 §§push(this.§30§);
                                 loop9:
                                 while(true)
                                 {
                                    §§pop().x = _loc2_.left;
                                    loop10:
                                    while(true)
                                    {
                                       §§push(this.§30§);
                                       while(true)
                                       {
                                          §§pop().y = _loc2_.top;
                                          addr98:
                                          while(_loc3_ || _loc1_)
                                          {
                                             continue loop7;
                                          }
                                          addr77:
                                          continue loop10;
                                          while(true)
                                          {
                                             §§push(this.§30§);
                                             if(_loc4_ && _loc1_)
                                             {
                                                break;
                                             }
                                             if(_loc4_)
                                             {
                                                continue loop9;
                                             }
                                             §§pop().alpha = 0;
                                             do
                                             {
                                                _loc1_.addChild(this.§30§);
                                             }
                                             while(!(_loc3_ || _loc1_));
                                             
                                             if(_loc3_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop8;
                                                }
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                addr148:
                                                this.§4!u§ = 0;
                                                if(!_loc4_)
                                                {
                                                   this.§+V§ = 0;
                                                   while(true)
                                                   {
                                                      if(Math.random() >= 0.25)
                                                      {
                                                         §§push(this);
                                                         §§push(0.3);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            §§push(Math.random() * (§>!P§ - 0.3));
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop() * 0.3);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().§?5§ = §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(0.2);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() + Math.random() * 2);
                                                                  }
                                                                  §§pop().§<=§ = §§pop();
                                                                  addr182:
                                                                  §§goto(addr189);
                                                               }
                                                               addr171:
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr171);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                }
                                                §§goto(addr189);
                                             }
                                             else
                                             {
                                                §§goto(addr98);
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
                           §§goto(addr77);
                        }
                     }
                     addr189:
                     while(_loc4_ && _loc2_)
                     {
                        continue loop2;
                     }
                     §§goto(addr254);
                  }
                  §§goto(addr148);
               }
               §§goto(addr46);
            }
            addr254:
            while(true)
            {
               this.§ !]§ = false;
               if(!_loc3_)
               {
                  continue;
               }
               if(_loc3_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     if(true)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  continue loop5;
               }
               addr237:
               while(true)
               {
                  §§push(this);
                  §§push(0.7);
                  if(_loc3_)
                  {
                     §§push(§§pop() + Math.random() * (§>!P§ - 0.7));
                  }
                  §§pop().§?5§ = §§pop();
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function §9x§() : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc7_:* = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:* = uint(0);
         var _loc10_:* = uint(0);
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(_loc11_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc11_)
         {
            §§push(this.§+V§);
            loop0:
            while(true)
            {
               §§push(§<d§);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc12_ && _loc3_))
                     {
                        §§push(this.§+V§);
                        while(true)
                        {
                           §§push(§<d§);
                           addr336:
                           addr68:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr337:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr338:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                              }
                           }
                           if(_loc12_ && this)
                           {
                              continue;
                           }
                           §§push(§<d§);
                           if(!_loc12_)
                           {
                              if(!(_loc12_ && _loc1_))
                              {
                                 if(_loc12_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(this.§?5§);
                                 if(_loc11_)
                                 {
                                    if(!_loc12_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(!_loc12_)
                                       {
                                          addr97:
                                          §§push(§§pop() + §,?§);
                                       }
                                       if(!(_loc12_ && _loc1_))
                                       {
                                          addr105:
                                          if(§§pop() < §§pop())
                                          {
                                             loop8:
                                             while(true)
                                             {
                                                if(!(_loc12_ && _loc3_))
                                                {
                                                   §§push(1);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(this.§+V§);
                                                      if(_loc11_ || this)
                                                      {
                                                         §§push(§<d§);
                                                         if(_loc11_ || _loc1_)
                                                         {
                                                            §§push(§§pop() + this.§?5§);
                                                            if(!(_loc12_ && this))
                                                            {
                                                               addr143:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc11_)
                                                               {
                                                                  addr146:
                                                                  if(_loc11_ || _loc2_)
                                                                  {
                                                                     addr155:
                                                                     §§push(§§pop() - §§pop() / §,?§);
                                                                     if(_loc11_)
                                                                     {
                                                                        if(_loc11_ || _loc2_)
                                                                        {
                                                                           if(_loc11_ || _loc1_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc12_ && _loc2_))
                                                                                       {
                                                                                          if(_loc11_ || this)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§>!P§);
                                                                                             if(!(_loc12_ && _loc2_))
                                                                                             {
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                §§push(this.§?5§);
                                                                                                if(_loc11_ || this)
                                                                                                {
                                                                                                   if(!(_loc12_ && _loc1_))
                                                                                                   {
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         addr270:
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               addr274:
                                                                                                               §§push(§>!P§);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * 3);
                                                                                                                  addr276:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     addr277:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        break loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr274:
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr270);
                                                                                                         }
                                                                                                         addr271:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr336);
                                                                                                      }
                                                                                                      §§goto(addr338);
                                                                                                   }
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop() >= §§pop())
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      if(!(_loc12_ && _loc2_))
                                                                                                      {
                                                                                                         addr321:
                                                                                                         §§push(this);
                                                                                                         §§push(this.§4!u§ + 1);
                                                                                                         if(!(_loc12_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(§§pop() % 2);
                                                                                                         }
                                                                                                         §§pop().§4!u§ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§4!u§);
                                                                                                            addr285:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() != 1)
                                                                                                               {
                                                                                                                  §§goto(addr287);
                                                                                                               }
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                         }
                                                                                                         addr321:
                                                                                                      }
                                                                                                      §§goto(addr321);
                                                                                                      addr297:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr105);
                                                                                                }
                                                                                                §§goto(addr274);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc7_ = §§pop();
                                                                                          }
                                                                                          addr278:
                                                                                       }
                                                                                       while(!_loc12_)
                                                                                       {
                                                                                          §§push(1);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc12_ && _loc2_))
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc11_ || _loc1_)
                                                                                                   {
                                                                                                      if(!(_loc12_ && this))
                                                                                                      {
                                                                                                         if(!(_loc12_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(Math.random() * _loc7_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  if(_loc11_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     loop17:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr235:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              addr294:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§<d§);
                                                                                                                                 addr295:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr297);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr278);
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        _loc2_ = §§pop();
                                                                                                                        addr240:
                                                                                                                        loop30:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr38:
                                                                                                                           addr339:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              this.§30§.alpha = _loc2_;
                                                                                                                              if(_loc12_ && this)
                                                                                                                              {
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              if(!_loc12_)
                                                                                                                              {
                                                                                                                                 while(false)
                                                                                                                                 {
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 var _loc3_:uint = Math.round((1 - _loc2_) * 255);
                                                                                                                                 if(!(_loc12_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(this.§+V§);
                                                                                                                                    if(!(_loc12_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(§§pop() > §>!P§)
                                                                                                                                       {
                                                                                                                                          if(!(_loc12_ && this))
                                                                                                                                          {
                                                                                                                                             if(§8y§.numChildren > 0)
                                                                                                                                             {
                                                                                                                                                if(_loc11_ || this)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_ = §8y§.getChildAt(0) as Sprite)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         _loc8_.removeChild(this.§30§,true);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr467:
                                                                                                                                                addr471:
                                                                                                                                                addr470:
                                                                                                                                                var _loc4_:*;
                                                                                                                                                §§push(_loc4_ = int(§8y§.numChildren - 1));
                                                                                                                                                if(!(_loc12_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                }
                                                                                                                                                var _loc5_:* = §§pop();
                                                                                                                                                loop31:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(1);
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               loop33:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                  addr578:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * (§§pop() + _loc4_));
                                                                                                                                                                     addr581:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / (_loc4_ * 2));
                                                                                                                                                                        if(_loc11_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(uint(§§pop()));
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                              addr594:
                                                                                                                                                                              addr529:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr548:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc12_ && _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              _loc10_ = §§pop();
                                                                                                                                                                              if(_loc12_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr632);
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc12_ && _loc1_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc1_ = §8y§.getChildAt(_loc5_);
                                                                                                                                                                                    if(_loc11_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc1_.color = _loc10_;
                                                                                                                                                                                       if(!(_loc11_ || _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop31;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(!(_loc12_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                    }
                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr594);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr548);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr632);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr632:
                                                                                                                                                            addr629:
                                                                                                                                                            addr645:
                                                                                                                                                            §§push(int(§[f§.numChildren - 1));
                                                                                                                                                            if(_loc11_)
                                                                                                                                                            {
                                                                                                                                                               addr635:
                                                                                                                                                               §§push(_loc4_ = §§pop());
                                                                                                                                                               if(!(_loc12_ && _loc2_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(int(§§pop()));
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            var _loc6_:* = §§pop();
                                                                                                                                                            if(_loc11_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr692:
                                                                                                                                                               if(_loc6_ >= 0)
                                                                                                                                                               {
                                                                                                                                                                  _loc1_ = §[f§.getChildAt(_loc6_);
                                                                                                                                                                  if(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc1_);
                                                                                                                                                                     §§push((_loc9_ << 16) + (_loc9_ << 8));
                                                                                                                                                                     if(!_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + _loc9_);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().color = §§pop();
                                                                                                                                                                     if(!_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - 1);
                                                                                                                                                                        }
                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr692);
                                                                                                                                                               }
                                                                                                                                                               if(!_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  §!!u§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr635);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             this.§30§ = null;
                                                                                                                                             if(_loc11_ || _loc2_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             §§goto(addr467);
                                                                                                                                          }
                                                                                                                                          §§push(255);
                                                                                                                                          if(_loc11_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(§-!p§);
                                                                                                                                                if(_loc11_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§<z§);
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §-!p§);
                                                                                                                                                      if(_loc11_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr454:
                                                                                                                                                         §§push(§§pop() * Math.random());
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      if(_loc11_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr465:
                                                                                                                                                         §§push(-§§pop());
                                                                                                                                                      }
                                                                                                                                                      §§pop().§+V§ = §§pop();
                                                                                                                                                      §§goto(addr467);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr454);
                                                                                                                                                }
                                                                                                                                                §§goto(addr465);
                                                                                                                                             }
                                                                                                                                             §§goto(addr467);
                                                                                                                                          }
                                                                                                                                          §§goto(addr471);
                                                                                                                                       }
                                                                                                                                       §§goto(addr467);
                                                                                                                                    }
                                                                                                                                    §§goto(addr470);
                                                                                                                                 }
                                                                                                                                 §§goto(addr467);
                                                                                                                                 addr54:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr240);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr38);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr234:
                                                                                                                  }
                                                                                                                  §§goto(addr274);
                                                                                                               }
                                                                                                               §§goto(addr276);
                                                                                                            }
                                                                                                            addr229:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr277);
                                                                                                   }
                                                                                                   §§goto(addr235);
                                                                                                }
                                                                                                §§goto(addr337);
                                                                                                addr203:
                                                                                             }
                                                                                             §§goto(addr285);
                                                                                          }
                                                                                       }
                                                                                       addr287:
                                                                                       return;
                                                                                    }
                                                                                    if(!_loc12_)
                                                                                    {
                                                                                       §§goto(addr38);
                                                                                    }
                                                                                    §§goto(addr339);
                                                                                 }
                                                                                 §§goto(addr234);
                                                                              }
                                                                              addr173:
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr173);
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                            }
                                                            §§goto(addr155);
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      §§goto(addr146);
                                                   }
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr321);
                                             }
                                          }
                                          §§goto(addr38);
                                       }
                                       §§goto(addr229);
                                    }
                                    §§goto(addr297);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr295);
                           }
                           §§goto(addr97);
                        }
                     }
                     §§goto(addr339);
                  }
                  else
                  {
                     §§push(this.§+V§);
                  }
                  §§goto(addr294);
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §>4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§+V§ > this.§<=§)
            {
               if(_loc1_ || this)
               {
                  if(!this.§ !]§)
                  {
                     if(!_loc2_)
                     {
                        addr67:
                        §-!Q§.§7"$§("Lightning04","ChannelExplosions");
                     }
                  }
                  §§goto(addr19);
               }
               do
               {
                  this.§ !]§ = true;
               }
               while(_loc2_);
               
            }
            addr19:
            return;
         }
         §§goto(addr67);
      }
   }
}
