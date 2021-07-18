package §!!U§
{
   import §&#H§.§%"H§;
   import §=]§.§%"G§;
   import §=]§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §2"D§ extends DisplayObject
   {
      
      private static var §?"L§:Vector3D;
      
      private static var §1!k§:Point;
      
      private static var §#!O§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §?"L§ = new Vector3D();
            while(true)
            {
               §1!k§ = new Point();
               while(!_loc1_)
               {
                  §#!O§ = new Matrix();
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr46:
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      protected var §;q§:§%"G§;
      
      private var §!#,§:Number = 0.0;
      
      private var §#!r§:Number = 0.0;
      
      private var §]H§:uint = 16777215;
      
      public function §2"D§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
            while(true)
            {
               this.§;q§ = new §%"G§(4,param4);
               addr67:
               while(_loc5_)
               {
               }
            }
         }
         while(true)
         {
            this.updateVertexData(param1,param2,param3,param4);
            while(_loc5_)
            {
               this.§]H§ = param3;
               if(_loc5_)
               {
                  return;
               }
            }
            §§goto(addr67);
         }
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            §§push(this.§;q§);
            loop0:
            while(true)
            {
               §§pop().§[!p§(param4);
               loop1:
               while(true)
               {
                  §§push(this.§;q§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     addr180:
                     while(true)
                     {
                        §§push(0);
                        addr181:
                        while(true)
                        {
                           §§push(0);
                           addr182:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                           }
                        }
                     }
                     addr98:
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     §§push(3);
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           §§push(param1);
                           if(_loc6_)
                           {
                              if(!(_loc5_ && this))
                              {
                                 addr120:
                                 §§push(param2);
                                 if(!(_loc5_ && param1))
                                 {
                                    if(_loc6_)
                                    {
                                       §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                       loop18:
                                       while(true)
                                       {
                                          §§push(this.§;q§);
                                          if(_loc6_)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             §§pop().§7E§(param3);
                                             loop19:
                                             while(true)
                                             {
                                                if(!(_loc5_ && param2))
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break loop18;
                                                      }
                                                      this.§!#,§ = param1;
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               addr49:
                                                               if(_loc5_ && param1)
                                                               {
                                                                  break;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop18;
                                                         }
                                                         continue loop19;
                                                      }
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(this.§;q§);
                                                         addr96:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§goto(addr98);
                                                            }
                                                            loop12:
                                                            while(_loc6_)
                                                            {
                                                               §§push(2);
                                                               while(_loc6_ || param2)
                                                               {
                                                                  §§push(0);
                                                                  while(_loc6_ || param3)
                                                                  {
                                                                     §§push(param2);
                                                                     while(!_loc5_)
                                                                     {
                                                                        §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                                        continue loop16;
                                                                        §§goto(addr120);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                                        addr165:
                                                                        while(true)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(param1);
                                                                  addr163:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr164);
                                                                  }
                                                               }
                                                            }
                                                            addr161:
                                                            while(true)
                                                            {
                                                               §§goto(addr162);
                                                            }
                                                            continue loop18;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   break;
                                                }
                                                §§goto(addr165);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr161);
                                             }
                                          }
                                          §§goto(addr96);
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr182);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr163);
                           }
                           §§goto(addr146);
                        }
                        §§goto(addr180);
                     }
                     §§goto(addr138);
                  }
               }
            }
         }
         §§goto(addr183);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_ || _loc3_)
         {
            if(param2 == null)
            {
               addr28:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               if(param1 == this)
               {
                  if(_loc8_)
                  {
                     _loc7_ = 0;
                     addr619:
                     loop78:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop74:
                        while(true)
                        {
                           §§push(4);
                           loop72:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop64:
                                 while(true)
                                 {
                                    loop62:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop67:
                                       while(true)
                                       {
                                          if(_loc8_)
                                          {
                                             param2.y = _loc5_;
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr119:
                                                   if(!(_loc9_ && this))
                                                   {
                                                      param2.width = _loc4_ - _loc3_;
                                                      while(_loc8_)
                                                      {
                                                         param2.height = _loc6_ - _loc5_;
                                                         if(_loc8_ || param2)
                                                         {
                                                            continue loop67;
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         _loc7_++;
                                                         break;
                                                      }
                                                      loop24:
                                                      while(true)
                                                      {
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            §§push(_loc6_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §?"L§.y);
                                                               addr511:
                                                               while(true)
                                                               {
                                                                  if(!_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           addr515:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr516:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr522:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr523:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc9_ && _loc3_))
                                                                                          {
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                _loc6_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_++;
                                                                                                   addr503:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop78;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr538:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr586:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr590:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr591:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         addr592:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            addr565:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §?"L§.x);
                                                                                                               addr568:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        addr570:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr571:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr569:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(Number(§?"L§.x));
                                                                                                                  }
                                                                                                                  addr575:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr576:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        addr577:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           addr541:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() < §?"L§.y);
                                                                                                                              addr544:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_);
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                       addr549:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr545:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(Number(§?"L§.y));
                                                                                                                                 }
                                                                                                                                 addr553:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr554:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr586:
                                                                                             }
                                                                                             §§goto(addr545);
                                                                                          }
                                                                                          §§goto(addr541);
                                                                                       }
                                                                                    }
                                                                                    addr522:
                                                                                 }
                                                                                 §§goto(addr570);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr514:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(Number(§?"L§.y));
                                                                     }
                                                                     §§goto(addr522);
                                                                  }
                                                                  §§goto(addr568);
                                                               }
                                                            }
                                                            addr508:
                                                         }
                                                         §§goto(addr569);
                                                      }
                                                      §§goto(addr119);
                                                   }
                                                   addr271:
                                                }
                                                while(_loc9_)
                                                {
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            §§push(§§pop() < §1!k§.y);
                                                            loop17:
                                                            while(_loc8_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(Number(§1!k§.y));
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop20:
                                                                           while(_loc8_ || _loc3_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(_loc6_);
                                                                                             if(!(_loc9_ && param2))
                                                                                             {
                                                                                                if(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         §§push(§§pop() > §1!k§.y);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue loop21;
                                                                                                                     }
                                                                                                                     if(_loc8_ || param1)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    addr229:
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr261:
                                                                                                                                       while(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             §§goto(addr271);
                                                                                                                                          }
                                                                                                                                          §§goto(addr591);
                                                                                                                                       }
                                                                                                                                       addr352:
                                                                                                                                       while(_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() > §1!k§.x);
                                                                                                                                          break loop21;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr352);
                                                                                                                                             }
                                                                                                                                             addr435:
                                                                                                                                          }
                                                                                                                                          §§goto(addr554);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr261);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr424:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr352);
                                                                                                                                       }
                                                                                                                                       addr426:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr424:
                                                                                                                              }
                                                                                                                              §§goto(addr516);
                                                                                                                           }
                                                                                                                           §§goto(addr229);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr611:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              addr580:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() < §?"L§.x);
                                                                                                                                 addr583:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          addr585:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr586);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr584:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr590);
                                                                                                                                       §§push(Number(§?"L§.x));
                                                                                                                                    }
                                                                                                                                    §§goto(addr590);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr611:
                                                                                                                        }
                                                                                                                        §§goto(addr590);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           addr290:
                                                                                                                           addr386:
                                                                                                                           while(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       if(_loc8_ || param1)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr565);
                                                                                                                                       }
                                                                                                                                       §§goto(addr549);
                                                                                                                                    }
                                                                                                                                    §§goto(addr523);
                                                                                                                                 }
                                                                                                                                 continue loop19;
                                                                                                                                 addr310:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 addr380:
                                                                                                                              }
                                                                                                                              while(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr571);
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr571);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              break loop20;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr289:
                                                                                                                     }
                                                                                                                     §§goto(addr571);
                                                                                                                     addr82:
                                                                                                                     if(!(_loc8_ || param1))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr89:
                                                                                                                     if(_loc8_ || _loc3_)
                                                                                                                     {
                                                                                                                        break loop67;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        transformCoords(§#!O§,§?"L§.x,§?"L§.y,§1!k§);
                                                                                                                        addr445:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(_loc8_ || param2)
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() < §1!k§.x);
                                                                                                                                 break loop17;
                                                                                                                              }
                                                                                                                              §§goto(addr522);
                                                                                                                           }
                                                                                                                           §§goto(addr424);
                                                                                                                        }
                                                                                                                        §§goto(addr89);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop16;
                                                                                                               }
                                                                                                               §§push(Number(§1!k§.y));
                                                                                                               if(!(_loc9_ && param2))
                                                                                                               {
                                                                                                                  addr244:
                                                                                                                  if(!(_loc8_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§goto(addr260);
                                                                                                                     }
                                                                                                                     §§goto(addr515);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr290);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr261);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§goto(addr553);
                                                                                                   }
                                                                                                   §§goto(addr508);
                                                                                                }
                                                                                                §§goto(addr310);
                                                                                             }
                                                                                             §§goto(addr244);
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr445);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             if(_loc8_ || param1)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      addr370:
                                                                                                      loop48:
                                                                                                      while(!(_loc9_ && _loc3_))
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§goto(addr380);
                                                                                                            §§push(Number(§§pop()));
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  break loop48;
                                                                                                               }
                                                                                                               §§goto(addr585);
                                                                                                            }
                                                                                                            addr412:
                                                                                                         }
                                                                                                         §§goto(addr586);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr426);
                                                                                                         §§goto(addr370);
                                                                                                      }
                                                                                                   }
                                                                                                   addr369:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(Number(§1!k§.x));
                                                                                                }
                                                                                                §§goto(addr386);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr583);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr544);
                                                                                       }
                                                                                       §§goto(addr511);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr590);
                                                                              }
                                                                              §§goto(addr575);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 continue loop15;
                                                                              }
                                                                              §§goto(addr576);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr370);
                                                                  }
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr412);
                                                                  }
                                                                  addr411:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr424);
                                                                  §§push(Number(§1!k§.x));
                                                               }
                                                               §§goto(addr516);
                                                            }
                                                         }
                                                         §§goto(addr580);
                                                      }
                                                   }
                                                }
                                                addr181:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc8_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   §§push(4);
                                                   if(_loc9_ && _loc3_)
                                                   {
                                                      continue loop72;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc9_ && param1)
                                                      {
                                                         continue loop67;
                                                      }
                                                      if(_loc8_ || param2)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            if(!(_loc8_ || _loc3_))
                                                            {
                                                               continue loop64;
                                                            }
                                                            if(_loc8_)
                                                            {
                                                               continue loop62;
                                                            }
                                                            §§goto(addr503);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr411);
                                                         }
                                                      }
                                                      §§goto(addr435);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§;q§);
                                                      if(_loc8_ || param1)
                                                      {
                                                         §§push(_loc7_);
                                                         if(!(_loc9_ && param2))
                                                         {
                                                            §§pop().getPosition(§§pop(),§?"L§);
                                                            §§goto(addr468);
                                                         }
                                                         §§goto(addr611);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                         }
                                                         addr598:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop().getPosition(§§pop(),§?"L§);
                                                      }
                                                   }
                                                   §§goto(addr611);
                                                   §§goto(addr181);
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   if(_loc9_ && param2)
                                                   {
                                                      continue loop74;
                                                   }
                                                   _loc7_ = §§pop();
                                                   while(_loc8_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§goto(addr577);
                                                      }
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr584);
                                                         }
                                                         §§goto(addr592);
                                                      }
                                                      §§goto(addr514);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr369);
                                       }
                                       if(_loc9_ && param1)
                                       {
                                          §§goto(addr479);
                                       }
                                       return param2;
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.§;q§);
                              }
                              §§goto(addr598);
                           }
                        }
                     }
                     addr619:
                  }
                  §§goto(addr619);
               }
               else
               {
                  §^">§(param1,§#!O§);
               }
               §§goto(addr494);
            }
            §§goto(addr619);
         }
         §§goto(addr28);
      }
      
      public function §1d§(param1:int) : uint
      {
         return this.§;q§.§&!H§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§;q§.§""S§(param1,param2);
         }
      }
      
      public function §0#?§(param1:int) : Number
      {
         return this.§;q§.§="-§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§;q§.§+h§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§]H§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§]H§ != param1)
            {
               do
               {
                  this.§]H§ = param1;
                  do
                  {
                     this.§;q§.§7E§(param1,1);
                  }
                  while(!(_loc3_ || _loc3_));
                  
               }
               while(!_loc3_);
               
               addr64:
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function copyVertexDataTo(param1:§%"G§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§;q§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§%"H§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            param1.batchQuad(this,param2);
         }
      }
      
      public function get useColor() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get §9"#§() : Number
      {
         return this.§!#,§;
      }
      
      public function get §2"U§() : Number
      {
         return this.§#!r§;
      }
   }
}
