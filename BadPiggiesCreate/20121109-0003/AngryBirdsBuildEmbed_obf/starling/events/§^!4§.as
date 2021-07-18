package starling.events
{
   import §-!`§.Stage;
   import flash.geom.Point;
   
   public class §^!4§
   {
      
      private static const §1p§:Number = 0.3;
      
      private static const §=4§:Number = 25;
      
      private static var §&o§:Vector.<int>;
      
      private static var §&!n§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1p§ = 0.3;
            if(!_loc1_)
            {
               addr44:
               §=4§ = 25;
               if(_loc2_)
               {
                  §§goto(addr49);
               }
               §§goto(addr64);
            }
            addr49:
            §&o§ = new Vector.<int>(0);
            if(_loc2_ || _loc1_)
            {
               addr64:
               §&!n§ = new Vector.<Object>(0);
            }
            return;
         }
         §§goto(addr44);
      }
      
      private var §"$§:Stage;
      
      private var §3!q§:Number;
      
      private var §1_§:Number;
      
      private var §-X§:§!!]§;
      
      private var §9!N§:Vector.<§,s§>;
      
      private var §]-§:Vector.<Array>;
      
      private var §]!m§:Vector.<§,s§>;
      
      private var §;!c§:Boolean = false;
      
      private var § in§:Boolean = false;
      
      public function §^!4§(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            if(_loc3_ || _loc3_)
            {
               this.§"$§ = param1;
            }
         }
         this.§3!q§ = this.§1_§ = 0;
         if(_loc3_)
         {
            this.§9!N§ = new Vector.<§,s§>(0);
            if(!(_loc4_ && this))
            {
               this.§]-§ = new Vector.<Array>(0);
               if(!_loc4_)
               {
                  this.§]!m§ = new Vector.<§,s§>(0);
                  addr94:
                  §§push(this.§"$§);
                  if(!_loc4_)
                  {
                     §§push(KeyboardEvent.KEY_DOWN);
                     if(!_loc4_)
                     {
                        §§pop().addEventListener(§§pop(),this.onKey);
                        addr107:
                        §§push(this.§"$§);
                        §§push(KeyboardEvent.KEY_UP);
                     }
                     §§pop().addEventListener(§§pop(),this.onKey);
                     return;
                  }
                  §§goto(addr107);
               }
               §§goto(addr94);
            }
            §§goto(addr107);
         }
         §§goto(addr94);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§"$§);
            if(_loc2_)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               if(_loc2_)
               {
                  §§pop().removeEventListener(§§pop(),this.onKey);
                  if(!(_loc1_ && this))
                  {
                     addr66:
                     this.§"$§.removeEventListener(KeyboardEvent.KEY_UP,this.onKey);
                     if(_loc2_ || this)
                     {
                        §§push(this.§-X§);
                        if(!(_loc1_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                           }
                           §§goto(addr91);
                        }
                        §§pop().dispose();
                     }
                  }
                  addr91:
                  if(!_loc1_)
                  {
                     §§push(this.§-X§);
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§,s§ = null;
         var _loc5_:§,s§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(!_loc11_)
         {
            §§push(this);
            §§push(this.§3!q§);
            if(!(_loc11_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§3!q§ = §§pop();
            if(!_loc11_)
            {
               this.§1_§ = 0;
               if(_loc10_ || param1)
               {
                  if(this.§]!m§.length > 0)
                  {
                     if(!(_loc11_ && this))
                     {
                        addr71:
                        _loc2_ = int(this.§]!m§.length - 1);
                        addr77:
                        while(true)
                        {
                           §§push(_loc2_);
                           §§push(0);
                           if(_loc10_ || this)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc10_)
                                 {
                                    §§goto(addr139);
                                 }
                                 §§goto(addr505);
                              }
                              else
                              {
                                 §§push(this.§3!q§);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() - this.§]!m§[_loc2_].timestamp);
                                    if(!(_loc11_ && this))
                                    {
                                       if(§§pop() > §1p§)
                                       {
                                          this.§]!m§.splice(_loc2_,1);
                                          if(_loc10_ || _loc2_)
                                          {
                                             addr110:
                                             §§push(_loc2_);
                                             if(_loc10_ || _loc2_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr556);
                                          }
                                          §§goto(addr505);
                                       }
                                       §§goto(addr110);
                                    }
                                 }
                              }
                              §§goto(addr510);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§goto(addr563);
                           }
                           else if(this.§9!N§[_loc2_].phase == §21§.§<w§)
                           {
                              if(_loc10_ || this)
                              {
                                 §§goto(addr533);
                              }
                           }
                           §§goto(addr555);
                        }
                     }
                     §§goto(addr77);
                  }
                  addr139:
                  loop0:
                  while(this.§]-§.length > 0)
                  {
                     §&o§.length = §&!n§.length = 0;
                     §§push(0);
                     if(!_loc11_)
                     {
                        var _loc8_:* = §§pop();
                        if(!_loc11_)
                        {
                           var _loc9_:* = this.§9!N§;
                           loop1:
                           while(true)
                           {
                              §§push(§§hasnext(_loc9_,_loc8_));
                              if(!_loc11_)
                              {
                                 if(!§§pop())
                                 {
                                    if(_loc10_)
                                    {
                                       if(!_loc11_)
                                       {
                                          if(!(_loc11_ && _loc2_))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§]-§.length > 0);
                                                if(!_loc11_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         addr362:
                                                         §§pop();
                                                         §§push(§&o§.indexOf(this.§]-§[this.§]-§.length - 1][0]) == -1);
                                                      }
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      break;
                                                   }
                                                   _loc3_ = (_loc7_ = this.§]-§.pop())[0] as int;
                                                   §§push(Boolean(_loc4_ = this.§"!I§(_loc3_)));
                                                   if(!(_loc11_ && this))
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc11_ && _loc2_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc11_ && this))
                                                            {
                                                               §§pop();
                                                               if(_loc10_ || param1)
                                                               {
                                                                  §§push(_loc4_.phase == §21§.§&i§);
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr303:
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc11_ && param1))
                                                                           {
                                                                              addr312:
                                                                              §§pop();
                                                                              if(_loc10_ || _loc3_)
                                                                              {
                                                                                 addr323:
                                                                                 if(_loc4_.target)
                                                                                 {
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §&!n§.push({
                                                                                          "touch":_loc4_,
                                                                                          "target":_loc4_.target
                                                                                       });
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          addr341:
                                                                                          this.§;Z§.apply(this,_loc7_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                              §&o§.push(_loc3_);
                                                                              continue;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr323);
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                               §§goto(addr341);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                      }
                                                      §§goto(addr303);
                                                   }
                                                   §§goto(addr323);
                                                }
                                                §§goto(addr362);
                                             }
                                             if(_loc10_ || _loc3_)
                                             {
                                                _loc8_ = 0;
                                                if(_loc10_ || _loc2_)
                                                {
                                                   addr393:
                                                   _loc9_ = §&!n§;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc9_,_loc8_));
                                                      if(_loc10_)
                                                      {
                                                         break loop1;
                                                      }
                                                      break;
                                                   }
                                                   loop6:
                                                   for(; §§pop(); while(true)
                                                   {
                                                      continue loop6;
                                                   })
                                                   {
                                                      _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                      while(true)
                                                      {
                                                         §§push((_loc4_ = this.§"!I§(_loc3_)).target);
                                                         if(_loc10_ || _loc2_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               continue loop6;
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§push(_loc4_.target);
                                                         }
                                                         §§pop().dispatchEvent(new TouchEvent(TouchEvent.§1C§,this.§9!N§,this.§;!c§,this.§ in§));
                                                         continue loop6;
                                                      }
                                                   }
                                                   addr424:
                                                   addr503:
                                                }
                                                addr505:
                                                while(true)
                                                {
                                                   §§push(this.§9!N§.length - 1);
                                                   addr510:
                                                   while(true)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc10_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            break loop0;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            break loop13;
                                                         }
                                                         §§push(this);
                                                         §§push(this.§1_§);
                                                         if(_loc10_)
                                                         {
                                                            §§push(§§pop() + 0.00001);
                                                         }
                                                         §§pop().§1_§ = §§pop();
                                                         continue loop0;
                                                         addr560:
                                                      }
                                                      addr557:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(!_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr560);
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                addr506:
                                             }
                                             break loop0;
                                          }
                                          §§goto(addr506);
                                       }
                                       §§goto(addr393);
                                    }
                                    addr435:
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       addr533:
                                       if(!_loc11_)
                                       {
                                          _loc8_ = 0;
                                          if(_loc10_ || this)
                                          {
                                             addr455:
                                             _loc9_ = §&o§;
                                             if(_loc10_ || _loc3_)
                                             {
                                                §§goto(addr502);
                                             }
                                             §§goto(addr472);
                                          }
                                          §§goto(addr505);
                                       }
                                       while(true)
                                       {
                                          this.§9!N§.splice(_loc2_,1);
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             continue loop0;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr556:
                                             while(true)
                                             {
                                                §§goto(addr557);
                                             }
                                          }
                                       }
                                       addr533:
                                    }
                                    §§goto(addr455);
                                 }
                                 else
                                 {
                                    _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                    §§push(_loc5_.phase);
                                    if(!(_loc11_ && _loc3_))
                                    {
                                       §§push(§21§.§%@§);
                                       if(_loc10_ || this)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(_loc10_ || _loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   §§pop();
                                                   if(_loc10_)
                                                   {
                                                      addr205:
                                                      if(_loc5_.phase != §21§.§#!`§)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc11_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   _loc5_.§4!n§(§21§.§2m§);
                                                   continue;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr205);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(_loc10_ || _loc2_)
                                 {
                                    §§goto(addr435);
                                 }
                                 §§goto(addr393);
                              }
                              else
                              {
                                 _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                 if(_loc6_.touch.target != _loc6_.target)
                                 {
                                    if(!_loc11_)
                                    {
                                       _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§1C§,this.§9!N§,this.§;!c§,this.§ in§));
                                    }
                                 }
                                 §§goto(addr424);
                              }
                           }
                        }
                        §§goto(addr455);
                     }
                     §§goto(addr556);
                  }
                  return;
               }
               §§goto(addr77);
            }
         }
         §§goto(addr71);
      }
      
      public function enqueue(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§]-§.unshift(arguments);
            if(_loc7_)
            {
               §§push(Boolean(this.§ in§));
               if(_loc7_)
               {
                  §§push(§§pop());
                  if(_loc7_ || param1)
                  {
                     if(§§pop())
                     {
                        §§pop();
                        §§push(this.§^8§);
                        if(_loc7_)
                        {
                           addr54:
                           §§push(Boolean(§§pop()));
                        }
                     }
                     §§push(§§pop());
                  }
                  if(§§pop())
                  {
                     §§pop();
                     §§goto(addr79);
                  }
                  if(!§§pop())
                  {
                  }
                  §§goto(addr79);
               }
               §§goto(addr54);
            }
            §§goto(addr79);
         }
         addr79:
         if(!(_loc6_ && param1))
         {
            §§push(param1 == 0);
         }
         this.§-X§.§9!l§(param3,param4,this.§;!c§);
         this.§]-§.unshift([1,param2,this.§-X§.§[g§,this.§-X§.§2!b§]);
      }
      
      private function §;Z§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§,s§;
         if((_loc6_ = this.§"!I§(param1)) == null)
         {
            if(!_loc7_)
            {
               _loc6_ = new §,s§(param1,param3,param4,param2,null);
               if(_loc8_ || param1)
               {
                  this.§function§(_loc6_);
                  addr52:
                  _loc6_.setPosition(param3,param4);
                  if(_loc8_)
                  {
                     addr58:
                     _loc6_.§4!n§(param2);
                     if(_loc8_)
                     {
                        §§push(_loc6_);
                        §§push(this.§3!q§);
                        if(_loc8_)
                        {
                           §§push(§§pop() + this.§1_§);
                        }
                        §§pop().§!!B§(§§pop());
                        if(!_loc7_)
                        {
                           §§push(param2);
                           if(_loc8_ || param2)
                           {
                              §§push(§21§.§&i§);
                              if(!(_loc7_ && param2))
                              {
                                 §§push(§§pop() == §§pop());
                                 if(_loc8_ || param2)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc7_ && param1))
                                       {
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             §§push(param2);
                                             if(!(_loc7_ && param3))
                                             {
                                                §§goto(addr167);
                                             }
                                             addr165:
                                             addr167:
                                             §§push(§21§.§%@§);
                                             if(!(_loc7_ && param3))
                                             {
                                                §§push(§§pop() == §§pop());
                                             }
                                             if(§§pop() == §§pop())
                                             {
                                                addr168:
                                                this.§ !_§(_loc6_);
                                                §§goto(addr171);
                                             }
                                             addr171:
                                             return;
                                             §§push(§21§.§%@§);
                                          }
                                          §§goto(addr171);
                                       }
                                    }
                                 }
                                 if(§§pop())
                                 {
                                    _loc6_.§#!0§(this.§"$§.hitTest(_loc5_,true));
                                    if(_loc7_ && param3)
                                    {
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr165);
                                 §§push(param2);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr165);
                        }
                     }
                  }
                  §§goto(addr168);
               }
               §§goto(addr52);
            }
            §§goto(addr58);
         }
         §§goto(addr52);
      }
      
      private function onKey(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Boolean = false;
         var _loc3_:§,s§ = null;
         var _loc4_:§,s§ = null;
         §§push(param1.keyCode);
         if(!_loc5_)
         {
            §§push(17);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() == §§pop());
               §§push(§§pop() == §§pop());
               if(_loc6_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(_loc6_ || this)
                     {
                        §§push(param1.keyCode);
                        if(_loc6_)
                        {
                           §§push(15);
                           if(!(_loc5_ && _loc3_))
                           {
                              addr62:
                              §§push(§§pop() == §§pop());
                              if(!_loc5_)
                              {
                                 addr65:
                                 if(§§pop())
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       _loc2_ = this.§ in§;
                                       addr77:
                                       this.§ in§ = param1.type == KeyboardEvent.KEY_DOWN;
                                       if(!(_loc5_ && this))
                                       {
                                          §§push(this.§^8§);
                                          if(_loc6_)
                                          {
                                             addr96:
                                             §§push(Boolean(§§pop()));
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc5_ && param1))
                                             {
                                                addr104:
                                                if(§§pop())
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      addr112:
                                                      §§pop();
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc5_)
                                                         {
                                                            addr118:
                                                            addr120:
                                                            §§push(§§pop() == this.§ in§);
                                                            if(!_loc6_)
                                                            {
                                                            }
                                                            addr124:
                                                            if(§§pop())
                                                            {
                                                               §§push(this.§-X§);
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop().visible = this.§ in§;
                                                                  addr132:
                                                                  §§push(this.§-X§);
                                                               }
                                                               §§pop().§!!'§(this.§"$§.stageWidth / 2,this.§"$§.stageHeight / 2);
                                                               addr145:
                                                               _loc3_ = this.§"!I§(0);
                                                               _loc4_ = this.§"!I§(1);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        this.§-X§.§9!l§(_loc3_.globalX,_loc3_.globalY);
                                                                        if(_loc5_ && _loc3_)
                                                                        {
                                                                        }
                                                                        addr396:
                                                                        return;
                                                                        addr377:
                                                                     }
                                                                  }
                                                                  §§push(Boolean(_loc2_));
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              §§pop();
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr227:
                                                                                 §§push(Boolean(_loc4_));
                                                                                 §§push(Boolean(_loc4_));
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    addr235:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§push(_loc4_.phase);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(§21§.§<w§);
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                §§push(§§pop() != §§pop());
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   addr261:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc5_ && this))
                                                                                                      {
                                                                                                         this.§]-§.unshift([1,§21§.§<w§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                         §§goto(addr377);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr296:
                                                                                                         §§push(_loc3_.phase);
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            addr305:
                                                                                                            §§push(§21§.§%@§);
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               §§push(§§pop() == §§pop());
                                                                                                               if(!(_loc5_ && this))
                                                                                                               {
                                                                                                                  addr317:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                     {
                                                                                                                        addr326:
                                                                                                                        §§pop();
                                                                                                                        §§push(_loc3_.phase == §21§.§#!`§);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     this.§]-§.unshift([1,§21§.§%@§,this.§-X§.§[g§,this.§-X§.§2!b§]);
                                                                                                                     if(_loc6_ || param1)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     this.§]-§.unshift([1,§21§.§&i§,this.§-X§.§[g§,this.§-X§.§2!b§]);
                                                                                                                  }
                                                                                                                  §§goto(addr377);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr326);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this.§ in§);
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         addr285:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            addr289:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§push(Boolean(_loc3_));
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  addr295:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     §§goto(addr296);
                                                                                                                  }
                                                                                                                  §§goto(addr377);
                                                                                                               }
                                                                                                               §§goto(addr317);
                                                                                                            }
                                                                                                            §§goto(addr295);
                                                                                                         }
                                                                                                         §§goto(addr317);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr317);
                                                                                             }
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                          §§goto(addr305);
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                    §§goto(addr261);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr326);
                                                                           }
                                                                           §§goto(addr285);
                                                                        }
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                                  §§goto(addr295);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr377);
                                                         }
                                                         §§goto(addr124);
                                                         §§push(!§§pop());
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                }
                                                §§goto(addr118);
                                             }
                                             §§goto(addr120);
                                          }
                                          §§goto(addr112);
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr77);
                                 }
                                 else
                                 {
                                    addr381:
                                    if(param1.keyCode == 16)
                                    {
                                       if(!(_loc5_ && this))
                                       {
                                          this.§;!c§ = param1.type == KeyboardEvent.KEY_DOWN;
                                       }
                                    }
                                 }
                                 §§goto(addr396);
                              }
                              §§goto(addr96);
                           }
                        }
                        §§goto(addr381);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr65);
               }
               §§goto(addr104);
            }
            §§goto(addr62);
         }
         §§goto(addr381);
      }
      
      private function § !_§(param1:§,s§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§,s§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§,s§ = null;
         §§push(§=4§);
         if(_loc8_)
         {
            §§push(§§pop() * §=4§);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         for each(_loc4_ in this.§]!m§)
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
                     addr92:
                     §§push(_loc3_);
                  }
                  if(§§pop() <= §§pop())
                  {
                     addr94:
                     _loc2_ = _loc4_;
                     break;
                  }
                  continue;
               }
               §§goto(addr92);
            }
            §§goto(addr94);
         }
         if(!_loc9_)
         {
            if(_loc2_)
            {
               if(_loc8_ || this)
               {
                  param1.§%M§(_loc2_.§=!u§ + 1);
                  if(!(_loc9_ && _loc2_))
                  {
                     addr136:
                     this.§]!m§.splice(this.§]!m§.indexOf(_loc2_),1);
                     if(!(_loc9_ && this))
                     {
                        addr151:
                     }
                     addr157:
                     this.§]!m§.push(param1.clone());
                     §§goto(addr162);
                  }
                  addr162:
                  return;
               }
               §§goto(addr151);
            }
            else
            {
               param1.§%M§(1);
               if(!_loc9_)
               {
                  §§goto(addr157);
               }
            }
            §§goto(addr157);
         }
         §§goto(addr136);
      }
      
      private function §function§(param1:§,s§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§9!N§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr99);
               }
               if(this.§9!N§[_loc2_].id == param1.id)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     this.§9!N§.splice(_loc2_,1);
                     if(_loc4_ && this)
                     {
                        break;
                     }
                     addr71:
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - 1);
                        if(!(_loc4_ && this))
                        {
                           _loc2_ = §§pop();
                           if(_loc4_ && this)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr71);
            }
            this.§9!N§.push(param1);
            addr99:
            return;
         }
      }
      
      private function §"!I§(param1:int) : §,s§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§,s§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§9!N§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && _loc3_)
               {
                  break;
               }
               if(_loc2_.id == param1)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function get §^8§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§-X§ == null);
         if(_loc2_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function set §^8§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§^8§ != param1)
            {
               return;
            }
         }
      }
   }
}
