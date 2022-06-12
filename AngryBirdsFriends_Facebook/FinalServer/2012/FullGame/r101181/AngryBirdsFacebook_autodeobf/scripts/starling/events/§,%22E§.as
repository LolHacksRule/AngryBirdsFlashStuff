package starling.events
{
   import §1!$§.Stage;
   import flash.geom.Point;
   
   public class §,"E§
   {
      
      private static const §!$§:Number = 0.3;
      
      private static const §`N§:Number = 25;
      
      private static var §5!G§:Vector.<int>;
      
      private static var §7!Z§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §!$§ = 0.3;
         }
         while(true)
         {
            §`N§ = 25;
            while(_loc1_ || §,"E§)
            {
               §5!G§ = new Vector.<int>(0);
               while(_loc1_)
               {
                  §7!Z§ = new Vector.<Object>(0);
                  if(_loc1_ || §,"E§)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §^!w§:Stage;
      
      private var §0!_§:Number;
      
      private var §]f§:Number;
      
      private var §`d§:§#!Y§;
      
      private var §`!H§:Vector.<§6!V§>;
      
      private var §4U§:Vector.<Array>;
      
      private var §]"&§:Vector.<§6!V§>;
      
      private var §6W§:Boolean = false;
      
      private var §1"!§:Boolean = false;
      
      public function §,"E§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            if(_loc3_ || param1)
            {
               addr27:
               this.§^!w§ = param1;
               if(!(_loc4_ && _loc3_))
               {
                  this.§0!_§ = this.§]f§ = 0;
                  if(_loc3_ || _loc3_)
                  {
                     this.§`!H§ = new Vector.<§6!V§>(0);
                     while(true)
                     {
                        this.§4U§ = new Vector.<Array>(0);
                        loop1:
                        for(; !_loc4_; if(_loc3_ || _loc3_)
                        {
                           return;
                        })
                        {
                           this.§]"&§ = new Vector.<§6!V§>(0);
                           while(true)
                           {
                              §§push(this.§^!w§);
                              addr105:
                              loop3:
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 addr107:
                                 while(true)
                                 {
                                    §§pop().addEventListener(§§pop(),this.§!-§);
                                    continue loop3;
                                 }
                              }
                              addr87:
                              if(_loc3_ || this)
                              {
                                 continue loop1;
                              }
                           }
                        }
                     }
                     addr151:
                  }
                  while(true)
                  {
                     §§push(this.§^!w§);
                     if(_loc3_)
                     {
                        §§push(KeyboardEvent.KEY_UP);
                        if(!_loc4_)
                        {
                           §§pop().addEventListener(§§pop(),this.§!-§);
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr107);
                     }
                     break;
                  }
                  §§goto(addr105);
               }
               §§goto(addr130);
            }
            §§goto(addr151);
         }
         §§goto(addr27);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§^!w§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr102:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§!-§);
                  continue loop0;
               }
            }
         }
         §§goto(addr25);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§6!V§ = null;
         var _loc5_:§6!V§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!(_loc10_ && param1))
         {
            §§push(this);
            §§push(this.§0!_§);
            if(_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§0!_§ = §§pop();
            loop0:
            while(true)
            {
               this.§]f§ = 0;
               loop1:
               while(this.§]"&§.length > 0)
               {
                  if(!_loc10_)
                  {
                     _loc2_ = int(this.§]"&§.length - 1);
                  }
                  if(_loc10_ && _loc3_)
                  {
                     continue;
                  }
                  if(_loc10_)
                  {
                     continue loop0;
                  }
                  loop29:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc10_ && param1))
                        {
                           §§push(0);
                           if(!(_loc10_ && this))
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc11_ || param1)
                                 {
                                    break loop1;
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§]f§);
                                    if(_loc11_)
                                    {
                                       §§push(§§pop() + 0.00001);
                                    }
                                    §§pop().§]f§ = §§pop();
                                    while(true)
                                    {
                                       if(_loc11_)
                                       {
                                          while(true)
                                          {
                                             §§goto(addr566);
                                          }
                                          addr634:
                                       }
                                       §§goto(addr639);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(this.§0!_§);
                                 if(_loc11_ || _loc3_)
                                 {
                                    §§push(§§pop() - this.§]"&§[_loc2_].timestamp);
                                    if(_loc11_)
                                    {
                                       if(§§pop() > §!$§)
                                       {
                                          if(_loc11_ || this)
                                          {
                                             this.§]"&§.splice(_loc2_,1);
                                             if(_loc11_ || this)
                                             {
                                                addr41:
                                                §§push(_loc2_);
                                                if(_loc11_ || param1)
                                                {
                                                   §§push(§§pop() - 1);
                                                   if(!(_loc11_ || param1))
                                                   {
                                                      break;
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc10_ && this)
                                                   {
                                                      break loop1;
                                                   }
                                                   if(false)
                                                   {
                                                      continue loop29;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr662);
                                             }
                                             §§goto(addr634);
                                          }
                                          §§goto(addr441);
                                       }
                                       §§goto(addr41);
                                    }
                                 }
                              }
                              §§goto(addr661);
                           }
                           §§goto(addr604);
                        }
                        break;
                     }
                     while(true)
                     {
                        var _loc8_:* = §§pop();
                        if(!_loc10_)
                        {
                           §§goto(addr447);
                        }
                        §§goto(addr502);
                     }
                  }
               }
               addr566:
               loop2:
               while(true)
               {
                  if(this.§4U§.length <= 0)
                  {
                     if(!(_loc11_ || this))
                     {
                        continue loop27;
                     }
                     if(_loc11_)
                     {
                        if(_loc11_ || param1)
                        {
                           break;
                        }
                        loop28:
                        while(true)
                        {
                           addr590:
                           addr638:
                           loop21:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc10_ && param1))
                              {
                                 if(!_loc10_)
                                 {
                                    if(!_loc10_)
                                    {
                                       while(true)
                                       {
                                          §§push(0);
                                          addr604:
                                          while(true)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   continue loop27;
                                                }
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   continue loop41;
                                                }
                                                addr651:
                                                loop23:
                                                while(true)
                                                {
                                                   this.§`!H§.splice(_loc2_,1);
                                                   addr656:
                                                   while(true)
                                                   {
                                                      continue loop23;
                                                   }
                                                }
                                                addr651:
                                             }
                                             else if(this.§`!H§[_loc2_].phase == §"U§.§&!I§)
                                             {
                                                §§goto(addr651);
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                             }
                                          }
                                       }
                                       continue loop37;
                                       addr603:
                                    }
                                    else
                                    {
                                       addr662:
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       continue loop28;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() - 1);
                                    break loop21;
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr639:
                              while(true)
                              {
                                 §§goto(addr590);
                              }
                           }
                        }
                        addr663:
                     }
                     §§goto(addr656);
                  }
                  else
                  {
                     §5!G§.length = §7!Z§.length = 0;
                     if(!_loc10_)
                     {
                        §§push(0);
                        if(_loc11_ || param1)
                        {
                           _loc8_ = §§pop();
                           if(_loc11_ || _loc3_)
                           {
                              var _loc9_:* = this.§`!H§;
                              loop3:
                              while(true)
                              {
                                 §§push(§§hasnext(_loc9_,_loc8_));
                                 if(_loc11_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          addr502:
                                          if(_loc11_)
                                          {
                                             if(_loc11_ || param1)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§4U§.length > 0);
                                                   if(_loc11_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            addr422:
                                                            §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               addr438:
                                                               if(§5!G§.indexOf(this.§4U§[this.§4U§.length - 1][0]) != -1)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(0);
                                                                     if(!_loc10_)
                                                                     {
                                                                        break loop30;
                                                                     }
                                                                     §§goto(addr638);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc3_ = (_loc7_ = this.§4U§.pop())[0] as int;
                                                                  §§push(Boolean(_loc4_ = this.§"!Q§(_loc3_)));
                                                                  if(_loc11_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc11_ || _loc2_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc11_ || _loc2_)
                                                                           {
                                                                              §§pop();
                                                                              if(_loc11_ || this)
                                                                              {
                                                                                 §§push(_loc4_.phase == §"U§.§<$§);
                                                                                 if(_loc11_ || _loc3_)
                                                                                 {
                                                                                    addr402:
                                                                                    §§push(Boolean(§§pop()));
                                                                                    loop13:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr403:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr404:
                                                                                             loop10:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                addr405:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(_loc4_.target));
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr404:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §7!Z§.push({
                                                                                                      "touch":_loc4_,
                                                                                                      "target":_loc4_.target
                                                                                                   });
                                                                                                   addr387:
                                                                                                   while(true)
                                                                                                   {
                                                                                                   }
                                                                                                   addr354:
                                                                                                   if(!(_loc11_ || _loc2_))
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                   {
                                                                                                      §5!G§.push(_loc3_);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§^!N§.apply(this,_loc7_);
                                                                                                            }
                                                                                                            addr341:
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      while(_loc11_ || _loc2_)
                                                                                                      {
                                                                                                         §§goto(addr354);
                                                                                                      }
                                                                                                      §§goto(addr387);
                                                                                                   }
                                                                                                   §§goto(addr405);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr341);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr402:
                                                                                 }
                                                                                 §§goto(addr404);
                                                                              }
                                                                              §§goto(addr405);
                                                                           }
                                                                           §§goto(addr404);
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                     §§goto(addr403);
                                                                  }
                                                                  §§goto(addr402);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      §§goto(addr438);
                                                   }
                                                   §§goto(addr422);
                                                }
                                                while(true)
                                                {
                                                   §§push(0);
                                                   if(_loc11_)
                                                   {
                                                      _loc8_ = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         _loc9_ = §5!G§;
                                                         if(!(_loc10_ && _loc2_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               break loop3;
                                                            }
                                                            addr561:
                                                            while(true)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§`!H§.length - 1);
                                                                     addr661:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr662);
                                                                     }
                                                                  }
                                                                  addr564:
                                                               }
                                                               §§goto(addr656);
                                                            }
                                                            addr558:
                                                            addr561:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push((_loc4_ = this.§"!Q§(_loc3_)).target);
                                                            if(_loc11_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr547:
                                                                     _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§2t§,this.§`!H§,this.§6W§,this.§1"!§));
                                                                  }
                                                               }
                                                               §§goto(addr558);
                                                            }
                                                            §§goto(addr547);
                                                         }
                                                         addr533:
                                                      }
                                                      §§goto(addr561);
                                                   }
                                                   §§goto(addr603);
                                                }
                                                addr510:
                                             }
                                             §§goto(addr651);
                                          }
                                          while(true)
                                          {
                                             if(_loc11_ || this)
                                             {
                                                §§goto(addr510);
                                             }
                                             §§goto(addr564);
                                          }
                                          addr502:
                                       }
                                       addr499:
                                       if(_loc11_)
                                       {
                                          §§goto(addr502);
                                       }
                                       §§goto(addr561);
                                    }
                                    else
                                    {
                                       _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                       §§push(_loc5_.phase);
                                       if(!_loc10_)
                                       {
                                          §§push(§"U§.§&a§);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc11_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!(_loc10_ && this))
                                                   {
                                                      §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         addr240:
                                                         if(_loc5_.phase != §"U§.§#1§)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc10_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      _loc5_.§>!I§(§"U§.§'!=§);
                                                      continue;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr240);
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                    §§goto(addr533);
                                 }
                                 §§goto(addr561);
                              }
                              addr559:
                           }
                           while(true)
                           {
                              _loc9_ = §7!Z§;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc9_,_loc8_));
                                 if(_loc11_ || _loc3_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                       if(_loc6_.touch.target != _loc6_.target)
                                       {
                                          if(_loc11_ || param1)
                                          {
                                             _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§2t§,this.§`!H§,this.§6W§,this.§1"!§));
                                          }
                                       }
                                       continue;
                                    }
                                    if(_loc11_ || this)
                                    {
                                       §§goto(addr499);
                                    }
                                    §§goto(addr561);
                                 }
                                 §§goto(addr559);
                              }
                           }
                           addr447:
                        }
                        §§goto(addr662);
                     }
                  }
                  §§goto(addr663);
                  continue loop37;
               }
               return;
            }
         }
         §§goto(addr133);
      }
      
      public function §#u§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§4U§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§1"!§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc7_ || param3))
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 loop10:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc6_)
                                       {
                                          this.§`d§.§'R§(param3,param4,this.§6W§);
                                       }
                                       loop8:
                                       while(!(_loc6_ && param3))
                                       {
                                          this.§4U§.unshift([1,param2,this.§`d§.§ ""§,this.§`d§.§5!R§]);
                                          if(!(_loc6_ && param1))
                                          {
                                             if(_loc7_)
                                             {
                                                addr20:
                                                return;
                                                addr46:
                                             }
                                             loop5:
                                             while(true)
                                             {
                                                §§push(this.§5">§);
                                                if(_loc7_ || this)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc7_ || param3)
                                                   {
                                                      continue loop1;
                                                   }
                                                }
                                                addr117:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         §§pop();
                                                         break loop8;
                                                      }
                                                      break;
                                                   }
                                                   addr151:
                                                   addr144:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      continue loop5;
                                                   }
                                                   §§push(param1 == 0);
                                                   if(_loc7_)
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                continue loop2;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       continue loop0;
                                       addr64:
                                    }
                                    §§goto(addr20);
                                 }
                              }
                              §§goto(addr117);
                           }
                           continue;
                           addr107:
                        }
                        §§goto(addr151);
                     }
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      private function §^!N§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§6!V§;
         if((_loc6_ = this.§"!Q§(param1)) == null)
         {
            if(!_loc8_)
            {
               _loc6_ = new §6!V§(param1,param3,param4,param2,null);
               if(_loc7_)
               {
                  this.§9!<§(_loc6_);
                  addr46:
                  _loc6_.setPosition(param3,param4);
                  if(!_loc8_)
                  {
                     _loc6_.§>!I§(param2);
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc6_);
                     §§push(this.§0!_§);
                     if(_loc7_)
                     {
                        §§push(§§pop() + this.§]f§);
                     }
                     §§pop().§'Z§(§§pop());
                     loop1:
                     while(true)
                     {
                        §§push(param2);
                        loop2:
                        while(true)
                        {
                           §§push(§"U§.§<$§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              loop4:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§pop();
                                       addr151:
                                       while(_loc7_)
                                       {
                                          §§push(param2);
                                          while(_loc7_)
                                          {
                                             §§push(§"U§.§&a§);
                                             while(_loc7_)
                                             {
                                                §§push(§§pop() == §§pop());
                                                if(_loc8_)
                                                {
                                                   continue loop5;
                                                }
                                                if(_loc8_ && param3)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             continue loop3;
                                          }
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && param1))
                                       {
                                          if(!(_loc8_ && param1))
                                          {
                                             _loc6_.§;"#§(this.§^!w§.hitTest(_loc5_,true));
                                             loop10:
                                             for(; _loc7_; if(!(_loc7_ || param3))
                                             {
                                                continue;
                                             },this.§9%§(_loc6_),§§goto(addr88))
                                             {
                                                while(true)
                                                {
                                                   §§push(param2);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§"U§.§&a§);
                                                      if(_loc7_)
                                                      {
                                                         if(§§pop() == §§pop())
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            addr88:
                                                            addr88:
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr95);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr91);
                                             }
                                             continue loop0;
                                             addr140:
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr140);
                                    }
                                    §§goto(addr57);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr88);
         }
         §§goto(addr46);
      }
      
      private function §!-§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§6!V§ = null;
         var _loc4_:§6!V§ = null;
         if(!_loc5_)
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 §§push(param1.keyCode);
                                 if(!_loc5_)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    §§push(15);
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(§§pop() == §§pop());
                                       while(true)
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(param1.keyCode);
                                                break loop4;
                                             }
                                             if(_loc6_)
                                             {
                                                §§push(this.§1"!§);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      if(_loc6_ || param1)
                                                      {
                                                         this.§1"!§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(this.§5">§);
                                                            if(_loc6_ || param1)
                                                            {
                                                               if(!(_loc6_ || param1))
                                                               {
                                                                  continue loop3;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop11:
                                                               while(_loc6_ || param1)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     addr501:
                                                                     return;
                                                                     addr131:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop14:
                                                                     while(§§pop())
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        §§push(this.§`d§);
                                                                        while(true)
                                                                        {
                                                                           §§pop().visible = this.§1"!§;
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(this.§`d§);
                                                                           addr103:
                                                                           continue loop9;
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§pop().§[!4§(this.§^!w§.stageWidth / 2,this.§^!w§.stageHeight / 2);
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(false)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    §§push(this.§1"!§);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop11;
                                                                                    }
                                                                                    §§push(§§pop() == §§pop());
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       addr64:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(!§§pop());
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(_loc5_ && _loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§goto(addr131);
                                                                                 }
                                                                                 §§goto(addr64);
                                                                              }
                                                                              continue loop8;
                                                                              addr48:
                                                                           }
                                                                           _loc3_ = this.§"!Q§(0);
                                                                           _loc4_ = this.§"!Q§(1);
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 addr474:
                                                                                 this.§`d§.§'R§(_loc3_.globalX,_loc3_.globalY);
                                                                                 addr481:
                                                                              }
                                                                              addr459:
                                                                              §§push(Boolean(_loc2_));
                                                                              if(Boolean(_loc2_))
                                                                              {
                                                                                 addr460:
                                                                                 §§pop();
                                                                                 addr461:
                                                                                 §§push(Boolean(_loc4_));
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    addr449:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr450:
                                                                                       §§pop();
                                                                                       addr451:
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          addr416:
                                                                                          addr421:
                                                                                          addr418:
                                                                                          addr419:
                                                                                          addr420:
                                                                                          if(_loc4_.phase != §"U§.§&!I§)
                                                                                          {
                                                                                             addr422:
                                                                                             this.§4U§.unshift([1,§"U§.§&!I§,_loc4_.globalX,_loc4_.globalY]);
                                                                                             addr433:
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                             break loop14;
                                                                                          }
                                                                                          addr379:
                                                                                          §§push(Boolean(this.§1"!§));
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!(_loc5_ && param1))
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      addr394:
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(!(_loc5_ && _loc2_))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr404:
                                                                                                               if(_loc6_ || param1)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr412:
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     addr326:
                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                     {
                                                                                                                        addr337:
                                                                                                                        §§push(_loc3_.phase);
                                                                                                                        §§push(§"U§.§&a§);
                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                        {
                                                                                                                           addr345:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 addr349:
                                                                                                                                 if(!(_loc5_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc5_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc6_ || this)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr371:
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             addr259:
                                                                                                                                             §§push(_loc3_.phase);
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(§"U§.§#1§);
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() == §§pop());
                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc5_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  addr289:
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr291:
                                                                                                                                                                     this.§4U§.unshift([1,§"U§.§&a§,this.§`d§.§ ""§,this.§`d§.§5!R§]);
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc5_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc5_ && this)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr461);
                                                                                                                                                                           }
                                                                                                                                                                           break loop14;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr326);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr371);
                                                                                                                                                                  }
                                                                                                                                                                  this.§4U§.unshift([1,§"U§.§<$§,this.§`d§.§ ""§,this.§`d§.§5!R§]);
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc5_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr259);
                                                                                                                                                                              }
                                                                                                                                                                              break loop14;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr451);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr412);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr291);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr379);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr412);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr345);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr349);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr337);
                                                                                                                                                }
                                                                                                                                                §§goto(addr416);
                                                                                                                                             }
                                                                                                                                             §§goto(addr337);
                                                                                                                                          }
                                                                                                                                          §§goto(addr422);
                                                                                                                                       }
                                                                                                                                       §§goto(addr461);
                                                                                                                                    }
                                                                                                                                    §§goto(addr421);
                                                                                                                                 }
                                                                                                                                 §§goto(addr404);
                                                                                                                              }
                                                                                                                              §§goto(addr289);
                                                                                                                           }
                                                                                                                           §§goto(addr394);
                                                                                                                        }
                                                                                                                        §§goto(addr418);
                                                                                                                     }
                                                                                                                     §§goto(addr433);
                                                                                                                  }
                                                                                                                  break loop14;
                                                                                                               }
                                                                                                               §§goto(addr450);
                                                                                                            }
                                                                                                            §§goto(addr412);
                                                                                                         }
                                                                                                         §§goto(addr459);
                                                                                                      }
                                                                                                      §§goto(addr449);
                                                                                                   }
                                                                                                   §§goto(addr459);
                                                                                                }
                                                                                                §§goto(addr460);
                                                                                             }
                                                                                             §§goto(addr419);
                                                                                          }
                                                                                          §§goto(addr404);
                                                                                       }
                                                                                       §§goto(addr474);
                                                                                    }
                                                                                    §§goto(addr420);
                                                                                 }
                                                                                 §§goto(addr459);
                                                                              }
                                                                              §§goto(addr449);
                                                                           }
                                                                           §§goto(addr422);
                                                                        }
                                                                     }
                                                                     §§goto(addr501);
                                                                  }
                                                                  §§goto(addr501);
                                                               }
                                                               continue loop2;
                                                            }
                                                         }
                                                      }
                                                      addr494:
                                                      this.§6W§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                      §§goto(addr501);
                                                   }
                                                }
                                             }
                                             §§goto(addr501);
                                          }
                                       }
                                       addr169:
                                    }
                                    if(§§pop() == §§pop())
                                    {
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§goto(addr494);
                                       }
                                    }
                                    §§goto(addr501);
                                 }
                                 break;
                              }
                              §§goto(addr486);
                           }
                        }
                        §§goto(addr169);
                     }
                  }
               }
               §§goto(addr486);
            }
         }
         §§goto(addr501);
      }
      
      private function §9%§(param1:§6!V§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§6!V§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§6!V§ = null;
         §§push(§`N§);
         if(_loc8_)
         {
            §§push(§§pop() * §`N§);
            if(_loc8_ || this)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§]"&§)
         {
            if(_loc8_ || _loc2_)
            {
               §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
               if(_loc8_ || _loc2_)
               {
                  §§push(§§pop());
                  if(!_loc9_)
                  {
                     _loc5_ = §§pop();
                     addr97:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr99:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr97);
            }
            §§goto(addr99);
         }
         if(_loc8_ || param1)
         {
            if(_loc2_)
            {
               if(_loc8_)
               {
                  addr168:
                  param1.§>;§(_loc2_.§!P§ + 1);
               }
               while(true)
               {
                  this.§]"&§.splice(this.§]"&§.indexOf(_loc2_),1);
                  loop2:
                  while(!(_loc9_ && this))
                  {
                     while(true)
                     {
                        this.§]"&§.push(param1.clone());
                        if(_loc8_)
                        {
                           break;
                        }
                        continue loop2;
                        while(true)
                        {
                           if(_loc9_)
                           {
                              continue loop2;
                           }
                           §§goto(addr146);
                        }
                        addr146:
                     }
                     return;
                  }
               }
            }
            else
            {
               param1.§>;§(1);
            }
            §§goto(addr134);
         }
         §§goto(addr168);
      }
      
      private function §9!<§(param1:§6!V§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§`!H§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() < 0)
                  {
                     if(_loc4_ || _loc2_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           this.§`!H§.push(param1);
                           addr79:
                           if(!_loc3_)
                           {
                              break;
                           }
                           while(_loc3_)
                           {
                              while(true)
                              {
                                 this.§`!H§.splice(_loc2_,1);
                              }
                           }
                           continue;
                           addr86:
                        }
                        while(true)
                        {
                           addr82:
                           while(true)
                           {
                              §§push(_loc2_);
                              addr84:
                              while(true)
                              {
                                 §§push(§§pop() - 1);
                                 addr85:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§goto(addr86);
                                 }
                              }
                           }
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr79);
                  }
                  else if(this.§`!H§[_loc2_].id == param1.id)
                  {
                     §§goto(addr99);
                  }
                  §§goto(addr82);
               }
               §§goto(addr84);
            }
            §§goto(addr85);
         }
      }
      
      private function §"!Q§(param1:int) : §6!V§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§6!V§ = null;
         for each(_loc2_ in this.§`!H§)
         {
            if(!(_loc6_ && _loc2_))
            {
               if(_loc2_.id == param1)
               {
                  if(_loc5_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §5">§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§`d§ == null);
         if(_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function set §5">§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§5">§ != param1)
            {
               return;
            }
         }
      }
   }
}
