package §&!P§
{
   import §"J§.b2Body;
   import §"J§.b2Fixture;
   import §"J§.b2World;
   import §#";§.§0"#§;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §2k§.b2CircleShape;
   import §<!a§.b2Vec2;
   import §]";§.§!<§;
   import §]";§.§0A§;
   import §]";§.§34§;
   import §]§.§?h§;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   
   public class §0!Z§ extends §9`§
   {
      
      public static const §>D§:int;
      
      private static const §5!m§:int = 200;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(§§findproperty(§>D§));
            §§push(241 * §,4§.§,^§);
            if(!_loc1_)
            {
               §§push(§§pop() / 2);
            }
            §§pop().§>D§ = §§pop();
            do
            {
               §5!m§ = 200;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private const §#"4§:Number = -5;
      
      private const §3!t§:int = 1500;
      
      private const §&!B§:int = 3500;
      
      private const §^Q§:int = 1500;
      
      private var §=%§:Boolean = false;
      
      private var §'"-§:Boolean = false;
      
      private var §->§:Number = -5;
      
      private var §?!I§:Number = -5;
      
      private var §+!B§:Number = -5;
      
      private var §2Z§:Number = 0;
      
      private var §5q§:int = 0;
      
      private var §`u§:Number = 0;
      
      private var §[!L§:Number = 0;
      
      private var §#V§:Number = 0;
      
      private var §0";§:Number = 1000;
      
      private var §<!u§:Boolean = false;
      
      private var § !§:§^!!§;
      
      public function §0!Z§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
         loop0:
         do
         {
            this.§ !§ = param1;
            while(true)
            {
               §8C§.mTryToFly = true;
               while(!(_loc12_ && param3))
               {
                  this.§#V§ = 0;
                  if(_loc13_ || param3)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc12_ && param3);
         
      }
      
      private function get §<!E§() : Number
      {
         return §>D§ * scale;
      }
      
      override public function addDamageParticles(param1:§6!Q§, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            §§push(param2 < 2);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        break loop0;
                     }
                     loop5:
                     while(true)
                     {
                        §§push(this.§?!I§);
                        if(_loc4_ || param2)
                        {
                           if(§§pop() != this.§#"4§)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§goto(addr116);
                                 }
                                 if(_loc4_ || _loc3_)
                                 {
                                    this.§9!B§();
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(this.§0";§);
                                       break loop5;
                                    }
                                    addr124:
                                 }
                              }
                              loop6:
                              while(!(_loc3_ && param1))
                              {
                                 while(true)
                                 {
                                    this.§0";§ = 0;
                                    if(!(_loc3_ && this))
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 return;
                              }
                              continue;
                           }
                           §§goto(addr29);
                        }
                        break;
                     }
                     while(true)
                     {
                        §§push(§§pop() < §5!m§);
                        if(_loc3_ && _loc3_)
                        {
                           break;
                        }
                        continue loop0;
                        §§goto(addr41);
                     }
                     addr41:
                  }
                  addr104:
               }
               while(true)
               {
                  §§pop();
                  §§goto(addr124);
               }
            }
            addr116:
            return;
         }
         §§goto(addr117);
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§9&§(param1));
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && this))
                  {
                     §§goto(addr113);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr60:
                        while(true)
                        {
                           §'_§.§=M§.particles.§'p§(§`!E§.§"!2§,§6!Q§.§;"#§,§`!E§.§+"=§,getBody().GetPosition().x,getBody().GetPosition().y,-1,"",§`!E§.§6!O§);
                           do
                           {
                              this.§^>§(0);
                           }
                           while(_loc3_ && this);
                           
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(true);
                        if(!(_loc3_ && param1))
                        {
                           return §§pop();
                        }
                        §§goto(addr113);
                     }
                  }
               }
               §§goto(addr60);
            }
            §§goto(addr113);
         }
         addr113:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = NaN;
         if(!_loc8_)
         {
            §§push(!§+^§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr220:
                        while(true)
                        {
                           §§push(this.§->§);
                           addr197:
                           while(true)
                           {
                              §§push(§§pop() == this.§#"4§);
                           }
                        }
                     }
                     addr219:
                  }
                  while(true)
                  {
                     loop6:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr212:
                           while(true)
                           {
                              this.§^>§();
                              addr214:
                              while(true)
                              {
                              }
                           }
                           addr212:
                        }
                        while(true)
                        {
                           §§push(param1);
                           loop8:
                           while(true)
                           {
                              §§push(12);
                              loop9:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 loop10:
                                 while(_loc9_)
                                 {
                                    §§push(§§pop());
                                    loop11:
                                    for(; _loc9_ || param1; while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc8_ && param1)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr169);
                                       }
                                       §§goto(addr133);
                                    })
                                    {
                                       if(!§§pop())
                                       {
                                          continue;
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          §§pop();
                                          loop13:
                                          while(_loc9_)
                                          {
                                             §§push(param1);
                                             loop14:
                                             while(true)
                                             {
                                                if(_loc9_)
                                                {
                                                   §§push(5);
                                                   if(!(_loc9_ || this))
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() > §§pop());
                                                   while(_loc9_)
                                                   {
                                                      continue loop11;
                                                      addr126:
                                                      if(_loc8_ && param2)
                                                      {
                                                         continue;
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(Number(super.applyDamage(param1,param2,param3,param4,param5,param6)));
                                                            loop20:
                                                            while(true)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               loop24:
                                                               while(_loc9_)
                                                               {
                                                                  _loc7_ = §§pop();
                                                                  loop23:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           addr34:
                                                                           this.§=%§ = true;
                                                                           if(_loc8_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc9_ || param3))
                                                                                 {
                                                                                    continue loop23;
                                                                                 }
                                                                                 if(_loc9_ || this)
                                                                                 {
                                                                                    §§goto(addr34);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(Number(§8W§));
                                                                                          continue loop24;
                                                                                       }
                                                                                       §§goto(addr212);
                                                                                       addr135:
                                                                                       while(true)
                                                                                       {
                                                                                          §^!x§(§34§.§do§);
                                                                                          continue loop22;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr214);
                                                                                    addr139:
                                                                                 }
                                                                              }
                                                                              addr65:
                                                                           }
                                                                           if(!_loc8_)
                                                                           {
                                                                              continue loop20;
                                                                           }
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§=%§);
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 continue loop6;
                                                                              }
                                                                              addr124:
                                                                              if(_loc8_)
                                                                              {
                                                                                 while(!_loc8_)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop18;
                                                                                    }
                                                                                    §§goto(addr219);
                                                                                 }
                                                                                 continue loop10;
                                                                                 addr169:
                                                                              }
                                                                              §§goto(addr126);
                                                                           }
                                                                           continue loop6;
                                                                        }
                                                                        §§goto(addr214);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr135);
                                                                     }
                                                                  }
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop14;
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                                §§goto(addr197);
                                             }
                                             continue loop9;
                                          }
                                          §§goto(addr220);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr212);
      }
      
      override public function explode() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!§+^§)
            {
               do
               {
                  this.§9&§(null);
                  do
                  {
                     §[r§ = true;
                  }
                  while(!(_loc1_ || _loc1_));
                  
                  this.§^>§(0);
               }
               while(_loc2_ && this);
               
               §§push(true);
               addr70:
            }
            else
            {
               §§push(false);
               if(!(_loc2_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr70);
      }
      
      private function §^>§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc2_)
                     {
                        this.§->§ = 0;
                     }
                     this.update(0);
                     addr107:
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                     §§push(0);
                     if(_loc2_)
                     {
                        continue;
                     }
                     if(§§pop() <= §§pop())
                     {
                        this.§->§ = this.§3!t§;
                        if(!(_loc2_ && param1))
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(_loc3_)
                              {
                                 addr62:
                                 break;
                              }
                              addr88:
                              break;
                              addr88:
                           }
                           else
                           {
                              addr73:
                              if(_loc3_ || param1)
                              {
                                 this.§->§ = param1;
                              }
                              else
                              {
                                 §§goto(addr107);
                              }
                           }
                           §§goto(addr88);
                        }
                        break;
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr88);
               }
               return;
            }
         }
         §§goto(addr62);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:Vector.<§``§> = null;
         var _loc3_:* = NaN;
         var _loc4_:b2Body = null;
         var _loc5_:b2Vec2 = null;
         if(!(_loc8_ && _loc2_))
         {
            §§push(this);
            §§push(this.§0";§);
            if(!(_loc8_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§0";§ = §§pop();
            if(_loc9_)
            {
               §[r§ = true;
               loop0:
               while(true)
               {
                  §§push(this.§->§);
                  if(_loc9_)
                  {
                     §§push(this.§#"4§);
                     if(!(_loc8_ && _loc3_))
                     {
                        if(§§pop() != §§pop())
                        {
                           loop1:
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§->§);
                              if(_loc9_ || _loc2_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§->§ = §§pop();
                              if(_loc9_)
                              {
                                 §§push(this.§->§);
                                 if(!_loc8_)
                                 {
                                    §§push(0);
                                    if(!(_loc8_ && param1))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc9_ || param1)
                                          {
                                             §§push(this.§#V§);
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                §§push(1);
                                                if(_loc9_ || param1)
                                                {
                                                   addr201:
                                                   if(§§pop() < §§pop())
                                                   {
                                                      §§push(this);
                                                      §§push(this.§#V§);
                                                      if(_loc9_ || _loc2_)
                                                      {
                                                         §§push(§§pop() + 0.2);
                                                      }
                                                      §§pop().§#V§ = §§pop();
                                                      if(_loc9_ || _loc3_)
                                                      {
                                                         if(_loc9_)
                                                         {
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(this);
                                                               §§push(this.§<!E§);
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(§§pop() * this.§#V§);
                                                               }
                                                               §§pop().§+!Q§(§§pop(),§@!G§.material.mValues[§0A§.§3U§],§@!G§.material.mValues[§0A§.§8!@§],§@!G§.material.mValues[§0A§.§4&§]);
                                                               if(_loc9_)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §8C§.setScale(this.§#V§ * scale);
                                                                     if(_loc9_ || _loc2_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           addr870:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr380:
                                                                        }
                                                                        continue;
                                                                        return;
                                                                     }
                                                                     addr708:
                                                                     addr412:
                                                                     addr707:
                                                                     addr708:
                                                                     if(this.§?!I§ < 0)
                                                                     {
                                                                        addr709:
                                                                        this.§'"-§ = true;
                                                                        this.§?!I§ = this.§#"4§;
                                                                        this.§+!B§ = this.§^Q§;
                                                                        §^!x§(§34§.§,!t§);
                                                                        addr692:
                                                                        addr712:
                                                                        addr704:
                                                                        addr698:
                                                                     }
                                                                     §§goto(addr870);
                                                                     §§goto(addr870);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop4:
                                                                     while(true)
                                                                     {
                                                                        this.§->§ = this.§#"4§;
                                                                        if(_loc9_ || _loc2_)
                                                                        {
                                                                           this.§#V§ = 1;
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              this.§+!Q§(this.§<!E§);
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 this.§?!I§ = this.§&!B§;
                                                                                 if(!(_loc8_ && _loc2_))
                                                                                 {
                                                                                    §?h§.§^I§(false);
                                                                                    if(!(_loc8_ && param1))
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    addr650:
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§2Z§);
                                                                                       loop6:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(§§pop() <= §§pop())
                                                                                                      {
                                                                                                         loop8:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§2Z§ = this.§^Q§ / 5;
                                                                                                            addr614:
                                                                                                            while(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               if(_loc9_ || _loc3_)
                                                                                                               {
                                                                                                                  if(!(_loc8_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(Math.random() * 100);
                                                                                                                     if(!(_loc8_ && this))
                                                                                                                     {
                                                                                                                        §§push(50);
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           addr597:
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(10);
                                                                                                                           }
                                                                                                                           §§pop().§`u§ = §§pop();
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(Math.random() * 100);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(50);
                                                                                                                                 if(!(_loc8_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       addr552:
                                                                                                                                       §§push(§§pop() * 10);
                                                                                                                                    }
                                                                                                                                    §§pop().§[!L§ = §§pop();
                                                                                                                                    if(!(_loc8_ && this))
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(!(_loc8_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          break loop2;
                                                                                                                                       }
                                                                                                                                       addr684:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             break loop1;
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr692);
                                                                                                                                    }
                                                                                                                                    break loop4;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr552);
                                                                                                                           }
                                                                                                                           continue loop8;
                                                                                                                           addr598:
                                                                                                                        }
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr597);
                                                                                                                  }
                                                                                                                  §§goto(addr709);
                                                                                                               }
                                                                                                               §§goto(addr712);
                                                                                                            }
                                                                                                            §§goto(addr704);
                                                                                                         }
                                                                                                         addr608:
                                                                                                      }
                                                                                                      loop11:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§+!B§);
                                                                                                         loop12:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§^Q§);
                                                                                                            addr501:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() / §§pop());
                                                                                                               if(_loc9_ || this)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!(_loc8_ && param1))
                                                                                                                     {
                                                                                                                        _loc3_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 if(!_loc8_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ || _loc2_))
                                                                                                                                    {
                                                                                                                                       break loop3;
                                                                                                                                    }
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       break loop0;
                                                                                                                                    }
                                                                                                                                    if(_loc9_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              §§goto(addr614);
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           addr487:
                                                                                                                           if(!(_loc9_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 continue loop11;
                                                                                                                              }
                                                                                                                              addr713:
                                                                                                                              var _loc6_:*;
                                                                                                                              §§push((_loc6_ = this).§5q§);
                                                                                                                              if(_loc9_ || _loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + 1);
                                                                                                                              }
                                                                                                                              var _loc7_:* = §§pop();
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 _loc6_.§5q§ = _loc7_;
                                                                                                                              }
                                                                                                                              if(_loc9_ || param1)
                                                                                                                              {
                                                                                                                                 addr742:
                                                                                                                                 §§push(this.§5q§ % 3);
                                                                                                                                 break loop0;
                                                                                                                              }
                                                                                                                              addr866:
                                                                                                                              addr866:
                                                                                                                              this.§ !§.removeObject(this);
                                                                                                                              §§goto(addr870);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr598);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr707);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr510:
                                                                                                               }
                                                                                                               break loop0;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr496:
                                                                                                   }
                                                                                                   break;
                                                                                                   addr456:
                                                                                                   if(_loc8_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(!_loc8_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     _loc3_ = §§pop();
                                                                                                                     if(!(_loc8_ && this))
                                                                                                                     {
                                                                                                                        §§goto(addr487);
                                                                                                                     }
                                                                                                                     addr748:
                                                                                                                     §8C§.setScale(_loc3_ * scale);
                                                                                                                     if(_loc9_ || param1)
                                                                                                                     {
                                                                                                                        addr760:
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§<!E§);
                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(_loc3_);
                                                                                                                           if(!(_loc8_ && _loc2_))
                                                                                                                           {
                                                                                                                              addr779:
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              §§push(0.00001);
                                                                                                                           }
                                                                                                                           §§pop().§+!Q§(§§pop(),§§pop(),0,0);
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              break loop4;
                                                                                                                           }
                                                                                                                           §§goto(addr870);
                                                                                                                        }
                                                                                                                        §§goto(addr779);
                                                                                                                     }
                                                                                                                     break loop4;
                                                                                                                  }
                                                                                                                  §§goto(addr510);
                                                                                                               }
                                                                                                               break loop0;
                                                                                                            }
                                                                                                            §§goto(addr742);
                                                                                                         }
                                                                                                         addr466:
                                                                                                      }
                                                                                                      break loop4;
                                                                                                   }
                                                                                                   §§goto(addr713);
                                                                                                }
                                                                                                §§goto(addr708);
                                                                                             }
                                                                                             addr604:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr660:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         break loop4;
                                                                                                      }
                                                                                                      §§push(this);
                                                                                                      §§push(this.§+!B§);
                                                                                                      if(!(_loc8_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() - param1);
                                                                                                      }
                                                                                                      §§pop().§+!B§ = §§pop();
                                                                                                      §§goto(addr684);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      this.§<!u§ = true;
                                                                                                      if(_loc9_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr866);
                                                                                                      }
                                                                                                      §§goto(addr870);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr870);
                                                                                             }
                                                                                             addr660:
                                                                                          }
                                                                                          addr745:
                                                                                          addr845:
                                                                                          if(§§pop() == §§pop())
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                §§goto(addr748);
                                                                                             }
                                                                                             §§goto(addr760);
                                                                                          }
                                                                                          §§goto(addr870);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr698);
                                                                           }
                                                                           §§goto(addr870);
                                                                        }
                                                                        break;
                                                                     }
                                                                     _loc5_ = (_loc4_ = getBody()).GetLinearVelocity();
                                                                     if(_loc9_)
                                                                     {
                                                                        _loc4_.ApplyImpulse(new b2Vec2(this.§`u§,this.§[!L§),getBody().GetPosition());
                                                                     }
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           _loc4_.§4!Y§(Math.atan2(-_loc5_.x,_loc5_.y) - Math.PI / 2);
                                                                           do
                                                                           {
                                                                              this.§9!B§(0.02,true);
                                                                           }
                                                                           while(_loc8_ && this);
                                                                           
                                                                           if(!_loc8_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        §§goto(addr845);
                                                                     }
                                                                     addr202:
                                                                  }
                                                                  §§goto(addr870);
                                                               }
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr496);
                                                            }
                                                            addr570:
                                                            addr52:
                                                         }
                                                         §§goto(addr148);
                                                      }
                                                      §§goto(addr608);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                §§goto(addr708);
                                             }
                                             else
                                             {
                                                addr271:
                                                §§push(param1);
                                                if(_loc9_)
                                                {
                                                   addr274:
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         addr277:
                                                         _loc2_ = new Vector.<§``§>(1,true);
                                                         if(_loc9_ || _loc2_)
                                                         {
                                                            _loc2_[0] = this;
                                                         }
                                                         loop23:
                                                         while(true)
                                                         {
                                                            container.addExplosions(§=!Y§.§?!>§,getBody().GetPosition().x,getBody().GetPosition().y,_loc2_);
                                                            loop24:
                                                            while(true)
                                                            {
                                                               this.§9&§(null);
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  §+!A§ = "BIRD_ORANGE_BIG";
                                                                  while(true)
                                                                  {
                                                                     §@!G§ = §!<§.§[!@§(§+!A§);
                                                                     loop27:
                                                                     for(; !(_loc8_ && _loc3_); while(!(_loc8_ && _loc3_))
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           sprite.scaleY = this.§#V§;
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              continue loop25;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop23;
                                                                     })
                                                                     {
                                                                        do
                                                                        {
                                                                           sprite.scaleX = this.§#V§;
                                                                           continue loop27;
                                                                        }
                                                                        while(false);
                                                                        
                                                                        §§goto(addr380);
                                                                     }
                                                                  }
                                                                  if(!(_loc8_ && _loc2_))
                                                                  {
                                                                     continue loop24;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr570);
                                                      }
                                                   }
                                                   §§goto(addr380);
                                                }
                                                else
                                                {
                                                   addr387:
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(this.§=%§);
                                                         if(_loc9_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§?!I§);
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     §§push(§§pop() - param1);
                                                                  }
                                                                  §§pop().§?!I§ = §§pop();
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr412);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr866);
                                                                  }
                                                               }
                                                               §§goto(addr709);
                                                            }
                                                            §§goto(addr708);
                                                         }
                                                         else
                                                         {
                                                            addr655:
                                                            if(§§pop())
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§goto(addr660);
                                                                  §§push(this.§+!B§);
                                                               }
                                                               §§goto(addr866);
                                                            }
                                                            §§goto(addr380);
                                                         }
                                                      }
                                                      §§goto(addr466);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§'"-§);
                                                   }
                                                   §§goto(addr655);
                                                }
                                             }
                                             §§goto(addr380);
                                          }
                                          §§goto(addr277);
                                       }
                                       else
                                       {
                                          §§push(this.§->§);
                                          if(_loc9_)
                                          {
                                             §§goto(addr271);
                                          }
                                       }
                                       §§goto(addr604);
                                    }
                                    §§goto(addr201);
                                 }
                                 §§goto(addr441);
                              }
                              break;
                           }
                           while(true)
                           {
                              §§push(this);
                              §§push(this.§2Z§);
                              if(_loc9_ || _loc2_)
                              {
                                 §§push(§§pop() - param1);
                              }
                              §§pop().§2Z§ = §§pop();
                              §§goto(addr650);
                           }
                        }
                        else
                        {
                           §§push(this.§?!I§);
                           if(_loc9_)
                           {
                              §§goto(addr387);
                              §§push(this.§#"4§);
                           }
                        }
                        §§goto(addr660);
                     }
                     §§goto(addr274);
                  }
                  break;
               }
               §§goto(addr745);
               §§push(0);
            }
            §§goto(addr742);
         }
         §§goto(addr494);
      }
      
      private function §+!Q§(param1:Number, param2:Number = -1, param3:Number = -1, param4:Number = -1) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:b2Fixture;
         var _loc5_:b2Body;
         var _loc7_:b2CircleShape = (_loc6_ = (_loc5_ = getBody()).GetFixtureList()).GetShape() as b2CircleShape;
         if(_loc8_)
         {
            _loc5_.SetAwake(true);
            while(true)
            {
               _loc7_.§`^§(param1);
               while(true)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     addr139:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           while(true)
                           {
                              _loc6_.§5`§(param2);
                              addr153:
                              loop11:
                              while(true)
                              {
                                 _loc5_.§"!N§();
                                 addr128:
                                 while(true)
                                 {
                                    if(!(_loc8_ || this))
                                    {
                                       continue loop11;
                                    }
                                    while(true)
                                    {
                                       §§push(param3);
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           addr140:
                        }
                        §§goto(addr96);
                     }
                  }
                  if(_loc9_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr37);
               }
            }
         }
         §§goto(addr153);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      override public function addTrail() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!§+^§)
            {
               if(_loc1_)
               {
                  addr47:
                  super.addTrail();
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      private function §9!B§(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         §§push((getBody().GetFixtureList().GetShape() as b2CircleShape).§?!L§());
         if(_loc13_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(§[!_§() / 40);
         if(!_loc12_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(1);
         if(!_loc12_)
         {
            §§push(_loc4_);
            if(_loc13_)
            {
               addr65:
               §§push(§§pop() * §9!3§(true));
               if(!_loc12_)
               {
                  addr61:
                  §§push(§§pop() * 0.9);
               }
               var _loc5_:* = int(§§pop() + §§pop());
               §§push(Math.PI / 2);
               if(_loc13_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc3_);
               if(_loc13_ || param2)
               {
                  §§push(§§pop() / this.§<!E§);
                  if(_loc13_ || this)
                  {
                     addr92:
                     §§push(Number(§§pop()));
                  }
                  var _loc7_:* = §§pop();
                  if(_loc13_ || param1)
                  {
                     §§push(_loc5_);
                     loop0:
                     while(true)
                     {
                        §§push(_loc7_);
                        if(_loc13_ || param2)
                        {
                           §§push(§§pop() * 3);
                           if(!_loc12_)
                           {
                              addr661:
                              §§push(§§pop() * param1);
                           }
                           §§push(§§pop() * §§pop());
                           loop1:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              if(_loc13_ || this)
                              {
                                 §§push(§§pop());
                                 if(_loc13_)
                                 {
                                    _loc5_ = §§pop();
                                    if(_loc13_ || param2)
                                    {
                                       addr694:
                                       if(§§pop() > 30)
                                       {
                                          while(true)
                                          {
                                             §§push(30);
                                             addr696:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr697:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr695:
                                       }
                                       while(true)
                                       {
                                          if(param2)
                                          {
                                             loop4:
                                             for(; !_loc12_; while(!(_loc13_ || param2))
                                             {
                                                continue loop4;
                                             })
                                             {
                                                if(_loc13_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(8);
                                                      addr639:
                                                      while(!(_loc12_ && param2))
                                                      {
                                                         _loc5_ = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(8);
                                                            addr619:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!_loc13_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc4_ = §§pop();
                                                               continue loop4;
                                                            }
                                                            continue loop1;
                                                         }
                                                      }
                                                      §§goto(addr696);
                                                   }
                                                   addr638:
                                                }
                                                else
                                                {
                                                   §§goto(addr695);
                                                }
                                                §§goto(addr696);
                                             }
                                             §§goto(addr697);
                                          }
                                          while(true)
                                          {
                                             §§push(0);
                                             if(!(_loc12_ && this))
                                             {
                                                if(!(_loc12_ && param2))
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr639);
                                             }
                                             §§goto(addr619);
                                             §§goto(addr630);
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr696);
                                 }
                              }
                              §§goto(addr694);
                           }
                        }
                        §§goto(addr661);
                     }
                  }
                  §§goto(addr638);
               }
               §§goto(addr92);
            }
            §§goto(addr61);
         }
         §§goto(addr65);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(§+^§)
            {
               if(!(_loc2_ && this))
               {
                  §§push(1);
                  if(!(_loc2_ && _loc1_))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr56:
                  return -1;
               }
               return §§pop();
            }
         }
         §§goto(addr56);
      }
      
      private function §9&§(param1:§^!!§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§3H§)
            {
               if(_loc2_)
               {
                  §§goto(addr85);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     addr55:
                     while(true)
                     {
                        §0"#§.§<!&§("Globe_Bird_Special_Activation_" + Math.round(Math.random() * 2 + 1),"ChannelOrangeBird");
                        do
                        {
                           §3H§ = true;
                        }
                        while(_loc3_ && this);
                        
                        if(_loc2_ || _loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§push(true);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                     §§goto(addr85);
                  }
               }
            }
            §§goto(addr55);
         }
         addr85:
         return false;
      }
   }
}
