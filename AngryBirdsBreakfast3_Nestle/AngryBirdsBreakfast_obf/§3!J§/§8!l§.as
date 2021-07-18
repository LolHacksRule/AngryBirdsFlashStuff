package §3!J§
{
   import §!!!§.§<@§;
   import §^!^§.§#!_§;
   import §^!^§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §8!l§ extends DisplayObject
   {
      
      private static var §6"-§:Vector3D;
      
      private static var §7>§:Point;
      
      private static var §-!B§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §8!l§))
         {
            §6"-§ = new Vector3D();
            while(true)
            {
               §7>§ = new Point();
               while(!_loc1_)
               {
                  §-!B§ = new Matrix();
                  if(!(_loc1_ && _loc2_))
                  {
                     return;
                     addr51:
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      protected var §2!^§:§#!_§;
      
      private var §<"4§:Number = 0.0;
      
      private var §%!?§:Number = 0.0;
      
      private var §[#§:uint = 16777215;
      
      public function §8!l§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            super();
            loop0:
            while(true)
            {
               this.§2!^§ = new §#!_§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  while(_loc6_ || param2)
                  {
                     continue loop0;
                     this.§[#§ = param3;
                     if(!(_loc5_ && this))
                     {
                        return;
                        addr50:
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§2!^§);
            loop0:
            while(true)
            {
               §§pop().§3!A§(param4);
               while(true)
               {
                  §§push(this.§2!^§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        while(true)
                        {
                           §§push(0);
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              while(true)
                              {
                                 §§push(this.§2!^§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr154:
                                    while(!_loc6_)
                                    {
                                       §§push(param1);
                                       while(true)
                                       {
                                          §§push(0);
                                          addr158:
                                          while(true)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             while(true)
                                             {
                                                §§push(this.§2!^§);
                                                loop12:
                                                while(!_loc6_)
                                                {
                                                   continue loop0;
                                                   addr75:
                                                   if(_loc6_ && param2)
                                                   {
                                                      continue;
                                                   }
                                                   §§pop().§2N§(param3);
                                                   loop20:
                                                   while(true)
                                                   {
                                                      this.§<"4§ = param1;
                                                      while(true)
                                                      {
                                                         if(_loc5_ || param3)
                                                         {
                                                            addr57:
                                                            if(!(_loc5_ || param3))
                                                            {
                                                               break;
                                                            }
                                                            continue;
                                                         }
                                                         continue loop20;
                                                      }
                                                      addr126:
                                                      while(true)
                                                      {
                                                         §§push(this.§2!^§);
                                                         if(_loc6_ && param3)
                                                         {
                                                            continue loop7;
                                                         }
                                                         §§goto(addr75);
                                                         §§goto(addr57);
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr149);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(!(_loc8_ && param2))
         {
            if(param2 == null)
            {
               addr29:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc9_ || param1)
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
                     addr655:
                     loop77:
                     while(true)
                     {
                        §§push(_loc7_);
                        while(true)
                        {
                           §§push(4);
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop49:
                                 while(true)
                                 {
                                    if(_loc9_)
                                    {
                                       loop50:
                                       while(true)
                                       {
                                          param2.x = _loc3_;
                                          loop51:
                                          while(true)
                                          {
                                             param2.y = _loc5_;
                                             loop52:
                                             while(true)
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               param2.width = _loc4_ - _loc3_;
                                                               loop53:
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop51;
                                                                  }
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        addr115:
                                                                        if(_loc9_ || param2)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           loop12:
                                                                           for(; _loc9_ || param2; if(!(_loc9_ || _loc3_))
                                                                           {
                                                                              continue;
                                                                           },if(!_loc8_)
                                                                           {
                                                                              §§goto(addr257);
                                                                           },§§goto(addr627))
                                                                           {
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() > §7>§.x);
                                                                                 loop13:
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       if(!(_loc8_ && param2))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             loop60:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            while(!_loc9_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §6"-§.y);
                                                                                                                  addr538:
                                                                                                                  addr598:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           addr540:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 addr542:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr547:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr548:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                          addr549:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_ || this)
                                                                                                                                             {
                                                                                                                                                _loc7_++;
                                                                                                                                                addr532:
                                                                                                                                                continue loop77;
                                                                                                                                             }
                                                                                                                                             addr565:
                                                                                                                                             loop55:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ && param2))
                                                                                                                                                {
                                                                                                                                                   addr573:
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      addr574:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         addr587:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr588:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  _loc5_ = §§pop();
                                                                                                                                                                  break loop53;
                                                                                                                                                               }
                                                                                                                                                               addr607:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  addr611:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr612:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr573:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() < §6"-§.y);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            continue loop55;
                                                                                                                                                         }
                                                                                                                                                         §§push(Number(§6"-§.y));
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            addr626:
                                                                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr587);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr627:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                  addr628:
                                                                                                                                                                  loop32:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     addr601:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() > §6"-§.x);
                                                                                                                                                                        addr604:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                 addr606:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr607);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr605:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§6"-§.x));
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr611);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop32;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr626:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr588);
                                                                                                                                                      }
                                                                                                                                                      addr564:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr573);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr587);
                                                                                                                                                   continue loop55;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr542);
                                                                                                                                 }
                                                                                                                                 addr543:
                                                                                                                              }
                                                                                                                              §§goto(addr606);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr539:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(Number(§6"-§.y));
                                                                                                                     }
                                                                                                                     §§goto(addr547);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr415:
                                                                                                            loop15:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop16:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < §7>§.y);
                                                                                                                           loop18:
                                                                                                                           while(!_loc8_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 break loop50;
                                                                                                                              }
                                                                                                                              §§push(Number(§7>§.y));
                                                                                                                              loop19:
                                                                                                                              while(!_loc8_)
                                                                                                                              {
                                                                                                                                 loop20:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc5_ = §§pop();
                                                                                                                                       addr364:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             continue loop49;
                                                                                                                                          }
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() > §7>§.y);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   continue loop18;
                                                                                                                                                }
                                                                                                                                                if(_loc9_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr221:
                                                                                                                                                         while(_loc9_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop12;
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!(_loc8_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  addr473:
                                                                                                                                                                  addr473:
                                                                                                                                                                  addr289:
                                                                                                                                                                  while(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc6_ = §§pop();
                                                                                                                                                                     while(!(_loc8_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_++;
                                                                                                                                                                        break loop52;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc3_);
                                                                                                                                                                        addr438:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() < §7>§.x);
                                                                                                                                                                           break loop13;
                                                                                                                                                                           addr337:
                                                                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              addr352:
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc8_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr621:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr622:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr626);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr574);
                                                                                                                                                                              }
                                                                                                                                                                              addr352:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr543);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr292);
                                                                                                                                                                     }
                                                                                                                                                                     addr292:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           break loop12;
                                                                                                                                                                           addr469:
                                                                                                                                                                        }
                                                                                                                                                                        addr480:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr588);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr419:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop15;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr419:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr611);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr605);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            transformCoords(§-!B§,§6"-§.x,§6"-§.y,§7>§);
                                                                                                                                                            §§goto(addr499);
                                                                                                                                                            §§goto(addr221);
                                                                                                                                                         }
                                                                                                                                                         addr221:
                                                                                                                                                         addr512:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§7>§.y));
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop19;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc8_ && this))
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr289);
                                                                                                                                                                        addr257:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr601);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc8_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr337);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr413);
                                                                                                                                                                     }
                                                                                                                                                                     addr329:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr438);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr352);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr289);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr289);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr621);
                                                                                                                                                         }
                                                                                                                                                         addr620:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§6"-§.x));
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr626);
                                                                                                                                                   }
                                                                                                                                                   addr619:
                                                                                                                                                }
                                                                                                                                                §§goto(addr604);
                                                                                                                                             }
                                                                                                                                             §§goto(addr612);
                                                                                                                                          }
                                                                                                                                          §§goto(addr289);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           continue loop13;
                                                                                                                        }
                                                                                                                        §§goto(addr352);
                                                                                                                        continue loop50;
                                                                                                                     }
                                                                                                                     addr435:
                                                                                                                  }
                                                                                                                  §§goto(addr548);
                                                                                                               }
                                                                                                            }
                                                                                                            addr413:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc8_ && param1))
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  if(_loc9_ || param1)
                                                                                                                  {
                                                                                                                     break loop60;
                                                                                                                  }
                                                                                                                  §§goto(addr622);
                                                                                                               }
                                                                                                               §§goto(addr573);
                                                                                                            }
                                                                                                            §§goto(addr547);
                                                                                                         }
                                                                                                         addr450:
                                                                                                      }
                                                                                                      §§goto(addr419);
                                                                                                   }
                                                                                                   §§goto(addr539);
                                                                                                }
                                                                                                addr442:
                                                                                                while(!(_loc8_ && this))
                                                                                                {
                                                                                                   §§goto(addr450);
                                                                                                   §§push(_loc3_);
                                                                                                }
                                                                                                break loop53;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§goto(addr469);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr473);
                                                                                             }
                                                                                             addr398:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(Number(§7>§.x));
                                                                                          }
                                                                                          §§goto(addr419);
                                                                                       }
                                                                                       §§goto(addr564);
                                                                                    }
                                                                                    §§goto(addr538);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§goto(addr442);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Number(§7>§.x));
                                                                                    }
                                                                                    §§goto(addr473);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr619);
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr540);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr398);
                                                                  }
                                                                  §§goto(addr364);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     §§goto(addr598);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr647:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr616);
                                                                     }
                                                                     addr647:
                                                                  }
                                                                  §§goto(addr626);
                                                               }
                                                            }
                                                            §§goto(addr532);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  addr516:
                                                                  while(true)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                            addr529:
                                                         }
                                                         §§goto(addr647);
                                                      }
                                                      break loop50;
                                                   }
                                                   §§goto(addr221);
                                                }
                                                break;
                                                if(!(_loc9_ || this))
                                                {
                                                   continue;
                                                }
                                                if(_loc8_ && param1)
                                                {
                                                   continue loop50;
                                                }
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   return param2;
                                                }
                                                §§goto(addr292);
                                             }
                                             while(!(_loc9_ || param2))
                                             {
                                                §§goto(addr628);
                                             }
                                             §§goto(addr199);
                                          }
                                       }
                                       while(_loc9_)
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             §§goto(addr329);
                                          }
                                          §§goto(addr620);
                                       }
                                       §§goto(addr516);
                                    }
                                    §§goto(addr549);
                                 }
                              }
                              else
                              {
                                 §§push(this.§2!^§);
                              }
                              §§goto(addr634);
                           }
                        }
                     }
                     addr655:
                  }
                  §§goto(addr655);
               }
               else
               {
                  §else §(param1,§-!B§);
               }
               §§goto(addr529);
            }
            §§goto(addr655);
         }
         §§goto(addr29);
      }
      
      public function §=!6§(param1:int) : uint
      {
         return this.§2!^§.§9!,§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§2!^§.§,!;§(param1,param2);
         }
      }
      
      public function §-v§(param1:int) : Number
      {
         return this.§2!^§.§2!4§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            this.§2!^§.§'7§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§[#§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§[#§ != param1)
            {
               if(!(_loc3_ && param1))
               {
                  addr73:
                  this.§[#§ = param1;
               }
               do
               {
                  this.§2!^§.§2N§(param1,1);
               }
               while(!(_loc2_ || param1));
               
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function copyVertexDataTo(param1:§#!_§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§2!^§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§<@§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
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
      
      public function get §3!$§() : Number
      {
         return this.§<"4§;
      }
      
      public function get §![§() : Number
      {
         return this.§%!?§;
      }
   }
}
