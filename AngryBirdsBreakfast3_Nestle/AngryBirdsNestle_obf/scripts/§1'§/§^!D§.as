package §1'§
{
   import §0!m§.§@!S§;
   import §;g§.§0!o§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §^!D§ extends Sprite
   {
      
      public static const §3!0§:int = 0;
      
      public static const §"!K§:int = 1;
      
      public static const §3n§:int = 2;
      
      public static const §2k§:int = 3;
      
      private static const §3"$§:String = "all";
      
      public static const §8`§:uint = 40;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3!0§ = 0;
            while(true)
            {
               §"!K§ = 1;
            }
            addr91:
         }
         loop1:
         while(true)
         {
            §3n§ = 2;
            while(true)
            {
               §2k§ = 3;
               loop3:
               while(true)
               {
                  §3"$§ = "all";
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop1;
               }
               if(!(_loc1_ || _loc2_))
               {
                  continue;
               }
               if(!_loc2_)
               {
                  return;
               }
               §§goto(addr91);
            }
         }
      }
      
      private const §=t§:Number = 0.3;
      
      private const §[!e§:Number = 25;
      
      private const §@k§:Number = 10;
      
      private const §;!7§:Number = 9;
      
      private var § !@§:int;
      
      private var §0!b§:int;
      
      private var §]m§:Vector.<§'!G§>;
      
      private var §2m§:Vector.<§'!G§>;
      
      private var §1!1§:Point;
      
      private var §[f§:int;
      
      public function §^!D§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40, param7:String = "all")
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc10_:§'!G§ = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         if(_loc14_)
         {
            super();
            loop0:
            while(true)
            {
               addr41:
               while(true)
               {
                  this.§ !@§ = param1;
                  continue loop0;
               }
            }
            addr48:
         }
         while(true)
         {
            this.§0!b§ = param2;
            if(!_loc14_)
            {
               continue;
            }
            if(!(_loc15_ && param2))
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr48);
            }
            §§goto(addr41);
         }
         var _loc8_:Number = Math.min(§@!S§.§+!q§,§@!S§.§5!e§);
         var _loc9_:Number = Math.max(§@!S§.§+!q§,§@!S§.§5!e§);
         if(_loc14_)
         {
            §§push(param3);
            while(true)
            {
               §§push(§@!S§.§5!e§);
               addr168:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc15_)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr172:
                  while(true)
                  {
                     param3 = §§pop();
                  }
               }
            }
            addr166:
         }
         while(true)
         {
            §§push(param4);
            if(_loc14_ || this)
            {
               §§push(§@!S§.§+!q§);
               if(_loc14_)
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc15_ && param3))
                  {
                     addr147:
                     §§push(Number(§§pop()));
                     if(_loc14_ || this)
                     {
                        if(_loc14_)
                        {
                           param4 = §§pop();
                           loop7:
                           while(!(_loc15_ && this))
                           {
                              this.§[f§ = param5;
                              loop8:
                              while(true)
                              {
                                 this.§1!1§ = new Point(param3,param4);
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc14_)
                                    {
                                       if(!_loc15_)
                                       {
                                          do
                                          {
                                             this.§]m§ = new Vector.<§'!G§>(0);
                                             continue loop9;
                                          }
                                          while(false);
                                          
                                          var _loc13_:int = 0;
                                          addr228:
                                          if(_loc13_ < param6)
                                          {
                                             §§push(§§findproperty(§'!G§));
                                             §§push(Math.random() * 40);
                                             if(_loc14_ || this)
                                             {
                                                §§push(§§pop() + 10);
                                             }
                                             (_loc10_ = new §§pop().§'!G§(§§pop(),param7)).x = -2000;
                                             if(_loc14_)
                                             {
                                                _loc10_.y = -2000;
                                                this.addChild(_loc10_);
                                                addr212:
                                                this.§]m§[_loc13_] = _loc10_;
                                                addr227:
                                                addr223:
                                             }
                                             _loc13_++;
                                             if(_loc14_)
                                             {
                                                if(!_loc15_)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr228);
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr223);
                                             }
                                             addr218:
                                             §§goto(addr218);
                                          }
                                          if(_loc14_)
                                          {
                                             this.scaleX = _loc9_;
                                             if(_loc14_ || param3)
                                             {
                                                this.scaleY = _loc9_;
                                             }
                                          }
                                          return;
                                       }
                                       break;
                                    }
                                    continue loop8;
                                 }
                                 continue loop7;
                              }
                           }
                           continue;
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr147);
               }
               §§goto(addr168);
            }
            §§goto(addr147);
         }
      }
      
      public function §,!#§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§'!G§ = null;
         while(this.§]m§.length > 0)
         {
            _loc1_ = this.§]m§.shift();
            if(_loc3_)
            {
               if(_loc1_.parent == this)
               {
                  if(_loc3_)
                  {
                     this.removeChild(_loc1_);
                     if(_loc2_ && _loc1_)
                     {
                        continue;
                     }
                  }
               }
            }
            _loc1_.§,!#§();
         }
         if(_loc3_)
         {
            while(this.§2m§.length > 0)
            {
               _loc1_ = this.§2m§.shift();
               if(!_loc2_)
               {
                  if(_loc1_.parent == this)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     this.removeChild(_loc1_);
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                  }
                  _loc1_.§,!#§();
               }
            }
            if(_loc3_)
            {
               this.§]m§ = new Vector.<§'!G§>(0);
               if(!(_loc2_ && this))
               {
                  addr128:
                  this.§2m§ = new Vector.<§'!G§>(0);
               }
               return;
            }
         }
         §§goto(addr128);
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc5_:§'!G§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:§'!G§ = null;
         if(!(_loc15_ && _loc3_))
         {
            §§push(param1);
            if(!(_loc15_ && this))
            {
               §§push(§§pop() / 20);
               if(!_loc15_)
               {
                  addr60:
                  §§push(Number(§§pop()));
               }
               param1 = §§pop();
               §§goto(addr62);
            }
            §§goto(addr60);
         }
         addr62:
         loop0:
         while(this.§]m§.length > 0)
         {
            _loc5_ = this.§]m§.shift();
            if(_loc16_ || this)
            {
               §§push(Math.random() * (this.§[!e§ - this.§@k§));
               loop1:
               while(true)
               {
                  §§push(this.§@k§);
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
                           loop5:
                           while(true)
                           {
                              §§push(this.§[f§);
                              loop6:
                              while(true)
                              {
                                 §§push(§3!0§);
                                 addr677:
                                 while(§§pop() != §§pop())
                                 {
                                    §§push(this.§[f§);
                                    continue loop6;
                                 }
                                 loop75:
                                 while(true)
                                 {
                                    §§push(Math.PI / 2);
                                    loop25:
                                    while(true)
                                    {
                                       §§push(-§§pop());
                                       loop26:
                                       while(true)
                                       {
                                          §§push(§§pop() * Math.random());
                                          loop27:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop28:
                                             while(true)
                                             {
                                                _loc7_ = §§pop();
                                                loop29:
                                                while(true)
                                                {
                                                   §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                   loop30:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop31:
                                                      while(true)
                                                      {
                                                         §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                         loop32:
                                                         while(true)
                                                         {
                                                            _loc9_ = §§pop();
                                                            loop33:
                                                            while(true)
                                                            {
                                                               addr310:
                                                               loop37:
                                                               while(true)
                                                               {
                                                                  §§push(_loc5_);
                                                                  §§push(_loc8_);
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(§§pop() * _loc6_);
                                                                  }
                                                                  §§pop().§"$§ = §§pop();
                                                                  loop38:
                                                                  while(_loc16_)
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        if(!(_loc15_ && _loc3_))
                                                                        {
                                                                           §§push(_loc5_);
                                                                           §§push(_loc9_);
                                                                           if(!_loc15_)
                                                                           {
                                                                              §§push(§§pop() * _loc6_);
                                                                           }
                                                                           §§pop().§8!g§ = §§pop();
                                                                           loop39:
                                                                           while(true)
                                                                           {
                                                                              if(_loc16_)
                                                                              {
                                                                                 if(_loc16_ || _loc3_)
                                                                                 {
                                                                                    _loc5_.x = this.§1!1§.x;
                                                                                    loop40:
                                                                                    for(; !(_loc15_ && _loc3_); if(!(_loc16_ || param1))
                                                                                    {
                                                                                       continue;
                                                                                    },if(!_loc15_)
                                                                                    {
                                                                                       _loc5_.§]!#§.play();
                                                                                       if(_loc16_ || this)
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             if(_loc16_ || _loc2_)
                                                                                             {
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   addr99:
                                                                                                   if(false)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_.§]!#§ = §0!o§.§,2§.§4!t§(_loc5_,{
                                                                                                            "scaleX":_loc11_,
                                                                                                            "scaleY":_loc11_
                                                                                                         },{
                                                                                                            "scaleX":_loc10_,
                                                                                                            "scaleY":_loc10_
                                                                                                         },5);
                                                                                                         §§goto(addr119);
                                                                                                         §§goto(addr99);
                                                                                                      }
                                                                                                      addr101:
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr497);
                                                                                                }
                                                                                                addr490:
                                                                                             }
                                                                                             §§goto(addr420);
                                                                                          }
                                                                                          §§goto(addr161);
                                                                                       }
                                                                                       §§goto(addr119);
                                                                                    },§§goto(addr368))
                                                                                    {
                                                                                       _loc5_.y = this.§1!1§.y;
                                                                                       loop41:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2m§.push(_loc5_);
                                                                                          loop42:
                                                                                          while(!(_loc15_ && _loc2_))
                                                                                          {
                                                                                             §§push(0.5);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                if(!(_loc15_ && param1))
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            §§push(Math.random() * 1.5);
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               addr208:
                                                                                                               if(_loc16_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop43:
                                                                                                                  while(_loc16_)
                                                                                                                  {
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        if(!(_loc16_ || param1))
                                                                                                                        {
                                                                                                                           break loop41;
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        loop44:
                                                                                                                        for(; !(_loc15_ && param1); if(_loc15_ && _loc2_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        },if(_loc16_)
                                                                                                                        {
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              §§goto(addr156);
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 if(!_loc15_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                       addr504:
                                                                                                                                    }
                                                                                                                                    §§push(0.5);
                                                                                                                                    while(_loc16_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr507);
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       §§goto(addr208);
                                                                                                                                    }
                                                                                                                                    continue loop2;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr647);
                                                                                                                                 }
                                                                                                                                 addr646:
                                                                                                                              }
                                                                                                                              §§goto(addr604);
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                           addr497:
                                                                                                                        },§§goto(addr416))
                                                                                                                        {
                                                                                                                           if(!(_loc15_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr242:
                                                                                                                              if(_loc16_ || _loc2_)
                                                                                                                              {
                                                                                                                                 _loc10_ = §§pop();
                                                                                                                                 loop45:
                                                                                                                                 for(; _loc16_ || param1; while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc15_ && param1))
                                                                                                                                    {
                                                                                                                                       continue loop39;
                                                                                                                                    }
                                                                                                                                    continue loop45;
                                                                                                                                 },§§goto(addr595))
                                                                                                                                 {
                                                                                                                                    §§push(0.2);
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       continue loop44;
                                                                                                                                    }
                                                                                                                                    addr156:
                                                                                                                                    if(_loc15_)
                                                                                                                                    {
                                                                                                                                       continue loop43;
                                                                                                                                    }
                                                                                                                                    if(!_loc15_)
                                                                                                                                    {
                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    loop59:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          continue loop28;
                                                                                                                                       }
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§[!e§);
                                                                                                                                          addr379:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc15_ && param1))
                                                                                                                                                {
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      addr390:
                                                                                                                                                      §§push(2);
                                                                                                                                                      if(_loc16_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                         addr416:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop59;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr390);
                                                                                                                                                      }
                                                                                                                                                      continue loop28;
                                                                                                                                                      addr415:
                                                                                                                                                   }
                                                                                                                                                   continue loop32;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                }
                                                                                                                                                addr552:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_ && this)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop16:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc7_ = §§pop();
                                                                                                                                                      addr516:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                     addr448:
                                                                                                                                                                     loop52:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                        addr449:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc16_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc16_ || _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 break loop52;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc16_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                                                                    break loop38;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop16;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                                  addr522:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  loop18:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                     addr614:
                                                                                                                                                                     addr647:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc8_ = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     addr647:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc7_ = §§pop();
                                                                                                                                                                        continue loop18;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr648:
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                                  addr604:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc9_ = §§pop();
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               continue loop37;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr507:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                                                                                addr533:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc9_ = §§pop();
                                                                                                                                                   break loop45;
                                                                                                                                                   §§goto(addr242);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr398:
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                          addr581:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             break loop44;
                                                                                                                                             §§goto(addr398);
                                                                                                                                          }
                                                                                                                                          addr581:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * Math.random());
                                                                                                                                             addr584:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc16_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr552);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(!(_loc15_ && param1))
                                                                                                                                 {
                                                                                                                                    continue loop37;
                                                                                                                                 }
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§goto(addr533);
                                                                                                                           }
                                                                                                                           §§goto(addr429);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              _loc13_ = §§pop();
                                                                                                                              break loop39;
                                                                                                                           }
                                                                                                                           §§goto(addr581);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr614);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc15_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           addr368:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc16_ || _loc2_)
                                                                                                                              {
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                              §§goto(addr516);
                                                                                                                           }
                                                                                                                           addr368:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc16_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§goto(addr415);
                                                                                                                              §§push(2);
                                                                                                                           }
                                                                                                                           §§goto(addr448);
                                                                                                                           addr439:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr379);
                                                                                                                  }
                                                                                                                  addr358:
                                                                                                               }
                                                                                                               §§goto(addr504);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  addr350:
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc16_ || this)
                                                                                                                     {
                                                                                                                        §§goto(addr358);
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     §§goto(addr587);
                                                                                                                  }
                                                                                                                  addr350:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§goto(addr646);
                                                                                                                  }
                                                                                                                  addr645:
                                                                                                               }
                                                                                                               §§goto(addr648);
                                                                                                            }
                                                                                                            addr347:
                                                                                                         }
                                                                                                         §§goto(addr647);
                                                                                                      }
                                                                                                      §§goto(addr584);
                                                                                                   }
                                                                                                   §§goto(addr398);
                                                                                                }
                                                                                                §§goto(addr350);
                                                                                             }
                                                                                             §§goto(addr228);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc16_ || param1)
                                                                                                {
                                                                                                   continue loop40;
                                                                                                }
                                                                                                continue loop42;
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop29;
                                                                                 }
                                                                                 addr637:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Math.PI * (Math.random() - 0.5));
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr645);
                                                                                 }
                                                                              }
                                                                              break;
                                                                              if(!(_loc16_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc16_)
                                                                              {
                                                                                 continue loop38;
                                                                              }
                                                                              if(_loc16_ || _loc3_)
                                                                              {
                                                                                 §§goto(addr101);
                                                                              }
                                                                              §§goto(addr595);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(Math.random() * (_loc13_ - _loc12_));
                                                                              if(_loc16_ || param1)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr347);
                                                                                 §§push(_loc12_);
                                                                              }
                                                                              §§goto(addr350);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              if(_loc15_ && _loc2_)
                                                                              {
                                                                                 continue loop33;
                                                                              }
                                                                              §§push(Math.PI / 2);
                                                                           }
                                                                           addr570:
                                                                        }
                                                                        §§goto(addr581);
                                                                     }
                                                                     §§goto(addr449);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc15_ && _loc3_)
                                                                     {
                                                                        continue loop75;
                                                                     }
                                                                     §§goto(addr439);
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
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr522);
         }
         var _loc2_:int = this.§2m§.length;
         §§push(_loc2_);
         if(!(_loc15_ && param1))
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!_loc15_)
         {
            loop77:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(!(_loc16_ || _loc2_))
               {
                  break;
               }
               _loc5_ = this.§2m§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§8!g§);
               if(!_loc15_)
               {
                  §§push(this.§=t§);
                  if(!(_loc15_ && _loc3_))
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§8!g§ = §§pop();
               if(!(_loc15_ && param1))
               {
                  if(_loc5_.§8!g§ > this.§;!7§)
                  {
                     if(_loc16_ || _loc2_)
                     {
                        _loc5_.§8!g§ = this.§;!7§;
                     }
                     loop78:
                     while(true)
                     {
                        addr863:
                        while(true)
                        {
                           if(_loc16_ || _loc2_)
                           {
                              _loc5_.y += _loc5_.§8!g§ * param1;
                              if(_loc15_ && _loc3_)
                              {
                                 break;
                              }
                              _loc5_.rotation += 5 * param1;
                              continue;
                           }
                           continue loop78;
                        }
                        continue loop77;
                     }
                     addr887:
                  }
                  while(true)
                  {
                     _loc5_.x += _loc5_.§"$§ * param1;
                     §§goto(addr863);
                     §§goto(addr887);
                  }
               }
               §§goto(addr834);
            }
         }
      }
   }
}
