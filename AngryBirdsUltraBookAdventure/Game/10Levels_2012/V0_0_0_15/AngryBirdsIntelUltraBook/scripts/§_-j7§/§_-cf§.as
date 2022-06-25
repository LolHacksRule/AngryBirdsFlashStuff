package §_-j7§
{
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-0FF§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-uY§.§_-2p§;
   import §_-vJ§.§_-OI§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-cf§ extends §_-OI§
   {
      
      private static const §_-FV§:Number = 1.5;
      
      private static const §_-K9§:Number = 0.15;
      
      private static const §_-YW§:Number = 0.25;
      
      private static const §_-tF§:Number = 3.0;
      
      private static const §_-DW§:Number = 20.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-FV§ = 1.5;
         }
         while(true)
         {
            §_-K9§ = 0.15;
            loop1:
            while(true)
            {
               §_-YW§ = 0.25;
               do
               {
                  §_-tF§ = 3;
                  continue loop1;
               }
               while(_loc1_ && _loc1_);
               
               return;
            }
            if(!(_loc2_ || _loc2_))
            {
               continue;
            }
            §§goto(addr86);
         }
      }
      
      private var §_-06v§:Number;
      
      private var §_-ow§:Number;
      
      private var §_-Nf§:§_-2p§;
      
      private var §_-sq§:Boolean;
      
      private var §_-T1§:Number;
      
      private var §_-g5§:BitmapData;
      
      private var §_-ZO§:Texture;
      
      private var §_-Ku§:int = 0;
      
      public function §_-cf§(param1:String, param2:Number, param3:§_-0FF§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
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
               §§pop().§_-06v§ = §§pop();
            }
            while(_loc6_ && this);
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§_-ZO§)
            {
               loop0:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§_-ZO§);
                  addr104:
                  loop6:
                  while(true)
                  {
                     this.§_-ZO§ = null;
                     addr82:
                     addr96:
                     while(true)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           continue loop0;
                        }
                        continue loop6;
                     }
                     addr96:
                  }
               }
            }
            while(true)
            {
               if(this.§_-g5§)
               {
                  if(!_loc2_)
                  {
                     this.§_-g5§.dispose();
                  }
                  while(_loc1_)
                  {
                     this.§_-g5§ = null;
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           super.dispose();
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
                  §§goto(addr82);
               }
               §§goto(addr28);
               §§goto(addr96);
            }
         }
         §§goto(addr104);
      }
      
      override protected function createGroundQuad(param1:uint) : §_-2p§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(this.§_-ZO§)
            {
               addr93:
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§_-ZO§);
                  addr97:
                  while(true)
                  {
                     this.§_-ZO§ = null;
                     addr89:
                     while(true)
                     {
                     }
                  }
               }
               addr93:
            }
            loop0:
            while(true)
            {
               if(this.§_-g5§)
               {
                  while(true)
                  {
                     this.§_-g5§.dispose();
                     while(_loc3_)
                     {
                        this.§_-g5§ = null;
                        loop3:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              while(true)
                              {
                                 this.§_-g5§ = new BitmapData(2,2,false,param1);
                                 continue loop3;
                              }
                              addr114:
                              var _loc2_:§_-2p§ = new §_-09b§(this.§_-ZO§,true,false);
                              addr98:
                              if(_loc3_ || _loc3_)
                              {
                                 _loc2_.width = 4096;
                              }
                              _loc2_.height = 4096;
                              addr144:
                              if(!(_loc3_ || _loc2_))
                              {
                                 §§goto(addr144);
                              }
                              return _loc2_;
                              addr37:
                           }
                           §§goto(addr93);
                        }
                        continue loop0;
                     }
                     §§goto(addr97);
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr93);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§_-Nf§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  §§push(this.§_-Nf§);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           this.§_-Qd§();
                        }
                        §§goto(addr100);
                     }
                     break;
                  }
                  continue;
               }
               if(_loc3_ || param1)
               {
                  if(this.§_-06v§ > 0)
                  {
                     loop1:
                     while(true)
                     {
                        this.§_-jb§();
                        addr125:
                        addr100:
                        while(true)
                        {
                        }
                        while(true)
                        {
                           if(_loc3_ || _loc2_)
                           {
                              break loop0;
                           }
                           continue loop1;
                        }
                     }
                     addr123:
                  }
                  while(true)
                  {
                     break loop0;
                     §§goto(addr125);
                  }
                  return;
                  addr73:
               }
               §§goto(addr125);
               §§goto(addr123);
            }
            while(true)
            {
               this.§_-Gs§();
               do
               {
                  §§push(this);
                  §§push(this.§_-06v§);
                  if(_loc3_)
                  {
                     §§push(param1);
                     if(!(_loc2_ && param1))
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§_-06v§ = §§pop();
               }
               while(_loc2_ && param1);
               
               if(_loc3_)
               {
                  if(_loc2_ && this)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr100);
               }
            }
            §§goto(addr125);
         }
         §§goto(addr73);
      }
      
      private function §_-jb§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!_loc4_)
         {
            if(§_-pH§.numChildren > 0)
            {
               addr28:
               _loc1_ = §_-pH§.getChildAt(0) as Sprite;
               if(!(_loc4_ && _loc1_))
               {
                  if(_loc1_)
                  {
                     if(_loc3_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(!_loc4_)
                        {
                           _loc2_.top -= 2048;
                           loop0:
                           while(true)
                           {
                              this.§_-Nf§ = new §_-2p§(_loc2_.width,_loc2_.height,16777215);
                              loop1:
                              while(true)
                              {
                                 §§push(this.§_-Nf§);
                                 while(true)
                                 {
                                    §§pop().x = _loc2_.left;
                                    continue loop0;
                                    addr85:
                                    loop4:
                                    while(_loc3_ || _loc1_)
                                    {
                                       §§pop().y = _loc2_.top;
                                       loop5:
                                       while(true)
                                       {
                                          addr72:
                                          while(true)
                                          {
                                             §§push(this.§_-Nf§);
                                             if(_loc4_)
                                             {
                                                break;
                                             }
                                             §§pop().alpha = 0;
                                             loop7:
                                             while(!_loc4_)
                                             {
                                                while(true)
                                                {
                                                   _loc1_.addChild(this.§_-Nf§);
                                                   if(!_loc4_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop7;
                                                }
                                                this.§_-Ku§ = 0;
                                                if(_loc3_)
                                                {
                                                   this.§_-06v§ = 0;
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(Math.random() >= 0.25)
                                                      {
                                                         addr178:
                                                         §§push(this);
                                                         §§push(0.3);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§push(Math.random() * (§_-FV§ - 0.3));
                                                            if(_loc3_)
                                                            {
                                                               §§push(§§pop() * 0.3);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         loop12:
                                                         for(; _loc3_ || _loc1_; §§goto(addr178))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(0.2);
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§push(§§pop() + Math.random() * 2);
                                                                  }
                                                                  §§pop().§_-T1§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               addr254:
                                                               return;
                                                               addr157:
                                                            }
                                                            else
                                                            {
                                                               addr215:
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc4_ && this))
                                                               {
                                                                  §§push(this);
                                                                  §§push(0.7);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     §§push(§§pop() + Math.random() * (§_-FV§ - 0.7));
                                                                  }
                                                                  §§pop().§_-ow§ = §§pop();
                                                                  break loop12;
                                                               }
                                                               continue loop15;
                                                            }
                                                         }
                                                         §§pop().§_-ow§ = §§pop();
                                                         while(true)
                                                         {
                                                            §§goto(addr157);
                                                         }
                                                         addr249:
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                   addr143:
                                                }
                                                §§goto(addr175);
                                             }
                                             continue loop5;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr81);
                     }
                     §§goto(addr249);
                  }
                  §§goto(addr138);
               }
               §§goto(addr143);
            }
            §§goto(addr254);
         }
         §§goto(addr28);
      }
      
      private function §_-Qd§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:* = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!(_loc11_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc12_ || _loc1_)
         {
            §§push(this.§_-06v§);
            loop0:
            while(true)
            {
               §§push(§_-K9§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(this.§_-06v§);
                     loop2:
                     while(true)
                     {
                        if(_loc12_ || this)
                        {
                           §§push(§_-K9§);
                           loop3:
                           while(true)
                           {
                              §§push(this.§_-ow§);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       §§push(this.§_-06v§);
                                       if(!_loc11_)
                                       {
                                          if(_loc12_ || _loc3_)
                                          {
                                             if(_loc11_)
                                             {
                                                continue loop2;
                                             }
                                             §§push(§_-K9§);
                                             if(!_loc11_)
                                             {
                                                if(!_loc11_)
                                                {
                                                   if(_loc12_)
                                                   {
                                                      §§push(this.§_-ow§);
                                                      if(!_loc11_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc12_ || _loc1_)
                                                         {
                                                            addr111:
                                                            if(!(_loc11_ && _loc2_))
                                                            {
                                                               addr119:
                                                               §§push(§_-YW§);
                                                               if(_loc11_)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               addr122:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  while(!(_loc11_ && _loc3_))
                                                                  {
                                                                     §§goto(addr259);
                                                                  }
                                                                  continue;
                                                                  addr252:
                                                               }
                                                               if(_loc11_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc11_)
                                                                     {
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           §§push(this.§_-06v§);
                                                                           if(_loc12_)
                                                                           {
                                                                              if(!(_loc11_ && this))
                                                                              {
                                                                                 §§push(§_-K9§);
                                                                                 if(!(_loc11_ && _loc1_))
                                                                                 {
                                                                                    §§push(§§pop() + this.§_-ow§);
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       addr163:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(!(_loc11_ && _loc2_))
                                                                                       {
                                                                                          addr172:
                                                                                          §§push(§§pop() / §_-YW§);
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc12_ || this)
                                                                                       {
                                                                                          addr181:
                                                                                          if(_loc12_ || _loc3_)
                                                                                          {
                                                                                             addr189:
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                if(_loc12_)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      if(!(_loc11_ && _loc1_))
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc12_ || _loc2_)
                                                                                                            {
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§_-Nf§.alpha = _loc2_;
                                                                                                                  if(!_loc12_)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                                  addr56:
                                                                                                                  if(_loc12_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(!(_loc11_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              if(true)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           addr297:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc11_)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§_-Ku§ + 1);
                                                                                                                                 if(_loc12_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() % 2);
                                                                                                                                 }
                                                                                                                                 §§pop().§_-Ku§ = §§pop();
                                                                                                                                 loop14:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§_-Ku§);
                                                                                                                                    addr276:
                                                                                                                                    while(§§pop() == 1)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§_-FV§);
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             continue loop0;
                                                                                                                                          }
                                                                                                                                          addr268:
                                                                                                                                          loop7:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr269:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                addr270:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(1);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         addr214:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            addr215:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Math.random() * _loc7_);
                                                                                                                                                               addr219:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  addr220:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr221:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              _loc2_ = §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc12_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop14;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr56);
                                                                                                                                                                              }
                                                                                                                                                                              addr236:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              addr323:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc2_ = §§pop();
                                                                                                                                                                           addr325:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop22;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr213:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§_-06v§);
                                                                                                                                                         addr321:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§_-K9§);
                                                                                                                                                            addr322:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr319:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr323);
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§goto(addr278);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr325);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr278:
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§goto(addr239);
                                                                                                                  }
                                                                                                                  §§goto(addr236);
                                                                                                               }
                                                                                                               var _loc3_:uint = Math.round((1 - _loc2_) * 255);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(this.§_-06v§);
                                                                                                                  if(_loc12_ || _loc1_)
                                                                                                                  {
                                                                                                                     if(§§pop() > §_-FV§)
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           if(§_-pH§.numChildren > 0)
                                                                                                                           {
                                                                                                                              if(!(_loc11_ && this))
                                                                                                                              {
                                                                                                                                 addr371:
                                                                                                                                 if(_loc8_ = §_-pH§.getChildAt(0) as Sprite)
                                                                                                                                 {
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       _loc8_.removeChild(this.§_-Nf§,true);
                                                                                                                                       addr387:
                                                                                                                                       this.§_-Nf§ = null;
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          addr392:
                                                                                                                                          §§push(255);
                                                                                                                                          if(_loc12_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                addr404:
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(§_-tF§);
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   §§push(§_-DW§);
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §_-tF§);
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * Math.random());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc11_)
                                                                                                                                                   {
                                                                                                                                                      addr421:
                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                   }
                                                                                                                                                   §§pop().§_-06v§ = §§pop();
                                                                                                                                                   addr423:
                                                                                                                                                   addr427:
                                                                                                                                                   addr426:
                                                                                                                                                   var _loc4_:*;
                                                                                                                                                   §§push(_loc4_ = int(§_-pH§.numChildren - 1));
                                                                                                                                                   if(_loc12_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(int(§§pop()));
                                                                                                                                                   }
                                                                                                                                                   var _loc5_:* = §§pop();
                                                                                                                                                   addr583:
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      §§push(1);
                                                                                                                                                      if(!(_loc11_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                         {
                                                                                                                                                            addr533:
                                                                                                                                                            §§push(_loc3_ * (_loc5_ + _loc4_));
                                                                                                                                                            if(!(_loc11_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               addr549:
                                                                                                                                                               _loc9_ = §§pop() / (_loc4_ * 2);
                                                                                                                                                               addr509:
                                                                                                                                                               addr550:
                                                                                                                                                               addr548:
                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                               if(_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  addr514:
                                                                                                                                                                  §§push(255);
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop() == §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr517);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc12_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(16);
                                                                                                                                                                           if(!(_loc11_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() << §§pop());
                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc9_ << 8);
                                                                                                                                                                                 if(!(_loc11_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + _loc9_);
                                                                                                                                                                                       if(_loc11_)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr598);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr481:
                                                                                                                                                                                       §§push(uint(§§pop()));
                                                                                                                                                                                       if(_loc12_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc11_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                                                                             if(_loc12_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc12_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(false)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr509);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      _loc1_ = §_-pH§.getChildAt(_loc5_);
                                                                                                                                                                                                      if(_loc12_ || _loc1_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc1_.color = _loc10_;
                                                                                                                                                                                                         if(_loc12_ || _loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                                                                            if(!(_loc11_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() - 1);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr583);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr550);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr517:
                                                                                                                                                                                                §§push(255);
                                                                                                                                                                                                if(_loc12_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr526:
                                                                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                                                                   if(_loc11_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr598:
                                                                                                                                                                                                   §§push(int(§_-BL§.numChildren - 1));
                                                                                                                                                                                                   if(!(_loc11_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr606);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr615);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr606:
                                                                                                                                                                                                §§goto(addr607);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr598);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr533);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr549);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr548);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr607:
                                                                                                                                                                                 §§push(_loc4_ = §§pop());
                                                                                                                                                                                 if(_loc12_ || _loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr615:
                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                                 var _loc6_:* = §§pop();
                                                                                                                                                                                 if(_loc12_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr663:
                                                                                                                                                                                    if(_loc6_ >= 0)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc1_ = §_-BL§.getChildAt(_loc6_);
                                                                                                                                                                                       if(_loc12_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc1_);
                                                                                                                                                                                          §§push((_loc9_ << 16) + (_loc9_ << 8));
                                                                                                                                                                                          if(_loc12_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + _loc9_);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().color = §§pop();
                                                                                                                                                                                          if(!_loc11_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                             if(!_loc11_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - 1);
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr663);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc11_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §_-xH§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 return;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr615);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr514);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr526);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr481);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr533);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr526);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr606);
                                                                                                                                                }
                                                                                                                                                §§goto(addr421);
                                                                                                                                             }
                                                                                                                                             §§goto(addr423);
                                                                                                                                          }
                                                                                                                                          §§goto(addr427);
                                                                                                                                       }
                                                                                                                                       §§goto(addr423);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr387);
                                                                                                                              }
                                                                                                                              §§goto(addr404);
                                                                                                                           }
                                                                                                                           §§goto(addr387);
                                                                                                                        }
                                                                                                                        §§goto(addr371);
                                                                                                                     }
                                                                                                                     §§goto(addr423);
                                                                                                                  }
                                                                                                                  §§goto(addr426);
                                                                                                               }
                                                                                                               §§goto(addr392);
                                                                                                               addr49:
                                                                                                            }
                                                                                                            §§goto(addr270);
                                                                                                         }
                                                                                                         addr203:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§_-FV§);
                                                                                                            addr261:
                                                                                                            while(_loc12_)
                                                                                                            {
                                                                                                               §§push(§§pop() * 3);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     §§goto(addr268);
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                            addr259:
                                                                                                         }
                                                                                                         addr260:
                                                                                                      }
                                                                                                      §§goto(addr322);
                                                                                                   }
                                                                                                   §§goto(addr268);
                                                                                                }
                                                                                                §§goto(addr269);
                                                                                             }
                                                                                             §§goto(addr221);
                                                                                          }
                                                                                          §§goto(addr220);
                                                                                       }
                                                                                       §§goto(addr189);
                                                                                    }
                                                                                    §§goto(addr172);
                                                                                 }
                                                                                 §§goto(addr163);
                                                                              }
                                                                              §§goto(addr214);
                                                                           }
                                                                           §§goto(addr172);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                               §§goto(addr49);
                                                               §§goto(addr260);
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   §§goto(addr261);
                                                }
                                                §§goto(addr265);
                                             }
                                             §§goto(addr111);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr297);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr321);
                     }
                  }
                  §§goto(addr319);
               }
            }
         }
         §§goto(addr238);
      }
      
      private function §_-Gs§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§_-06v§ > this.§_-T1§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  if(!this.§_-sq§)
                  {
                     if(_loc1_)
                     {
                        addr77:
                        §_-pX§.§_-o5§("Lightning04","ChannelExplosions");
                     }
                  }
                  §§goto(addr24);
               }
               do
               {
                  this.§_-sq§ = true;
               }
               while(!(_loc1_ || _loc2_));
               
            }
            addr24:
            return;
         }
         §§goto(addr77);
      }
   }
}
