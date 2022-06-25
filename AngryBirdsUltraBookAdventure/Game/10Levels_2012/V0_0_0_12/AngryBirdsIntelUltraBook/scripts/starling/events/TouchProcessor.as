package starling.events
{
   import §6!7§.Stage;
   import flash.geom.Point;
   
   public class TouchProcessor
   {
      
      private static const §9!2§:Number = 0.3;
      
      private static const §@b§:Number = 25;
      
      private static var §&!N§:Vector.<int>;
      
      private static var § for§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §9!2§ = 0.3;
            while(true)
            {
               §@b§ = 25;
               while(_loc1_ || TouchProcessor)
               {
                  §&!N§ = new Vector.<int>(0);
                  do
                  {
                     § for§ = new Vector.<Object>(0);
                  }
                  while(_loc2_ && _loc2_);
                  
                  if(!(_loc1_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr67:
               }
            }
         }
         §§goto(addr67);
      }
      
      private var §'!'§:Stage;
      
      private var §&z§:Number;
      
      private var §&!"§:Number;
      
      private var §&b§:§ !<§;
      
      private var §[e§:Vector.<§]!i§>;
      
      private var §1k§:Vector.<Array>;
      
      private var §1!A§:Vector.<§]!i§>;
      
      private var §4!F§:Boolean = false;
      
      private var §6!&§:Boolean = false;
      
      public function TouchProcessor(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super();
            if(_loc3_ || param1)
            {
               this.§'!'§ = param1;
               if(!(_loc4_ && param1))
               {
                  this.§&z§ = this.§&!"§ = 0;
                  if(_loc3_ || _loc2_)
                  {
                  }
                  loop3:
                  while(true)
                  {
                     §§push(this.§'!'§);
                     loop4:
                     while(true)
                     {
                        §§push(KeyboardEvent.KEY_DOWN);
                        addr108:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.§,!^§);
                           addr112:
                           while(_loc3_)
                           {
                              continue loop4;
                           }
                           addr135:
                           while(_loc3_)
                           {
                              continue loop3;
                           }
                           while(true)
                           {
                              this.§1k§ = new Vector.<Array>(0);
                              addr148:
                              while(true)
                              {
                                 this.§1!A§ = new Vector.<§]!i§>(0);
                                 §§goto(addr135);
                              }
                           }
                        }
                     }
                  }
                  addr137:
               }
               this.§[e§ = new Vector.<§]!i§>(0);
               §§goto(addr135);
            }
            §§goto(addr148);
         }
         §§goto(addr137);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§'!'§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr91:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§,!^§);
                  continue loop0;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§]!i§ = null;
         var _loc5_:§]!i§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§&z§);
            if(_loc10_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§&z§ = §§pop();
            loop0:
            while(true)
            {
               this.§&!"§ = 0;
               loop1:
               while(this.§1!A§.length > 0)
               {
                  if(_loc10_ || param1)
                  {
                     continue loop0;
                  }
                  addr121:
                  if(_loc11_)
                  {
                     continue;
                  }
                  loop37:
                  while(true)
                  {
                     loop38:
                     while(true)
                     {
                        §§push(_loc2_);
                        if(_loc10_)
                        {
                           §§push(0);
                           if(!(_loc11_ && _loc2_))
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(!(_loc11_ && this))
                                 {
                                    break loop1;
                                 }
                              }
                              else
                              {
                                 §§push(this.§&z§);
                                 if(_loc10_ || this)
                                 {
                                    §§push(§§pop() - this.§1!A§[_loc2_].timestamp);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       addr82:
                                       if(§§pop() > §9!2§)
                                       {
                                          loop39:
                                          while(true)
                                          {
                                             this.§1!A§.splice(_loc2_,1);
                                             if(_loc10_)
                                             {
                                                loop40:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc11_ && _loc2_))
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(_loc10_)
                                                      {
                                                         addr735:
                                                         §§push(int(§§pop()));
                                                         if(_loc10_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            if(_loc10_)
                                                            {
                                                               if(!_loc11_)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     break loop38;
                                                                  }
                                                                  continue loop38;
                                                               }
                                                               continue loop39;
                                                            }
                                                            addr736:
                                                            loop8:
                                                            while(true)
                                                            {
                                                               addr669:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_);
                                                                  if(_loc10_ || _loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        break loop37;
                                                                     }
                                                                     addr678:
                                                                  }
                                                                  continue loop8;
                                                               }
                                                            }
                                                            addr736:
                                                         }
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            §§goto(addr736);
                                                         }
                                                         addr735:
                                                      }
                                                      loop43:
                                                      while(true)
                                                      {
                                                         var _loc8_:* = §§pop();
                                                         if(_loc10_)
                                                         {
                                                            var _loc9_:* = this.§[e§;
                                                            loop3:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               if(!(_loc11_ && _loc3_))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!(_loc11_ && this))
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           addr288:
                                                                           if(_loc10_)
                                                                           {
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§1k§.length > 0);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc10_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             addr475:
                                                                                             §§pop();
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                §§push(§&!N§.indexOf(this.§1k§[this.§1k§.length - 1][0]) == -1);
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   addr506:
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   _loc7_ = this.§1k§.pop();
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      _loc3_ = _loc7_[0] as int;
                                                                                                   }
                                                                                                   _loc4_ = this.§;i§(_loc3_);
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      §§push(Boolean(_loc4_));
                                                                                                      loop17:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         loop18:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            loop19:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     loop21:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_.phase == §!!j§.§^!R§);
                                                                                                                        if(!_loc11_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(!(_loc11_ && _loc3_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 if(!(_loc11_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc10_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                 }
                                                                                                                                 if(!(_loc10_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             § for§.push({
                                                                                                                                                "touch":_loc4_,
                                                                                                                                                "target":_loc4_.target
                                                                                                                                             });
                                                                                                                                             addr387:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr326:
                                                                                                                                             if(_loc11_ && this)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                this.§95§.apply(this,_loc7_);
                                                                                                                                                loop27:
                                                                                                                                                while(_loc10_)
                                                                                                                                                {
                                                                                                                                                   if(_loc10_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §&!N§.push(_loc3_);
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         if(_loc10_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr326);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr387);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop16;
                                                                                                                                                      addr346:
                                                                                                                                                   }
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                addr434:
                                                                                                                                                addr431:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(_loc4_.target));
                                                                                                                                                   if(_loc11_ && this)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop17;
                                                                                                                                                }
                                                                                                                                                while(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   §§goto(addr434);
                                                                                                                                                }
                                                                                                                                                continue loop20;
                                                                                                                                             }
                                                                                                                                             addr335:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr335);
                                                                                                                                    }
                                                                                                                                    addr365:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop19;
                                                                                                                              addr406:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr431);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr406);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr346);
                                                                                                }
                                                                                                §§goto(addr506);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr669);
                                                                                             }
                                                                                             addr763:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr506);
                                                                                    }
                                                                                    §§goto(addr475);
                                                                                 }
                                                                                 §§goto(addr506);
                                                                              }
                                                                              if(!_loc11_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(!(_loc11_ && _loc3_))
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       addr525:
                                                                                       _loc9_ = § for§;
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§hasnext(_loc9_,_loc8_));
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             break loop3;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       loop9:
                                                                                       for(; §§pop(); while(true)
                                                                                       {
                                                                                          continue loop9;
                                                                                       })
                                                                                       {
                                                                                          _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = this.§;i§(_loc3_);
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(_loc4_.target);
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      continue loop9;
                                                                                                   }
                                                                                                   addr622:
                                                                                                   §§push(_loc4_.target);
                                                                                                }
                                                                                                §§pop().dispatchEvent(new TouchEvent(TouchEvent.§7!;§,this.§[e§,this.§4!F§,this.§6!&§));
                                                                                                continue loop9;
                                                                                             }
                                                                                             §§goto(addr622);
                                                                                          }
                                                                                       }
                                                                                       addr640:
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          §§push(this.§[e§.length - 1);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                §§goto(addr763);
                                                                                                addr717:
                                                                                                if(!(_loc11_ && _loc2_))
                                                                                                {
                                                                                                   break loop40;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr761:
                                                                                       }
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(this.§&!"§);
                                                                                          if(_loc10_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() + 0.00001);
                                                                                          }
                                                                                          §§pop().§&!"§ = §§pop();
                                                                                          addr702:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc11_ && _loc3_))
                                                                                             {
                                                                                                break loop7;
                                                                                             }
                                                                                             §§goto(addr736);
                                                                                          }
                                                                                       }
                                                                                       addr709:
                                                                                       while(true)
                                                                                       {
                                                                                          if(this.§1k§.length > 0)
                                                                                          {
                                                                                             §&!N§.length = § for§.length = 0;
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   continue loop43;
                                                                                                }
                                                                                             }
                                                                                             break loop39;
                                                                                          }
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             if(_loc10_ || _loc3_)
                                                                                             {
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr475);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   if(!_loc11_)
                                                                                                   {
                                                                                                      §§goto(addr689);
                                                                                                   }
                                                                                                   break loop39;
                                                                                                }
                                                                                                addr755:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr710:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_);
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr717);
                                                                                                            }
                                                                                                         }
                                                                                                         addr714:
                                                                                                      }
                                                                                                      §§goto(addr735);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr680:
                                                                                          }
                                                                                          §§goto(addr702);
                                                                                          §§goto(addr678);
                                                                                          §§goto(addr709);
                                                                                       }
                                                                                       addr689:
                                                                                       addr709:
                                                                                       return;
                                                                                       addr639:
                                                                                       addr571:
                                                                                       addr638:
                                                                                       addr645:
                                                                                    }
                                                                                    addr580:
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(0);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr586:
                                                                                          _loc8_ = §§pop();
                                                                                          if(!(_loc11_ && _loc2_))
                                                                                          {
                                                                                             addr594:
                                                                                             _loc9_ = §&!N§;
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§goto(addr637);
                                                                                             }
                                                                                             §§goto(addr607);
                                                                                          }
                                                                                          §§goto(addr640);
                                                                                       }
                                                                                       §§goto(addr714);
                                                                                    }
                                                                                    §§goto(addr475);
                                                                                 }
                                                                                 §§goto(addr586);
                                                                              }
                                                                              §§goto(addr709);
                                                                           }
                                                                           §§goto(addr640);
                                                                        }
                                                                        §§goto(addr525);
                                                                     }
                                                                     addr577:
                                                                     if(_loc10_)
                                                                     {
                                                                        §§goto(addr580);
                                                                     }
                                                                     §§goto(addr594);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                     if(!_loc11_)
                                                                     {
                                                                        §§push(_loc5_.phase);
                                                                        if(_loc10_ || _loc3_)
                                                                        {
                                                                           §§push(§!!j§.§ 0§);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(§§pop() == §§pop());
                                                                              if(!(_loc11_ && param1))
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 if(_loc10_ || _loc2_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!(_loc10_ || _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr251:
                                                                                          §§push(_loc5_.phase == §!!j§.§4!^§);
                                                                                          if(!(_loc11_ && _loc2_))
                                                                                          {
                                                                                             addr259:
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr259);
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          addr263:
                                                                                          _loc5_.§`!"§(§!!j§.§@Y§);
                                                                                       }
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                              }
                                                                              §§goto(addr259);
                                                                           }
                                                                        }
                                                                        §§goto(addr251);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§goto(addr577);
                                                                  }
                                                                  §§goto(addr639);
                                                               }
                                                               else
                                                               {
                                                                  _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                  if(!(_loc11_ && param1))
                                                                  {
                                                                     if(_loc6_.touch.target != _loc6_.target)
                                                                     {
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           addr556:
                                                                           _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§7!;§,this.§[e§,this.§4!F§,this.§6!&§));
                                                                        }
                                                                     }
                                                                     §§goto(addr571);
                                                                  }
                                                                  §§goto(addr556);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr288);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr735);
                                                }
                                                addr35:
                                                addr734:
                                             }
                                             break;
                                          }
                                          while(true)
                                          {
                                             this.§[e§.splice(_loc2_,1);
                                             §§goto(addr755);
                                          }
                                          addr749:
                                       }
                                       §§goto(addr35);
                                    }
                                    §§goto(addr761);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr525);
                           }
                           break loop37;
                        }
                        §§goto(addr734);
                     }
                  }
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        §§goto(addr680);
                     }
                     else if(this.§[e§[_loc2_].phase == §!!j§.§?c§)
                     {
                        §§goto(addr749);
                     }
                     §§goto(addr710);
                  }
               }
               §§goto(addr645);
            }
         }
         §§goto(addr123);
      }
      
      public function §]!<§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§1k§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§6!&§);
               loop1:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc7_ || param3)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§pop();
                              addr161:
                              loop11:
                              while(!_loc6_)
                              {
                                 §§push(this.§]?§);
                                 while(true)
                                 {
                                    if(!(_loc7_ || param2))
                                    {
                                       continue loop10;
                                       continue loop11;
                                    }
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                           addr160:
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr160);
               }
            }
         }
         §§goto(addr47);
      }
      
      private function §95§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§]!i§ = this.§;i§(param1);
         if(_loc8_)
         {
            if(_loc6_ == null)
            {
               if(!_loc7_)
               {
                  _loc6_ = new §]!i§(param1,param3,param4,param2,null);
                  if(_loc8_ || param1)
                  {
                     this.§"+§(_loc6_);
                     addr55:
                     _loc6_.setPosition(param3,param4);
                     if(!_loc7_)
                     {
                        _loc6_.§`!"§(param2);
                     }
                     loop10:
                     while(true)
                     {
                        §§push(_loc6_);
                        §§push(this.§&z§);
                        if(!_loc7_)
                        {
                           §§push(§§pop() + this.§&!"§);
                        }
                        §§pop().§7Q§(§§pop());
                        addr209:
                        loop11:
                        while(true)
                        {
                           §§push(param2);
                           loop8:
                           while(true)
                           {
                              §§push(§!!j§.§^!R§);
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!§§pop())
                                    {
                                       break;
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             _loc6_.§,!g§(this.§'!'§.hitTest(_loc5_,true));
                                             addr161:
                                             while(true)
                                             {
                                             }
                                             addr116:
                                             if(_loc7_ && param1)
                                             {
                                                continue;
                                             }
                                             if(!(_loc7_ && param2))
                                             {
                                                §§goto(addr63);
                                             }
                                             else
                                             {
                                                addr197:
                                             }
                                             while(true)
                                             {
                                                §§push(param2);
                                                loop1:
                                                while(true)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(§!!j§.§ 0§);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc8_ || param3)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         break loop3;
                                                      }
                                                      continue loop7;
                                                   }
                                                   addr67:
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      if(!(_loc8_ || this))
                                                      {
                                                         continue loop1;
                                                      }
                                                      §§push(§!!j§.§ 0§);
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc7_ && param2)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  this.§<!%§(_loc6_);
                                                               }
                                                               §§goto(addr116);
                                                            }
                                                            addr63:
                                                         }
                                                         continue loop9;
                                                         return;
                                                      }
                                                      §§goto(addr138);
                                                   }
                                                   continue loop9;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr67);
                                    }
                                 }
                                 §§pop();
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr55);
               }
               §§goto(addr197);
            }
            §§goto(addr55);
         }
         §§goto(addr209);
      }
      
      private function §,!^§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = false;
         var _loc3_:§]!i§ = null;
         var _loc4_:§]!i§ = null;
         if(_loc5_ || this)
         {
            §§push(param1.keyCode);
            if(_loc5_)
            {
               §§push(17);
               if(_loc5_ || this)
               {
                  §§push(§§pop() == §§pop());
                  loop0:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(§§pop());
                        loop1:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr219:
                                 while(true)
                                 {
                                    §§pop();
                                    addr220:
                                    while(true)
                                    {
                                       §§push(param1.keyCode);
                                       if(!_loc6_)
                                       {
                                          §§push(15);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() == §§pop());
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             addr185:
                                          }
                                          §§goto(addr556);
                                       }
                                       §§goto(addr555);
                                    }
                                 }
                                 addr219:
                              }
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(param1.keyCode);
                                       break;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§6!&§);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop7:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                this.§6!&§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(this.§]?§);
                                                   loop9:
                                                   while(_loc5_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop());
                                                         loop10:
                                                         while(!_loc6_)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr165:
                                                                     while(true)
                                                                     {
                                                                        addr72:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§push(this.§6!&§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              §§push(§§pop() == §§pop());
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(_loc6_ && this)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(!§§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr108:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr219);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr185);
                                                                              }
                                                                              §§goto(addr108);
                                                                           }
                                                                           break;
                                                                        }
                                                                        if(!(_loc5_ || param1))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr164:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr165);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr552:
                                                                  }
                                                                  §§goto(addr564);
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                             §§goto(addr564);
                                          }
                                       }
                                    }
                                 }
                                 addr555:
                                 §§goto(addr556);
                              }
                           }
                        }
                     }
                     §§goto(addr219);
                  }
               }
               addr556:
               if(§§pop() == §§pop())
               {
                  if(!(_loc6_ && this))
                  {
                     addr564:
                     this.§4!F§ = param1.type == KeyboardEvent.KEY_DOWN;
                  }
                  §§goto(addr572);
               }
               addr572:
               return;
            }
            §§goto(addr555);
         }
         §§goto(addr564);
      }
      
      private function §<!%§(param1:§]!i§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§]!i§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§]!i§ = null;
         §§push(§@b§);
         if(_loc8_ || _loc3_)
         {
            §§push(§§pop() * §@b§);
            if(!_loc9_)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§1!A§)
            {
               if(_loc8_ || param1)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc8_)
                  {
                     _loc5_ = §§pop();
                     addr103:
                     if(!(_loc9_ && _loc2_))
                     {
                        §§push(_loc5_);
                     }
                     _loc2_ = _loc4_;
                     break;
                  }
                  if(§§pop() > _loc3_)
                  {
                     continue;
                  }
               }
               §§goto(addr103);
            }
            if(!_loc9_)
            {
               if(!_loc2_)
               {
                  param1.§;!i§(1);
                  loop1:
                  while(true)
                  {
                     if(!(_loc9_ && this))
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           loop2:
                           while(true)
                           {
                              this.§1!A§.push(param1.clone());
                              if(_loc9_)
                              {
                                 continue loop1;
                              }
                              if(!(_loc9_ && this))
                              {
                                 break;
                              }
                              addr177:
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                           return;
                           addr134:
                        }
                        else
                        {
                           addr181:
                        }
                        while(true)
                        {
                           param1.§;!i§(_loc2_.§else § + 1);
                        }
                        while(true)
                        {
                           this.§1!A§.splice(this.§1!A§.indexOf(_loc2_),1);
                        }
                     }
                     §§goto(addr177);
                  }
               }
               §§goto(addr181);
            }
            §§goto(addr134);
         }
         §§goto(addr38);
      }
      
      private function §"+§(param1:§]!i§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§[e§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(!_loc3_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc3_ && param1))
                     {
                        if(_loc4_)
                        {
                           this.§[e§.push(param1);
                           addr61:
                           if(!(_loc3_ && param1))
                           {
                              break;
                           }
                           while(!_loc4_)
                           {
                              while(true)
                              {
                                 this.§[e§.splice(_loc2_,1);
                              }
                           }
                           continue;
                           addr86:
                        }
                        while(true)
                        {
                           addr79:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 addr84:
                                 §§push(§§pop() - 1);
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr85:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       §§goto(addr86);
                                    }
                                 }
                                 addr84:
                              }
                              §§goto(addr84);
                           }
                           §§goto(addr99);
                        }
                     }
                     §§goto(addr61);
                  }
                  else if(this.§[e§[_loc2_].id == param1.id)
                  {
                     §§goto(addr99);
                  }
                  §§goto(addr79);
               }
               §§goto(addr84);
            }
            §§goto(addr85);
         }
      }
      
      private function §;i§(param1:int) : §]!i§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§]!i§ = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§[e§)
         {
            if(_loc5_ || _loc3_)
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
      
      public function get §]?§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§&b§ == null);
         if(!(_loc2_ && this))
         {
            return !§§pop();
         }
      }
      
      public function set §]?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§]?§ != param1)
            {
               return;
            }
         }
      }
   }
}
