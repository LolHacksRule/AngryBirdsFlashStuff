package §4L§
{
   import §57§.§,!b§;
   import flash.display.Sprite;
   import flash.geom.Point;
   import §true§.§ _§;
   
   public class §3!J§ extends Sprite
   {
      
      public static const §=?§:int = 0;
      
      public static const §#!-§:int = 1;
      
      public static const §]T§:int = 2;
      
      public static const §2q§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §=?§ = 0;
            while(true)
            {
               §#!-§ = 1;
               loop1:
               while(!_loc1_)
               {
                  §]T§ = 2;
                  while(true)
                  {
                     §2q§ = 3;
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      private const §0U§:uint = 40;
      
      private const §[Q§:Number = 0.3;
      
      private const §0j§:Number = 25;
      
      private const §7!§:Number = 10;
      
      private const §^n§:Number = 9;
      
      private var §#!m§:int;
      
      private var §58§:int;
      
      private var §<!B§:Array;
      
      private var §1!r§:Array;
      
      private var §6]§:Point;
      
      private var §0!v§:int;
      
      public function §3!J§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:§1,§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(_loc14_)
         {
            super();
            loop0:
            while(true)
            {
               addr40:
               while(true)
               {
                  this.§#!m§ = param1;
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr40);
         }
         var _loc7_:Number = Math.min(§ _§.§[!Y§,§ _§.§0!2§);
         var _loc8_:Number = Math.max(§ _§.§[!Y§,§ _§.§0!2§);
         if(_loc14_)
         {
            §§push(param3);
            loop4:
            while(true)
            {
               §§push(§ _§.§0!2§);
               addr186:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  addr187:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr188:
                     while(true)
                     {
                        param3 = §§pop();
                        loop8:
                        while(true)
                        {
                           §§push(param4);
                           if(_loc14_ || param2)
                           {
                              continue loop4;
                           }
                           addr181:
                           param4 = §§pop();
                           while(true)
                           {
                              this.§0!v§ = param5;
                              loop11:
                              for(; _loc14_ || param2; while(true)
                              {
                                 if(!(_loc14_ || param1))
                                 {
                                    continue loop11;
                                 }
                                 if(_loc13_ && param1)
                                 {
                                    break;
                                 }
                                 this.§1!r§ = [];
                                 if(!_loc14_)
                                 {
                                    continue;
                                 }
                                 if(_loc13_ && param3)
                                 {
                                    continue loop8;
                                 }
                                 §§goto(addr87);
                              },while(true)
                              {
                                 this.§6]§ = new Point(param3,param4);
                                 continue loop11;
                                 §§goto(addr100);
                              })
                              {
                                 do
                                 {
                                    this.§<!B§ = [];
                                    continue loop11;
                                 }
                                 while(false);
                                 
                                 var _loc12_:int = 0;
                                 while(_loc12_ < param6)
                                 {
                                    §§push(§§findproperty(§1,§));
                                    §§push(Math.random() * 40);
                                    if(!(_loc13_ && param2))
                                    {
                                       §§push(§§pop() + 10);
                                    }
                                    (_loc9_ = new §§pop().§1,§(§§pop())).x = -2000;
                                    if(!_loc13_)
                                    {
                                       _loc9_.y = -2000;
                                       while(true)
                                       {
                                          this.addChild(_loc9_);
                                          loop16:
                                          for(; !_loc13_; while(true)
                                          {
                                             if(!(_loc13_ && param2))
                                             {
                                                _loc12_++;
                                                if(!_loc13_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop16;
                                          })
                                          {
                                             while(true)
                                             {
                                                this.§<!B§[_loc12_] = _loc9_;
                                                continue loop16;
                                             }
                                          }
                                       }
                                    }
                                    while(false)
                                    {
                                       §§goto(addr223);
                                    }
                                 }
                                 if(!(_loc13_ && this))
                                 {
                                    this.scaleX = _loc8_;
                                    if(!(_loc13_ && param3))
                                    {
                                       addr278:
                                       this.scaleY = _loc8_;
                                    }
                                    return;
                                 }
                                 §§goto(addr278);
                              }
                           }
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§1,§ = null;
         loop0:
         while(true)
         {
            §§push(this.§<!B§);
            if(!_loc3_)
            {
               if(§§pop().length > 0)
               {
                  §§push(this.§<!B§);
                  if(_loc3_)
                  {
                     break;
                  }
                  _loc1_ = §§pop().shift();
                  if(!_loc3_)
                  {
                     _loc1_.clean();
                  }
                  continue;
               }
               if(!(_loc3_ && this))
               {
                  while(true)
                  {
                     §§push(this.§1!r§);
                     while(§§pop().length > 0)
                     {
                        §§push(this.§1!r§);
                        if(!_loc3_)
                        {
                           break loop0;
                        }
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        this.§<!B§ = [];
                        if(!_loc3_)
                        {
                           addr96:
                           this.§1!r§ = [];
                        }
                        return;
                     }
                  }
                  addr79:
               }
               §§goto(addr96);
            }
            break;
         }
         while(true)
         {
            _loc1_ = §§pop().shift();
            if(!_loc3_)
            {
               _loc1_.clean();
            }
            §§goto(addr79);
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc3_:* = false;
         var _loc5_:§1,§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc15_ && param1))
         {
            §§push(param1);
            if(_loc16_)
            {
               §§push(§§pop() / 20);
               if(!(_loc15_ && this))
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§<!B§);
            if(_loc16_ || _loc2_)
            {
               if(§§pop().length <= 0)
               {
                  §§push(this.§1!r§);
                  break;
               }
               §§push(this.§<!B§);
               if(_loc15_ && param1)
               {
                  break;
               }
               _loc5_ = §§pop().shift();
               if(!_loc15_)
               {
                  §§push(Math.random() * (this.§0j§ - this.§7!§));
                  loop1:
                  while(true)
                  {
                     §§push(this.§7!§);
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
                                 §§push(this.§0!v§);
                                 while(true)
                                 {
                                    §§push(§=?§);
                                    loop7:
                                    while(§§pop() != §§pop())
                                    {
                                       §§push(this.§0!v§);
                                       while(true)
                                       {
                                          §§push(§#!-§);
                                          loop9:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(this.§0!v§);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§]T§);
                                                addr592:
                                                while(§§pop() != §§pop())
                                                {
                                                   continue loop10;
                                                }
                                                loop58:
                                                while(true)
                                                {
                                                   §§push(Math.PI / 2);
                                                   loop31:
                                                   while(true)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         §§push(§§pop() * Math.random());
                                                         loop32:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop33:
                                                            while(true)
                                                            {
                                                               _loc7_ = §§pop();
                                                               loop34:
                                                               while(true)
                                                               {
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                     loop35:
                                                                     while(true)
                                                                     {
                                                                        _loc8_ = §§pop();
                                                                        loop57:
                                                                        while(true)
                                                                        {
                                                                           if(_loc15_ && _loc2_)
                                                                           {
                                                                              continue loop58;
                                                                           }
                                                                           §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                           loop51:
                                                                           while(true)
                                                                           {
                                                                              if(_loc16_ || _loc3_)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 loop52:
                                                                                 while(true)
                                                                                 {
                                                                                    addr303:
                                                                                    loop39:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       §§push(_loc8_);
                                                                                       if(_loc16_ || this)
                                                                                       {
                                                                                          §§push(§§pop() * _loc6_);
                                                                                       }
                                                                                       §§pop().§8M§ = §§pop();
                                                                                       addr316:
                                                                                       loop40:
                                                                                       for(; _loc16_ || param1; if(!(_loc16_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       },if(!_loc15_)
                                                                                       {
                                                                                          if(!(_loc15_ && _loc3_))
                                                                                          {
                                                                                             §§goto(addr103);
                                                                                          }
                                                                                          §§goto(addr654);
                                                                                       },§§goto(addr456))
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          §§push(_loc9_);
                                                                                          if(!(_loc15_ && param1))
                                                                                          {
                                                                                             §§push(§§pop() * _loc6_);
                                                                                          }
                                                                                          §§pop().§>!^§ = §§pop();
                                                                                          loop41:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_.x = this.§6]§.x;
                                                                                             loop42:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   break loop7;
                                                                                                }
                                                                                                _loc5_.y = this.§6]§.y;
                                                                                                loop43:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§1!r§.push(_loc5_);
                                                                                                   loop44:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         continue loop42;
                                                                                                      }
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         if(_loc16_ || param1)
                                                                                                         {
                                                                                                            if(_loc16_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc16_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  if(!(_loc15_ && this))
                                                                                                                  {
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           if(!(_loc15_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr181:
                                                                                                                              §§push(Math.random() * 1.5);
                                                                                                                              if(!(_loc15_ && param1))
                                                                                                                              {
                                                                                                                                 addr192:
                                                                                                                                 if(!(_loc15_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    loop45:
                                                                                                                                    while(_loc16_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop46:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc16_)
                                                                                                                                          {
                                                                                                                                             addr210:
                                                                                                                                             if(!(_loc15_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                continue loop35;
                                                                                                                                             }
                                                                                                                                             loop27:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc15_)
                                                                                                                                                {
                                                                                                                                                   continue loop51;
                                                                                                                                                }
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                loop28:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                   addr448:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc15_ && this)
                                                                                                                                                      {
                                                                                                                                                         continue loop31;
                                                                                                                                                      }
                                                                                                                                                      _loc9_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§7!§);
                                                                                                                                                         loop61:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc16_ || this)
                                                                                                                                                            {
                                                                                                                                                               if(_loc16_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(2);
                                                                                                                                                                  loop68:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                     loop70:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        loop71:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc15_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop4;
                                                                                                                                                                              }
                                                                                                                                                                              _loc12_ = §§pop();
                                                                                                                                                                              while(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop28;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§0j§);
                                                                                                                                                                                 addr377:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc16_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop71;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc15_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop70;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(2);
                                                                                                                                                                                       if(_loc15_ && _loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop68;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          addr403:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc16_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                break loop40;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr402:
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          addr653:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                                                                             addr654:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                                                addr632:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                                                                   loop56:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                                                                      addr615:
                                                                                                                                                                                                      loop37:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc16_ || _loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc9_ = §§pop();
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop39;
                                                                                                                                                                                                               addr234:
                                                                                                                                                                                                               if(_loc15_ && this)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(0.2);
                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop45;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break loop46;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc15_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop46;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc16_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  _loc11_ = §§pop();
                                                                                                                                                                                                                  loop48:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc15_ && param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc15_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop41;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop34;
                                                                                                                                                                                                                        addr225:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc16_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           do
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc5_.§3v§ = §,!b§.§<d§.§>a§(_loc5_,{
                                                                                                                                                                                                                                 "scaleX":_loc11_,
                                                                                                                                                                                                                                 "scaleY":_loc11_
                                                                                                                                                                                                                              },{
                                                                                                                                                                                                                                 "scaleX":_loc10_,
                                                                                                                                                                                                                                 "scaleY":_loc10_
                                                                                                                                                                                                                              },5);
                                                                                                                                                                                                                              while(_loc16_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop9;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc5_.§3v§.play();
                                                                                                                                                                                                                                 if(!_loc15_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop44;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop48;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(false);
                                                                                                                                                                                                                           
                                                                                                                                                                                                                           continue loop0;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop34;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr364:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc15_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc16_ || _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop48;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop39;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr538:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc15_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                                                                                 continue loop27;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop56;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop57;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr402);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                                                                                                                                                                  addr679:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                                                                     addr680:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                                                                                                                                                                                        addr665:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc16_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc9_ = §§pop();
                                                                                                                                                                                                                              break loop44;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop3;
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
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               continue loop37;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr703:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr652:
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                                                                       §§goto(addr705);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr333:
                                                                                                                                                                                    if(!(_loc16_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop61;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc15_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc15_ && _loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop2;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc15_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   break loop45;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr181);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr352:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc15_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                loop19:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr652);
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   addr528:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc15_ && _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         addr537:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                                                                            §§goto(addr538);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr192);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                                                                   if(!(_loc15_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * Math.random());
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr692:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr703);
                                                                                                                                                                                             break loop9;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr648:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc16_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr528);
                                                                                                                                                                                             §§push(0.5);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr518:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr665);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr632);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr679);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr536);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr360);
                                                                                                                                       }
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc6_ = §§pop();
                                                                                                                                       §§goto(addr364);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr528);
                                                                                                                              }
                                                                                                                              §§goto(addr352);
                                                                                                                           }
                                                                                                                           §§goto(addr537);
                                                                                                                        }
                                                                                                                        §§goto(addr448);
                                                                                                                     }
                                                                                                                     §§goto(addr403);
                                                                                                                  }
                                                                                                                  §§goto(addr208);
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop52;
                                                                                                         }
                                                                                                         §§goto(addr518);
                                                                                                         §§goto(addr665);
                                                                                                      }
                                                                                                      §§goto(addr437);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop39;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§goto(addr333);
                                                                                          }
                                                                                          §§goto(addr360);
                                                                                          §§goto(addr316);
                                                                                       }
                                                                                       §§goto(addr377);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr653);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr680);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr615);
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr648);
                                       }
                                    }
                                    if(!_loc16_)
                                    {
                                       continue loop5;
                                    }
                                    §§goto(addr692);
                                    §§push(Math.PI / 2);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr439);
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(!_loc15_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(_loc16_ || _loc2_)
         {
            loop73:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(_loc15_ && _loc3_)
               {
                  break;
               }
               _loc5_ = this.§1!r§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§>!^§);
               if(!(_loc15_ && this))
               {
                  §§push(this.§[Q§);
                  if(!(_loc15_ && this))
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§>!^§ = §§pop();
               if(!(_loc15_ && _loc2_))
               {
                  if(_loc5_.§>!^§ > this.§^n§)
                  {
                     while(true)
                     {
                        _loc5_.§>!^§ = this.§^n§;
                        addr960:
                        while(true)
                        {
                        }
                        addr843:
                        if(_loc15_ && _loc3_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              loop86:
                              while(true)
                              {
                                 §§push(this.§1!r§);
                                 if(_loc16_ || _loc3_)
                                 {
                                    §§push(§§pop().length > 0);
                                    if(!_loc15_)
                                    {
                                       addr970:
                                       if(§§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             addr817:
                                             if(_loc16_)
                                             {
                                                addr819:
                                                if(_loc16_ || _loc2_)
                                                {
                                                   §§pop();
                                                   if(_loc15_)
                                                   {
                                                      continue loop73;
                                                   }
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      addr836:
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§goto(addr843);
                                                      }
                                                      else
                                                      {
                                                         while(_loc16_)
                                                         {
                                                            §§push(true);
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                            }
                                                            §§goto(addr836);
                                                         }
                                                         while(_loc16_)
                                                         {
                                                            _loc5_.y += _loc5_.§>!^§ * param1;
                                                            loop78:
                                                            while(true)
                                                            {
                                                               _loc5_.rotation += 5 * param1;
                                                               while(true)
                                                               {
                                                                  if(_loc5_.x >= -_loc5_.width / 2)
                                                                  {
                                                                     if(_loc5_.x > this.§#!m§ + _loc5_.width / 2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc5_.y <= this.§58§ + _loc5_.height / 2)
                                                                     {
                                                                        continue loop86;
                                                                     }
                                                                     §§goto(addr865);
                                                                  }
                                                                  addr910:
                                                                  while(_loc16_)
                                                                  {
                                                                     §§push(true);
                                                                     while(true)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        if(!_loc16_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop86;
                                                                        }
                                                                     }
                                                                     continue loop73;
                                                                  }
                                                                  continue loop78;
                                                               }
                                                            }
                                                         }
                                                         addr865:
                                                         §§goto(addr960);
                                                         addr948:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc16_)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            continue loop86;
                                                         }
                                                         §§goto(addr910);
                                                      }
                                                      §§goto(addr887);
                                                   }
                                                }
                                                §§goto(addr895);
                                             }
                                             §§goto(addr868);
                                          }
                                          addr969:
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             §§push(this.§1!r§);
                                             break;
                                          }
                                          continue loop73;
                                       }
                                       addr1008:
                                       §§push(_loc4_);
                                       if(!(_loc15_ && _loc2_))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       _loc4_ = §§pop();
                                       continue loop73;
                                    }
                                    §§goto(addr817);
                                 }
                                 break;
                              }
                              if((_loc14_ = §§pop().splice(_loc4_,1)) is §1,§)
                              {
                                 if(!_loc15_)
                                 {
                                    _loc14_.clean();
                                    if(_loc16_)
                                    {
                                       addr1000:
                                       _loc5_.x = -2000;
                                       if(_loc16_)
                                       {
                                          _loc5_.y = -2000;
                                       }
                                    }
                                 }
                                 §§goto(addr1008);
                              }
                              §§goto(addr1000);
                           }
                        }
                        §§push(_loc3_);
                        if(!(_loc15_ && _loc3_))
                        {
                           §§goto(addr969);
                        }
                        §§goto(addr970);
                     }
                  }
                  while(true)
                  {
                     _loc5_.x += _loc5_.§8M§ * param1;
                     §§goto(addr948);
                     §§goto(addr960);
                  }
               }
               §§goto(addr916);
            }
         }
      }
   }
}
