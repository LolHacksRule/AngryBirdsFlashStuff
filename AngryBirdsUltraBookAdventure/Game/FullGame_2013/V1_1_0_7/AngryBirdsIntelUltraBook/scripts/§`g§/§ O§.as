package §`g§
{
   import §2m§.§@>§;
   import §7H§.§'!w§;
   import §7H§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § O§ extends DisplayObject
   {
      
      private static var §;q§:Vector3D;
      
      private static var §"!,§:Point;
      
      private static var §=!l§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;q§ = new Vector3D();
            while(true)
            {
               §"!,§ = new Point();
               §§goto(addr49);
            }
         }
         addr49:
         while(true)
         {
            §=!l§ = new Matrix();
            if(!_loc1_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected var §[!K§:§'!w§;
      
      private var §#!0§:Number = 0.0;
      
      private var §7"!§:Number = 0.0;
      
      private var §4t§:uint = 16777215;
      
      public function § O§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param3)
         {
            super();
            loop0:
            while(true)
            {
               this.§[!K§ = new §'!w§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  while(!(_loc5_ && param1))
                  {
                     if(_loc6_)
                     {
                        this.§4t§ = param3;
                        if(!(_loc5_ && param3))
                        {
                           return;
                           addr60:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            §§push(this.§[!K§);
            while(true)
            {
               §§pop().§&!O§(param4);
               loop1:
               while(true)
               {
                  §§push(this.§[!K§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     addr202:
                     while(true)
                     {
                        §§push(0);
                        addr203:
                        while(true)
                        {
                           §§push(0);
                           addr204:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              addr205:
                              while(_loc5_)
                              {
                                 §§push(this.§[!K§);
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr75);
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
            if(!(_loc8_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!(_loc8_ && this))
            {
               if(param1 == this)
               {
                  if(_loc9_)
                  {
                     _loc7_ = 0;
                     addr640:
                     loop76:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop72:
                        while(true)
                        {
                           §§push(4);
                           loop71:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop74:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       loop67:
                                       while(true)
                                       {
                                          param2.x = _loc3_;
                                          loop68:
                                          while(true)
                                          {
                                             param2.y = _loc5_;
                                             loop69:
                                             while(true)
                                             {
                                                if(!(_loc9_ || _loc3_))
                                                {
                                                   continue loop68;
                                                }
                                                addr121:
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   if(_loc9_ || this)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            param2.width = _loc4_ - _loc3_;
                                                            while(_loc9_)
                                                            {
                                                               param2.height = _loc6_ - _loc5_;
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop69;
                                                               }
                                                            }
                                                            loop38:
                                                            while(true)
                                                            {
                                                               _loc7_++;
                                                               addr173:
                                                               loop39:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     loop40:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              addr550:
                                                                              §§push(Number(§§pop()));
                                                                              while(true)
                                                                              {
                                                                                 addr554:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr555:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             _loc6_ = §§pop();
                                                                                             loop27:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc7_++;
                                                                                                addr526:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      continue loop76;
                                                                                                   }
                                                                                                   continue loop27;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             addr570:
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr550:
                                                                           }
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr576:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§push(§§pop() > §;q§.y);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      continue loop40;
                                                                                                   }
                                                                                                   §§goto(addr554);
                                                                                                   §§push(Number(§;q§.y));
                                                                                                }
                                                                                                addr543:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop46:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr594:
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr595:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         addr596:
                                                                                                         loop59:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            addr563:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() < §;q§.y);
                                                                                                               addr566:
                                                                                                               while(_loc9_)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§push(Number(§;q§.y));
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                               addr587:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§push(Number(§;q§.x));
                                                                                                                     continue loop20;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc4_);
                                                                                                                     addr589:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop46;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop59;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr570);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr550);
                                                                                          }
                                                                                       }
                                                                                       addr581:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       loop44:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr615:
                                                                                          while(true)
                                                                                          {
                                                                                             addr619:
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr620:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc3_ = §§pop();
                                                                                                   addr621:
                                                                                                   while(!_loc8_)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                   }
                                                                                                   addr632:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      addr599:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() < §;q§.x);
                                                                                                         addr612:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§push(Number(§;q§.x));
                                                                                                               continue loop15;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop44;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr587);
                                                                                 }
                                                                                 §§goto(addr584);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr550);
                                                                     }
                                                                  }
                                                                  loop61:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr433:
                                                                     addr436:
                                                                     while(true)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           break;
                                                                        }
                                                                        §§goto(addr555);
                                                                     }
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop10:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr453:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              loop12:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §"!,§.x);
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       if(!(_loc8_ && param2))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr385:
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                      if(!(_loc8_ && param2))
                                                                                                      {
                                                                                                         if(_loc9_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop14:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr414:
                                                                                                               loop54:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  addr415:
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc8_)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                        addr418:
                                                                                                                        while(!(_loc8_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc5_);
                                                                                                                           loop31:
                                                                                                                           while(_loc9_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() < §"!,§.y);
                                                                                                                              while(_loc9_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || param2)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_);
                                                                                                                                             if(!(_loc8_ && param1))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                continue loop12;
                                                                                                                                             }
                                                                                                                                             addr428:
                                                                                                                                             addr355:
                                                                                                                                             addr355:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      _loc5_ = §§pop();
                                                                                                                                                      break loop69;
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop9;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() < §"!,§.x);
                                                                                                                                                addr431:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      continue loop61;
                                                                                                                                                   }
                                                                                                                                                   addr440:
                                                                                                                                                   §§push(Number(§"!,§.x));
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc8_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop9;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr599);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr595);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr576);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr581);
                                                                                                                                       }
                                                                                                                                       addr301:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(Number(§"!,§.y));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc9_ || param1))
                                                                                                                                          {
                                                                                                                                             continue loop24;
                                                                                                                                          }
                                                                                                                                          if(!(_loc8_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr355);
                                                                                                                                                   addr334:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr615);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr338:
                                                                                                                                    }
                                                                                                                                    §§goto(addr554);
                                                                                                                                 }
                                                                                                                                 §§goto(addr431);
                                                                                                                                 §§push(§§pop() > §"!,§.y);
                                                                                                                                 if(!(_loc9_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc9_ || param2)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr253:
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     addr263:
                                                                                                                                                                     while(!(_loc8_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc8_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                           continue loop38;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop31;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  addr262:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr594);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr550);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr355);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         continue loop14;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr338);
                                                                                                                                                      addr253:
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop54;
                                                                                                                                             }
                                                                                                                                             §§goto(addr263);
                                                                                                                                          }
                                                                                                                                          §§goto(addr613);
                                                                                                                                       }
                                                                                                                                       §§goto(addr440);
                                                                                                                                       addr209:
                                                                                                                                    }
                                                                                                                                    §§push(Number(§"!,§.y));
                                                                                                                                    if(_loc9_ || this)
                                                                                                                                    {
                                                                                                                                       §§goto(addr253);
                                                                                                                                    }
                                                                                                                                    §§goto(addr263);
                                                                                                                                 }
                                                                                                                                 §§goto(addr566);
                                                                                                                              }
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        while(!(_loc8_ && param2))
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§goto(addr428);
                                                                                                                              §§push(_loc3_);
                                                                                                                           }
                                                                                                                           §§goto(addr526);
                                                                                                                           §§goto(addr418);
                                                                                                                        }
                                                                                                                        addr418:
                                                                                                                        loop2:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop74;
                                                                                                                           }
                                                                                                                           if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(_loc9_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(4);
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       continue loop71;
                                                                                                                                    }
                                                                                                                                    if(§§pop() >= §§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop67;
                                                                                                                                                }
                                                                                                                                                §§goto(addr418);
                                                                                                                                             }
                                                                                                                                             §§goto(addr301);
                                                                                                                                          }
                                                                                                                                          §§goto(addr209);
                                                                                                                                          §§goto(addr121);
                                                                                                                                       }
                                                                                                                                       addr155:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this.§[!K§);
                                                                                                                                       if(_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc9_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§pop().§+j§(§§pop(),§;q§);
                                                                                                                                             break loop13;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc7_);
                                                                                                                                          }
                                                                                                                                          addr629:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§+j§(§§pop(),§;q§);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop72;
                                                                                                                                 §§goto(addr632);
                                                                                                                                 break loop39;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 continue loop2;
                                                                                                                              }
                                                                                                                              addr140:
                                                                                                                              addr493:
                                                                                                                           }
                                                                                                                           §§goto(addr588);
                                                                                                                        }
                                                                                                                        addr463:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr433);
                                                                                                                     }
                                                                                                                     §§goto(addr555);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr619);
                                                                                                      }
                                                                                                      §§goto(addr563);
                                                                                                   }
                                                                                                   §§goto(addr415);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr418);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(Number(§"!,§.x));
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                       §§goto(addr612);
                                                                                    }
                                                                                    §§goto(addr543);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    transformCoords(§=!l§,§;q§.x,§;q§.y,§"!,§);
                                                                                    §§goto(addr463);
                                                                                    §§goto(addr385);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr140);
                                                            }
                                                         }
                                                         §§goto(addr621);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc9_ || this)
                                                            {
                                                               §§goto(addr493);
                                                               §§push(0);
                                                            }
                                                         }
                                                         addr516:
                                                      }
                                                      §§goto(addr569);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr155);
                                             }
                                             while(!_loc8_)
                                             {
                                                §§push(_loc6_);
                                                if(_loc9_)
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(_loc9_ || this)
                                                      {
                                                         §§goto(addr196);
                                                      }
                                                      §§goto(addr620);
                                                   }
                                                   §§goto(addr589);
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr453);
                                          }
                                       }
                                       return param2;
                                    }
                                    §§goto(addr596);
                                 }
                              }
                              else
                              {
                                 §§push(this.§[!K§);
                              }
                              §§goto(addr629);
                           }
                        }
                     }
                     addr640:
                  }
                  §§goto(addr640);
               }
               else
               {
                  §,!g§(param1,§=!l§);
               }
               §§goto(addr516);
            }
            §§goto(addr640);
         }
         §§goto(addr29);
      }
      
      public function §"!3§(param1:int) : uint
      {
         return this.§[!K§.§>!9§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§[!K§.§,!7§(param1,param2);
         }
      }
      
      public function §]!`§(param1:int) : Number
      {
         return this.§[!K§.§5!&§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§[!K§.§!0§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§4t§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(this.§4t§ != param1)
            {
               if(_loc3_ || this)
               {
                  addr74:
                  this.§4t§ = param1;
               }
               do
               {
                  this.§[!K§.§]!P§(param1,1);
               }
               while(_loc2_ && _loc2_);
               
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function copyVertexDataTo(param1:§'!w§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§[!K§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
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
      
      public function get §@!8§() : Number
      {
         return this.§#!0§;
      }
      
      public function get §0!v§() : Number
      {
         return this.§7"!§;
      }
   }
}
