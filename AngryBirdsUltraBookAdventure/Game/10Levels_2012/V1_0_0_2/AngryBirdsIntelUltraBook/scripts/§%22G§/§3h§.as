package §"G§
{
   import §"R§.§ !Q§;
   import §'!9§.§%!g§;
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   import §68§.§+!`§;
   import §^!+§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §3h§ extends §+!`§
   {
      
      private static const §#!@§:Number = 1.5;
      
      private static const §8Q§:Number = 0.15;
      
      private static const §21§:Number = 0.25;
      
      private static const §,&§:Number = 3.0;
      
      private static const §!!f§:Number = 20.0;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#!@§ = 1.5;
            while(true)
            {
               §8Q§ = 0.15;
               addr76:
               while(true)
               {
                  §21§ = 0.25;
               }
               addr52:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               return;
               addr59:
            }
         }
         loop2:
         while(true)
         {
            §,&§ = 3;
            while(_loc2_)
            {
               §!!f§ = 20;
               if(!_loc2_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  continue loop2;
               }
               §§goto(addr52);
            }
            §§goto(addr76);
         }
         §§goto(addr59);
      }
      
      private var §!!y§:Number;
      
      private var §%!^§:Number;
      
      private var §%!K§:§%!g§;
      
      private var §^%§:Boolean;
      
      private var §"S§:Number;
      
      private var §`Z§:BitmapData;
      
      private var §8!J§:Texture;
      
      private var §#e§:int = 0;
      
      public function §3h§(param1:String, param2:Number, param3:§,Q§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
            do
            {
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(!(_loc5_ && this))
               {
                  §§push(-§§pop());
               }
               §§pop().§!!y§ = §§pop();
            }
            while(!(_loc6_ || this));
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(this.§8!J§)
            {
               if(_loc2_)
               {
                  textureManager.unregisterBitmapDataTexture(this.§8!J§);
               }
               while(true)
               {
                  this.§8!J§ = null;
                  addr90:
                  while(true)
                  {
                     addr46:
                     if(_loc2_ || _loc1_)
                     {
                        return;
                        addr53:
                     }
                  }
               }
               addr100:
            }
            loop2:
            while(true)
            {
               if(this.§`Z§)
               {
                  if(_loc2_ || _loc2_)
                  {
                     this.§`Z§.dispose();
                  }
                  while(true)
                  {
                     this.§`Z§ = null;
                     addr58:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           while(true)
                           {
                           }
                           addr70:
                        }
                        else
                        {
                           §§goto(addr100);
                        }
                     }
                     continue loop2;
                     addr34:
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr46);
                  }
               }
               while(true)
               {
                  super.dispose();
                  if(_loc2_)
                  {
                     §§goto(addr34);
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr53);
         }
         §§goto(addr70);
      }
      
      override protected function createGroundQuad(param1:uint) : §%!g§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§8!J§)
            {
               while(true)
               {
                  textureManager.unregisterBitmapDataTexture(this.§8!J§);
                  addr98:
                  while(true)
                  {
                     this.§8!J§ = null;
                     addr90:
                     while(true)
                     {
                     }
                  }
               }
               addr94:
            }
            while(true)
            {
               if(this.§`Z§)
               {
                  loop2:
                  while(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        this.§`Z§.dispose();
                        while(true)
                        {
                           this.§`Z§ = null;
                           addr66:
                           while(_loc4_ || _loc2_)
                           {
                           }
                           §§goto(addr98);
                           loop6:
                           while(!(_loc3_ && _loc3_))
                           {
                              this.§8!J§ = textureManager.getTextureFromBitmapData(this.§`Z§);
                              if(_loc3_)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 if(_loc4_)
                                 {
                                    addr33:
                                    if(false)
                                    {
                                       while(true)
                                       {
                                          this.§`Z§ = new BitmapData(2,2,false,param1);
                                          continue loop6;
                                          §§goto(addr33);
                                       }
                                       addr99:
                                       §§push(§§findproperty(§?!U§));
                                       addr35:
                                    }
                                    else
                                    {
                                       §§goto(addr99);
                                    }
                                    var _loc2_:§%!g§ = new §§pop().§?!U§(this.§8!J§,true,false);
                                    if(!_loc3_)
                                    {
                                       _loc2_.width = 4096;
                                    }
                                    _loc2_.height = 4096;
                                    addr140:
                                    if(_loc3_ && param1)
                                    {
                                       §§goto(addr140);
                                    }
                                    return _loc2_;
                                 }
                                 continue loop2;
                              }
                              §§goto(addr66);
                              §§goto(addr35);
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr98);
                  }
                  continue;
               }
               §§goto(addr99);
            }
         }
         §§goto(addr98);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§%!K§);
            loop0:
            while(§§pop() != null)
            {
               §§push(this.§%!K§);
               if(!_loc3_)
               {
                  continue;
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§ ^§();
                     loop2:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           loop5:
                           while(true)
                           {
                              this.§"J§();
                              while(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop0;
                                    }
                                    §§push(this);
                                    §§push(this.§!!y§);
                                    if(!_loc2_)
                                    {
                                       §§push(param1);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() / 1000);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§!!y§ = §§pop();
                                    if(!(_loc2_ && this))
                                    {
                                       return;
                                    }
                                    continue;
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                              addr75:
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                           addr55:
                        }
                        addr105:
                        while(true)
                        {
                           §§goto(addr75);
                        }
                     }
                  }
               }
               §§goto(addr55);
            }
         }
         while(true)
         {
            if(this.§!!y§ > 0)
            {
               if(_loc3_ || param1)
               {
                  this.§^+§();
               }
               §§goto(addr105);
            }
            §§goto(addr75);
         }
      }
      
      private function §^+§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(_loc3_ || this)
         {
            if(§@4§.numChildren > 0)
            {
               addr33:
               _loc1_ = §@4§.getChildAt(0) as Sprite;
               if(_loc3_ || _loc1_)
               {
                  if(_loc1_)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(!(_loc4_ && this))
                        {
                           _loc2_.top -= 2048;
                           while(true)
                           {
                              this.§%!K§ = new §%!g§(_loc2_.width,_loc2_.height,16777215);
                              loop5:
                              while(_loc3_ || _loc2_)
                              {
                                 loop6:
                                 do
                                 {
                                    §§push(this.§%!K§);
                                    if(!(_loc4_ && _loc1_))
                                    {
                                       addr90:
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§pop().alpha = 0;
                                          loop7:
                                          for(; _loc3_ || _loc2_; _loc1_.addChild(this.§%!K§),if(!_loc4_)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             continue loop5;
                                          })
                                          {
                                             if(!_loc4_)
                                             {
                                                continue;
                                             }
                                             addr150:
                                             while(true)
                                             {
                                                §§push(this.§%!K§);
                                                addr136:
                                                while(true)
                                                {
                                                   §§pop().x = _loc2_.left;
                                                   break loop7;
                                                   §§goto(addr90);
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(this.§%!K§);
                                             addr112:
                                             while(true)
                                             {
                                                §§pop().y = _loc2_.top;
                                                continue loop5;
                                             }
                                          }
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr112);
                                 }
                                 while(false);
                                 
                                 this.§#e§ = 0;
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    this.§!!y§ = 0;
                                    while(true)
                                    {
                                       if(Math.random() < 0.25)
                                       {
                                          continue;
                                       }
                                       §§push(this);
                                       §§push(0.3);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(Math.random() * (§#!@§ - 0.3));
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             §§push(§§pop() * 0.3);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§%!^§ = §§pop();
                                       loop12:
                                       while(true)
                                       {
                                          if(_loc4_ && _loc1_)
                                          {
                                             while(true)
                                             {
                                                continue loop12;
                                             }
                                             addr274:
                                          }
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(0.2);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() + Math.random() * 2);
                                             }
                                             §§pop().§"S§ = §§pop();
                                             §§goto(addr202);
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(0.7);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() + Math.random() * (§#!@§ - 0.7));
                                    }
                                    §§pop().§%!^§ = §§pop();
                                    §§goto(addr274);
                                    §§goto(addr255);
                                 }
                              }
                           }
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr262);
                  }
                  §§goto(addr158);
               }
               addr202:
               §§goto(addr279);
            }
            addr279:
            while(true)
            {
               this.§^%§ = false;
               if(!(_loc4_ && _loc1_))
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     if(!_loc4_)
                     {
                        if(true)
                        {
                           break;
                        }
                        continue loop10;
                     }
                     continue loop11;
                  }
                  continue loop12;
               }
            }
            return;
         }
         §§goto(addr33);
      }
      
      private function § ^§() : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc7_:* = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:* = uint(0);
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!(_loc11_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc12_)
         {
            §§push(this.§!!y§);
            loop0:
            while(true)
            {
               §§push(§8Q§);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     §§push(this.§!!y§);
                     loop2:
                     while(true)
                     {
                        §§push(§8Q§);
                        loop3:
                        while(true)
                        {
                           §§push(this.§%!^§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() + §§pop());
                              loop5:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    §§push(this.§!!y§);
                                    if(!(_loc11_ && this))
                                    {
                                       §§push(§8Q§);
                                       if(_loc12_ || this)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(this.§%!^§);
                                             if(_loc12_ || _loc1_)
                                             {
                                                addr112:
                                                §§push(§§pop() + §§pop());
                                                if(_loc12_ || _loc3_)
                                                {
                                                   §§push(§21§);
                                                }
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   if(_loc11_ && _loc2_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!(_loc11_ && _loc1_))
                                                      {
                                                         if(!_loc11_)
                                                         {
                                                            §§push(1);
                                                            if(_loc12_ || _loc2_)
                                                            {
                                                               §§push(this.§!!y§);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§8Q§);
                                                                  if(_loc12_)
                                                                  {
                                                                     §§push(§§pop() + this.§%!^§);
                                                                     if(!(_loc11_ && _loc1_))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr164:
                                                                           if(_loc12_)
                                                                           {
                                                                              addr168:
                                                                              §§push(§§pop() - §§pop() / §21§);
                                                                              if(_loc12_)
                                                                              {
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    if(!(_loc11_ && _loc2_))
                                                                                    {
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr183:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          _loc2_ = §§pop();
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc12_ || _loc2_)
                                                                                             {
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§%!K§.alpha = _loc2_;
                                                                                                   if(!(_loc12_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr327:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§#e§);
                                                                                                            loop14:
                                                                                                            while(§§pop() == 1)
                                                                                                            {
                                                                                                               loop13:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§#!@§);
                                                                                                                  addr246:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§%!^§);
                                                                                                                     if(_loc11_ && _loc2_)
                                                                                                                     {
                                                                                                                        break loop13;
                                                                                                                     }
                                                                                                                     if(_loc12_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!(_loc11_ && _loc2_))
                                                                                                                        {
                                                                                                                           addr338:
                                                                                                                           if(_loc12_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(§#!@§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * 3);
                                                                                                                                 break loop13;
                                                                                                                              }
                                                                                                                              addr278:
                                                                                                                           }
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr339:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc2_ = §§pop();
                                                                                                                                 addr340:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr338:
                                                                                                                        }
                                                                                                                        loop7:
                                                                                                                        while(_loc12_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              addr285:
                                                                                                                              loop8:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    break loop14;
                                                                                                                                 }
                                                                                                                                 §§push(1);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc11_ && _loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(_loc12_ || this)
                                                                                                                                       {
                                                                                                                                          if(_loc12_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             break loop8;
                                                                                                                                          }
                                                                                                                                          §§goto(addr339);
                                                                                                                                       }
                                                                                                                                       addr240:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          addr241:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc12_)
                                                                                                                                             {
                                                                                                                                                continue loop13;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             var _loc3_:uint = Math.round((1 - _loc2_) * 255);
                                                                                                                                             if(_loc12_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§!!y§);
                                                                                                                                                if(_loc12_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §#!@§)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         if(§@4§.numChildren > 0)
                                                                                                                                                         {
                                                                                                                                                            if(_loc12_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc8_ = §@4§.getChildAt(0) as Sprite)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc8_.removeChild(this.§%!K§,true);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr453:
                                                                                                                                                            addr457:
                                                                                                                                                            addr456:
                                                                                                                                                            var _loc4_:*;
                                                                                                                                                            §§push(_loc4_ = int(§@4§.numChildren - 1));
                                                                                                                                                            if(_loc12_)
                                                                                                                                                            {
                                                                                                                                                               §§push(int(§§pop()));
                                                                                                                                                            }
                                                                                                                                                            var _loc5_:* = §§pop();
                                                                                                                                                            addr618:
                                                                                                                                                            §§push(_loc5_);
                                                                                                                                                            if(!(_loc11_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               §§push(1);
                                                                                                                                                               if(_loc12_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr634:
                                                                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr578:
                                                                                                                                                                     §§push(_loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2));
                                                                                                                                                                     if(!_loc11_)
                                                                                                                                                                     {
                                                                                                                                                                        addr589:
                                                                                                                                                                        _loc9_ = §§pop();
                                                                                                                                                                        addr539:
                                                                                                                                                                        addr590:
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        if(!(_loc11_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           addr549:
                                                                                                                                                                           §§push(255);
                                                                                                                                                                           if(_loc12_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr559:
                                                                                                                                                                                 _loc9_ = 255;
                                                                                                                                                                                 addr557:
                                                                                                                                                                                 if(!(_loc11_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc12_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr464:
                                                                                                                                                                                       §§push(_loc9_);
                                                                                                                                                                                       if(!_loc11_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc12_ || _loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(16);
                                                                                                                                                                                             if(!(_loc11_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() << §§pop());
                                                                                                                                                                                                if(!_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc11_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc9_ << 8);
                                                                                                                                                                                                      if(!_loc11_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(!_loc11_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + _loc9_);
                                                                                                                                                                                                            if(!(_loc11_ && _loc1_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc11_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr513:
                                                                                                                                                                                                                  §§push(uint(§§pop()));
                                                                                                                                                                                                                  if(_loc12_ || _loc1_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc12_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc10_ = §§pop();
                                                                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc12_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr539);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              _loc1_ = §@4§.getChildAt(_loc5_);
                                                                                                                                                                                                                              if(!(_loc11_ && _loc1_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc1_.color = _loc10_;
                                                                                                                                                                                                                                 if(!_loc11_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr608:
                                                                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                                                                    if(!(_loc11_ && _loc3_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr618);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr608);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr557);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr638:
                                                                                                                                                                                                                        §§push(int(§-!O§.numChildren - 1));
                                                                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr641:
                                                                                                                                                                                                                           §§push(_loc4_ = §§pop());
                                                                                                                                                                                                                           if(_loc12_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr645:
                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           var _loc6_:* = §§pop();
                                                                                                                                                                                                                           if(!(_loc11_ && _loc1_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr698:
                                                                                                                                                                                                                              if(_loc6_ >= 0)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc1_ = §-!O§.getChildAt(_loc6_);
                                                                                                                                                                                                                                 if(!(_loc11_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc1_);
                                                                                                                                                                                                                                    §§push((_loc9_ << 16) + (_loc9_ << 8));
                                                                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + _loc9_);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().color = §§pop();
                                                                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr693:
                                                                                                                                                                                                                                       §§push(_loc6_);
                                                                                                                                                                                                                                       if(!_loc11_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr698);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr693);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc11_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr703:
                                                                                                                                                                                                                                 §8!t§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              return;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr703);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr645);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr578);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr589);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr578);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr638);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr634);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr557);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr641);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr549);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr559);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr513);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr590);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr638);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr464);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr578);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr559);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr638);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr641);
                                                                                                                                                         }
                                                                                                                                                         this.§%!K§ = null;
                                                                                                                                                         if(_loc12_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(255);
                                                                                                                                                            if(!(_loc11_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               _loc3_ = §§pop();
                                                                                                                                                               if(!_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  addr419:
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(§,&§);
                                                                                                                                                                  if(!(_loc11_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§!!f§);
                                                                                                                                                                     if(!(_loc11_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §,&§);
                                                                                                                                                                        if(!_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           addr440:
                                                                                                                                                                           §§push(§§pop() * Math.random());
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc11_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr452:
                                                                                                                                                                           §§pop().§!!y§ = -§§pop();
                                                                                                                                                                           §§goto(addr453);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr452);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr440);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr453);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr457);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr419);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr453);
                                                                                                                                                }
                                                                                                                                                §§goto(addr456);
                                                                                                                                             }
                                                                                                                                             §§goto(addr419);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr219:
                                                                                                                              §§push(Math.random() * _loc7_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    break loop13;
                                                                                                                                 }
                                                                                                                                 if(!_loc12_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc12_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       if(!_loc12_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       §§goto(addr240);
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    §§goto(addr240);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr338);
                                                                                                                                    }
                                                                                                                                    addr337:
                                                                                                                                 }
                                                                                                                                 §§goto(addr219);
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop0;
                                                                                                                        addr281:
                                                                                                                     }
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr281);
                                                                                                               }
                                                                                                            }
                                                                                                            return;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                   §§goto(addr241);
                                                                                                }
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr64);
                                                                                                }
                                                                                                §§goto(addr341);
                                                                                                addr44:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc12_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(this.§#e§ + 1);
                                                                                                      if(_loc12_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() % 2);
                                                                                                      }
                                                                                                      §§pop().§#e§ = §§pop();
                                                                                                      §§goto(addr327);
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                addr305:
                                                                                             }
                                                                                             §§goto(addr340);
                                                                                          }
                                                                                          addr186:
                                                                                       }
                                                                                       §§goto(addr246);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                                 §§goto(addr240);
                                                                              }
                                                                              §§goto(addr183);
                                                                           }
                                                                           §§goto(addr204);
                                                                        }
                                                                        §§goto(addr168);
                                                                     }
                                                                  }
                                                                  §§goto(addr168);
                                                               }
                                                               §§goto(addr164);
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(this.§!!y§);
                                                               if(_loc12_)
                                                               {
                                                                  §§goto(addr337);
                                                                  §§push(§8Q§);
                                                               }
                                                            }
                                                            addr332:
                                                         }
                                                         §§goto(addr338);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr44);
                                                }
                                                §§goto(addr278);
                                             }
                                             if(!(_loc12_ || _loc2_))
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr112);
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr112);
                                    }
                                    §§goto(addr183);
                                 }
                                 §§goto(addr305);
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr332);
               }
            }
         }
         §§goto(addr340);
      }
      
      private function §"J§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§!!y§ > this.§"S§)
            {
               if(!_loc1_)
               {
                  if(!this.§^%§)
                  {
                     if(!_loc1_)
                     {
                        addr68:
                        § !Q§.§0!t§("Lightning04","ChannelExplosions");
                     }
                     do
                     {
                        this.§^%§ = true;
                     }
                     while(!(_loc2_ || this));
                     
                  }
               }
               §§goto(addr68);
            }
            return;
         }
         §§goto(addr68);
      }
   }
}
