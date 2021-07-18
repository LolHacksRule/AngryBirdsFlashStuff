package §3§#7
{
   import §6"G§.§-#C§;
   import com.angrybirds.§,!q§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §<#A§ extends Sprite
   {
      
      public static const §=!D§:int = 0;
      
      public static const §!&§:int = 1;
      
      public static const §?b§:int = 2;
      
      public static const §=[§:int = 3;
      
      private static const §8#8§:String = "all";
      
      public static const §&"m§:uint = 40;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §<#A§)
         {
            §=!D§ = 0;
            loop0:
            while(true)
            {
               §!&§ = 1;
               while(true)
               {
                  §?b§ = 2;
                  addr75:
                  while(_loc1_ || _loc1_)
                  {
                     §=[§ = 3;
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §8#8§ = "all";
            §§goto(addr39);
         }
      }
      
      private const §7!K§:Number = 0.3;
      
      private const §-"L§:Number = 25;
      
      private const §9#"§:Number = 10;
      
      private const §]!7§:Number = 9;
      
      private var §&]§:int;
      
      private var §]#T§:int;
      
      private var §5!j§:Vector.<§1"M§>;
      
      private var §7#L§:Vector.<§1"M§>;
      
      private var §!"g§:Point;
      
      private var § V§:int;
      
      public function §<#A§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc10_:§1"M§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(!_loc14_)
         {
            super();
            loop0:
            while(true)
            {
               addr35:
               while(true)
               {
                  this.§&]§ = param1;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§]#T§ = param2;
            if(_loc15_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr35);
            }
            §§goto(addr39);
         }
         var _loc8_:Number = Math.min(§,!q§.§!"N§,§,!q§.§6G§);
         var _loc9_:Number = Math.max(§,!q§.§!"N§,§,!q§.§6G§);
         if(!_loc14_)
         {
            §§push(param3);
            if(!(_loc14_ && this))
            {
               §§push(§,!q§.§6G§);
               loop4:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc15_)
                  {
                     while(true)
                     {
                        §§push(Number(§§pop()));
                     }
                     addr182:
                  }
                  while(true)
                  {
                     param3 = §§pop();
                     while(true)
                     {
                        §§push(param4);
                        if(!(_loc14_ && param2))
                        {
                           continue loop4;
                        }
                        addr158:
                        if(_loc14_)
                        {
                           break;
                        }
                        param4 = §§pop();
                        loop7:
                        for(; !(_loc14_ && this); if(!(_loc15_ || param3))
                        {
                           continue;
                        },if(false)
                        {
                           §§goto(addr103);
                        },§§goto(addr185))
                        {
                           this.§ V§ = param5;
                           while(true)
                           {
                              this.§!"g§ = new Point(param3,param4);
                              loop9:
                              while(true)
                              {
                                 addr103:
                                 while(true)
                                 {
                                    this.§5!j§ = new Vector.<§1"M§>(0);
                                    continue loop9;
                                 }
                              }
                              if(!(_loc14_ && param3))
                              {
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr182);
         }
         §§goto(addr112);
      }
      
      public function §%!G§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§1"M§ = null;
         while(this.§5!j§.length > 0)
         {
            _loc1_ = this.§5!j§.shift();
            if(!_loc2_)
            {
               if(_loc1_.parent == this)
               {
                  if(!_loc2_)
                  {
                     this.removeChild(_loc1_);
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                  }
               }
            }
            _loc1_.§%!G§();
         }
         if(!_loc2_)
         {
            while(this.§7#L§.length > 0)
            {
               _loc1_ = this.§7#L§.shift();
               if(_loc3_)
               {
                  if(_loc1_.parent == this)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     this.removeChild(_loc1_);
                     if(_loc2_)
                     {
                        continue;
                     }
                  }
               }
               _loc1_.§%!G§();
            }
            if(!(_loc2_ && this))
            {
               this.§5!j§ = new Vector.<§1"M§>(0);
               if(_loc2_)
               {
               }
               §§goto(addr126);
            }
            this.§7#L§ = new Vector.<§1"M§>(0);
         }
         addr126:
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§1"M§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:§1"M§ = null;
         if(_loc15_)
         {
            §§push(param1);
            if(!(_loc16_ && this))
            {
               §§push(§§pop() / 20);
               if(!_loc16_)
               {
                  addr54:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr56);
            }
            §§goto(addr54);
         }
         addr56:
         loop0:
         while(this.§5!j§.length > 0)
         {
            _loc5_ = this.§5!j§.shift();
            if(!_loc16_)
            {
               §§push(Math.random() * (this.§-"L§ - this.§9#"§));
               loop1:
               while(true)
               {
                  §§push(this.§9#"§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop4:
                        while(true)
                        {
                           _loc6_ = §§pop();
                           while(true)
                           {
                              §§push(this.§ V§);
                              loop6:
                              while(true)
                              {
                                 §§push(§=!D§);
                                 addr686:
                                 addr687:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(this.§ V§);
                                    continue loop6;
                                 }
                                 addr687:
                                 §§push(Math.PI / 2);
                                 loop19:
                                 while(true)
                                 {
                                    §§push(-§§pop());
                                    loop20:
                                    while(true)
                                    {
                                       §§push(§§pop() * Math.random());
                                       loop21:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop22:
                                          while(true)
                                          {
                                             _loc7_ = §§pop();
                                             loop23:
                                             while(true)
                                             {
                                                §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                loop24:
                                                for(; !_loc16_; while(true)
                                                {
                                                   if(!(_loc15_ || this))
                                                   {
                                                      continue loop24;
                                                   }
                                                   _loc13_ = §§pop();
                                                   §§goto(addr368);
                                                   §§goto(addr296);
                                                })
                                                {
                                                   _loc8_ = §§pop();
                                                   loop25:
                                                   while(true)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         continue loop19;
                                                      }
                                                      §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                      loop26:
                                                      while(true)
                                                      {
                                                         _loc9_ = §§pop();
                                                         loop27:
                                                         while(true)
                                                         {
                                                            addr271:
                                                            loop28:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                               §§push(_loc8_);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop() * _loc6_);
                                                               }
                                                               §§pop().§6#3§ = §§pop();
                                                               loop29:
                                                               while(_loc15_ || _loc3_)
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     §§push(_loc9_);
                                                                     if(_loc15_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() * _loc6_);
                                                                     }
                                                                     §§pop().§+!P§ = §§pop();
                                                                     loop30:
                                                                     while(true)
                                                                     {
                                                                        _loc5_.x = this.§!"g§.x;
                                                                        loop31:
                                                                        while(_loc15_)
                                                                        {
                                                                           if(_loc16_ && _loc3_)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           _loc5_.y = this.§!"g§.y;
                                                                           loop32:
                                                                           for(; _loc15_ || this; if(_loc16_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           },if(!(_loc16_ && param1))
                                                                           {
                                                                              _loc5_.§,#0§.play();
                                                                              if(_loc15_ || _loc2_)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    continue loop30;
                                                                                 }
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 §§goto(addr81);
                                                                              }
                                                                              §§goto(addr101);
                                                                           },§§goto(addr434))
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 continue loop25;
                                                                              }
                                                                              this.§7#L§.push(_loc5_);
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(0.5);
                                                                                       loop34:
                                                                                       for(; _loc15_; if(_loc16_ && _loc3_)
                                                                                       {
                                                                                          continue;
                                                                                       },if(!_loc16_)
                                                                                       {
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             continue loop26;
                                                                                          }
                                                                                          §§goto(addr516);
                                                                                       },§§goto(addr433))
                                                                                       {
                                                                                          §§push(Math.random() * 1.5);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc15_ || this)
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      addr296:
                                                                                                      while(!(_loc16_ && param1))
                                                                                                      {
                                                                                                         §§goto(addr303);
                                                                                                      }
                                                                                                      continue loop24;
                                                                                                      addr296:
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   loop35:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         _loc10_ = §§pop();
                                                                                                         loop36:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               if(!(_loc16_ && this))
                                                                                                               {
                                                                                                                  §§push(0.2);
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     continue loop34;
                                                                                                                  }
                                                                                                                  addr148:
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     continue loop35;
                                                                                                                  }
                                                                                                                  if(!_loc16_)
                                                                                                                  {
                                                                                                                     if(_loc15_ || param1)
                                                                                                                     {
                                                                                                                        if(!(_loc15_ || this))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        if(_loc15_ || this)
                                                                                                                        {
                                                                                                                           _loc11_ = §§pop();
                                                                                                                           loop37:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 do
                                                                                                                                 {
                                                                                                                                    _loc5_.§,#0§ = §-#C§.§%!E§.§^!H§(_loc5_,{
                                                                                                                                       "scaleX":_loc11_,
                                                                                                                                       "scaleY":_loc11_
                                                                                                                                    },{
                                                                                                                                       "scaleX":_loc10_,
                                                                                                                                       "scaleY":_loc10_
                                                                                                                                    },5);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                       addr414:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                          break loop31;
                                                                                                                                          addr314:
                                                                                                                                          while(_loc15_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             break loop34;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(false);
                                                                                                                                 
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              continue loop36;
                                                                                                                           }
                                                                                                                           continue loop33;
                                                                                                                        }
                                                                                                                        addr590:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc7_ = §§pop();
                                                                                                                           addr591:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc16_)
                                                                                                                           {
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    _loc12_ = §§pop();
                                                                                                                                    break loop33;
                                                                                                                                 }
                                                                                                                                 addr564:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    break loop29;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr610:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              addr611:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                 addr600:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    addr601:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       continue loop28;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr390:
                                                                                                                     }
                                                                                                                     §§goto(addr564);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr314);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop31;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc16_ && this))
                                                                                                            {
                                                                                                               if(!(_loc16_ && _loc3_))
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                               addr633:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Math.PI * (Math.random() - 0.5));
                                                                                                                  addr640:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0.5);
                                                                                                                     addr641:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc15_ || _loc3_))
                                                                                                                           {
                                                                                                                              continue loop20;
                                                                                                                           }
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc15_ || _loc3_)
                                                                                                                  {
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr546:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr610);
                                                                                                            }
                                                                                                         }
                                                                                                         addr323:
                                                                                                      }
                                                                                                      addr341:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(2);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc16_ && param1)
                                                                                                               {
                                                                                                                  break loop35;
                                                                                                               }
                                                                                                               if(!(_loc16_ && this))
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  continue loop24;
                                                                                                               }
                                                                                                               addr582:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc15_ || param1))
                                                                                                                  {
                                                                                                                     continue loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr590);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               addr303:
                                                                                                               if(_loc16_ && param1)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  §§push(_loc12_);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr314);
                                                                                                                  }
                                                                                                                  addr313:
                                                                                                               }
                                                                                                               §§goto(addr395);
                                                                                                            }
                                                                                                            addr345:
                                                                                                         }
                                                                                                         addr389:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr390);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(_loc16_)
                                                                                                   {
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                   _loc7_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                      addr433:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc8_ = §§pop();
                                                                                                         §§goto(addr434);
                                                                                                      }
                                                                                                   }
                                                                                                   addr202:
                                                                                                   addr524:
                                                                                                   §§goto(addr345);
                                                                                                }
                                                                                                §§goto(addr202);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr513:
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr516:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc16_ && this))
                                                                                                   {
                                                                                                      §§goto(addr524);
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr641);
                                                                                                }
                                                                                                §§goto(addr652);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr313);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop29;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc15_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr341);
                                                                                    §§push(this.§-"L§);
                                                                                 }
                                                                                 §§goto(addr611);
                                                                              }
                                                                           }
                                                                           while(_loc15_ || _loc2_)
                                                                           {
                                                                              §§goto(addr296);
                                                                              §§push(Math.random() * (_loc13_ - _loc12_));
                                                                           }
                                                                           §§goto(addr527);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(_loc15_ || _loc2_)
                                                                              {
                                                                                 §§push(this.§9#"§);
                                                                                 if(_loc15_ || param1)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§goto(addr389);
                                                                                       §§push(2);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr644);
                                                                                    }
                                                                                    §§goto(addr610);
                                                                                 }
                                                                                 §§goto(addr395);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Math.PI / 2);
                                                                                    addr579:
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 addr575:
                                                                              }
                                                                              §§goto(addr582);
                                                                           }
                                                                           §§goto(addr591);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr601);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr600);
                                                            }
                                                         }
                                                         if(!(_loc15_ || param1))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc16_ && _loc3_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§goto(addr148);
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                }
                                                continue loop21;
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
            §§goto(addr524);
         }
         var _loc2_:int = this.§7#L§.length;
         §§push(_loc2_);
         if(!(_loc16_ && param1))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!_loc16_)
         {
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!_loc15_)
               {
                  break;
               }
               _loc5_ = this.§7#L§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§+!P§);
               if(!_loc16_)
               {
                  §§push(this.§7!K§);
                  if(_loc15_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§+!P§ = §§pop();
               if(_loc15_ || this)
               {
                  if(_loc5_.§+!P§ > this.§]!7§)
                  {
                     loop71:
                     while(true)
                     {
                        _loc5_.§+!P§ = this.§]!7§;
                        if(_loc16_)
                        {
                           break;
                        }
                        addr847:
                        loop73:
                        while(_loc15_ || this)
                        {
                           _loc5_.y += _loc5_.§+!P§ * param1;
                           loop74:
                           while(true)
                           {
                              _loc5_.rotation += 5 * param1;
                              if(!_loc15_)
                              {
                                 break;
                              }
                              loop75:
                              while(true)
                              {
                                 if(_loc5_.y <= this.§]#T§ + _loc5_.height / 2)
                                 {
                                    loop77:
                                    while(true)
                                    {
                                       §§push(this.§7#L§.length > 0);
                                       if(_loc15_)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc15_)
                                             {
                                                if(_loc15_)
                                                {
                                                   §§pop();
                                                   if(_loc15_)
                                                   {
                                                      if(true)
                                                      {
                                                         §§push(_loc3_);
                                                         if(_loc15_ || param1)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            break;
                                                         }
                                                      }
                                                      continue loop75;
                                                      break;
                                                   }
                                                   break loop71;
                                                }
                                                addr810:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      break loop71;
                                                   }
                                                   continue loop77;
                                                }
                                             }
                                             break;
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       if(!_loc16_)
                                       {
                                          break loop74;
                                       }
                                       break loop71;
                                    }
                                    §§push(_loc4_);
                                 }
                                 else
                                 {
                                    addr933:
                                 }
                                 if(_loc16_)
                                 {
                                    break loop71;
                                 }
                                 continue loop74;
                                 if(_loc15_ || _loc2_)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc4_ = §§pop();
                                 break loop71;
                              }
                              continue loop73;
                           }
                           if((_loc14_ = this.§7#L§.splice(_loc4_,1)[0]).parent == this)
                           {
                              if(_loc15_ || this)
                              {
                                 this.removeChild(_loc14_);
                                 if(_loc15_)
                                 {
                                    addr930:
                                    _loc14_.§%!G§();
                                 }
                                 loop78:
                                 while(true)
                                 {
                                    addr918:
                                    while(true)
                                    {
                                       _loc5_.x = -2000;
                                       continue loop78;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc5_.y = -2000;
                                 if(!(_loc16_ && param1))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr918);
                                 }
                                 §§goto(addr922);
                              }
                              §§goto(addr933);
                           }
                           §§goto(addr930);
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     _loc5_.x += _loc5_.§6#3§ * param1;
                     §§goto(addr847);
                  }
               }
               §§goto(addr879);
            }
         }
      }
   }
}
