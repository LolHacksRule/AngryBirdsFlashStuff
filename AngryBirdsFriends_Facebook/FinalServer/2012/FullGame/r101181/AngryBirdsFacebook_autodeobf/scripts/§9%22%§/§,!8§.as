package §9"%§
{
   import §#]§.b2Vec2;
   import §%Q§.§6G§;
   import §%Q§.§9!n§;
   import §%Q§.§;!y§;
   import §1!$§.Sprite;
   import §3![§.§^"1§;
   import §48§.b2Body;
   import §48§.b2Fixture;
   import §48§.b2World;
   import §6!B§.§>!E§;
   import §9"!§.§9"3§;
   import §<!`§.b2CircleShape;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import §]!A§.;
   
   public class §,!8§ extends § H§
   {
      
      public static const §9!3§:int = 6;
      
      private static const §5!g§:int = 200;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§§findproperty(§9!3§));
            §§push(241 * §9"3§.§'"F§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§§pop() / 2);
            }
            §§pop().§9!3§ = §§pop();
            do
            {
               §5!g§ = 200;
            }
            while(!_loc1_);
            
         }
      }
      
      private const §8!8§:Number = -5;
      
      private const §9!R§:int = 1500;
      
      private const §with§:int = 3500;
      
      private const §#!v§:int = 1500;
      
      private var §1!k§:Boolean = false;
      
      private var §#4§:Boolean = false;
      
      private var §<3§:Number = -5;
      
      private var §4!p§:Number = -5;
      
      private var §-"3§:Number = -5;
      
      private var §#J§:Number = 0;
      
      private var §@!Z§:int = 0;
      
      private var §-!p§:Number = 0;
      
      private var §!"<§:Number = 0;
      
      private var §0'§:Number = 0;
      
      private var § !x§:Number = 1000;
      
      private var §-!0§:Boolean = false;
      
      private var §`@§:§]a§;
      
      public function §,!8§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               this.§`@§ = param1;
               loop2:
               while(_loc13_ || this)
               {
                  this.§0'§ = 0;
                  if(_loc13_)
                  {
                     addr45:
                     if(_loc12_)
                     {
                        while(true)
                        {
                           §"!&§.mTryToFly = true;
                           continue loop2;
                           §§goto(addr45);
                        }
                        addr74:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      private function get §-!8§() : Number
      {
         return §9!3§ * scale;
      }
      
      override public function addDamageParticles(param1:§^!f§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param2 < 2);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§ !x§);
                        while(true)
                        {
                           §§push(§§pop() < §5!g§);
                           if(_loc4_)
                           {
                              break;
                           }
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                           addr54:
                           loop5:
                           while(true)
                           {
                              §§push(this.§4!p§);
                              if(_loc4_ && this)
                              {
                                 break;
                              }
                              if(§§pop() != this.§8!8§)
                              {
                                 while(_loc3_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§?!z§();
                                       addr86:
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                    }
                                    if(!(_loc4_ && param2))
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          return;
                                       }
                                       §§goto(addr100);
                                    }
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 this.§ !x§ = 0;
                                 if(!_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr29);
                              }
                           }
                        }
                        continue loop1;
                     }
                  }
               }
               while(!§§pop())
               {
                  §§goto(addr54);
               }
               addr100:
               return;
            }
         }
         §§goto(addr84);
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§+n§(param1));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §#6§.§6!z§.particles.§;!u§(§'G§.§5!&§,§^!f§.§?i§,§'G§.§9"4§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,-1,"",§'G§.§9!q§);
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(!(_loc3_ || param1))
                           {
                              break loop0;
                           }
                           continue;
                        }
                        addr120:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     §§goto(addr119);
                  }
               }
               break;
               if(_loc3_ || _loc3_)
               {
                  return §§pop();
               }
            }
            addr119:
            return §§pop();
            §§push(false);
         }
         §§goto(addr120);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = NaN;
         if(_loc9_ || param2)
         {
            §§push(!§-!a§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§<3§);
                           while(true)
                           {
                              §§push(§§pop() == this.§8!8§);
                              loop10:
                              while(_loc9_)
                              {
                                 §§push(12);
                                 loop11:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    loop12:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(!(_loc8_ && param3))
                                       {
                                          if(§§pop())
                                          {
                                             loop14:
                                             while(true)
                                             {
                                                §§pop();
                                                addr208:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr155:
                                                   while(true)
                                                   {
                                                      §§push(5);
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() > §§pop());
                                                      continue loop14;
                                                   }
                                                   continue loop11;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             if(§§pop())
                                             {
                                                loop19:
                                                while(_loc9_)
                                                {
                                                   §§pop();
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§push(this.§1!k§);
                                                      if(_loc9_ || this)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            continue loop19;
                                                         }
                                                         if(!(_loc9_ || param3))
                                                         {
                                                            continue loop12;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      if(_loc9_)
                                                      {
                                                         if(!(_loc9_ || param1))
                                                         {
                                                            continue loop2;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§push(Number(super.applyDamage(param1,param2,param3,param4,param5,param6)));
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     _loc7_ = §§pop();
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc8_ && param3))
                                                                        {
                                                                           if(!(_loc8_ && param3))
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 break loop20;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           addr152:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§[" §));
                                                                              addr92:
                                                                              while(!_loc8_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                              }
                                                                              §§goto(addr155);
                                                                           }
                                                                        }
                                                                        while(_loc9_ || param1)
                                                                        {
                                                                           continue loop23;
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                  }
                                                                  §§goto(addr92);
                                                                  §§goto(addr54);
                                                               }
                                                               continue loop10;
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                      }
                                                      §§goto(addr159);
                                                      if(_loc8_ && this)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr54);
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop0;
                                             }
                                             §§goto(addr142);
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr216);
                  }
               }
            }
         }
         addr54:
         while(true)
         {
            §§push(_loc7_);
            if(!_loc8_)
            {
               break;
            }
            continue loop22;
         }
         return §§pop();
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§-!a§)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§+n§(null);
               }
               do
               {
                  §'!Z§ = true;
               }
               while(!(_loc2_ || this));
               
               this.§<"2§(0);
               §§push(true);
               addr69:
            }
            else
            {
               §§push(false);
               if(!(_loc1_ && this))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr69);
      }
      
      private function §<"2§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(§§pop() != §§pop())
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  §§push(0);
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(§§pop() > §§pop())
                  {
                     if(!_loc2_)
                     {
                        this.§<3§ = param1;
                     }
                  }
                  else
                  {
                     this.§<3§ = this.§9!R§;
                     if(_loc3_)
                     {
                        if(_loc2_ && this)
                        {
                           loop2:
                           while(_loc2_ && _loc2_)
                           {
                              break loop1;
                              while(true)
                              {
                                 this.update(0);
                                 continue loop2;
                              }
                           }
                           addr88:
                        }
                        §§goto(addr20);
                     }
                     addr76:
                     if(!(_loc3_ || this))
                     {
                        §§goto(addr102);
                     }
                     addr20:
                     return;
                     §§goto(addr88);
                  }
                  §§goto(addr76);
               }
            }
         }
         while(true)
         {
            this.§<3§ = 0;
            §§goto(addr102);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Vector.<§&!r§> = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(_loc9_)
         {
            §§push(this);
            §§push(this.§ !x§);
            if(_loc9_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§ !x§ = §§pop();
            loop0:
            while(true)
            {
               §'!Z§ = true;
               loop1:
               while(true)
               {
                  §§push(this.§<3§);
                  if(!_loc8_)
                  {
                     §§push(this.§8!8§);
                     if(_loc9_ || param1)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(_loc9_ || _loc2_)
                           {
                              §§push(this);
                              §§push(this.§<3§);
                              if(_loc9_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§<3§ = §§pop();
                              if(!_loc8_)
                              {
                                 §§push(this.§<3§);
                                 if(_loc9_ || _loc2_)
                                 {
                                    §§push(0);
                                    if(_loc9_ || _loc3_)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(this.§0'§);
                                             if(_loc9_ || _loc3_)
                                             {
                                                §§push(1);
                                                if(!_loc8_)
                                                {
                                                   addr194:
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      addr619:
                                                      loop3:
                                                      while(true)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            this.§<3§ = this.§8!8§;
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               this.§0'§ = 1;
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  this.§"!R§(this.§-!8§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  loop28:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc8_)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              if(_loc9_ || param1)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    loop19:
                                                                                    while(false)
                                                                                    {
                                                                                       loop16:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§-"3§);
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§#!v§);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!(_loc8_ && this))
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_ = §§pop();
                                                                                                               if(_loc9_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                  {
                                                                                                                     if(_loc8_ && _loc3_)
                                                                                                                     {
                                                                                                                        addr660:
                                                                                                                        if(§§pop() < 0)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              addr664:
                                                                                                                              this.§#4§ = true;
                                                                                                                              §§goto(addr667);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr725);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     loop18:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(1);
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           addr422:
                                                                                                                           if(!(_loc8_ && this))
                                                                                                                           {
                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                              {
                                                                                                                                 break loop19;
                                                                                                                              }
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    if(!_loc8_)
                                                                                                                                    {
                                                                                                                                       continue loop28;
                                                                                                                                    }
                                                                                                                                    loop11:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(this.§#J§);
                                                                                                                                       addr562:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             break loop1;
                                                                                                                                          }
                                                                                                                                          §§push(0);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                continue loop16;
                                                                                                                                             }
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                addr700:
                                                                                                                                                §§push(this.§@!Z§);
                                                                                                                                                break loop28;
                                                                                                                                             }
                                                                                                                                             this.§#J§ = this.§#!v§ / 5;
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc9_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(Math.random() * 100);
                                                                                                                                                      if(!(_loc8_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(50);
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc8_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               addr554:
                                                                                                                                                               §§push(§§pop() * 10);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§-!p§ = §§pop();
                                                                                                                                                            loop14:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  break loop3;
                                                                                                                                                               }
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(Math.random() * 100);
                                                                                                                                                               if(_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(50);
                                                                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     addr516:
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(10);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§!"<§ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc8_)
                                                                                                                                                                        {
                                                                                                                                                                           addr519:
                                                                                                                                                                           if(_loc9_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§4!p§ = this.§8!8§;
                                                                                                                                                                                 if(_loc9_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§-"3§ = this.§#!v§;
                                                                                                                                                                                    break loop18;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr826:
                                                                                                                                                                                 addr830:
                                                                                                                                                                                 addr830:
                                                                                                                                                                                 addr830:
                                                                                                                                                                                 addr830:
                                                                                                                                                                                 addr830:
                                                                                                                                                                                 addr826:
                                                                                                                                                                                 this.§`@§.§-!,§(this);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 addr667:
                                                                                                                                                                              }
                                                                                                                                                                              continue loop16;
                                                                                                                                                                              return;
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop14;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§#J§);
                                                                                                                                                                        if(_loc9_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - param1);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§#J§ = §§pop();
                                                                                                                                                                        continue loop11;
                                                                                                                                                                        §§goto(addr519);
                                                                                                                                                                     }
                                                                                                                                                                     addr517:
                                                                                                                                                                     addr632:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr516);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr554);
                                                                                                                                                   }
                                                                                                                                                   addr578:
                                                                                                                                                }
                                                                                                                                                addr638:
                                                                                                                                                break loop17;
                                                                                                                                             }
                                                                                                                                             §§goto(addr826);
                                                                                                                                             §§goto(addr422);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr517);
                                                                                                                              }
                                                                                                                              addr755:
                                                                                                                              _loc5_ = (_loc4_ = §=!y§()).GetLinearVelocity();
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 _loc4_.ApplyImpulse(new b2Vec2(this.§-!p§,this.§!"<§),§=!y§().GetPosition());
                                                                                                                                 loop4:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    addr775:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc4_.§>"4§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc8_)
                                                                                                                                          {
                                                                                                                                             this.§?!z§(0.02,true);
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          continue loop4;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr775);
                                                                                                                              }
                                                                                                                              §§goto(addr830);
                                                                                                                           }
                                                                                                                           §§goto(addr565);
                                                                                                                        }
                                                                                                                        addr705:
                                                                                                                        if(§§pop() == §§pop())
                                                                                                                        {
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              addr713:
                                                                                                                              §"!&§.setScale(_loc3_ * scale);
                                                                                                                              if(_loc9_ || this)
                                                                                                                              {
                                                                                                                                 addr725:
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(this.§-!8§);
                                                                                                                                 if(_loc9_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(!(_loc8_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       addr744:
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       §§push(0.00001);
                                                                                                                                    }
                                                                                                                                    §§pop().§"!R§(§§pop(),§§pop(),0,0);
                                                                                                                                    if(_loc9_ || param1)
                                                                                                                                    {
                                                                                                                                       §§goto(addr755);
                                                                                                                                    }
                                                                                                                                    §§goto(addr830);
                                                                                                                                 }
                                                                                                                                 §§goto(addr744);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr830);
                                                                                                                        }
                                                                                                                        §§goto(addr755);
                                                                                                                     }
                                                                                                                     §&x§(§;!y§.§@v§);
                                                                                                                     §§goto(addr638);
                                                                                                                     §§goto(addr725);
                                                                                                                  }
                                                                                                                  break loop16;
                                                                                                               }
                                                                                                               §§goto(addr755);
                                                                                                            }
                                                                                                            addr481:
                                                                                                            §§goto(addr830);
                                                                                                            addr481:
                                                                                                         }
                                                                                                         §§goto(addr562);
                                                                                                      }
                                                                                                      §§goto(addr481);
                                                                                                   }
                                                                                                   addr470:
                                                                                                }
                                                                                                §§goto(addr705);
                                                                                             }
                                                                                             addr466:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr705);
                                                                                       §§push(0);
                                                                                    }
                                                                                    var _loc6_:*;
                                                                                    §§push((_loc6_ = this).§@!Z§);
                                                                                    if(!(_loc8_ && _loc3_))
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                    }
                                                                                    var _loc7_:* = §§pop();
                                                                                    if(_loc9_ || _loc3_)
                                                                                    {
                                                                                       _loc6_.§@!Z§ = _loc7_;
                                                                                    }
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       §§goto(addr700);
                                                                                    }
                                                                                    §§goto(addr755);
                                                                                    addr459:
                                                                                 }
                                                                                 §§goto(addr644);
                                                                              }
                                                                              §§goto(addr713);
                                                                           }
                                                                           §§goto(addr481);
                                                                        }
                                                                        §§goto(addr704);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr704);
                                                                  §§push(§§pop() % 3);
                                                               }
                                                               else
                                                               {
                                                                  addr375:
                                                                  §§push(this.§1!k§);
                                                                  if(_loc9_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           addr382:
                                                                           §§push(this);
                                                                           §§push(this.§4!p§);
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(§§pop() - param1);
                                                                           }
                                                                           §§pop().§4!p§ = §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§goto(addr660);
                                                                           §§push(this.§4!p§);
                                                                        }
                                                                        §§goto(addr713);
                                                                     }
                                                                     §§goto(addr481);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr598:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(this.§-"3§);
                                                                           break loop1;
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr830);
                                                            }
                                                            break;
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§-"3§);
                                                         if(!(_loc8_ && param1))
                                                         {
                                                            §§push(§§pop() - param1);
                                                         }
                                                         §§pop().§-"3§ = §§pop();
                                                         §§goto(addr632);
                                                      }
                                                      addr619:
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push(this.§0'§);
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         §§push(§§pop() + 0.2);
                                                      }
                                                      §§pop().§0'§ = §§pop();
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         §§goto(addr47);
                                                      }
                                                   }
                                                   §§goto(addr664);
                                                }
                                                §§goto(addr470);
                                             }
                                             §§goto(addr660);
                                          }
                                          §§goto(addr375);
                                       }
                                       else
                                       {
                                          §§push(this.§<3§);
                                          if(_loc9_)
                                          {
                                             §§push(param1);
                                             if(_loc9_ || _loc2_)
                                             {
                                                addr274:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      _loc2_ = new Vector.<§&!r§>(1,true);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         _loc2_[0] = this;
                                                         loop21:
                                                         while(true)
                                                         {
                                                            §%4§.addExplosions(§^!x§.§`§,§=!y§().GetPosition().x,§=!y§().GetPosition().y,_loc2_);
                                                            addr354:
                                                            while(true)
                                                            {
                                                               this.§+n§(null);
                                                               addr337:
                                                               while(_loc9_)
                                                               {
                                                                  §2!>§ = "BIRD_ORANGE_BIG";
                                                               }
                                                               continue loop21;
                                                            }
                                                         }
                                                      }
                                                      loop24:
                                                      while(true)
                                                      {
                                                         §=a§ = §6G§.§1!P§(§2!>§);
                                                         loop25:
                                                         while(true)
                                                         {
                                                            loop26:
                                                            while(true)
                                                            {
                                                               sprite.scaleX = this.§0'§;
                                                               while(!_loc8_)
                                                               {
                                                                  sprite.scaleY = this.§0'§;
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop25;
                                                                  }
                                                                  if(!_loc9_)
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(true)
                                                                     {
                                                                        break loop26;
                                                                     }
                                                                     continue loop26;
                                                                  }
                                                                  §§goto(addr354);
                                                               }
                                                               §§goto(addr337);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr619);
                                                   }
                                                   §§goto(addr830);
                                                }
                                                §§goto(addr360);
                                             }
                                             else
                                             {
                                                addr372:
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr375);
                                                   }
                                                   §§goto(addr725);
                                                }
                                                else
                                                {
                                                   §§push(this.§#4§);
                                                }
                                                §§goto(addr598);
                                             }
                                          }
                                       }
                                       §§goto(addr466);
                                    }
                                    §§goto(addr194);
                                 }
                                 §§goto(addr660);
                              }
                              §§goto(addr644);
                           }
                           §§goto(addr667);
                        }
                        else
                        {
                           §§push(this.§4!p§);
                           if(!(_loc8_ && _loc3_))
                           {
                              §§goto(addr372);
                              §§push(this.§8!8§);
                           }
                        }
                        §§goto(addr419);
                     }
                     §§goto(addr274);
                  }
                  break;
               }
               while(true)
               {
                  §§push(0);
                  if(!(_loc8_ && param1))
                  {
                     if(!(_loc8_ && _loc3_))
                     {
                        if(§§pop() > §§pop())
                        {
                           §§goto(addr619);
                        }
                        else
                        {
                           this.§-!0§ = true;
                           if(!(_loc8_ && _loc3_))
                           {
                              §§goto(addr826);
                           }
                        }
                        §§goto(addr826);
                     }
                     §§goto(addr660);
                  }
                  break;
               }
               §§goto(addr705);
            }
         }
         §§goto(addr382);
      }
      
      private function §"!R§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = §=!y§()).GetFixtureList()).GetShape() as b2CircleShape;
         if(_loc9_ || param1)
         {
            _loc5_.SetAwake(true);
            while(true)
            {
               _loc7_.§^!i§(param1);
               loop1:
               while(!_loc8_)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     loop3:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop4:
                           while(true)
                           {
                              _loc6_.§1"0§(param2);
                              loop5:
                              while(true)
                              {
                                 _loc5_.§5"4§();
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop4;
                                    }
                                    if(_loc8_)
                                    {
                                       break;
                                    }
                                    loop11:
                                    while(!(_loc8_ && param3))
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          §§push(param4);
                                          if(!(_loc9_ || this))
                                          {
                                             while(_loc9_)
                                             {
                                                continue loop12;
                                             }
                                             continue loop2;
                                             addr95:
                                          }
                                          addr52:
                                          §§push(0);
                                          if(!(_loc8_ && param3))
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(!(_loc8_ && this))
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   _loc6_.§54§(param4);
                                                }
                                                addr85:
                                                if(_loc9_ || param2)
                                                {
                                                   addr92:
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   _loc6_.§[!<§(param3);
                                                   continue loop11;
                                                   §§goto(addr85);
                                                }
                                                addr101:
                                             }
                                             break;
                                          }
                                          while(!_loc8_)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                continue loop12;
                                             }
                                             §§goto(addr52);
                                          }
                                          continue loop3;
                                          addr98:
                                          §§goto(addr101);
                                          §§goto(addr98);
                                       }
                                       return;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr95);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!§-!a§)
            {
               if(!_loc2_)
               {
                  super.addTrail();
               }
            }
         }
      }
      
      private function §?!z§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         §§push((§=!y§().GetFixtureList().GetShape() as b2CircleShape).§ u§());
         if(_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§#%§() / 40);
         if(!(_loc13_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(1);
         if(!(_loc13_ && param1))
         {
            §§push(_loc4_);
            if(!_loc13_)
            {
               addr69:
               §§push(§§pop() * §;!"§(true));
               if(!_loc13_)
               {
                  addr65:
                  §§push(§§pop() * 0.9);
               }
               var _loc5_:* = int(§§pop() + §§pop());
               §§push(Math.PI / 2);
               if(_loc12_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc3_);
               if(_loc12_ || _loc3_)
               {
                  §§push(§§pop() / this.§-!8§);
                  if(!_loc13_)
                  {
                     addr91:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(!_loc13_)
                  {
                     §§push(_loc5_);
                     loop0:
                     while(true)
                     {
                        §§push(_loc7_);
                        if(_loc12_ || this)
                        {
                           §§push(§§pop() * 3);
                           if(!(_loc13_ && this))
                           {
                              §§push(§§pop() * param1);
                           }
                        }
                        §§push(§§pop() * §§pop());
                        loop1:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop2:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!_loc13_)
                              {
                                 _loc5_ = §§pop();
                                 while(true)
                                 {
                                    §§push(30);
                                 }
                                 addr670:
                              }
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc13_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(30);
                                          addr680:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                          }
                                       }
                                       addr679:
                                    }
                                    while(true)
                                    {
                                    }
                                    addr681:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(!param2)
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(0);
                                          if(!_loc13_)
                                          {
                                             §§goto(addr571);
                                          }
                                          addr618:
                                          while(true)
                                          {
                                             continue loop11;
                                             addr585:
                                             _loc9_ = §§pop();
                                             if(!(_loc12_ || param1))
                                             {
                                                continue;
                                             }
                                             if(_loc12_)
                                             {
                                                if(!(_loc13_ && this))
                                                {
                                                   break loop6;
                                                }
                                                continue loop6;
                                             }
                                             §§goto(addr633);
                                          }
                                       }
                                       continue loop0;
                                    }
                                    if(!_loc13_)
                                    {
                                       §§push(8);
                                       while(!(_loc13_ && this))
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc12_ || _loc3_)
                                          {
                                             continue loop0;
                                          }
                                       }
                                       continue loop2;
                                    }
                                    while(true)
                                    {
                                       §§push(8);
                                    }
                                    addr633:
                                    while(true)
                                    {
                                       if(_loc12_)
                                       {
                                          if(!_loc13_)
                                          {
                                             continue loop1;
                                          }
                                          §§goto(addr670);
                                       }
                                       else
                                       {
                                          §§goto(addr680);
                                       }
                                    }
                                 }
                                 addr460:
                                 if(_loc9_ >= _loc5_ / 3)
                                 {
                                    addr467:
                                    _loc9_ = 0;
                                    addr96:
                                    addr466:
                                    addr468:
                                    §§push(_loc9_);
                                    if(_loc12_)
                                    {
                                       if(_loc12_ || param2)
                                       {
                                          §§push(_loc5_);
                                          if(_loc12_ || this)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc12_)
                                                {
                                                   if(_loc13_)
                                                   {
                                                      addr471:
                                                      §§goto(addr460);
                                                   }
                                                   return;
                                                }
                                                addr125:
                                                if(!_loc13_)
                                                {
                                                   if(_loc12_ || _loc3_)
                                                   {
                                                      if(_loc12_ || param1)
                                                      {
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            §§goto(addr96);
                                                         }
                                                         addr529:
                                                         addr527:
                                                         addr525:
                                                         addr528:
                                                         §§push(Math.random() * this.§-!8§);
                                                         §§push(this.§-!8§ / 2);
                                                         if(_loc12_ || this)
                                                         {
                                                            addr538:
                                                            addr549:
                                                            addr537:
                                                            §§push((§§pop() - §§pop()) * 2);
                                                            if(_loc12_ || param2)
                                                            {
                                                               addr548:
                                                               §§push(Number(§§pop() * _loc7_));
                                                            }
                                                            _loc8_ = §§pop();
                                                            addr482:
                                                            §#6§.§6!z§.particles.§;!u§(§'G§.§0!;§,§^!f§.§>"F§,§'G§.§+";§,§=!y§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§=!y§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
                                                            _loc9_++;
                                                            §§goto(addr471);
                                                            addr480:
                                                            addr478:
                                                            addr476:
                                                            addr475:
                                                            addr550:
                                                            addr518:
                                                         }
                                                         addr565:
                                                         _loc6_ = Number(§§pop() + §§pop());
                                                         addr566:
                                                         §§goto(addr566);
                                                      }
                                                      §§goto(addr466);
                                                   }
                                                   addr322:
                                                   if(!(_loc13_ && _loc3_))
                                                   {
                                                      if(_loc12_)
                                                      {
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            §§push(§#6§.§6!z§);
                                                            if(_loc12_ || param2)
                                                            {
                                                               §§push(§§pop().particles);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§'G§.§`!O§);
                                                                  if(!(_loc13_ && param2))
                                                                  {
                                                                     §§push(§^!f§.§>"F§);
                                                                     if(!_loc13_)
                                                                     {
                                                                        §§push(§'G§.§+";§);
                                                                        if(_loc12_)
                                                                        {
                                                                           §§pop().§;!u§(§§pop(),§§pop(),§§pop(),§=!y§().GetPosition().x + Math.cos(_loc6_) * _loc8_,§=!y§().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§'G§.§45§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
                                                                           _loc9_++;
                                                                           §§goto(addr125);
                                                                           addr224:
                                                                        }
                                                                        §§goto(addr482);
                                                                     }
                                                                     §§goto(addr480);
                                                                  }
                                                                  §§goto(addr478);
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            §§goto(addr475);
                                                         }
                                                         §§goto(addr468);
                                                      }
                                                      addr450:
                                                      if(_loc12_ || param1)
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            §§push(Math.random() * this.§-!8§);
                                                            if(!(_loc13_ && param2))
                                                            {
                                                               if(!(_loc13_ && param2))
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(!(_loc13_ && _loc3_))
                                                                     {
                                                                        §§push(this.§-!8§);
                                                                        if(_loc12_ || this)
                                                                        {
                                                                           if(_loc12_)
                                                                           {
                                                                              §§push(2);
                                                                              if(!_loc13_)
                                                                              {
                                                                                 addr394:
                                                                                 §§push(§§pop() - §§pop() / §§pop());
                                                                                 §§push(2);
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    addr398:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(_loc7_);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       addr402:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc13_)
                                                                                       {
                                                                                          addr405:
                                                                                          _loc8_ = Number(§§pop());
                                                                                          §§push(0.5);
                                                                                          if(_loc12_ || param2)
                                                                                          {
                                                                                             if(!(_loc13_ && param1))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc13_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc13_ && _loc3_))
                                                                                                   {
                                                                                                      addr257:
                                                                                                      if(!(_loc13_ && param2))
                                                                                                      {
                                                                                                         if(_loc12_ || param1)
                                                                                                         {
                                                                                                            if(!_loc13_)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               if(!_loc13_)
                                                                                                               {
                                                                                                                  addr276:
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     if(!(_loc13_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           addr292:
                                                                                                                           §§push(§§pop() * (Math.random() * 0.5));
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 addr298:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    if(_loc12_ || this)
                                                                                                                                    {
                                                                                                                                       if(!(_loc13_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                          {
                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                             §§goto(addr322);
                                                                                                                                          }
                                                                                                                                          addr421:
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             addr425:
                                                                                                                                             if(!(_loc13_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!_loc13_)
                                                                                                                                                {
                                                                                                                                                   addr435:
                                                                                                                                                   §§push(180);
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      addr440:
                                                                                                                                                      §§push(§§pop() / (§§pop() / Math.PI));
                                                                                                                                                      if(!(_loc13_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr449:
                                                                                                                                                         _loc10_ = §§pop();
                                                                                                                                                         §§goto(addr450);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr565);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr538);
                                                                                                                                                }
                                                                                                                                                §§goto(addr548);
                                                                                                                                             }
                                                                                                                                             §§goto(addr549);
                                                                                                                                          }
                                                                                                                                          §§goto(addr529);
                                                                                                                                       }
                                                                                                                                       §§goto(addr394);
                                                                                                                                    }
                                                                                                                                    §§goto(addr398);
                                                                                                                                 }
                                                                                                                                 §§goto(addr405);
                                                                                                                              }
                                                                                                                              §§goto(addr298);
                                                                                                                           }
                                                                                                                           §§goto(addr398);
                                                                                                                        }
                                                                                                                        §§goto(addr527);
                                                                                                                     }
                                                                                                                     §§goto(addr440);
                                                                                                                  }
                                                                                                                  §§goto(addr394);
                                                                                                               }
                                                                                                               §§goto(addr292);
                                                                                                            }
                                                                                                            §§goto(addr440);
                                                                                                         }
                                                                                                         §§goto(addr449);
                                                                                                      }
                                                                                                      §§goto(addr402);
                                                                                                   }
                                                                                                   §§goto(addr298);
                                                                                                }
                                                                                                §§goto(addr276);
                                                                                             }
                                                                                             addr411:
                                                                                             §§goto(addr421);
                                                                                             §§push(Number(§§pop() + §<2§(Math.random() * (720 / _loc5_))));
                                                                                          }
                                                                                          §§goto(addr257);
                                                                                          addr406:
                                                                                       }
                                                                                       §§goto(addr525);
                                                                                    }
                                                                                    §§goto(addr548);
                                                                                 }
                                                                                 §§goto(addr435);
                                                                              }
                                                                              §§goto(addr528);
                                                                           }
                                                                           §§goto(addr421);
                                                                        }
                                                                        §§goto(addr394);
                                                                     }
                                                                     §§goto(addr529);
                                                                  }
                                                                  §§goto(addr537);
                                                               }
                                                               §§goto(addr425);
                                                            }
                                                            §§goto(addr405);
                                                         }
                                                         §§goto(addr550);
                                                      }
                                                      §§goto(addr518);
                                                   }
                                                   §§goto(addr406);
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr411);
                                             §§push(_loc6_);
                                          }
                                       }
                                       §§goto(addr460);
                                    }
                                    §§goto(addr467);
                                 }
                                 §§push(_loc6_);
                                 if(_loc12_)
                                 {
                                    §§goto(addr529);
                                    §§push(Math.random() * (720 / _loc5_));
                                 }
                                 §§goto(addr529);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr679);
               }
               §§goto(addr91);
            }
            §§goto(addr65);
         }
         §§goto(addr69);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§-!a§)
            {
               if(!_loc1_)
               {
                  addr28:
                  §§push(1);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  return -1;
               }
               return §§pop();
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      private function §+n§(param1:§]a§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!§%!q§)
            {
               do
               {
                  §§push(§>!E§);
                  §§push("Globe_Bird_Special_Activation_");
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() + Math.round(Math.random() * 2 + 1));
                  }
                  §§pop().§@"8§(§§pop(),"ChannelOrangeBird");
                  do
                  {
                     §%!q§ = true;
                  }
                  while(_loc3_ && param1);
                  
               }
               while(!_loc2_);
               
               if(!(_loc3_ && this))
               {
                  §§push(true);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr96:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr96);
      }
   }
}
