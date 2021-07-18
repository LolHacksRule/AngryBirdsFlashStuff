package §`!G§
{
   import §!"3§.b2CircleShape;
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §'!6§.Sprite;
   import §-f§.§8!<§;
   import §-f§.§@!M§;
   import §-f§.§[!J§;
   import §-p§.§4!`§;
   import §4!<§.§'!S§;
   import §6!^§.b2Vec2;
   import §6"1§.b2Body;
   import §6"1§.b2Fixture;
   import §6"1§.b2World;
   import §8m§.§@"M§;
   import §@!"§.§?l§;
   
   public class §&!5§ extends §2"L§
   {
      
      public static const §,!I§:int;
      
      private static const §'"!§:int = 200;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§findproperty(§,!I§));
            §§push(241 * §'!S§.§2"<§);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() / 2);
            }
            §§pop().§,!I§ = §§pop();
         }
         do
         {
            §'"!§ = 200;
         }
         while(_loc1_ && _loc2_);
         
      }
      
      private const §," §:Number = -5;
      
      private const §-!I§:int = 1500;
      
      private const §#"7§:int = 3500;
      
      private const §5y§:int = 1500;
      
      private var §#!f§:Boolean = false;
      
      private var §"!#§:Boolean = false;
      
      private var §?!-§:Number = -5;
      
      private var §7e§:Number = -5;
      
      private var §7!<§:Number = -5;
      
      private var §=!6§:Number = 0;
      
      private var §+!4§:int = 0;
      
      private var §#! §:Number = 0;
      
      private var §8!m§:Number = 0;
      
      private var §[A§:Number = 0;
      
      private var §00§:Number = 1000;
      
      private var §<"$§:Boolean = false;
      
      private var §-"-§:§8"=§;
      
      public function §&!5§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
            while(true)
            {
               this.§-"-§ = param1;
               addr49:
               if(_loc13_ && param2)
               {
                  continue;
               }
               return;
               addr56:
            }
         }
         while(true)
         {
            §2!8§.mTryToFly = true;
            while(!(_loc13_ && this))
            {
               this.§[A§ = 0;
               if(_loc13_ && this)
               {
                  continue;
               }
               §§goto(addr49);
            }
         }
         §§goto(addr56);
      }
      
      private function get §?!o§() : Number
      {
         return §,!I§ * scale;
      }
      
      override public function addDamageParticles(param1:§6!O§, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(2);
               addr161:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr162:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§00§);
                                 while(true)
                                 {
                                    §§push(§§pop() < §'"!§);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§7e§);
                                       if(_loc3_ && this)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == this.§," §);
                                       if(_loc4_)
                                       {
                                          addr115:
                                          if(_loc4_ || param1)
                                          {
                                             §§push(!§§pop());
                                             if(!(_loc3_ && this))
                                             {
                                                addr140:
                                                if(_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(§§pop());
                                                if(!_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            this.§%!`§(1,param2 > 20);
                                                            addr99:
                                                            while(true)
                                                            {
                                                            }
                                                            addr35:
                                                            if(!(_loc3_ && this))
                                                            {
                                                               addr42:
                                                               if(!_loc3_)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        return;
                                                                     }
                                                                     addr155:
                                                                     addr155:
                                                                     return;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§00§ = 0;
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr35);
                                                      }
                                                      §§goto(addr42);
                                                   }
                                                   addr91:
                                                }
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop0;
                                             }
                                             addr146:
                                          }
                                          else
                                          {
                                             while(!§§pop())
                                             {
                                                continue loop9;
                                                §§goto(addr115);
                                             }
                                             addr154:
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr140);
                                    }
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           §§goto(addr154);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr155);
      }
      
      override public function activateSpecialPower(param1:§8"=§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§!!b§(param1));
            if(_loc2_ || _loc3_)
            {
               if(§§pop())
               {
                  do
                  {
                     §?l§.§'h§.particles.§"!J§(§0i§.§4"[§,§6!O§.§-4§,§0i§.§>!c§,getBody().GetPosition().x,getBody().GetPosition().y,-1,"",§0i§.§7!z§);
                     do
                     {
                        this.§ "7§(0);
                     }
                     while(_loc3_);
                     
                  }
                  while(_loc3_ && this);
                  
                  if(!(_loc3_ && param1))
                  {
                     §§push(true);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr107:
                     §§push(false);
                  }
               }
               §§goto(addr107);
            }
            return §§pop();
         }
         §§goto(addr107);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = NaN;
         if(_loc9_ || param3)
         {
            §§push(!§#P§);
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
                        addr230:
                        while(true)
                        {
                           §§push(this.§?!-§);
                           addr208:
                           while(true)
                           {
                              §§push(§§pop() == this.§," §);
                              addr211:
                              while(_loc9_)
                              {
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(!(_loc8_ && param1))
                        {
                           this.§ "7§();
                           while(true)
                           {
                              addr187:
                              loop9:
                              while(true)
                              {
                                 §§push(param1);
                                 while(true)
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
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(5);
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() > §§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc8_ && param3)
                                                            {
                                                               continue loop14;
                                                            }
                                                            if(_loc8_ && this)
                                                            {
                                                               break;
                                                            }
                                                            if(!_loc8_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!(_loc9_ || this))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc9_ || param1))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr186:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§#!f§);
                                                                           if(_loc9_)
                                                                           {
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    continue loop19;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              continue loop17;
                                                                           }
                                                                           continue loop19;
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           §8X§(§[!J§.§`!r§);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(Number(super.applyDamage(param1,param2,param3,param4,param5,param6)));
                                                                        loop26:
                                                                        while(true)
                                                                        {
                                                                           _loc7_ = §§pop();
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 addr77:
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    if(!(_loc9_ || this))
                                                                                    {
                                                                                       continue loop15;
                                                                                    }
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                    }
                                                                                    addr95:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§ d§));
                                                                                       continue loop16;
                                                                                       §§goto(addr77);
                                                                                    }
                                                                                    addr145:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 addr119:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 this.§#!f§ = true;
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    continue loop27;
                                                                                 }
                                                                                 if(_loc9_ || param1)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    if(_loc8_ && param1)
                                                                                    {
                                                                                       continue loop26;
                                                                                    }
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       continue loop16;
                                                                                    }
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr208);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr186);
                                                                                 }
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr145);
                                                                  }
                                                               }
                                                               continue loop13;
                                                               addr168:
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             §§goto(addr168);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr187);
                  }
               }
            }
         }
         §§goto(addr95);
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§#P§)
            {
               §§push(false);
               if(_loc2_)
               {
                  return §§pop();
               }
               addr54:
               return true;
            }
            loop0:
            while(true)
            {
               this.§!!b§(null);
               addr84:
               while(true)
               {
                  §,d§ = true;
                  this.§ "7§(0);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr54);
            }
         }
         §§goto(addr84);
      }
      
      private function § "7§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr112:
               while(§§pop() != §§pop())
               {
                  continue loop0;
               }
               while(true)
               {
                  this.§?!-§ = 0;
                  addr102:
                  if(_loc2_ || _loc3_)
                  {
                     addr24:
                     return;
                     addr109:
                  }
               }
            }
         }
         §§goto(addr116);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:Vector.<§[!8§> = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(!(_loc9_ && _loc2_))
         {
            §§push(this);
            §§push(this.§00§);
            if(_loc8_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§00§ = §§pop();
            if(_loc8_ || this)
            {
               §,d§ = true;
               if(_loc8_)
               {
                  §§push(this.§?!-§);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(this.§," §);
                     if(_loc8_ || this)
                     {
                        if(§§pop() != §§pop())
                        {
                           if(_loc8_ || this)
                           {
                              §§push(this);
                              §§push(this.§?!-§);
                              if(!_loc9_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§?!-§ = §§pop();
                              while(true)
                              {
                                 §§push(this.§?!-§);
                                 if(_loc8_)
                                 {
                                    §§push(0);
                                    if(!(_loc9_ && param1))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc8_)
                                          {
                                             if(!_loc8_)
                                             {
                                                continue;
                                             }
                                             §§push(this.§[A§);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                break;
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                if(_loc8_ || this)
                                                {
                                                   loop20:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(1);
                                                         if(!_loc9_)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc8_)
                                                                     {
                                                                        §§push(§§pop() % 3);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr726:
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc9_ && _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop2;
                                                                     break;
                                                                  }
                                                                  addr698:
                                                                  addr698:
                                                                  this.§"!#§ = true;
                                                                  loop5:
                                                                  while(true)
                                                                  {
                                                                     this.§7e§ = this.§," §;
                                                                     addr693:
                                                                     while(true)
                                                                     {
                                                                        this.§7!<§ = this.§5y§;
                                                                        addr680:
                                                                        while(_loc9_ && _loc2_)
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        addr674:
                                                                        §8X§(§[!J§.§2!M§);
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc9_ && _loc3_))
                                                                     {
                                                                        addr479:
                                                                        while(false)
                                                                        {
                                                                           loop1:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§7!<§);
                                                                              if(_loc8_)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§5y§);
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          if(_loc8_ || param1)
                                                                                          {
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            addr637:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr638:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                  {
                                                                                                                     this.§<"$§ = true;
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     break loop1;
                                                                                                                  }
                                                                                                                  if(_loc8_ || _loc2_)
                                                                                                                  {
                                                                                                                     while(_loc8_ || _loc2_)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§7!<§);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - param1);
                                                                                                                        }
                                                                                                                        §§pop().§7!<§ = §§pop();
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§=!6§);
                                                                                                                              if(!(_loc9_ && this))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - param1);
                                                                                                                              }
                                                                                                                              §§pop().§=!6§ = §§pop();
                                                                                                                              if(_loc8_ || _loc2_)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§=!6§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       addr587:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                          {
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                this.§=!6§ = this.§5y§ / 5;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(Math.random() * 100);
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(50);
                                                                                                                                                      if(_loc8_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc9_ && this)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         addr575:
                                                                                                                                                         §§push(10);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr575);
                                                                                                                                                }
                                                                                                                                                addr774:
                                                                                                                                                _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
                                                                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc4_.ApplyImpulse(new b2Vec2(this.§#! §,this.§8!m§),getBody().GetPosition());
                                                                                                                                                   loop6:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr804:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc4_.§^!c§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                                                                                                         continue loop6;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.§%!`§(0.02,true);
                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(true)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr804);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr819);
                                                                                                                                                }
                                                                                                                                                break loop1;
                                                                                                                                                addr596:
                                                                                                                                             }
                                                                                                                                             break loop2;
                                                                                                                                          }
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr586:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr680);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr774);
                                                                                                                           }
                                                                                                                           addr668:
                                                                                                                        }
                                                                                                                        §2!8§.setScale(_loc3_ * scale);
                                                                                                                        if(_loc8_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr749:
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§?!o§);
                                                                                                                           if(_loc8_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(_loc3_);
                                                                                                                              if(_loc8_ || param1)
                                                                                                                              {
                                                                                                                                 addr768:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 §§push(0.00001);
                                                                                                                              }
                                                                                                                              §§pop().§1!b§(§§pop(),§§pop(),0,0);
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 addr855:
                                                                                                                                 this.§-"-§.§8`§(this);
                                                                                                                                 break loop1;
                                                                                                                              }
                                                                                                                              §§goto(addr774);
                                                                                                                           }
                                                                                                                           §§goto(addr768);
                                                                                                                        }
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                     §§goto(addr674);
                                                                                                                     addr646:
                                                                                                                  }
                                                                                                                  §§goto(addr774);
                                                                                                                  §§goto(addr855);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr516:
                                                                                                      }
                                                                                                      break loop20;
                                                                                                   }
                                                                                                   addr513:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr697:
                                                                                                   if(§§pop() < §§pop())
                                                                                                   {
                                                                                                      §§goto(addr698);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr674);
                                                                                             }
                                                                                             §§goto(addr638);
                                                                                          }
                                                                                          §§goto(addr587);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr729:
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(_loc8_ || _loc2_)
                                                                                       {
                                                                                          §§goto(addr737);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr774);
                                                                                    addr488:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr696:
                                                                                    §§push(0);
                                                                                 }
                                                                                 §§goto(addr697);
                                                                              }
                                                                              §§goto(addr516);
                                                                           }
                                                                           return;
                                                                        }
                                                                        break;
                                                                        addr479:
                                                                     }
                                                                     §§goto(addr550);
                                                                  }
                                                                  addr702:
                                                                  var _loc6_:*;
                                                                  §§push((_loc6_ = this).§+!4§);
                                                                  if(!_loc9_)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                  }
                                                                  var _loc7_:* = §§pop();
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc6_.§+!4§ = _loc7_;
                                                                  }
                                                                  if(_loc8_ || this)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  §§goto(addr749);
                                                                  addr472:
                                                               }
                                                               §§goto(addr859);
                                                            }
                                                            §§goto(addr702);
                                                         }
                                                         §§goto(addr729);
                                                      }
                                                      break;
                                                   }
                                                   addr728:
                                                   §§goto(addr729);
                                                   §§push(0);
                                                   addr527:
                                                }
                                                break;
                                             }
                                             §§goto(addr726);
                                             §§push(this.§+!4§);
                                          }
                                          §§goto(addr596);
                                       }
                                       else
                                       {
                                          §§push(this.§?!-§);
                                          if(!(_loc9_ && _loc2_))
                                          {
                                             §§push(param1);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                addr268:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(_loc8_)
                                                   {
                                                      _loc2_ = new Vector.<§[!8§>(1,true);
                                                      if(_loc8_)
                                                      {
                                                         _loc2_[0] = this;
                                                         loop26:
                                                         while(true)
                                                         {
                                                            container.addExplosions(§6!M§.§var§,getBody().GetPosition().x,getBody().GetPosition().y,_loc2_);
                                                            while(true)
                                                            {
                                                               this.§!!b§(null);
                                                               loop28:
                                                               for(; !(_loc9_ && _loc2_); if(!(_loc8_ || _loc2_))
                                                               {
                                                                  continue;
                                                               },while(false)
                                                               {
                                                                  §§goto(addr310);
                                                               },§§goto(addr859))
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     continue loop26;
                                                                  }
                                                                  §@x§ = "BIRD_ORANGE_BIG";
                                                                  loop29:
                                                                  while(true)
                                                                  {
                                                                     §!L§ = §8!<§.§3"[§(§@x§);
                                                                     while(true)
                                                                     {
                                                                        addr310:
                                                                        while(true)
                                                                        {
                                                                           sprite.scaleX = this.§[A§;
                                                                           continue loop29;
                                                                        }
                                                                        addr294:
                                                                        if(_loc8_ || _loc2_)
                                                                        {
                                                                           continue loop28;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr308);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr479);
                                                   }
                                                }
                                                §§goto(addr369);
                                             }
                                             else
                                             {
                                                addr376:
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc8_ || param1)
                                                   {
                                                      addr384:
                                                      §§push(this.§#!f§);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc9_ && this))
                                                            {
                                                               §§push(this);
                                                               §§push(this.§7e§);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() - param1);
                                                               }
                                                               §§pop().§7e§ = §§pop();
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§goto(addr696);
                                                                  §§push(this.§7e§);
                                                               }
                                                               §§goto(addr698);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr550);
                                                            }
                                                         }
                                                         §§goto(addr674);
                                                      }
                                                      else
                                                      {
                                                         addr625:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!(_loc9_ && _loc2_))
                                                               {
                                                                  addr635:
                                                                  §§goto(addr637);
                                                                  §§push(this.§7!<§);
                                                               }
                                                               §§goto(addr693);
                                                            }
                                                            §§goto(addr646);
                                                         }
                                                         §§goto(addr859);
                                                      }
                                                   }
                                                   §§goto(addr582);
                                                }
                                                else
                                                {
                                                   §§push(this.§"!#§);
                                                }
                                                §§goto(addr625);
                                             }
                                          }
                                       }
                                       §§goto(addr464);
                                    }
                                    §§goto(addr513);
                                 }
                                 break;
                              }
                              §§push(1);
                              if(!(_loc9_ && _loc2_))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       this.§?!-§ = this.§," §;
                                       if(_loc8_)
                                       {
                                          this.§[A§ = 1;
                                          loop21:
                                          while(true)
                                          {
                                             this.§1!b§(this.§?!o§);
                                             if(!_loc9_)
                                             {
                                                this.§7e§ = this.§#"7§;
                                                if(!_loc9_)
                                                {
                                                   §4!`§.§!e§(false);
                                                   if(_loc8_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this);
                                                         §§push(this.§?!o§);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * this.§[A§);
                                                         }
                                                         §§pop().§1!b§(§§pop(),§!L§.material.mValues[§@!M§.§4r§],§!L§.material.mValues[§@!M§.§>a§],§!L§.material.mValues[§@!M§.§1$§]);
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            §2!8§.setScale(this.§[A§ * scale);
                                                            if(_loc8_)
                                                            {
                                                               if(_loc9_ && _loc3_)
                                                               {
                                                                  continue loop21;
                                                               }
                                                               if(false)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr369);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr479);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr527);
                                                      addr53:
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr384);
                                                   }
                                                   §§goto(addr859);
                                                }
                                                §§goto(addr855);
                                             }
                                             break;
                                          }
                                          §§goto(addr668);
                                       }
                                       §§goto(addr855);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push(this.§[A§);
                                    if(!(_loc9_ && _loc3_))
                                    {
                                       §§push(§§pop() + 0.2);
                                    }
                                    §§pop().§[A§ = §§pop();
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §§goto(addr53);
                                    }
                                 }
                                 §§goto(addr859);
                              }
                              §§goto(addr729);
                           }
                           §§goto(addr737);
                        }
                        else
                        {
                           §§push(this.§7e§);
                           if(_loc8_)
                           {
                              §§goto(addr376);
                              §§push(this.§," §);
                           }
                        }
                        §§goto(addr488);
                     }
                     §§goto(addr268);
                  }
                  §§goto(addr728);
               }
               §§goto(addr635);
            }
            §§goto(addr724);
         }
         §§goto(addr693);
      }
      
      private function §1!b§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         if(_loc9_)
         {
            _loc5_.SetAwake(true);
            while(true)
            {
               _loc7_.§;#§(param1);
               loop1:
               while(_loc9_ || this)
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
                           while(true)
                           {
                              _loc6_.§'!+§(param2);
                              addr122:
                              while(true)
                              {
                                 _loc5_.ResetMassData();
                                 addr114:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr119:
                        }
                        while(true)
                        {
                           §§push(param3);
                           loop7:
                           while(_loc9_)
                           {
                              §§push(0);
                              loop8:
                              while(true)
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    while(true)
                                    {
                                       if(_loc9_)
                                       {
                                          if(_loc8_)
                                          {
                                             continue loop1;
                                          }
                                          _loc6_.§5L§(param3);
                                          while(true)
                                          {
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr119);
                                       }
                                    }
                                    §§goto(addr122);
                                    addr93:
                                 }
                                 while(true)
                                 {
                                    §§push(param4);
                                    if(!(_loc8_ && param2))
                                    {
                                       §§push(0);
                                       if(_loc8_)
                                       {
                                          continue loop8;
                                       }
                                       if(_loc8_)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    continue loop7;
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          if(!(_loc8_ && param2))
                                          {
                                             if(_loc9_ || param3)
                                             {
                                                _loc6_.§-!e§(param4);
                                                addr82:
                                                if(!_loc8_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      §§goto(addr34);
                                                   }
                                                   §§goto(addr93);
                                                }
                                                §§goto(addr110);
                                             }
                                             §§goto(addr122);
                                          }
                                          break;
                                       }
                                       §§goto(addr82);
                                    }
                                    addr34:
                                    return;
                                 }
                                 §§goto(addr114);
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr114);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§#P§)
            {
               if(_loc2_)
               {
                  addr23:
                  super.addTrail();
               }
            }
            return;
         }
         §§goto(addr23);
      }
      
      private function §%!`§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:* = 0;
         var _loc10_:Number = NaN;
         var _loc11_:* = NaN;
         §§push((getBody().GetFixtureList().GetShape() as b2CircleShape).§;"9§());
         if(!_loc13_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§4"Q§() / 40);
         if(!(_loc13_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(1);
         if(_loc12_ || _loc3_)
         {
            §§push(_loc4_);
            if(_loc12_ || param1)
            {
               addr74:
               §§push(§§pop() * §`!A§(true));
               if(!_loc13_)
               {
                  addr70:
                  §§push(§§pop() * 0.9);
               }
               var _loc5_:* = int(§§pop() + §§pop());
               §§push(Math.PI / 2);
               if(!_loc13_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc3_);
               if(_loc12_ || this)
               {
                  §§push(§§pop() / this.§?!o§);
                  if(_loc12_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc7_:* = §§pop();
               if(!_loc13_)
               {
                  §§push(_loc5_);
                  if(_loc12_ || this)
                  {
                     §§push(_loc7_);
                     if(!_loc13_)
                     {
                        §§push(§§pop() * 3);
                        if(_loc12_ || param1)
                        {
                           addr622:
                           §§push(§§pop() * param1);
                        }
                        §§push(§§pop() * §§pop());
                        loop0:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           addr626:
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              if(!(_loc13_ && _loc3_))
                              {
                                 _loc5_ = §§pop();
                                 while(true)
                                 {
                                    §§push(30);
                                 }
                                 addr635:
                              }
                              loop3:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!_loc13_)
                                    {
                                       while(true)
                                       {
                                          §§push(30);
                                          addr640:
                                          while(true)
                                          {
                                             _loc5_ = §§pop();
                                          }
                                       }
                                       addr639:
                                    }
                                    while(true)
                                    {
                                    }
                                    addr641:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    if(param2)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(8);
                                          loop7:
                                          while(!_loc13_)
                                          {
                                             _loc5_ = §§pop();
                                             while(_loc12_)
                                             {
                                                §§push(8);
                                                while(true)
                                                {
                                                   if(!_loc13_)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      if(!_loc13_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         continue loop6;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr640);
                                                if(!(_loc12_ || param1))
                                                {
                                                   continue;
                                                }
                                                addr422:
                                                §§push(_loc9_);
                                                if(_loc12_ || param1)
                                                {
                                                   addr432:
                                                   if(§§pop() >= _loc5_ / 3)
                                                   {
                                                      addr436:
                                                      _loc9_ = 0;
                                                      addr437:
                                                      addr435:
                                                      §§push(_loc9_);
                                                      if(!_loc13_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(!_loc13_)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               if(!_loc13_)
                                                               {
                                                                  if(_loc12_)
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           if(_loc13_)
                                                                           {
                                                                              §§goto(addr437);
                                                                           }
                                                                           return;
                                                                        }
                                                                        addr367:
                                                                        if(!(_loc13_ && _loc3_))
                                                                        {
                                                                           §§push(0.5);
                                                                           if(!(_loc13_ && this))
                                                                           {
                                                                              if(!(_loc13_ && param1))
                                                                              {
                                                                                 if(_loc12_ || param1)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       if(!(_loc13_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc12_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc13_)
                                                                                             {
                                                                                                if(!_loc13_)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   if(!_loc13_)
                                                                                                   {
                                                                                                      if(_loc12_ || param2)
                                                                                                      {
                                                                                                         if(_loc12_ || param1)
                                                                                                         {
                                                                                                            addr265:
                                                                                                            §§push(§§pop() * (Math.random() * 0.5));
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  addr270:
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     if(!(_loc13_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc12_)
                                                                                                                        {
                                                                                                                           addr282:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              _loc11_ = §§pop();
                                                                                                                              addr285:
                                                                                                                              if(_loc12_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(§?l§.§'h§);
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().particles);
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(§0i§.§#"D§);
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(§0i§.PARTICLE_TYPE_KINETIC_PARTICLE);
                                                                                                                                             if(!_loc13_)
                                                                                                                                             {
                                                                                                                                                §§pop().§"!J§(§§pop(),§§pop(),§§pop(),getBody().GetPosition().x + Math.cos(_loc6_) * _loc8_,getBody().GetPosition().y + Math.sin(_loc6_) * _loc8_,1250,"",§0i§.§]!6§,_loc11_ * Math.cos(_loc10_) * _loc7_,-_loc11_ * Math.sin(_loc10_) * _loc7_,5,_loc11_ * 20,1);
                                                                                                                                                _loc9_++;
                                                                                                                                                addr124:
                                                                                                                                                if(_loc12_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr437);
                                                                                                                                                }
                                                                                                                                                §§goto(addr435);
                                                                                                                                                addr197:
                                                                                                                                             }
                                                                                                                                             addr458:
                                                                                                                                             §§pop().§"!J§(§§pop(),§§pop(),§§pop(),getBody().GetPosition().x + Math.cos(_loc6_) * _loc8_,getBody().GetPosition().y + Math.sin(_loc6_) * _loc8_,1000,"",0,0,0,5,_loc4_ * 5,Math.random() * 0.75 + 0.25);
                                                                                                                                             _loc9_++;
                                                                                                                                             addr440:
                                                                                                                                             if(!(_loc13_ && param1))
                                                                                                                                             {
                                                                                                                                                §§goto(addr422);
                                                                                                                                             }
                                                                                                                                             §§push(§?l§.§'h§.particles);
                                                                                                                                             §§push(§0i§.§'!N§);
                                                                                                                                             §§push(§6!O§.PARTICLE_GROUP_GAME_EFFECTS);
                                                                                                                                             addr494:
                                                                                                                                             addr525:
                                                                                                                                          }
                                                                                                                                          §§goto(addr458);
                                                                                                                                          §§push(§0i§.PARTICLE_TYPE_KINETIC_PARTICLE);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr458);
                                                                                                                              }
                                                                                                                              §§goto(addr494);
                                                                                                                           }
                                                                                                                           addr411:
                                                                                                                           _loc10_ = §§pop();
                                                                                                                           addr410:
                                                                                                                           if(_loc12_)
                                                                                                                           {
                                                                                                                              if(!(_loc13_ && _loc3_))
                                                                                                                              {
                                                                                                                                 addr301:
                                                                                                                                 §§push(Math.random() * this.§?!o§);
                                                                                                                                 §§push(this.§?!o§);
                                                                                                                                 §§push(2);
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    addr315:
                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc13_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                if(!(_loc13_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(2);
                                                                                                                                                   if(_loc12_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc13_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr348:
                                                                                                                                                         addr347:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(_loc12_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc12_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc13_)
                                                                                                                                                               {
                                                                                                                                                                  addr366:
                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                  §§goto(addr367);
                                                                                                                                                               }
                                                                                                                                                               addr524:
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               §§goto(addr525);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr366);
                                                                                                                                                         }
                                                                                                                                                         addr507:
                                                                                                                                                         addr402:
                                                                                                                                                         if(_loc12_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr410);
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            addr511:
                                                                                                                                                            §§push(§§pop() * 2);
                                                                                                                                                            if(_loc12_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr524);
                                                                                                                                                         }
                                                                                                                                                         addr520:
                                                                                                                                                         addr540:
                                                                                                                                                         addr539:
                                                                                                                                                         addr538:
                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                         if(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr524);
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                         }
                                                                                                                                                         _loc6_ = Number(§§pop() + §§pop());
                                                                                                                                                         §§push(Math.random() * this.§?!o§);
                                                                                                                                                         §§push(this.§?!o§);
                                                                                                                                                         if(_loc12_)
                                                                                                                                                         {
                                                                                                                                                            addr506:
                                                                                                                                                            §§goto(addr507);
                                                                                                                                                            §§push(§§pop() / 2);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr520);
                                                                                                                                                         addr541:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr511);
                                                                                                                                                   }
                                                                                                                                                   addr399:
                                                                                                                                                   §§goto(addr402);
                                                                                                                                                   §§push(§§pop() / Math.PI);
                                                                                                                                                }
                                                                                                                                                §§goto(addr524);
                                                                                                                                             }
                                                                                                                                             addr389:
                                                                                                                                             if(_loc12_ || param2)
                                                                                                                                             {
                                                                                                                                                addr398:
                                                                                                                                                §§goto(addr399);
                                                                                                                                                §§push(_loc6_ = §§pop());
                                                                                                                                                §§push(180);
                                                                                                                                             }
                                                                                                                                             §§goto(addr507);
                                                                                                                                          }
                                                                                                                                          §§goto(addr398);
                                                                                                                                       }
                                                                                                                                       §§goto(addr366);
                                                                                                                                    }
                                                                                                                                    §§goto(addr398);
                                                                                                                                 }
                                                                                                                                 §§goto(addr506);
                                                                                                                              }
                                                                                                                              §§goto(addr541);
                                                                                                                           }
                                                                                                                           §§goto(addr440);
                                                                                                                        }
                                                                                                                        addr379:
                                                                                                                        §§goto(addr389);
                                                                                                                        §§push(Number(§§pop() + §""@§(Math.random() * (720 / _loc5_))));
                                                                                                                     }
                                                                                                                     §§goto(addr411);
                                                                                                                  }
                                                                                                                  §§goto(addr366);
                                                                                                               }
                                                                                                               §§goto(addr282);
                                                                                                            }
                                                                                                            §§goto(addr348);
                                                                                                         }
                                                                                                         §§goto(addr301);
                                                                                                      }
                                                                                                      §§goto(addr315);
                                                                                                   }
                                                                                                   §§goto(addr265);
                                                                                                }
                                                                                                §§goto(addr540);
                                                                                             }
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                          §§goto(addr270);
                                                                                       }
                                                                                       §§goto(addr348);
                                                                                    }
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 §§goto(addr539);
                                                                              }
                                                                              §§goto(addr301);
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                        §§goto(addr282);
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                                  §§goto(addr197);
                                                               }
                                                               §§goto(addr124);
                                                            }
                                                            §§goto(addr379);
                                                            §§push(_loc6_);
                                                         }
                                                         §§goto(addr432);
                                                      }
                                                      §§goto(addr436);
                                                   }
                                                   §§push(_loc6_);
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr538);
                                                      §§push(Math.random() * (720 / _loc5_));
                                                   }
                                                   §§goto(addr348);
                                                }
                                                §§goto(addr436);
                                             }
                                             continue loop5;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(0);
                                       if(_loc12_)
                                       {
                                          if(_loc13_ && this)
                                          {
                                             break;
                                          }
                                          _loc9_ = §§pop();
                                          if(_loc12_)
                                          {
                                             §§goto(addr556);
                                          }
                                          §§goto(addr574);
                                       }
                                       §§goto(addr566);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr622);
                  }
                  §§goto(addr626);
               }
               §§goto(addr639);
            }
            §§goto(addr70);
         }
         §§goto(addr74);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§#P§)
            {
               if(!(_loc2_ && this))
               {
                  §§push(1);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr46:
                  return -1;
               }
               return §§pop();
            }
         }
         §§goto(addr46);
      }
      
      private function §!!b§(param1:§8"=§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(§<k§)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr98);
               }
               else
               {
                  addr99:
                  while(true)
                  {
                  }
                  addr99:
               }
            }
            while(true)
            {
               §§push(§@"M§);
               §§push("Globe_Bird_Special_Activation_");
               if(!_loc2_)
               {
                  §§push(§§pop() + Math.round(Math.random() * 2 + 1));
               }
               §§pop().§"!0§(§§pop(),"ChannelOrangeBird");
               while(_loc3_)
               {
                  §<k§ = true;
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(true);
                     if(_loc3_ || _loc3_)
                     {
                        return §§pop();
                     }
                  }
                  continue;
                  addr98:
                  return false;
               }
               §§goto(addr99);
            }
         }
         §§goto(addr99);
      }
   }
}
