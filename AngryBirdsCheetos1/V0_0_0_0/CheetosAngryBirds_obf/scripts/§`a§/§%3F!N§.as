package §`a§
{
   import § !+§.§%L§;
   import §<!M§.§;Z§;
   import §<!M§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §?!N§ extends DisplayObject
   {
      
      private static var §#q§:Vector3D;
      
      private static var §4#§:Point;
      
      private static var §,!?§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §#q§ = new Vector3D();
         }
         while(true)
         {
            §4#§ = new Point();
            while(!_loc2_)
            {
               §,!?§ = new Matrix();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      protected var §"T§:§;Z§;
      
      private var §7_§:Number = 0.0;
      
      private var §8=§:Number = 0.0;
      
      private var §^0§:uint = 16777215;
      
      public function §?!N§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§"T§ = new §;Z§(4,param4);
            while(true)
            {
               this.updateVertexData(param1,param2,param3,param4);
               while(!_loc6_)
               {
                  continue loop0;
                  this.§^0§ = param3;
                  if(_loc5_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(this.§"T§);
            loop0:
            while(true)
            {
               §§pop().setPremultipliedAlpha(param4);
               addr197:
               while(true)
               {
                  §§push(this.§"T§);
                  continue loop0;
               }
            }
         }
         §§goto(addr167);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(!(_loc8_ && param1))
         {
            if(param2 == null)
            {
               addr29:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && param2))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               if(param1 == this)
               {
                  if(!_loc8_)
                  {
                     _loc7_ = 0;
                     addr645:
                     loop78:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop76:
                        while(true)
                        {
                           §§push(4);
                           loop73:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop74:
                                 while(true)
                                 {
                                    loop69:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop70:
                                       while(_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             addr165:
                                             if(_loc9_ || _loc3_)
                                             {
                                                if(!(_loc8_ && param1))
                                                {
                                                   param2.y = _loc5_;
                                                   loop71:
                                                   for(; !(_loc8_ && _loc3_); if(_loc8_ && this)
                                                   {
                                                      continue;
                                                   },if(_loc8_ && param1)
                                                   {
                                                      continue loop70;
                                                   },if(_loc9_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         break loop69;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc9_ || param1)
                                                         {
                                                            §§push(_loc4_);
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(§§pop() > §4#§.x);
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          loop15:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc8_ && _loc3_))
                                                                                             {
                                                                                                if(!(_loc8_ && this))
                                                                                                {
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            _loc4_ = §§pop();
                                                                                                            addr404:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               loop28:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_)
                                                                                                                  {
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc9_ || this)
                                                                                                                     {
                                                                                                                        addr599:
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < §4#§.y);
                                                                                                                           loop29:
                                                                                                                           for(; !_loc8_; §§push(§§pop() > §4#§.y),if(_loc8_ && param1)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           },if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(!(_loc8_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr229);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr259);
                                                                                                                                    }
                                                                                                                                    §§goto(addr603);
                                                                                                                                 }
                                                                                                                                 addr211:
                                                                                                                              }
                                                                                                                              §§push(Number(§4#§.y));
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || param2)
                                                                                                                                 {
                                                                                                                                    §§goto(addr258);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       §§goto(addr566);
                                                                                                                                    }
                                                                                                                                    §§goto(addr555);
                                                                                                                                 }
                                                                                                                                 addr396:
                                                                                                                              }
                                                                                                                              §§goto(addr259);
                                                                                                                           },§§goto(addr580))
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    break loop71;
                                                                                                                                 }
                                                                                                                                 §§push(Number(§4#§.y));
                                                                                                                                 loop52:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       addr338:
                                                                                                                                       if(_loc9_ || this)
                                                                                                                                       {
                                                                                                                                          loop33:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop34:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                loop35:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop29;
                                                                                                                                                   }
                                                                                                                                                   addr229:
                                                                                                                                                   loop51:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr238:
                                                                                                                                                            if(_loc9_ || param1)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr259:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc8_ && param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop34;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     if(!_loc8_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc7_++;
                                                                                                                                                                                    break loop70;
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                           loop5:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc3_);
                                                                                                                                                                              if(_loc9_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() < §4#§.x);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§4#§.x));
                                                                                                                                                                                          if(!_loc8_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr441);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop52;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(_loc9_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc3_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!_loc8_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr433:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      break loop52;
                                                                                                                                                                                                      §§goto(addr433);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr441:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr594);
                                                                                                                                                                                             }
                                                                                                                                                                                             break loop52;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          transformCoords(§,!?§,§#q§.x,§#q§.y,§4#§);
                                                                                                                                                                                          continue loop5;
                                                                                                                                                                                          §§goto(addr420);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr420:
                                                                                                                                                                                       §§goto(addr522);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr532);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr417:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr428);
                                                                                                                                                                           }
                                                                                                                                                                           addr278:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr612);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr541);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                               addr258:
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  break loop51;
                                                                                                                                                                  §§goto(addr238);
                                                                                                                                                               }
                                                                                                                                                               addr329:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      continue loop52;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop33;
                                                                                                                                                      }
                                                                                                                                                      continue loop17;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop28;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop14;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                    {
                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    §§goto(addr595);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr417);
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr602);
                                                                                                                        }
                                                                                                                        addr599:
                                                                                                                     }
                                                                                                                     §§goto(addr590);
                                                                                                                  }
                                                                                                                  §§goto(addr560);
                                                                                                               }
                                                                                                            }
                                                                                                            addr404:
                                                                                                         }
                                                                                                         §§goto(addr617);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr589);
                                                                                             }
                                                                                             §§goto(addr556);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr551);
                                                                                    }
                                                                                    §§goto(addr428);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(Number(§4#§.x));
                                                                        }
                                                                        §§goto(addr396);
                                                                     }
                                                                     §§goto(addr563);
                                                                  }
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ && _loc3_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(_loc8_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(4);
                                                                           if(_loc8_ && param2)
                                                                           {
                                                                              continue loop73;
                                                                           }
                                                                           if(§§pop() >= §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       continue loop69;
                                                                                    }
                                                                                    §§goto(addr404);
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              addr148:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this.§"T§);
                                                                              if(!(_loc8_ && _loc3_))
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    §§pop().§+0§(§§pop(),§#q§);
                                                                                    §§goto(addr485);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().§+0§(§§pop(),§#q§);
                                                                                       addr637:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr599);
                                                                                       }
                                                                                    }
                                                                                    addr625:
                                                                                 }
                                                                                 §§goto(addr602);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr624:
                                                                              }
                                                                              §§goto(addr625);
                                                                           }
                                                                           §§goto(addr599);
                                                                           addr186:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              continue loop2;
                                                                           }
                                                                           continue loop76;
                                                                        }
                                                                        addr488:
                                                                     }
                                                                     §§goto(addr637);
                                                                  }
                                                               }
                                                               §§goto(addr572);
                                                            }
                                                         }
                                                         §§goto(addr596);
                                                      }
                                                   },§§goto(addr148))
                                                   {
                                                      if(!(_loc9_ || param1))
                                                      {
                                                         continue loop74;
                                                      }
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         param2.width = _loc4_ - _loc3_;
                                                         while(_loc9_)
                                                         {
                                                            param2.height = _loc6_ - _loc5_;
                                                            if(!_loc8_)
                                                            {
                                                               continue loop71;
                                                            }
                                                         }
                                                         loop50:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_);
                                                            addr589:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr590:
                                                               while(true)
                                                               {
                                                                  addr594:
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr595:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr596:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           addr560:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() < §#q§.y);
                                                                              addr563:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       loop45:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr566:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                addr572:
                                                                                                loop60:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop46:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      loop41:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         addr522:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc8_ && param1)
                                                                                                            {
                                                                                                               loop9:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §#q§.x);
                                                                                                                  addr580:
                                                                                                                  addr618:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop50;
                                                                                                                        }
                                                                                                                        §§push(Number(§#q§.x));
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     addr602:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr612:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr603:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§push(Number(§#q§.x));
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr618:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop9;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop60;
                                                                                                            }
                                                                                                            §§push(§§pop() > §#q§.y);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc8_ && _loc3_)
                                                                                                                     {
                                                                                                                        continue loop41;
                                                                                                                     }
                                                                                                                     §§push(_loc6_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc9_ || param2))
                                                                                                                        {
                                                                                                                           continue loop46;
                                                                                                                        }
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue loop45;
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr533:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(Number(§#q§.y));
                                                                                                               }
                                                                                                               addr555:
                                                                                                               loop26:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr556:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc6_ = §§pop();
                                                                                                                     addr557:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc7_++;
                                                                                                                        addr519:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop78;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop26;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop41;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr572:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr617:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   §§goto(addr618);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr564:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(Number(§#q§.y));
                                                                                 }
                                                                                 §§goto(addr572);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr564);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§goto(addr329);
                                                         §§push(_loc5_);
                                                      }
                                                      §§goto(addr618);
                                                   }
                                                }
                                                §§goto(addr557);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§goto(addr488);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr165);
                                                }
                                                addr509:
                                             }
                                             §§goto(addr519);
                                          }
                                          §§goto(addr211);
                                       }
                                       while(true)
                                       {
                                          if(_loc9_)
                                          {
                                             if(_loc9_)
                                             {
                                                break;
                                             }
                                             §§goto(addr533);
                                          }
                                          §§goto(addr420);
                                       }
                                       §§goto(addr186);
                                       continue loop74;
                                    }
                                    return param2;
                                 }
                              }
                              else
                              {
                                 §§push(this.§"T§);
                              }
                              §§goto(addr624);
                           }
                        }
                     }
                     addr645:
                  }
                  §§goto(addr645);
               }
               else
               {
                  §`! §(param1,§,!?§);
               }
               §§goto(addr509);
            }
            §§goto(addr645);
         }
         §§goto(addr29);
      }
      
      public function §+V§(param1:int) : uint
      {
         return this.§"T§.§3!R§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§"T§.§^W§(param1,param2);
         }
      }
      
      public function §90§(param1:int) : Number
      {
         return this.§"T§.§,!B§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§"T§.§5!<§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§^0§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§^0§ != param1)
            {
               do
               {
                  this.§^0§ = param1;
                  do
                  {
                     this.§"T§.§-o§(param1,1);
                  }
                  while(_loc3_);
                  
               }
               while(_loc3_ && _loc2_);
               
               addr63:
            }
            return;
         }
         §§goto(addr63);
      }
      
      public function copyVertexDataTo(param1:§;Z§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§"T§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§%L§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
      
      public function get §5P§() : Number
      {
         return this.§7_§;
      }
      
      public function get §#c§() : Number
      {
         return this.§8=§;
      }
   }
}
