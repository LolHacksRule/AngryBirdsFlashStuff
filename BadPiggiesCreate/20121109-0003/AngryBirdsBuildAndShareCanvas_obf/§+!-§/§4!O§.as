package §+!-§
{
   import §%!j§.§&Y§;
   import §`!=§.§?!X§;
   import §`!=§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §4!O§ extends DisplayObject
   {
      
      private static var §9!T§:Vector3D;
      
      private static var §-J§:Point;
      
      private static var §^L§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!T§ = new Vector3D();
            while(true)
            {
               §-J§ = new Point();
               while(!(_loc2_ && §4!O§))
               {
                  §^L§ = new Matrix();
                  if(!(_loc1_ || §4!O§))
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
      
      protected var §2!b§:§?!X§;
      
      private var §<!M§:Number = 0.0;
      
      private var §`g§:Number = 0.0;
      
      private var §?3§:uint = 16777215;
      
      public function §4!O§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            while(true)
            {
               this.§2!b§ = new §?!X§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  §§goto(addr62);
               }
            }
         }
         addr62:
         while(true)
         {
            this.§?3§ = param3;
            if(_loc6_ || param2)
            {
               if(_loc6_ || param1)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
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
         if(!_loc6_)
         {
            §§push(this.§2!b§);
            while(true)
            {
               §§pop().§0!-§(param4);
               loop1:
               while(true)
               {
                  §§push(this.§2!b§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           loop5:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(this.§2!b§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr162:
                                    while(!_loc6_)
                                    {
                                       §§push(param1);
                                       while(true)
                                       {
                                          §§push(0);
                                          addr166:
                                          while(_loc5_)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             while(true)
                                             {
                                                §§push(this.§2!b§);
                                                continue loop2;
                                             }
                                          }
                                          addr144:
                                          continue loop5;
                                          while(_loc5_ || this)
                                          {
                                             §§push(param2);
                                             while(!_loc6_)
                                             {
                                                §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                loop16:
                                                for(; _loc5_; if(!(_loc5_ || this))
                                                {
                                                   continue;
                                                },§§goto(addr62))
                                                {
                                                   §§push(this.§2!b§);
                                                   loop17:
                                                   while(_loc5_ || this)
                                                   {
                                                      continue loop7;
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(this.§2!b§);
                                                         if(!_loc6_)
                                                         {
                                                            §§pop().§1!X§(param3);
                                                            loop19:
                                                            while(!(_loc6_ && this))
                                                            {
                                                               this.§<!M§ = param1;
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ && this))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop16;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  continue loop19;
                                                                  addr62:
                                                                  this.§`g§ = param2;
                                                                  if(!(_loc6_ && param3))
                                                                  {
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        break loop18;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                               continue loop16;
                                                            }
                                                            continue loop6;
                                                         }
                                                         continue loop17;
                                                      }
                                                      return;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr169);
                                                §§push(param2);
                                                if(_loc6_ && param2)
                                                {
                                                   continue;
                                                }
                                                §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                §§goto(addr122);
                                             }
                                             §§goto(addr166);
                                             §§push(param1);
                                             if(_loc6_ && param3)
                                             {
                                                continue;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr113);
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
         §§goto(addr122);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(!_loc8_)
         {
            if(param2 == null)
            {
               addr24:
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
            if(!(_loc8_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc9_)
            {
               if(param1 == this)
               {
                  if(!(_loc8_ && param2))
                  {
                     addr668:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     loop1:
                     while(true)
                     {
                        §§push(4);
                        loop2:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop3:
                              while(!(_loc8_ && param1))
                              {
                                 loop4:
                                 while(true)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop6:
                                       while(!_loc8_)
                                       {
                                          param2.y = _loc5_;
                                          loop7:
                                          while(true)
                                          {
                                             if(_loc9_ || this)
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      if(!(_loc8_ && param2))
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            param2.width = _loc4_ - _loc3_;
                                                            loop8:
                                                            for(; _loc9_; param2.height = _loc6_ - _loc5_,if(_loc9_ || param1)
                                                            {
                                                               continue loop7;
                                                            })
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr607:
                                                                  addr637:
                                                                  _loc3_ = Number(Number(_loc3_));
                                                                  addr632:
                                                                  addr630:
                                                                  addr636:
                                                                  if(_loc4_ > §9!T§.x)
                                                                  {
                                                                     addr608:
                                                                     §§push(_loc4_);
                                                                     if(!(_loc8_ && param2))
                                                                     {
                                                                        addr622:
                                                                        _loc4_ = Number(Number(§§pop()));
                                                                        addr581:
                                                                        §§push(_loc5_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           addr629:
                                                                           addr586:
                                                                           §§push(§§pop() < §9!T§.y);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr589:
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr597:
                                                                                    §§push(Number(Number(_loc5_)));
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       break loop3;
                                                                                    }
                                                                                    §§goto(addr632);
                                                                                 }
                                                                                 §§goto(addr608);
                                                                              }
                                                                              §§goto(addr597);
                                                                              §§push(Number(§9!T§.y));
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              §§goto(addr630);
                                                                           }
                                                                           §§goto(addr636);
                                                                           §§push(Number(§9!T§.x));
                                                                        }
                                                                        addr617:
                                                                        §§goto(addr617);
                                                                        addr621:
                                                                        addr623:
                                                                     }
                                                                     addr626:
                                                                     §§goto(addr629);
                                                                     §§push(§§pop() < §9!T§.x);
                                                                  }
                                                                  §§goto(addr621);
                                                                  §§push(Number(§9!T§.x));
                                                                  addr638:
                                                                  addr631:
                                                               }
                                                               else
                                                               {
                                                                  loop40:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc9_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§pop() > §-J§.x);
                                                                              loop27:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_ || param2)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             break loop27;
                                                                                          }
                                                                                          addr404:
                                                                                          loop13:
                                                                                          for(; !(_loc8_ && param1); §§goto(addr404))
                                                                                          {
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                   {
                                                                                                      loop14:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr434:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               _loc4_ = §§pop();
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc9_ || param2)
                                                                                                                     {
                                                                                                                        if(_loc9_ || param2)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < §-J§.y);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 addr373:
                                                                                                                                 §§push(Number(§-J§.y));
                                                                                                                                 if(!(_loc8_ && param1))
                                                                                                                                 {
                                                                                                                                    addr381:
                                                                                                                                    _loc5_ = Number(§§pop());
                                                                                                                                    addr380:
                                                                                                                                    break loop8;
                                                                                                                                 }
                                                                                                                                 §§goto(addr581);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    addr356:
                                                                                                                                    §§push(_loc5_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr380);
                                                                                                                                                }
                                                                                                                                                addr559:
                                                                                                                                                §§push(Number(Number(§§pop())));
                                                                                                                                                break loop14;
                                                                                                                                             }
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                          addr365:
                                                                                                                                       }
                                                                                                                                       addr447:
                                                                                                                                       addr547:
                                                                                                                                       while(!_loc8_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          while(_loc9_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ && param2))
                                                                                                                                             {
                                                                                                                                                addr468:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   addr469:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc3_ = §§pop();
                                                                                                                                                      continue loop40;
                                                                                                                                                   }
                                                                                                                                                   addr576:
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr626);
                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                      addr647:
                                                                                                                                                   }
                                                                                                                                                   _loc7_++;
                                                                                                                                                   break loop27;
                                                                                                                                                }
                                                                                                                                                addr468:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr597);
                                                                                                                                             }
                                                                                                                                             §§goto(addr597);
                                                                                                                                          }
                                                                                                                                          §§goto(addr559);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() > §9!T§.y);
                                                                                                                                       if(_loc9_ || this)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr555:
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr559);
                                                                                                                                                §§push(_loc6_);
                                                                                                                                             }
                                                                                                                                             §§goto(addr589);
                                                                                                                                          }
                                                                                                                                          §§push(Number(§9!T§.y));
                                                                                                                                          break loop13;
                                                                                                                                       }
                                                                                                                                       §§goto(addr586);
                                                                                                                                       §§goto(addr356);
                                                                                                                                    }
                                                                                                                                    addr357:
                                                                                                                                 }
                                                                                                                                 loop19:
                                                                                                                                 while(_loc9_)
                                                                                                                                 {
                                                                                                                                    transformCoords(§^L§,§9!T§.x,§9!T§.y,§-J§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          §§push(_loc3_);
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() < §-J§.x);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr446:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr468);
                                                                                                                                                   §§push(Number(§-J§.x));
                                                                                                                                                }
                                                                                                                                                §§goto(addr468);
                                                                                                                                             }
                                                                                                                                             addr445:
                                                                                                                                          }
                                                                                                                                          §§goto(addr447);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          loop34:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                addr520:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && param1))
                                                                                                                                                      {
                                                                                                                                                         §§push(4);
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§2!b§);
                                                                                                                                                               if(_loc8_ && param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  addr644:
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(_loc8_ && param1)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop4;
                                                                                                                                                            §§pop().§]5§(§§pop(),§9!T§);
                                                                                                                                                            continue loop19;
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop2;
                                                                                                                                                      }
                                                                                                                                                      continue loop1;
                                                                                                                                                   }
                                                                                                                                                   continue loop34;
                                                                                                                                                   §§goto(addr520);
                                                                                                                                                }
                                                                                                                                                addr520:
                                                                                                                                                §§pop().§]5§(§§pop(),§9!T§);
                                                                                                                                                addr139:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                addr538:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr647);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr638);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr346:
                                                                                                                        }
                                                                                                                        break loop14;
                                                                                                                     }
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  §§goto(addr381);
                                                                                                               }
                                                                                                               addr437:
                                                                                                            }
                                                                                                            §§goto(addr468);
                                                                                                         }
                                                                                                      }
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            §§goto(addr576);
                                                                                                         }
                                                                                                         §§goto(addr631);
                                                                                                      }
                                                                                                      §§goto(addr632);
                                                                                                   }
                                                                                                   §§goto(addr608);
                                                                                                }
                                                                                                addr415:
                                                                                             }
                                                                                             §§goto(addr637);
                                                                                          }
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§goto(addr559);
                                                                                          }
                                                                                          §§goto(addr637);
                                                                                       }
                                                                                       addr402:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr426);
                                                                                       §§push(Number(§-J§.x));
                                                                                    }
                                                                                    §§goto(addr426);
                                                                                 }
                                                                                 §§goto(addr445);
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr597);
                                                                        }
                                                                        §§goto(addr426);
                                                                     }
                                                                     §§goto(addr576);
                                                                  }
                                                               }
                                                               §§goto(addr626);
                                                            }
                                                            loop9:
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(_loc9_ || _loc3_)
                                                                        {
                                                                           if(!(_loc8_ && param2))
                                                                           {
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 §§push(§§pop() > §-J§.y);
                                                                                 if(_loc9_ || param2)
                                                                                 {
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       if(_loc9_ || _loc3_)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§push(Number(§-J§.y));
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr289:
                                                                                                while(_loc9_)
                                                                                                {
                                                                                                   if(!(_loc8_ && param1))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr299:
                                                                                                         while(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            break loop7;
                                                                                                         }
                                                                                                         addr283:
                                                                                                         §§goto(addr415);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr597);
                                                                                                }
                                                                                                §§goto(addr357);
                                                                                                addr289:
                                                                                             }
                                                                                             §§goto(addr299);
                                                                                          }
                                                                                          while(_loc9_ || this)
                                                                                          {
                                                                                             if(_loc9_ || param2)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(!(_loc8_ && param2))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop9;
                                                                                                      }
                                                                                                      if(_loc9_ || param2)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc9_ || param1)
                                                                                                         {
                                                                                                            if(_loc9_ || param2)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  §§goto(addr283);
                                                                                                               }
                                                                                                               §§goto(addr622);
                                                                                                            }
                                                                                                            §§goto(addr434);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr289);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr365);
                                                                                                   }
                                                                                                   addr252:
                                                                                                }
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                             §§goto(addr623);
                                                                                          }
                                                                                          §§goto(addr354);
                                                                                          addr230:
                                                                                       }
                                                                                       §§goto(addr607);
                                                                                    }
                                                                                    §§goto(addr547);
                                                                                 }
                                                                                 §§goto(addr346);
                                                                              }
                                                                              §§goto(addr597);
                                                                           }
                                                                           §§goto(addr450);
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                     §§goto(addr373);
                                                                  }
                                                                  §§goto(addr252);
                                                               }
                                                               §§goto(addr482);
                                                            }
                                                         }
                                                         §§goto(addr446);
                                                      }
                                                      §§goto(addr402);
                                                   }
                                                   break;
                                                }
                                                continue loop5;
                                             }
                                             continue loop6;
                                             if(_loc8_ && _loc3_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                break loop4;
                                             }
                                             while(true)
                                             {
                                                if(_loc9_ || param1)
                                                {
                                                   if(!(_loc8_ && param1))
                                                   {
                                                      §§goto(addr139);
                                                   }
                                                   §§goto(addr555);
                                                }
                                                §§goto(addr230);
                                             }
                                             addr163:
                                          }
                                          while(true)
                                          {
                                             if(!(_loc8_ && this))
                                             {
                                                _loc7_++;
                                                §§goto(addr163);
                                             }
                                             §§goto(addr437);
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return param2;
                              }
                              §§goto(addr547);
                              §§push(_loc6_);
                           }
                           else
                           {
                              §§push(this.§2!b§);
                           }
                           §§goto(addr644);
                        }
                     }
                  }
               }
               else
               {
                  §1!%§(param1,§^L§);
               }
               §§goto(addr538);
            }
            §§goto(addr668);
         }
         §§goto(addr24);
      }
      
      public function §=!P§(param1:int) : uint
      {
         return this.§2!b§.§`!+§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§2!b§.§5!U§(param1,param2);
         }
      }
      
      public function § g§(param1:int) : Number
      {
         return this.§2!b§.§-!n§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§2!b§.§0"+§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§?3§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§?3§ != param1)
            {
               if(_loc2_)
               {
                  this.§?3§ = param1;
                  do
                  {
                     this.§2!b§.§1!X§(param1,1);
                  }
                  while(!_loc2_);
                  
                  addr61:
               }
               §§goto(addr61);
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function copyVertexDataTo(param1:§?!X§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            this.§2!b§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
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
      
      public function get §<!W§() : Number
      {
         return this.§<!M§;
      }
      
      public function get §-!+§() : Number
      {
         return this.§`g§;
      }
   }
}
