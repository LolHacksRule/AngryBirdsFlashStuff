package §_-0Ar§
{
   import §_-0AB§.§_-cx§;
   import §_-qO§.§ in§;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class §_-0F0§ extends Sprite
   {
      
      public static const §_-CV§:int = 0;
      
      public static const §_-01f§:int = 1;
      
      public static const §_-0Ba§:int = 2;
      
      public static const §_-J1§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-CV§ = 0;
            loop0:
            while(true)
            {
               §_-01f§ = 1;
               while(true)
               {
                  §_-0Ba§ = 2;
                  loop2:
                  while(!_loc2_)
                  {
                     continue loop0;
                     while(true)
                     {
                        §_-J1§ = 3;
                        if(_loc1_ || _loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr68);
      }
      
      private const §_-bb§:uint = 40;
      
      private const §_-CI§:Number = 0.3;
      
      private const §_-VQ§:Number = 25;
      
      private const §_-6u§:Number = 10;
      
      private const §_-08t§:Number = 9;
      
      private var §_-mG§:int;
      
      private var §_-th§:int;
      
      private var §_-cT§:Array;
      
      private var §_-01I§:Array;
      
      private var §_-Pd§:Point;
      
      private var §_-06B§:int;
      
      public function §_-0F0§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int = 40)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc9_:§_-6t§ = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         if(_loc14_)
         {
            super();
            loop0:
            while(true)
            {
               addr35:
               while(true)
               {
                  this.§_-mG§ = param1;
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr35);
         }
         var _loc7_:Number = Math.min(§ in§.§_-Sr§,§ in§.§_-57§);
         var _loc8_:Number = Math.max(§ in§.§_-Sr§,§ in§.§_-57§);
         if(!(_loc13_ && this))
         {
            §§push(param3);
            loop4:
            while(true)
            {
               §§push(§ in§.§_-57§);
               loop5:
               while(true)
               {
                  §§push(§§pop() / §§pop());
                  if(!(_loc13_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
                  loop6:
                  while(true)
                  {
                     param3 = §§pop();
                     addr174:
                     while(true)
                     {
                        §§push(param4);
                        if(!(_loc13_ && param1))
                        {
                           §§push(§ in§.§_-Sr§);
                           if(_loc13_)
                           {
                              continue loop5;
                           }
                           §§push(§§pop() / §§pop());
                           if(!(_loc14_ || param2))
                           {
                              continue loop4;
                           }
                        }
                        if(_loc14_)
                        {
                           §§push(Number(§§pop()));
                           continue loop4;
                        }
                        continue loop6;
                     }
                     continue loop4;
                  }
               }
            }
         }
         while(true)
         {
            this.§_-06B§ = param5;
            §§goto(addr115);
         }
      }
      
      public function clean() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-6t§ = null;
         loop0:
         while(true)
         {
            §§push(this.§_-cT§);
            if(!_loc2_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§_-cT§);
                  if(_loc3_)
                  {
                     _loc1_ = §§pop().shift();
                     if(!_loc2_)
                     {
                        _loc1_.clean();
                     }
                     continue loop0;
                  }
               }
               if(!(_loc2_ && this))
               {
                  while(true)
                  {
                     §§push(this.§_-01I§);
                     break loop0;
                  }
                  addr85:
               }
               §§goto(addr102);
            }
            break;
         }
         while(§§pop().length > 0)
         {
            §§push(this.§_-01I§);
            if(!_loc3_)
            {
               continue;
            }
            _loc1_ = §§pop().shift();
            if(_loc3_ || this)
            {
               _loc1_.clean();
            }
            §§goto(addr85);
         }
         if(_loc3_)
         {
            this.§_-cT§ = [];
            if(_loc3_ || _loc3_)
            {
            }
            §§goto(addr102);
         }
         addr102:
         this.§_-01I§ = [];
      }
      
      public function update(param1:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc3_:* = false;
         var _loc5_:§_-6t§ = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Object = null;
         if(!(_loc16_ && this))
         {
            §§push(param1);
            if(_loc15_ || param1)
            {
               §§push(§§pop() / 20);
               if(_loc15_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            param1 = §§pop();
         }
         loop0:
         while(true)
         {
            §§push(this.§_-cT§);
            if(!_loc16_)
            {
               while(§§pop().length > 0)
               {
                  §§push(this.§_-cT§);
                  if(_loc16_)
                  {
                     continue;
                  }
                  _loc5_ = §§pop().shift();
                  if(_loc15_ || this)
                  {
                     §§push(Math.random() * (this.§_-VQ§ - this.§_-6u§));
                     loop2:
                     while(true)
                     {
                        §§push(this.§_-6u§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           loop4:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc6_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§_-06B§);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§_-CV§);
                                       loop8:
                                       while(§§pop() != §§pop())
                                       {
                                          §§push(this.§_-06B§);
                                          loop9:
                                          for(; !_loc16_; if(!(_loc15_ || param1))
                                          {
                                             continue;
                                          },§§push(§_-J1§),if(_loc16_ && this)
                                          {
                                             §§goto(addr545);
                                          },if(§§pop() == §§pop())
                                          {
                                             §§goto(addr475);
                                          },§§goto(addr303))
                                          {
                                             §§push(§_-01f§);
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc15_ || _loc2_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      §§push(this.§_-06B§);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§_-0Ba§);
                                                         addr545:
                                                         while(true)
                                                         {
                                                            if(!_loc16_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  break;
                                                               }
                                                               §§push(this.§_-06B§);
                                                               if(!_loc16_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop10;
                                                         }
                                                         loop39:
                                                         while(true)
                                                         {
                                                            §§push(Math.PI / 2);
                                                            loop36:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * Math.random());
                                                               loop64:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop66:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     loop68:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(Math.sin(_loc7_ + Math.PI / 2)));
                                                                        loop52:
                                                                        while(true)
                                                                        {
                                                                           _loc8_ = §§pop();
                                                                           loop26:
                                                                           while(true)
                                                                           {
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(Number(Math.cos(_loc7_ + Math.PI / 2)));
                                                                                 loop61:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       _loc9_ = §§pop();
                                                                                       loop45:
                                                                                       while(true)
                                                                                       {
                                                                                          addr303:
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             §§push(_loc8_);
                                                                                             if(_loc15_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc6_);
                                                                                             }
                                                                                             §§pop().§_-Zo§ = §§pop();
                                                                                             loop71:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                §§push(_loc9_);
                                                                                                if(!(_loc16_ && this))
                                                                                                {
                                                                                                   §§push(§§pop() * _loc6_);
                                                                                                }
                                                                                                §§pop().§_-Vp§ = §§pop();
                                                                                                loop65:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      _loc5_.x = this.§_-Pd§.x;
                                                                                                      loop51:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            if(!(_loc15_ || _loc2_))
                                                                                                            {
                                                                                                               continue loop26;
                                                                                                            }
                                                                                                            _loc5_.y = this.§_-Pd§.y;
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§_-01I§.push(_loc5_);
                                                                                                               loop14:
                                                                                                               while(_loc15_)
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  loop15:
                                                                                                                  while(_loc15_)
                                                                                                                  {
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        continue loop64;
                                                                                                                     }
                                                                                                                     if(!(_loc16_ && param1))
                                                                                                                     {
                                                                                                                        §§push(Math.random() * 1.5);
                                                                                                                        if(_loc15_ || _loc3_)
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 loop16:
                                                                                                                                 while(_loc15_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       loop17:
                                                                                                                                       while(_loc15_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          if(_loc15_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                loop18:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc16_)
                                                                                                                                                   {
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      continue loop13;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc15_)
                                                                                                                                                   {
                                                                                                                                                      continue loop45;
                                                                                                                                                   }
                                                                                                                                                   §§push(0.2);
                                                                                                                                                   if(!(_loc16_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         continue loop17;
                                                                                                                                                      }
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               continue loop52;
                                                                                                                                                            }
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc15_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr176:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop16;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop15;
                                                                                                                                                                  }
                                                                                                                                                                  _loc11_ = §§pop();
                                                                                                                                                                  loop19:
                                                                                                                                                                  for(; _loc15_ || _loc2_; if(_loc16_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  },if(!(_loc15_ || _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop51;
                                                                                                                                                                  },§§goto(addr108))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc16_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop68;
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        do
                                                                                                                                                                        {
                                                                                                                                                                           _loc5_.§_-fU§ = §_-cx§.§_-3S§.§_-Wf§(_loc5_,{
                                                                                                                                                                              "scaleX":_loc11_,
                                                                                                                                                                              "scaleY":_loc11_
                                                                                                                                                                           },{
                                                                                                                                                                              "scaleX":_loc10_,
                                                                                                                                                                              "scaleY":_loc10_
                                                                                                                                                                           },5);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc16_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop18;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc16_ && _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop65;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop71;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc15_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_.§_-fU§.play();
                                                                                                                                                                                    if(!(_loc16_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop19;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue;
                                                                                                                                                                                 }
                                                                                                                                                                                 loop72:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc15_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop10;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc16_ && _loc2_))
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc9_ = §§pop();
                                                                                                                                                                                          loop31:
                                                                                                                                                                                          do
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§_-6u§);
                                                                                                                                                                                             loop32:
                                                                                                                                                                                             for(; !(_loc16_ && param1); loop34:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc16_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc16_ && _loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc13_ = §§pop();
                                                                                                                                                                                                   loop35:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(Math.random() * (_loc13_ - _loc12_));
                                                                                                                                                                                                      if(_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop34;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr337:
                                                                                                                                                                                                      addr343:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc16_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            break loop15;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop36;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc15_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break loop35;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop31;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                             },continue loop5)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(2);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                   if(!(_loc16_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc15_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr414:
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc12_ = §§pop();
                                                                                                                                                                                                            break loop19;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr414:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0.5);
                                                                                                                                                                                                            addr493:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc15_ || _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr502:
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  loop69:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                     addr503:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc16_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                                                                           while(_loc15_ || _loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc8_ = §§pop();
                                                                                                                                                                                                                              continue loop72;
                                                                                                                                                                                                                              if(!(_loc15_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc15_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                 continue loop32;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr669:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * Math.random());
                                                                                                                                                                                                                                 addr672:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr673:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                                                                                                                       addr674:
                                                                                                                                                                                                                                       loop50:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(Math.sin(_loc7_ - Math.PI / 2)));
                                                                                                                                                                                                                                          addr650:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc8_ = §§pop();
                                                                                                                                                                                                                                             addr651:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(Number(Math.cos(_loc7_ - Math.PI / 2)));
                                                                                                                                                                                                                                                break loop32;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop50;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc7_ = §§pop();
                                                                                                                                                                                                                              loop38:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc16_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(Math.sin(_loc7_ + Math.PI)));
                                                                                                                                                                                                                                    loop73:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc8_ = §§pop();
                                                                                                                                                                                                                                       addr579:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc15_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop38;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc16_ && param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop8;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(Number(Math.cos(_loc7_ + Math.PI)));
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc9_ = §§pop();
                                                                                                                                                                                                                                             break loop14;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop73;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr578:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr639:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop38;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr617:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr674);
                                                                                                                                                                                                                        continue loop69;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr502:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr502);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr492:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr414);
                                                                                                                                                                                                   break loop17;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                   addr613:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc16_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         break loop16;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop3;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(!(_loc15_ || param1));
                                                                                                                                                                                          
                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop61;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr343);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop65;
                                                                                                                                                                        }
                                                                                                                                                                        while(false);
                                                                                                                                                                        
                                                                                                                                                                        continue loop0;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr651);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§_-VQ§);
                                                                                                                                                                     break loop17;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr578);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr568);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr502);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr414);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr176);
                                                                                                                                                }
                                                                                                                                                continue loop45;
                                                                                                                                             }
                                                                                                                                             continue loop66;
                                                                                                                                          }
                                                                                                                                          §§goto(addr424);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc16_)
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr364);
                                                                                                                                                }
                                                                                                                                                §§goto(addr374);
                                                                                                                                             }
                                                                                                                                             §§goto(addr403);
                                                                                                                                          }
                                                                                                                                          §§goto(addr612);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr650);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr617);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr613);
                                                                                                                           }
                                                                                                                           §§goto(addr493);
                                                                                                                        }
                                                                                                                        §§goto(addr334);
                                                                                                                     }
                                                                                                                     §§goto(addr672);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc15_)
                                                                                                                     {
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        §§goto(addr343);
                                                                                                                     }
                                                                                                                     §§goto(addr673);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr503);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                      }
                                                                                                      addr475:
                                                                                                   }
                                                                                                   §§goto(addr492);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr668:
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr669);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr579);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop8;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr612);
                                             }
                                          }
                                          continue loop7;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc15_ || param1))
                                          {
                                             continue loop6;
                                          }
                                          §§goto(addr668);
                                          §§push(Math.PI / 2);
                                       }
                                       §§goto(addr674);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr270);
               }
               §§push(this.§_-01I§);
               break;
            }
            break;
         }
         var _loc2_:int = §§pop().length;
         §§push(_loc2_);
         if(_loc15_ || this)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc4_:* = §§pop();
         if(!(_loc16_ && this))
         {
            loop75:
            while(_loc4_ >= 0)
            {
               _loc3_ = false;
               if(_loc16_ && _loc2_)
               {
                  break;
               }
               _loc5_ = this.§_-01I§[_loc4_];
               §§push(_loc5_);
               §§push(_loc5_.§_-Vp§);
               if(_loc15_)
               {
                  §§push(this.§_-CI§);
                  if(!_loc16_)
                  {
                     §§push(§§pop() * param1);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§_-Vp§ = §§pop();
               if(_loc15_)
               {
                  if(_loc5_.§_-Vp§ > this.§_-08t§)
                  {
                     while(true)
                     {
                        _loc5_.§_-Vp§ = this.§_-08t§;
                        addr919:
                        while(true)
                        {
                        }
                        addr776:
                        if(!(_loc15_ || param1))
                        {
                           continue;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              loop85:
                              while(true)
                              {
                                 §§push(this.§_-01I§);
                                 if(!(_loc16_ && param1))
                                 {
                                    §§push(§§pop().length > 0);
                                    if(_loc15_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc15_)
                                          {
                                             §§pop();
                                             if(_loc16_)
                                             {
                                                continue loop75;
                                             }
                                             if(_loc15_)
                                             {
                                                §§goto(addr776);
                                             }
                                             else
                                             {
                                                loop86:
                                                while(true)
                                                {
                                                   if(!(_loc16_ && this))
                                                   {
                                                      §§push(true);
                                                      if(!(_loc15_ || param1))
                                                      {
                                                         addr924:
                                                         addr923:
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc16_ && this))
                                                            {
                                                               §§push(this.§_-01I§);
                                                               break loop85;
                                                            }
                                                            continue loop75;
                                                         }
                                                         §§push(_loc4_);
                                                         if(_loc15_ || this)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         _loc4_ = §§pop();
                                                         continue loop75;
                                                      }
                                                      addr848:
                                                      _loc3_ = §§pop();
                                                   }
                                                   else
                                                   {
                                                      loop87:
                                                      while(true)
                                                      {
                                                         if(!(_loc16_ && param1))
                                                         {
                                                            §§push(true);
                                                            loop90:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr868:
                                                               loop82:
                                                               while(_loc15_)
                                                               {
                                                                  addr870:
                                                                  if(_loc15_ || _loc2_)
                                                                  {
                                                                     continue loop85;
                                                                  }
                                                                  addr909:
                                                                  addr909:
                                                                  while(true)
                                                                  {
                                                                     _loc5_.y += _loc5_.§_-Vp§ * param1;
                                                                     addr898:
                                                                     while(true)
                                                                     {
                                                                        _loc5_.rotation += 5 * param1;
                                                                        break loop82;
                                                                     }
                                                                     §§goto(addr870);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc5_.x < -_loc5_.width / 2)
                                                                  {
                                                                     continue loop87;
                                                                  }
                                                                  if(_loc5_.x > this.§_-mG§ + _loc5_.width / 2)
                                                                  {
                                                                     continue loop86;
                                                                  }
                                                                  if(_loc5_.y <= this.§_-th§ + _loc5_.height / 2)
                                                                  {
                                                                     continue loop85;
                                                                  }
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     if(_loc15_)
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(true);
                                                                           if(!_loc16_)
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 continue loop90;
                                                                              }
                                                                              _loc3_ = §§pop();
                                                                              if(_loc16_)
                                                                              {
                                                                                 continue loop75;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr924);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr868);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc16_)
                                                                     {
                                                                        continue loop85;
                                                                     }
                                                                     addr849:
                                                                     while(true)
                                                                     {
                                                                        continue loop85;
                                                                        §§goto(addr848);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr898);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr919);
                                                         }
                                                         §§goto(addr909);
                                                      }
                                                   }
                                                   §§goto(addr849);
                                                }
                                             }
                                          }
                                          §§goto(addr923);
                                       }
                                    }
                                    §§goto(addr924);
                                 }
                                 break;
                              }
                              if((_loc14_ = §§pop().splice(_loc4_,1)) is §_-6t§)
                              {
                                 if(!_loc16_)
                                 {
                                    _loc14_.clean();
                                    if(!(_loc16_ && this))
                                    {
                                       addr964:
                                       _loc5_.x = -2000;
                                       if(_loc15_)
                                       {
                                          addr969:
                                          _loc5_.y = -2000;
                                       }
                                       §§goto(addr924);
                                    }
                                 }
                                 §§goto(addr969);
                              }
                              §§goto(addr964);
                           }
                        }
                        §§push(_loc3_);
                        if(!_loc15_)
                        {
                        }
                        §§goto(addr924);
                     }
                  }
                  while(true)
                  {
                     _loc5_.x += _loc5_.§_-Zo§ * param1;
                     §§goto(addr909);
                     §§goto(addr919);
                  }
               }
               §§goto(addr809);
            }
         }
      }
   }
}
