package starling.events
{
   import §1!&§.Stage;
   import flash.geom.Point;
   
   public class TouchProcessor
   {
      
      private static const §&§:Number = 0.3;
      
      private static const §=a§:Number = 25;
      
      private static var §@R§:Vector.<int>;
      
      private static var §-!8§:Vector.<Object>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §&§ = 0.3;
            do
            {
               §=a§ = 25;
               do
               {
                  §@R§ = new Vector.<int>(0);
                  do
                  {
                     §-!8§ = new Vector.<Object>(0);
                  }
                  while(_loc1_ && TouchProcessor);
                  
               }
               while(_loc1_);
               
            }
            while(_loc1_);
            
         }
      }
      
      private var §?_§:Stage;
      
      private var §9%§:Number;
      
      private var §1!9§:Number;
      
      private var §2p§:§7!J§;
      
      private var §4!;§:Vector.<§1B§>;
      
      private var §]J§:Vector.<Array>;
      
      private var §;!7§:Vector.<§1B§>;
      
      private var §5]§:Boolean = false;
      
      private var §5A§:Boolean = false;
      
      public function TouchProcessor(param1:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super();
            if(_loc3_)
            {
               this.§?_§ = param1;
               if(!(_loc4_ && this))
               {
                  this.§9%§ = this.§1!9§ = 0;
                  if(!(_loc4_ && param1))
                  {
                     this.§4!;§ = new Vector.<§1B§>(0);
                     loop7:
                     while(true)
                     {
                        this.§]J§ = new Vector.<Array>(0);
                        addr146:
                        while(!(_loc3_ || _loc3_))
                        {
                           continue loop7;
                        }
                     }
                     addr163:
                     addr53:
                  }
                  while(true)
                  {
                     this.§;!7§ = new Vector.<§1B§>(0);
                     while(_loc3_)
                     {
                        loop6:
                        while(!(_loc4_ && param1))
                        {
                           addr112:
                           §§push(this.§?_§);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(KeyboardEvent.KEY_UP);
                              if(_loc3_)
                              {
                                 §§pop().addEventListener(§§pop(),this.§@!,§);
                                 if(_loc3_ || this)
                                 {
                                    return;
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(KeyboardEvent.KEY_DOWN);
                                 §§goto(addr112);
                              }
                              addr98:
                           }
                           while(true)
                           {
                              §§pop().addEventListener(§§pop(),this.§@!,§);
                              continue loop6;
                           }
                        }
                     }
                     §§goto(addr146);
                  }
               }
               while(true)
               {
                  §§goto(addr98);
               }
            }
            §§goto(addr163);
         }
         §§goto(addr53);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?_§);
            loop0:
            while(true)
            {
               §§push(KeyboardEvent.KEY_DOWN);
               addr101:
               while(true)
               {
                  §§pop().removeEventListener(§§pop(),this.§@!,§);
                  continue loop0;
               }
            }
         }
         §§goto(addr19);
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:§1B§ = null;
         var _loc5_:§1B§ = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         if(_loc11_)
         {
            §§push(this);
            §§push(this.§9%§);
            if(_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§9%§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§1!9§ = 0;
            while(this.§;!7§.length > 0)
            {
               if(_loc11_)
               {
                  _loc2_ = int(this.§;!7§.length - 1);
               }
               if(_loc11_)
               {
                  continue loop0;
               }
            }
            addr153:
            loop49:
            while(true)
            {
               if(this.§]J§.length <= 0)
               {
                  addr681:
                  if(_loc11_ || _loc3_)
                  {
                     if(!(_loc10_ && this))
                     {
                        if(_loc10_)
                        {
                           loop30:
                           while(true)
                           {
                              loop12:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc11_ || _loc3_)
                                 {
                                    if(!_loc10_)
                                    {
                                       if(_loc11_)
                                       {
                                          addr713:
                                          if(_loc10_ && this)
                                          {
                                             break;
                                          }
                                          loop38:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr721:
                                             while(true)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            addr726:
                                                            if(_loc11_ || _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            addr784:
                                                            addr784:
                                                            addr784:
                                                            addr784:
                                                            while(true)
                                                            {
                                                               continue loop12;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr770:
                                                            while(true)
                                                            {
                                                               this.§4!;§.splice(_loc2_,1);
                                                            }
                                                            addr770:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this);
                                                      §§push(this.§1!9§);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(§§pop() + 0.00001);
                                                      }
                                                      §§pop().§1!9§ = §§pop();
                                                      addr741:
                                                      while(true)
                                                      {
                                                         continue loop49;
                                                         §§goto(addr681);
                                                      }
                                                      §§goto(addr784);
                                                      §§goto(addr726);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc10_ && _loc2_)
                                                      {
                                                         continue loop38;
                                                      }
                                                      while(true)
                                                      {
                                                         var _loc8_:* = §§pop();
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            var _loc9_:* = this.§4!;§;
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc9_,_loc8_));
                                                               if(_loc11_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc11_ || param1)
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr284:
                                                                           if(_loc11_)
                                                                           {
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§]J§.length > 0);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       addr459:
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc10_ && _loc2_))
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             §§pop();
                                                                                             if(!(_loc10_ && param1))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§@R§.indexOf(this.§]J§[this.§]J§.length - 1][0]) == -1);
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      addr501:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      addr501:
                                                                                                   }
                                                                                                }
                                                                                                addr479:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr770);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr501);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             break loop13;
                                                                                          }
                                                                                          _loc7_ = this.§]J§.pop();
                                                                                          if(!(_loc10_ && _loc2_))
                                                                                          {
                                                                                             _loc3_ = _loc7_[0] as int;
                                                                                          }
                                                                                          _loc4_ = this.§>G§(_loc3_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§push(Boolean(_loc4_));
                                                                                             loop14:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop15:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            addr448:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc4_.phase == §0M§.§'p§);
                                                                                                               if(_loc10_ && param1)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop14;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr447:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            if(!(_loc11_ || param1))
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                         }
                                                                                                         if(!(_loc11_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop21:
                                                                                                               while(_loc11_)
                                                                                                               {
                                                                                                                  §-!8§.push({
                                                                                                                     "touch":_loc4_,
                                                                                                                     "target":_loc4_.target
                                                                                                                  });
                                                                                                                  loop22:
                                                                                                                  for(; !_loc10_; loop24:
                                                                                                                  while(!(_loc10_ && _loc2_))
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §@R§.push(_loc3_);
                                                                                                                        if(_loc11_ || _loc2_)
                                                                                                                        {
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     continue loop13;
                                                                                                                  })
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        this.§7n§.apply(this,_loc7_);
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Boolean(_loc4_.target));
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                     {
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     §§goto(addr447);
                                                                                                                  }
                                                                                                                  continue loop14;
                                                                                                                  if(!(_loc11_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(true)
                                                                                                                  {
                                                                                                                     continue loop13;
                                                                                                                  }
                                                                                                                  §§goto(addr339);
                                                                                                               }
                                                                                                               §§goto(addr448);
                                                                                                            }
                                                                                                            §§goto(addr339);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr353);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr501);
                                                                                 }
                                                                                 §§goto(addr459);
                                                                              }
                                                                              if(_loc11_ || _loc3_)
                                                                              {
                                                                                 §§push(0);
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    _loc8_ = §§pop();
                                                                                    if(_loc11_ || param1)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc9_ = §-!8§;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§hasnext(_loc9_,_loc8_));
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   _loc6_ = §§nextvalue(_loc8_,_loc9_);
                                                                                                   if(_loc11_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc6_.touch.target != _loc6_.target)
                                                                                                      {
                                                                                                         if(_loc11_ || param1)
                                                                                                         {
                                                                                                            _loc6_.target.dispatchEvent(new TouchEvent(TouchEvent.§@!;§,this.§4!;§,this.§5]§,this.§5A§));
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   continue;
                                                                                                }
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   if(!(_loc10_ && _loc2_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc10_ && _loc3_))
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc8_ = §§pop();
                                                                                                                  if(!(_loc10_ && this))
                                                                                                                  {
                                                                                                                     _loc9_ = §@R§;
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        addr668:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§hasnext(_loc9_,_loc8_));
                                                                                                                           break loop5;
                                                                                                                        }
                                                                                                                        addr668:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_ = this.§>G§(_loc3_);
                                                                                                                        if(_loc11_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(_loc4_.target);
                                                                                                                           if(_loc11_ || _loc2_)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 if(_loc11_ || param1)
                                                                                                                                 {
                                                                                                                                    addr655:
                                                                                                                                    _loc4_.target.dispatchEvent(new TouchEvent(TouchEvent.§@!;§,this.§4!;§,this.§5]§,this.§5A§));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr668);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr655);
                                                                                                                     }
                                                                                                                     addr623:
                                                                                                                  }
                                                                                                                  addr671:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc11_)
                                                                                                                     {
                                                                                                                        §§goto(addr697);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§4!;§.length - 1);
                                                                                                                        addr782:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(int(§§pop()));
                                                                                                                           break loop12;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr602:
                                                                                                            }
                                                                                                            break loop12;
                                                                                                         }
                                                                                                         §§goto(addr697);
                                                                                                      }
                                                                                                      addr591:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr671);
                                                                                             }
                                                                                             break loop5;
                                                                                          }
                                                                                       }
                                                                                       addr526:
                                                                                    }
                                                                                    §§goto(addr591);
                                                                                 }
                                                                                 §§goto(addr602);
                                                                              }
                                                                              §§goto(addr674);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr733);
                                                                           }
                                                                        }
                                                                        §§goto(addr526);
                                                                     }
                                                                     §§goto(addr670);
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc5_ = §§nextvalue(_loc8_,_loc9_);
                                                                     if(!(_loc11_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(_loc5_.phase);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§0M§.§+!$§);
                                                                        if(_loc11_ || this)
                                                                        {
                                                                           §§push(§§pop() == §§pop());
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc11_)
                                                                              {
                                                                                 addr227:
                                                                                 §§push(§§pop());
                                                                                 if(_loc11_ || _loc2_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr252:
                                                                                       §§push(_loc5_.phase == §0M§.§-!Y§);
                                                                                       if(_loc11_)
                                                                                       {
                                                                                          addr255:
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc11_ || _loc3_)
                                                                                    {
                                                                                       _loc5_.§ A§(§0M§.§]x§);
                                                                                    }
                                                                                 }
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr255);
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                     }
                                                                     §§goto(addr252);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            while(§§pop())
                                                            {
                                                               _loc3_ = §§nextvalue(_loc8_,_loc9_);
                                                               §§goto(addr623);
                                                               §§goto(addr668);
                                                            }
                                                            §§goto(addr670);
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      addr154:
                                                      §@R§.length = §-!8§.length = 0;
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr784);
                                                   }
                                                   addr733:
                                                   addr722:
                                                   addr173:
                                                }
                                                else if(this.§4!;§[_loc2_].phase == §0M§.§!!C§)
                                                {
                                                   §§goto(addr770);
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    addr755:
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    continue loop30;
                                 }
                              }
                              addr783:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 §§goto(addr784);
                                 §§goto(addr713);
                              }
                           }
                        }
                        addr697:
                        return;
                     }
                     §§goto(addr722);
                  }
                  §§goto(addr741);
               }
               else
               {
                  §§goto(addr154);
               }
            }
         }
      }
      
      public function §9y§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§]J§.unshift(arguments);
            loop0:
            while(true)
            {
               §§push(this.§5A§);
               if(_loc7_ || param1)
               {
                  §§push(Boolean(§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop();
                                 addr163:
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§]<§);
                                    if(_loc7_ || param1)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!_loc6_)
                                       {
                                          addr112:
                                          if(!_loc6_)
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!(_loc6_ && param2))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr140:
                                                         while(true)
                                                         {
                                                            if(_loc6_ && param1)
                                                            {
                                                               continue loop10;
                                                            }
                                                            §§push(param1 == 0);
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc7_ || param1))
                                                               {
                                                                  continue loop9;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!_loc7_)
                                                            {
                                                               continue loop5;
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                      addr129:
                                                   }
                                                   while(§§pop())
                                                   {
                                                      if(_loc7_ || param1)
                                                      {
                                                         this.§2p§.§]3§(param3,param4,this.§5]§);
                                                      }
                                                      while(_loc7_ || param2)
                                                      {
                                                         this.§]J§.unshift([1,param2,this.§2p§.§^u§,this.§2p§.§@F§]);
                                                         if(_loc7_)
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      §§goto(addr140);
                                                   }
                                                   addr20:
                                                   return;
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
                                             addr114:
                                          }
                                          continue loop1;
                                       }
                                       §§goto(addr129);
                                    }
                                    §§goto(addr112);
                                 }
                              }
                              addr162:
                           }
                           §§goto(addr114);
                        }
                     }
                  }
               }
               §§goto(addr162);
            }
         }
         §§goto(addr163);
      }
      
      private function §7n§(param1:int, param2:String, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Point = new Point(param3,param4);
         var _loc6_:§1B§ = this.§>G§(param1);
         if(_loc8_)
         {
            if(_loc6_ == null)
            {
               if(_loc8_ || param3)
               {
                  _loc6_ = new §1B§(param1,param3,param4,param2,null);
                  if(!(_loc7_ && this))
                  {
                     this.§4;§(_loc6_);
                  }
               }
               loop14:
               while(true)
               {
                  _loc6_.§&z§(this.§?_§.hitTest(_loc5_,true));
                  addr179:
                  loop13:
                  while(true)
                  {
                     loop9:
                     while(true)
                     {
                        §§push(param2);
                        if(!(_loc7_ && param1))
                        {
                           §§push(§0M§.§+!$§);
                           if(_loc8_)
                           {
                              if(_loc8_ || param1)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc8_ || param3)
                                    {
                                       if(_loc7_ && param3)
                                       {
                                          continue loop13;
                                       }
                                       if(!(_loc7_ && this))
                                       {
                                          addr130:
                                          if(_loc8_ || this)
                                          {
                                             this.§^!§(_loc6_);
                                             addr73:
                                             return;
                                             addr141:
                                          }
                                          else
                                          {
                                             loop1:
                                             while(true)
                                             {
                                                §§push(param2);
                                                addr182:
                                                loop2:
                                                while(true)
                                                {
                                                   §§push(§0M§.§'p§);
                                                   addr185:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      addr186:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc8_ || param1)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc8_ || param3)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               addr204:
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr215:
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        §§push(param2);
                                                                        break loop9;
                                                                     }
                                                                     addr244:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        §§push(this.§9%§);
                                                                        if(_loc8_ || param3)
                                                                        {
                                                                           §§push(§§pop() + this.§1!9§);
                                                                        }
                                                                        §§pop().§>! §(§§pop());
                                                                        continue loop1;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               addr204:
                                                            }
                                                            while(true)
                                                            {
                                                               addr163:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  while(!(_loc7_ && param1))
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr215);
                                                               }
                                                               addr161:
                                                            }
                                                         }
                                                         §§goto(addr204);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr141);
                                 }
                                 §§goto(addr73);
                              }
                              §§goto(addr185);
                           }
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc7_ && param3))
                              {
                                 if(_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       §§goto(addr161);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr163);
                           }
                           addr149:
                        }
                        break;
                     }
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           §§goto(addr149);
                           §§push(§0M§.§+!$§);
                        }
                        §§goto(addr182);
                     }
                  }
               }
               addr171:
            }
            _loc6_.setPosition(param3,param4);
            if(_loc8_ || param1)
            {
               _loc6_.§ A§(param2);
               §§goto(addr244);
            }
            §§goto(addr179);
         }
         §§goto(addr171);
      }
      
      private function §@!,§(param1:KeyboardEvent) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = false;
         var _loc3_:§1B§ = null;
         var _loc4_:§1B§ = null;
         if(_loc6_)
         {
            §§push(param1.keyCode);
            loop0:
            while(true)
            {
               §§push(17);
               addr228:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr229:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     addr230:
                     while(true)
                     {
                        §§push(§§pop());
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop18:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop19:
                                       while(true)
                                       {
                                          §§push(this.§5A§);
                                          addr222:
                                          loop8:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                loop10:
                                                while(true)
                                                {
                                                   this.§5A§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                   if(!_loc5_)
                                                   {
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         continue loop19;
                                                      }
                                                      §§push(this.§]<§);
                                                      if(_loc6_ || param1)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop11:
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            §§push(§§pop());
                                                            if(_loc6_ || this)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                            loop12:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(this.§2p§);
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§pop().visible = this.§5A§;
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§2p§);
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    §§pop().§-!j§(this.§?_§.stageWidth / 2,this.§?_§.stageHeight / 2);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       if(_loc5_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§push(this.§5A§);
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   continue loop12;
                                                                                                }
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   addr74:
                                                                                                   §§push(!§§pop());
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr77:
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   if(!(_loc5_ && param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr134:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc6_ || _loc2_))
                                                                                                         {
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      addr211:
                                                                                                      addr233:
                                                                                                      while(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            break loop13;
                                                                                                         }
                                                                                                         §§push(param1.keyCode);
                                                                                                         if(_loc5_ && _loc3_)
                                                                                                         {
                                                                                                            if(§§pop() == 16)
                                                                                                            {
                                                                                                               if(_loc6_ || _loc2_)
                                                                                                               {
                                                                                                                  break loop13;
                                                                                                               }
                                                                                                               break loop15;
                                                                                                            }
                                                                                                            break loop15;
                                                                                                         }
                                                                                                         addr577:
                                                                                                         addr576:
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                §§goto(addr77);
                                                                                             }
                                                                                             §§goto(addr74);
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       _loc3_ = this.§>G§(0);
                                                                                       _loc4_ = this.§>G§(1);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr553:
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             this.§2p§.§]3§(_loc3_.globalX,_loc3_.globalY);
                                                                                             addr554:
                                                                                          }
                                                                                          §§push(Boolean(_loc2_));
                                                                                          §§push(Boolean(_loc2_));
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             addr542:
                                                                                             §§pop();
                                                                                             addr543:
                                                                                             if(!(_loc5_ && _loc2_))
                                                                                             {
                                                                                                addr519:
                                                                                                §§push(Boolean(_loc4_));
                                                                                                §§push(Boolean(Boolean(_loc4_)));
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr524:
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         addr479:
                                                                                                         §§push(_loc4_.phase == §0M§.§!!C§);
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            §§push(!§§pop());
                                                                                                         }
                                                                                                         addr527:
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         if(_loc6_ || this)
                                                                                                         {
                                                                                                            addr491:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               addr493:
                                                                                                               this.§]J§.unshift([1,§0M§.§!!C§,_loc4_.globalX,_loc4_.globalY]);
                                                                                                               addr506:
                                                                                                               if(!(_loc6_ || _loc2_))
                                                                                                               {
                                                                                                                  §§goto(addr527);
                                                                                                               }
                                                                                                               addr573:
                                                                                                               break;
                                                                                                            }
                                                                                                            addr444:
                                                                                                            §§push(this.§5A§);
                                                                                                            if(!(_loc5_ && _loc3_))
                                                                                                            {
                                                                                                               addr452:
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc6_ || _loc3_)
                                                                                                               {
                                                                                                                  addr460:
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     addr462:
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        addr465:
                                                                                                                        if(_loc6_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr380:
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              addr381:
                                                                                                                              §§push(_loc3_.phase == §0M§.§+!$§);
                                                                                                                              if(_loc6_ || this)
                                                                                                                              {
                                                                                                                                 addr395:
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(!(_loc5_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!(_loc5_ && param1))
                                                                                                                                       {
                                                                                                                                          if(_loc6_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                addr422:
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   if(!(_loc5_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         addr437:
                                                                                                                                                         §§pop();
                                                                                                                                                         addr298:
                                                                                                                                                         addr438:
                                                                                                                                                         §§push(_loc3_.phase);
                                                                                                                                                         if(_loc6_ || this)
                                                                                                                                                         {
                                                                                                                                                            if(_loc6_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§0M§.§-!Y§);
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                     if(!_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc6_)
                                                                                                                                                                           {
                                                                                                                                                                              addr325:
                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc6_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc6_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr340:
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr342:
                                                                                                                                                                                                if(_loc6_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§]J§.unshift([1,§0M§.§+!$§,this.§2p§.§^u§,this.§2p§.§@F§]);
                                                                                                                                                                                                   addr364:
                                                                                                                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc6_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr554);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr573);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr543);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr506);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr465);
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§]J§.unshift([1,§0M§.§'p§,this.§2p§.§^u§,this.§2p§.§@F§]);
                                                                                                                                                                                             if(_loc6_ || _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc5_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc6_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr298);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr506);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr381);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr438);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr342);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr364);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr444);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr462);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr380);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr395);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr437);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr519);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr381);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr325);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr479);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr381);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr479);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr381);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr340);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr519);
                                                                                                                                                }
                                                                                                                                                §§goto(addr460);
                                                                                                                                             }
                                                                                                                                             §§goto(addr519);
                                                                                                                                          }
                                                                                                                                          §§goto(addr460);
                                                                                                                                       }
                                                                                                                                       §§goto(addr422);
                                                                                                                                    }
                                                                                                                                    §§goto(addr553);
                                                                                                                                 }
                                                                                                                                 §§goto(addr452);
                                                                                                                              }
                                                                                                                              §§goto(addr553);
                                                                                                                           }
                                                                                                                           §§goto(addr506);
                                                                                                                        }
                                                                                                                        §§goto(addr493);
                                                                                                                     }
                                                                                                                     §§goto(addr479);
                                                                                                                  }
                                                                                                                  §§goto(addr380);
                                                                                                               }
                                                                                                               §§goto(addr479);
                                                                                                            }
                                                                                                            §§goto(addr524);
                                                                                                         }
                                                                                                         §§goto(addr542);
                                                                                                      }
                                                                                                      §§goto(addr553);
                                                                                                   }
                                                                                                   §§goto(addr491);
                                                                                                }
                                                                                                §§goto(addr553);
                                                                                             }
                                                                                             §§goto(addr554);
                                                                                          }
                                                                                          §§goto(addr519);
                                                                                       }
                                                                                       §§goto(addr437);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop14;
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr493);
                                                                  }
                                                                  this.§5]§ = param1.type == KeyboardEvent.KEY_DOWN;
                                                                  addr593:
                                                                  return;
                                                                  addr99:
                                                               }
                                                            }
                                                         }
                                                         continue loop5;
                                                      }
                                                      §§goto(addr134);
                                                   }
                                                   §§goto(addr593);
                                                }
                                                continue loop19;
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(param1.keyCode);
                                    }
                                    §§goto(addr576);
                                 }
                              }
                              §§goto(addr233);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr146);
      }
      
      private function §^!§(param1:§1B§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§1B§ = null;
         var _loc5_:* = NaN;
         var _loc2_:§1B§ = null;
         §§push(§=a§);
         if(!_loc9_)
         {
            §§push(§§pop() * §=a§);
            if(_loc8_ || param1)
            {
               addr38:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            for each(_loc4_ in this.§;!7§)
            {
               if(_loc8_ || param1)
               {
                  §§push(Number(Math.pow(_loc4_.globalX - param1.globalX,2) + Math.pow(_loc4_.globalY - param1.globalY,2)));
                  if(_loc8_)
                  {
                     _loc5_ = §§pop();
                     addr98:
                     if(_loc8_)
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
               §§goto(addr98);
            }
            if(_loc8_)
            {
               if(!_loc2_)
               {
                  param1.§9C§(1);
                  while(true)
                  {
                     if(!(_loc9_ && _loc3_))
                     {
                        loop2:
                        while(true)
                        {
                           this.§;!7§.push(param1.clone());
                           if(_loc9_)
                           {
                              break;
                           }
                           if(_loc8_ || param1)
                           {
                              if(!(_loc9_ && _loc2_))
                              {
                                 return;
                              }
                              addr176:
                              while(true)
                              {
                                 param1.§9C§(_loc2_.§'!c§ + 1);
                              }
                           }
                           while(true)
                           {
                              this.§;!7§.splice(this.§;!7§.indexOf(_loc2_),1);
                              continue loop2;
                           }
                        }
                        continue;
                        addr113:
                     }
                     while(true)
                     {
                        §§goto(addr113);
                     }
                  }
               }
            }
            §§goto(addr176);
         }
         §§goto(addr38);
      }
      
      private function §4;§(param1:§1B§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§4!;§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc3_)
                     {
                        this.§4!;§.push(param1);
                     }
                     if(!_loc4_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && this))
                     {
                        if(_loc4_ || this)
                        {
                           break;
                        }
                        addr114:
                        this.§4!;§.splice(_loc2_,1);
                     }
                  }
                  else if(this.§4!;§[_loc2_].id == param1.id)
                  {
                     §§goto(addr114);
                  }
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(§§pop() - 1);
                  }
               }
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
         }
      }
      
      private function §>G§(param1:int) : §1B§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§1B§ = null;
         for each(_loc2_ in this.§4!;§)
         {
            if(_loc6_)
            {
               if(_loc2_.id == param1)
               {
                  if(_loc6_ || _loc2_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function get §]<§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§2p§ == null);
         if(_loc1_)
         {
            return !§§pop();
         }
      }
      
      public function set §]<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§]<§ != param1)
            {
               return;
            }
         }
      }
   }
}
