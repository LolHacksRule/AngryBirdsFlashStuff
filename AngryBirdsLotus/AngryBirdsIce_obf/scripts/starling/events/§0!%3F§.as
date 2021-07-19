package starling.events
{
   import §^V§.Stage;
   import flash.geom.Point;
   
   public class §0!?§
   {
      
      private static const §4&§:Number = 0.3;
      
      private static const §%!3§:Number = 25;
      
      private static var §`!G§:Vector.<int>;
      
      private static var §!4§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4&§ = 0.3;
            while(true)
            {
               §%!3§ = 25;
               while(!(_loc1_ && _loc2_))
               {
                  §`!G§ = new Vector.<int>(0);
                  while(_loc2_)
                  {
                     §!4§ = new Vector.<Object>(0);
                     if(_loc2_)
                     {
                        return;
                        addr60:
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      private var §8!G§:Stage;
      
      private var §^w§:Number;
      
      private var §'!@§:Number;
      
      private var §1!"§:§6p§;
      
      private var §4!,§:Vector.<§ K§>;
      
      private var §"^§:Vector.<Array>;
      
      private var §3!6§:Vector.<§ K§>;
      
      private var §use §:Boolean = false;
      
      private var §+Q§:Boolean = false;
      
      public function §0!?§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         super();
         this.§8!G§ = param1;
         this.§^w§ = this.§'!@§ = 0;
         if(!(_loc4_ && this))
         {
            this.§4!,§ = new Vector.<§ K§>(0);
            do
            {
               this.§"^§ = new Vector.<Array>(0);
            }
            while(!_loc3_);
            
         }
         this.§3!6§ = new Vector.<§ K§>(0);
         loop1:
         do
         {
            §§push(this.§8!G§);
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               while(true)
               {
                  §§pop().addEventListener(§§pop(),this.onKey);
                  §§push(this.§8!G§);
                  if(_loc4_)
                  {
                     break;
                  }
                  §§push(KeyboardEvent.KEY_UP);
                  if(_loc3_)
                  {
                     continue loop1;
                  }
               }
            }
         }
         while(§§pop().addEventListener(§§pop(),this.onKey), _loc4_ && this);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§8!G§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr91:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.onKey);
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§1!"§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || this)
                  {
                     addr48:
                     this.§1!"§.dispose();
                  }
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  §§goto(addr94);
               }
               break;
            }
            §§goto(addr48);
         }
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§ K§ = null;
         var _loc5_:§ K§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§^w§);
            if(_loc10_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§^w§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§'!@§ = 0;
            loop1:
            for(; this.§3!6§.length > 0; if(!(_loc10_ || this))
            {
               continue;
            },_loc2_ = int(this.§3!6§.length - 1),§§goto(addr99))
            {
               if(_loc10_ || this)
               {
                  continue;
               }
               addr99:
               if(!_loc10_)
               {
                  continue loop0;
               }
               loop24:
               while(true)
               {
                  loop25:
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push(0);
                     if(!(_loc11_ && param1))
                     {
                        if(§§pop() < §§pop())
                        {
                           break loop1;
                        }
                        §§push(this.§^w§);
                        if(!_loc11_)
                        {
                           §§push(§§pop() - this.§3!6§[_loc2_].timestamp);
                           if(!_loc11_)
                           {
                              if(§§pop() > §4&§)
                              {
                                 this.§3!6§.splice(_loc2_,1);
                              }
                              §§push(_loc2_);
                              if(!_loc11_)
                              {
                                 _loc2_ = §§pop() - 1;
                                 if(_loc10_ || param1)
                                 {
                                    if(false)
                                    {
                                       continue loop24;
                                    }
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§4!,§.length - 1);
                                    addr595:
                                    while(true)
                                    {
                                       _loc2_ = int(§§pop());
                                       addr597:
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr532:
                                             addr551:
                                             while(true)
                                             {
                                                break loop25;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr520);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr571);
                           }
                        }
                        §§goto(addr595);
                     }
                     break;
                  }
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        if(_loc10_ || param1)
                        {
                           if(!_loc11_)
                           {
                              §§push(this);
                              §§push(this.§'!@§);
                              if(_loc10_)
                              {
                                 §§push(§§pop() + 0.00001);
                              }
                              §§pop().§'!@§ = §§pop();
                              §§goto(addr551);
                           }
                           §§goto(addr597);
                        }
                        §§goto(addr551);
                     }
                     else if(this.§4!,§[_loc2_].phase == §"e§.§"m§)
                     {
                        §§goto(addr585);
                     }
                     §§goto(addr552);
                  }
               }
            }
            addr520:
            while(true)
            {
               if(this.§"^§.length <= 0)
               {
                  if(!_loc11_)
                  {
                     break;
                  }
                  continue loop30;
               }
               addr585:
               §`!G§.length = §!4§.length = 0;
               if(_loc10_ || param1)
               {
                  var _loc8_:* = 0;
                  if(!_loc11_)
                  {
                     var _loc9_:* = this.§4!,§;
                     loop3:
                     while(true)
                     {
                        §§push(§§hasnext(_loc9_,_loc8_));
                        if(_loc10_ || this)
                        {
                           if(!§§pop())
                           {
                              if(!(_loc11_ && param1))
                              {
                                 if(!(_loc11_ && _loc2_))
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       §§push(this.§"^§.length > 0);
                                       if(_loc10_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc11_ && this))
                                             {
                                                addr377:
                                                §§pop();
                                                §§push(§`!G§.indexOf(this.§"^§[this.§"^§.length - 1][0]) == -1);
                                             }
                                          }
                                          if(!§§pop())
                                          {
                                             break;
                                          }
                                          _loc3_ = (_loc7_ = this.§"^§.pop())[0] as int;
                                          §§push(Boolean(_loc4_ = this.§1>§(_loc3_)));
                                          if(_loc10_)
                                          {
                                             §§push(§§pop());
                                             if(_loc10_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      §§pop();
                                                      if(!(_loc11_ && param1))
                                                      {
                                                         §§push(_loc4_.phase == §"e§.§2!7§);
                                                         if(_loc10_ || this)
                                                         {
                                                            addr357:
                                                            §§push(Boolean(§§pop()));
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               addr358:
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     loop5:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr360:
                                                                        addr298:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(_loc4_.target));
                                                                           if(!_loc10_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(!(_loc10_ || _loc3_))
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                        }
                                                                        do
                                                                        {
                                                                           this.§?r§.apply(this,_loc7_);
                                                                           do
                                                                           {
                                                                              §`!G§.push(_loc3_);
                                                                           }
                                                                           while(_loc11_);
                                                                           
                                                                           if(!_loc10_)
                                                                           {
                                                                              break loop10;
                                                                           }
                                                                        }
                                                                        while(false);
                                                                        
                                                                        continue loop4;
                                                                     }
                                                                     addr359:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           if(_loc10_ || param1)
                                                                           {
                                                                              addr334:
                                                                              §!4§.push({
                                                                                 "touch":_loc4_,
                                                                                 "target":_loc4_.target
                                                                              });
                                                                              break loop10;
                                                                           }
                                                                           §§goto(addr360);
                                                                        }
                                                                        break loop10;
                                                                     }
                                                                     §§goto(addr298);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr298);
                                                               }
                                                            }
                                                            addr357:
                                                         }
                                                         §§goto(addr359);
                                                      }
                                                      §§goto(addr334);
                                                   }
                                                }
                                                §§goto(addr357);
                                             }
                                             §§goto(addr358);
                                          }
                                          §§goto(addr357);
                                       }
                                       §§goto(addr377);
                                    }
                                    §§push(0);
                                    if(_loc10_)
                                    {
                                       _loc8_ = §§pop();
                                       if(_loc10_ || _loc3_)
                                       {
                                          addr403:
                                          _loc9_ = §!4§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc9_,_loc8_));
                                             if(_loc10_ || param1)
                                             {
                                                break loop3;
                                             }
                                             addr515:
                                             loop21:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                   while(true)
                                                   {
                                                      §§push((_loc4_ = this.§1>§(_loc3_)).target);
                                                      if(!_loc11_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               addr503:
                                                               _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§[<§,this.§4!,§,this.§use §,this.§+Q§));
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop21;
                                                         }
                                                         addr517:
                                                         continue loop31;
                                                         addr516:
                                                         addr514:
                                                      }
                                                      §§goto(addr503);
                                                   }
                                                   addr489:
                                                }
                                                §§goto(addr516);
                                             }
                                          }
                                          addr439:
                                       }
                                       addr477:
                                       _loc9_ = §`!G§;
                                       if(!_loc11_)
                                       {
                                          §§goto(addr514);
                                       }
                                       §§goto(addr489);
                                    }
                                    §§goto(addr532);
                                 }
                                 §§goto(addr477);
                              }
                              addr455:
                              if(_loc10_ || _loc2_)
                              {
                                 if(!_loc11_)
                                 {
                                    §§push(0);
                                    if(_loc10_)
                                    {
                                       _loc8_ = §§pop();
                                       if(_loc10_ || _loc3_)
                                       {
                                          §§goto(addr477);
                                       }
                                       §§goto(addr517);
                                    }
                                    else
                                    {
                                       §§goto(addr532);
                                    }
                                 }
                                 while(true)
                                 {
                                    addr552:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc10_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop() - 1);
                                          }
                                          addr571:
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          continue loop16;
                                       }
                                    }
                                 }
                                 addr590:
                              }
                              §§goto(addr517);
                           }
                           else
                           {
                              _loc5_ = §§nextvalue(_loc8_,_loc9_);
                              §§push(_loc5_.phase);
                              if(!(_loc11_ && _loc2_))
                              {
                                 §§push(§"e§.§'D§);
                                 if(_loc10_ || param1)
                                 {
                                    §§push(§§pop() == §§pop());
                                    if(_loc10_ || this)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             §§pop();
                                             if(_loc11_)
                                             {
                                                continue;
                                             }
                                             addr201:
                                             §§push(_loc5_.phase == §"e§.§76§);
                                          }
                                       }
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc10_ || param1)
                                       {
                                          _loc5_.§5!>§(§"e§.§0e§);
                                       }
                                    }
                                    continue;
                                 }
                              }
                              §§goto(addr201);
                           }
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc6_ = §§nextvalue(_loc8_,_loc9_);
                           if(_loc6_.touch.target != _loc6_.target)
                           {
                              if(_loc10_ || this)
                              {
                                 _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§[<§,this.§4!,§,this.§use §,this.§+Q§));
                              }
                           }
                           continue;
                        }
                        if(_loc10_ || this)
                        {
                           §§goto(addr455);
                        }
                        §§goto(addr517);
                     }
                     §§goto(addr515);
                  }
                  §§goto(addr403);
               }
               while(true)
               {
                  this.§4!,§.splice(_loc2_,1);
                  §§goto(addr590);
               }
               continue loop30;
            }
            return;
         }
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         this.§"^§.unshift(arguments);
         §§push(Boolean(this.§+Q§));
         §§push(Boolean(this.§+Q§));
         loop0:
         while(true)
         {
            if(!§§pop())
            {
               continue;
            }
            §§pop();
            while(true)
            {
               §§push(Boolean(this.§5U§));
               if(_loc7_ || param1)
               {
                  continue loop0;
               }
               addr107:
               while(true)
               {
                  §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(param1 == 0);
                     addr59:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                  }
                  return;
               }
            }
         }
      }
      
      private function §?r§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§ K§;
         if((_loc6_ = this.§1>§(param1)) == null)
         {
            if(!(_loc7_ && this))
            {
               _loc6_ = new § K§(param1,param3,param4,param2,null);
               if(!(_loc7_ && this))
               {
                  this.§3w§(_loc6_);
                  addr57:
                  _loc6_.setPosition(param3,param4);
                  _loc6_.§5!>§(param2);
                  §§push(_loc6_);
                  §§push(this.§^w§);
                  if(_loc8_)
                  {
                     §§push(§§pop() + this.§'!@§);
                  }
                  §§pop().§2!C§(§§pop());
                  §§push(param2);
                  loop7:
                  while(true)
                  {
                     §§push(§"e§.§2!7§);
                     addr148:
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc7_)
                        {
                           if(!§§pop())
                           {
                              addr153:
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr154:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr110:
                                    while(true)
                                    {
                                       if(_loc7_ && param3)
                                       {
                                          continue loop7;
                                       }
                                       §§push(§"e§.§'D§);
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc8_)
                                          {
                                             break loop3;
                                          }
                                          continue loop4;
                                       }
                                    }
                                    continue loop4;
                                 }
                              }
                              addr153:
                           }
                           break;
                        }
                        §§goto(addr153);
                     }
                     if(§§pop())
                     {
                        addr124:
                        if(!_loc7_)
                        {
                           _loc6_.§!g§(this.§8!G§.hitTest(_loc5_,true));
                           addr143:
                           while(true)
                           {
                           }
                           addr143:
                        }
                        §§goto(addr143);
                     }
                     while(true)
                     {
                        §§push(param2);
                        if(_loc8_ || this)
                        {
                           §§push(§"e§.§'D§);
                           if(_loc8_)
                           {
                              if(_loc8_ || param1)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    this.§'?§(_loc6_);
                                    if(!(_loc8_ || param3))
                                    {
                                       §§goto(addr154);
                                    }
                                 }
                                 return;
                              }
                              §§goto(addr148);
                              §§goto(addr153);
                           }
                           §§goto(addr119);
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr124);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr143);
         }
         §§goto(addr57);
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§ K§ = null;
         var _loc4_:§ K§ = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               if(_loc6_)
               {
                  §§push(§§pop() == §§pop());
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(this.§+Q§);
                              loop11:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr138:
                                 loop3:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    this.§+Q§ = param1.type == KeyboardEvent.KEY_DOWN;
                                    §§push(this.§5U§);
                                    if(!_loc5_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop11;
                                       }
                                       §§push(Boolean(§§pop()));
                                       loop4:
                                       while(!_loc5_)
                                       {
                                          §§push(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                break loop3;
                                             }
                                             loop8:
                                             while(true)
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§1!"§);
                                                         do
                                                         {
                                                            §§pop().visible = this.§+Q§;
                                                            §§push(this.§1!"§);
                                                         }
                                                         while(_loc5_ && param1);
                                                         
                                                         §§pop().§!=§(this.§8!G§.stageWidth / 2,this.§8!G§.stageHeight / 2);
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§+Q§);
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           break loop3;
                                                                        }
                                                                        §§push(!§§pop());
                                                                        continue loop8;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop4;
                                                            addr56:
                                                         }
                                                         _loc3_ = this.§1>§(0);
                                                         _loc4_ = this.§1>§(1);
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§1!"§.§?G§(_loc3_.globalX,_loc3_.globalY);
                                                                  addr373:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               addr366:
                                                            }
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  §§push(Boolean(§§pop()));
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(_loc4_));
                                                                        }
                                                                        addr363:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop21:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc6_ || _loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§push(_loc4_.phase);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§"e§.§"m§);
                                                                                          addr310:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() == §§pop());
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§push(!§§pop());
                                                                                          }
                                                                                          continue loop21;
                                                                                          loop29:
                                                                                          for(; !(_loc5_ && this); while(true)
                                                                                          {
                                                                                             §§push(_loc3_.phase);
                                                                                             if(!(_loc6_ || this))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr212);
                                                                                          })
                                                                                          {
                                                                                             §§push(§"e§.§'D§);
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      while(_loc6_ || this)
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop18;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               break loop30;
                                                                                                            }
                                                                                                            addr303:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§push(_loc3_.phase);
                                                                                                               continue loop29;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                      addr293:
                                                                                                   }
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   addr224:
                                                                                                   while(!§§pop())
                                                                                                   {
                                                                                                      this.§"^§.unshift([1,§"e§.§2!7§,this.§1!"§.§-!<§,this.§1!"§.§ [§]);
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         if(true)
                                                                                                         {
                                                                                                            return;
                                                                                                         }
                                                                                                         addr386:
                                                                                                         addr386:
                                                                                                         addr374:
                                                                                                         addr374:
                                                                                                         addr374:
                                                                                                         addr374:
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                      addr285:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop29;
                                                                                                      }
                                                                                                   }
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   this.§"^§.unshift([1,§"e§.§'D§,this.§1!"§.§-!<§,this.§1!"§.§ [§]);
                                                                                                   §§goto(addr374);
                                                                                                }
                                                                                                §§goto(addr303);
                                                                                                addr212:
                                                                                                §§push(§"e§.§76§);
                                                                                                if(!(_loc6_ || this))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   §§goto(addr224);
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr310);
                                                                                                }
                                                                                                §§goto(addr374);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr245);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr366);
                                                                                    }
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    this.§"^§.unshift([1,§"e§.§"m§,_loc4_.globalX,_loc4_.globalY]);
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr293);
                                                                                    §§push(Boolean(this.§+Q§));
                                                                                    §§push(Boolean(this.§+Q§));
                                                                                 }
                                                                                 §§goto(addr374);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop();
                                                                  §§goto(addr285);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr363);
                                                      }
                                                      addr74:
                                                   }
                                                   §§goto(addr374);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§pop();
                                          if(_loc6_)
                                          {
                                             §§push(param1.keyCode);
                                             if(_loc6_)
                                             {
                                                continue loop0;
                                             }
                                             addr378:
                                             addr378:
                                             addr377:
                                             if(§§pop() == 16)
                                             {
                                                break;
                                             }
                                             §§goto(addr386);
                                          }
                                          break;
                                       }
                                       this.§use § = param1.type == KeyboardEvent.KEY_DOWN;
                                       §§goto(addr386);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    §§pop();
                                    if(_loc6_ || this)
                                    {
                                       §§goto(addr56);
                                    }
                                    break;
                                 }
                                 §§goto(addr386);
                              }
                           }
                           else
                           {
                              §§push(param1.keyCode);
                           }
                           §§goto(addr377);
                        }
                        addr133:
                     }
                     §§goto(addr148);
                  }
               }
               §§goto(addr378);
            }
         }
         §§goto(addr74);
      }
      
      private function §'?§(param1:§ K§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§ K§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§ K§ = null;
         §§push(§%!3§);
         if(!_loc8_)
         {
            §§push(§§pop() * §%!3§);
            if(_loc9_)
            {
               addr32:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§3!6§)
            {
               if(_loc9_ || this)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc9_ || _loc3_)
                     {
                        _loc5_ = §§pop();
                        addr93:
                        §§push(_loc3_);
                     }
                     if(§§pop() <= §§pop())
                     {
                        addr95:
                        _loc2_ = _loc4_;
                        break;
                     }
                     continue;
                  }
                  §§goto(addr93);
               }
               §§goto(addr95);
            }
            if(_loc9_)
            {
               if(_loc2_)
               {
                  if(!(_loc8_ && param1))
                  {
                     param1.§[>§(_loc2_.§#'§ + 1);
                  }
                  while(true)
                  {
                     this.§3!6§.splice(this.§3!6§.indexOf(_loc2_),1);
                     addr152:
                     loop2:
                     while(!_loc8_)
                     {
                        while(true)
                        {
                           addr110:
                           while(true)
                           {
                              this.§3!6§.push(param1.clone());
                              if(_loc9_ || _loc2_)
                              {
                                 return;
                                 addr123:
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
               else
               {
                  param1.§[>§(1);
               }
               while(true)
               {
                  if(_loc9_)
                  {
                     continue;
                  }
                  §§goto(addr152);
               }
               §§goto(addr123);
            }
            §§goto(addr154);
         }
         §§goto(addr32);
      }
      
      private function §3w§(param1:§ K§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§4!,§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_ || _loc2_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!_loc4_)
                        {
                           this.§4!,§.push(param1);
                           addr68:
                           if(_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        addr103:
                        this.§4!,§.splice(_loc2_,1);
                     }
                     addr81:
                     §§push(_loc2_);
                     if(!(_loc4_ && param1))
                     {
                        addr91:
                        _loc2_ = §§pop() - 1;
                        continue;
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr68);
               }
               else if(this.§4!,§[_loc2_].id == param1.id)
               {
                  §§goto(addr103);
               }
               §§goto(addr81);
            }
            §§goto(addr91);
         }
      }
      
      private function §1>§(param1:int) : § K§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§ K§ = null;
         for each(_loc2_ in this.§4!,§)
         {
            if(!(_loc5_ && this))
            {
               if(_loc2_.id == param1)
               {
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §5U§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§1!"§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §5U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§5U§ != param1)
            {
               return;
            }
         }
      }
   }
}
