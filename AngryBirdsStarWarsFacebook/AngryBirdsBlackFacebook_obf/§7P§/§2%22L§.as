package §7P§
{
   import §!!U§.§#"t§;
   import §7!F§.§7§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import com.angrybirds.§,!q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class §2"L§ extends EventDispatcher
   {
      
      public static const §#!P§:int = 0;
      
      public static const §6o§:int = 1;
      
      public static const §+!`§:int = 2;
      
      public static const §%m§:String = "BEAM_READY";
      
      private static var §6!?§:§&#=§;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §#!P§ = 0;
         }
         do
         {
            §6o§ = 1;
            do
            {
               §+!`§ = 2;
               do
               {
                  §%m§ = "BEAM_READY";
               }
               while(_loc1_);
               
            }
            while(_loc1_ && §2"L§);
            
         }
         while(_loc1_ && _loc1_);
         
      }
      
      private const §#",§:Array;
      
      private const §9",§:int = 3;
      
      private var §`!a§:int = 0;
      
      private var §6B§:int = 0;
      
      private var §]!P§:int = 0;
      
      private var §#!d§:int = 0;
      
      private var §,!d§:§#"t§;
      
      private var §&!9§:§8!?§;
      
      private var §5H§:§&#=§;
      
      private var §1=§:Boolean;
      
      private var §^!Q§:b2Vec2;
      
      public function §2"L§(param1:§8!?§, param2:§&#=§, param3:int, param4:b2Vec2 = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§#",§ = ["PINK_BIRD_GRAVITY_RAY_PINK_1","PINK_BIRD_GRAVITY_RAY_PINK_2","PINK_BIRD_GRAVITY_RAY_PINK_3","PINK_BIRD_GRAVITY_RAY_PINK_4"];
            while(true)
            {
               super();
               loop3:
               while(!(_loc5_ && param1))
               {
                  this.§^!Q§ = param4;
                  loop4:
                  do
                  {
                     if(param3 == §#!P§)
                     {
                        addr97:
                        while(!(_loc5_ && this))
                        {
                           §6!?§ = this.§5H§;
                           while(true)
                           {
                              addr40:
                              if(_loc6_ || param1)
                              {
                                 continue loop4;
                              }
                           }
                        }
                        while(true)
                        {
                           this.§&!9§ = param1;
                           addr130:
                           while(true)
                           {
                              this.§5H§ = param2;
                              if(_loc5_ && param1)
                              {
                                 continue loop3;
                              }
                              §§goto(addr83);
                              continue loop3;
                           }
                           §§goto(addr97);
                        }
                        addr97:
                        addr144:
                     }
                     while(true)
                     {
                        this.§%"8§(param3);
                        while(true)
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 this.§,!d§ = new §#"t§(§7#5§.§%!E§.getTexture(this.§#",§[this.§#!d§]).texture);
                                 continue;
                              }
                           }
                           else
                           {
                              §§goto(addr97);
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr108);
                     }
                  }
                  while(!_loc6_);
                  
                  return;
               }
            }
         }
         §§goto(addr144);
      }
      
      public function update(param1:int) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc13_:§^!K§ = null;
         if(!(_loc15_ && this))
         {
            this.§6B§ += param1;
         }
         while(true)
         {
            while(true)
            {
               this.§4!N§();
               do
               {
                  this.§6"y§(param1);
               }
               while(!(_loc16_ || param1));
               
               if(_loc15_)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               §§push(this.§&!9§.§'"8§() / §#_§.§8]§);
               if(_loc16_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               §§push(this.§&!9§.§;">§() / §#_§.§8]§);
               if(!_loc15_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               var _loc4_:* = Number(0);
               var _loc5_:* = Number(0);
               var _loc6_:* = Number(0);
               var _loc7_:* = Number(0);
               if(_loc16_)
               {
                  §§push(§6!?§);
                  loop3:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     loop4:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr217:
                              while(true)
                              {
                                 §§push(this.§5H§);
                                 addr183:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!_loc16_)
                                    {
                                       break;
                                    }
                                    if(_loc15_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 continue loop5;
                              }
                           }
                        }
                        loop8:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§push(this.§^!Q§);
                              if(_loc16_)
                              {
                                 §§push(§§pop().x);
                                 if(!_loc15_)
                                 {
                                    §§push(§#_§.§8]§);
                                    if(_loc16_ || param1)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(_loc16_ || param1)
                                       {
                                          §§goto(addr243);
                                       }
                                       §§goto(addr334);
                                    }
                                    §§goto(addr273);
                                 }
                                 §§goto(addr243);
                              }
                              break;
                           }
                           loop9:
                           while(true)
                           {
                              §§push(§6!?§);
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop().§'"8§() / §#_§.§8]§);
                                 if(_loc15_ && this)
                                 {
                                    addr243:
                                    §§push(§§pop());
                                    if(_loc16_ || this)
                                    {
                                       var _loc14_:* = §§pop();
                                       if(!_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             addr262:
                                             _loc4_ = §§pop();
                                             if(_loc16_ || _loc3_)
                                             {
                                                §§push(_loc14_);
                                                if(_loc16_)
                                                {
                                                   addr273:
                                                   if(_loc16_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc16_)
                                                      {
                                                         §§goto(addr279);
                                                      }
                                                      addr324:
                                                      _loc7_ = §§pop();
                                                      §§goto(addr325);
                                                   }
                                                   addr292:
                                                   §§push(§#_§.§8]§);
                                                   if(_loc16_)
                                                   {
                                                      break;
                                                   }
                                                   _loc14_ = §§pop();
                                                   if(!(_loc15_ && _loc2_))
                                                   {
                                                      addr308:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         addr316:
                                                         _loc5_ = §§pop();
                                                         §§push(_loc14_);
                                                      }
                                                      if(!_loc15_)
                                                      {
                                                         addr321:
                                                         §§push(Number(§§pop()));
                                                         if(_loc16_)
                                                         {
                                                            §§goto(addr324);
                                                         }
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr316);
                                                }
                                                §§goto(addr308);
                                             }
                                             §§goto(addr316);
                                          }
                                          §§goto(addr273);
                                       }
                                       §§goto(addr262);
                                    }
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                                 loop11:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    if(_loc16_ || this)
                                    {
                                       §§push(§6!?§);
                                       if(!_loc16_)
                                       {
                                          continue loop10;
                                       }
                                       if(_loc15_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop().§;">§() / §#_§.§8]§);
                                       if(_loc16_)
                                       {
                                          if(!_loc15_)
                                          {
                                             §§push(Number(§§pop()));
                                             loop12:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc15_)
                                                {
                                                   while(true)
                                                   {
                                                      do
                                                      {
                                                         §§push(this.§5H§);
                                                         while(_loc16_)
                                                         {
                                                            §§push(§§pop().§'"8§() / §#_§.§8]§);
                                                            if(_loc15_)
                                                            {
                                                               addr279:
                                                               _loc6_ = §§pop();
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  break loop12;
                                                               }
                                                               break loop11;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            if(_loc16_)
                                                            {
                                                               if(!_loc15_)
                                                               {
                                                                  _loc6_ = §§pop();
                                                                  continue loop9;
                                                               }
                                                               continue loop12;
                                                            }
                                                            addr334:
                                                            addr334:
                                                            addr333:
                                                            addr333:
                                                            addr334:
                                                            var _loc8_:Number = §§pop();
                                                            §§push(_loc3_);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            §§push(this.§`!a§);
                                                            if(_loc16_)
                                                            {
                                                               _loc14_ = §§pop();
                                                               if(_loc16_)
                                                               {
                                                                  §§push(§#!P§);
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(_loc14_);
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(§§pop() === §§pop())
                                                                        {
                                                                           if(_loc16_ || param1)
                                                                           {
                                                                              addr744:
                                                                              §§push(0);
                                                                              if(!(_loc15_ && _loc3_))
                                                                              {
                                                                                 addr752:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr789:
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr781:
                                                                              §§push(2);
                                                                              if(_loc16_ || param1)
                                                                              {
                                                                                 §§goto(addr789);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(§6o§);
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr759:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    if(_loc16_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(_loc16_ || param1)
                                                                                       {
                                                                                          addr795:
                                                                                          loop58:
                                                                                          switch(§§pop())
                                                                                          {
                                                                                             case 0:
                                                                                                addr704:
                                                                                                §§push(_loc4_);
                                                                                                §§push(_loc4_);
                                                                                                loop17:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc2_);
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      addr707:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(1);
                                                                                                         addr708:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§6B§);
                                                                                                            addr710:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr714:
                                                                                                               §§push(§§pop() - §§pop() / this.§&!9§.specialtyBeamPhase1Time);
                                                                                                               loop19:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  loop20:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     addr717:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr718:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc10_ = §§pop();
                                                                                                                           loop21:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              addr660:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 addr661:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc16_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       break loop21;
                                                                                                                                    }
                                                                                                                                    if(!_loc16_)
                                                                                                                                    {
                                                                                                                                       continue loop17;
                                                                                                                                    }
                                                                                                                                    §§push(_loc3_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc15_)
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          addr675:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§6B§);
                                                                                                                                             addr677:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§&!9§);
                                                                                                                                                addr679:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().specialtyBeamPhase1Time);
                                                                                                                                                   addr680:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                      addr681:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         addr682:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc15_ && _loc3_)
                                                                                                                                                            {
                                                                                                                                                               continue loop18;
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               addr691:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  addr692:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc11_ = §§pop();
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
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop20;
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
                                                                                             case 1:
                                                                                                addr592:
                                                                                                §§push(_loc6_);
                                                                                                §§push(_loc6_);
                                                                                                loop23:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc4_);
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc15_ && _loc2_))
                                                                                                      {
                                                                                                         if(!(_loc15_ && _loc2_))
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            loop25:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§6B§);
                                                                                                               addr612:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§&!9§);
                                                                                                                  addr614:
                                                                                                                  while(!(_loc15_ && _loc2_))
                                                                                                                  {
                                                                                                                     §§push(§§pop().specialtyBeamPhase2Time);
                                                                                                                     while(_loc16_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc15_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              loop30:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr634:
                                                                                                                                 loop31:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          addr638:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc10_ = §§pop();
                                                                                                                                             addr639:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                addr426:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc16_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc7_);
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      if(_loc15_)
                                                                                                                                                      {
                                                                                                                                                         continue loop23;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(!(_loc16_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop30;
                                                                                                                                                      }
                                                                                                                                                      if(_loc16_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                            continue loop25;
                                                                                                                                                         }
                                                                                                                                                         addr550:
                                                                                                                                                         if(!(_loc16_ || this))
                                                                                                                                                         {
                                                                                                                                                            continue loop31;
                                                                                                                                                         }
                                                                                                                                                         if(_loc16_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc15_)
                                                                                                                                                            {
                                                                                                                                                               addr570:
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               if(_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               if(!(_loc15_ && this))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc11_ = §§pop();
                                                                                                                                                                     if(_loc16_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr396:
                                                                                                                                                                        break loop58;
                                                                                                                                                                     }
                                                                                                                                                                     break loop58;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr704);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr660);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr707);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr674);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr682);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr692);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr637:
                                                                                                                                    }
                                                                                                                                    §§goto(addr690);
                                                                                                                                 }
                                                                                                                                 continue loop24;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           addr512:
                                                                                                                           break;
                                                                                                                           if(!(_loc16_ || param1))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           if(!(_loc15_ && param1))
                                                                                                                           {
                                                                                                                              §§goto(addr528);
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                           }
                                                                                                                           §§goto(addr681);
                                                                                                                        }
                                                                                                                        §§goto(addr714);
                                                                                                                     }
                                                                                                                     §§goto(addr714);
                                                                                                                  }
                                                                                                                  §§goto(addr714);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr661);
                                                                                                      }
                                                                                                      §§goto(addr634);
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                                addr593:
                                                                                             case 2:
                                                                                                §§push(_loc6_);
                                                                                                loop32:
                                                                                                while(!(_loc15_ && _loc2_))
                                                                                                {
                                                                                                   if(!(_loc15_ && param1))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop33:
                                                                                                      for(; !(_loc15_ && _loc3_); if(_loc15_ && _loc2_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(!_loc16_)
                                                                                                      {
                                                                                                         continue loop32;
                                                                                                      },if(_loc16_)
                                                                                                      {
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               _loc11_ = §§pop();
                                                                                                               if(_loc16_ || _loc3_)
                                                                                                               {
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     §§goto(addr423);
                                                                                                                  }
                                                                                                                  if(!(_loc15_ && param1))
                                                                                                                  {
                                                                                                                     if(!(_loc15_ && this))
                                                                                                                     {
                                                                                                                        if(true)
                                                                                                                        {
                                                                                                                           break loop58;
                                                                                                                        }
                                                                                                                        §§goto(addr396);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr650);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr639);
                                                                                                                  }
                                                                                                                  §§goto(addr692);
                                                                                                               }
                                                                                                               break loop58;
                                                                                                            }
                                                                                                            §§goto(addr717);
                                                                                                         }
                                                                                                         §§goto(addr718);
                                                                                                      },§§goto(addr637))
                                                                                                      {
                                                                                                         _loc10_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc16_ || param1))
                                                                                                            {
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               continue loop33;
                                                                                                            }
                                                                                                            §§goto(addr691);
                                                                                                         }
                                                                                                         §§goto(addr426);
                                                                                                      }
                                                                                                      §§goto(addr570);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr592);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr638);
                                                                                          }
                                                                                          addr794:
                                                                                          §§push(§§findproperty(b2Vec2));
                                                                                          §§push(_loc10_);
                                                                                          if(_loc16_ || _loc2_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr809:
                                                                                                §§push(§§pop() - §§pop());
                                                                                                §§push(_loc11_);
                                                                                                if(_loc16_ || param1)
                                                                                                {
                                                                                                   addr817:
                                                                                                   §§push(§§pop() - _loc9_);
                                                                                                }
                                                                                                var _loc12_:b2Vec2;
                                                                                                if((_loc12_ = new §§pop().b2Vec2(§§pop(),§§pop())).Length() > 1)
                                                                                                {
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§push(this.§,!d§);
                                                                                                      if(_loc16_)
                                                                                                      {
                                                                                                         §§pop().§+!l§(this.§1#§(_loc8_,_loc9_,_loc10_,_loc11_,20));
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            addr842:
                                                                                                            §§push(this.§,!d§);
                                                                                                            if(!(_loc15_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(true);
                                                                                                               if(_loc16_ || param1)
                                                                                                               {
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  if(!(_loc15_ && param1))
                                                                                                                  {
                                                                                                                     addr879:
                                                                                                                     if(!this.§1=§)
                                                                                                                     {
                                                                                                                        (_loc13_ = §^!K§(§,!q§.§9!,§.levelObjects)).§8#G§.addChildAt(this.§,!d§,0);
                                                                                                                        addr882:
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                           this.§1=§ = true;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     return;
                                                                                                                     addr867:
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr871:
                                                                                                                  §§pop().visible = §§pop();
                                                                                                                  if(_loc16_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr879);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr882);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr870:
                                                                                                               §§push(false);
                                                                                                            }
                                                                                                            §§goto(addr871);
                                                                                                         }
                                                                                                         §§goto(addr867);
                                                                                                      }
                                                                                                      §§goto(addr870);
                                                                                                   }
                                                                                                   §§goto(addr842);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(this.§,!d§);
                                                                                                }
                                                                                                §§goto(addr870);
                                                                                             }
                                                                                             §§goto(addr817);
                                                                                          }
                                                                                          §§goto(addr809);
                                                                                          addr794:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr779:
                                                                                          if(§§pop() !== _loc14_)
                                                                                          {
                                                                                             §§goto(addr794);
                                                                                             §§push(3);
                                                                                          }
                                                                                          §§goto(addr794);
                                                                                       }
                                                                                       §§goto(addr794);
                                                                                    }
                                                                                    §§goto(addr781);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§+!`§);
                                                                                    if(!(_loc15_ && param1))
                                                                                    {
                                                                                       §§goto(addr779);
                                                                                    }
                                                                                    §§goto(addr794);
                                                                                 }
                                                                              }
                                                                              §§goto(addr779);
                                                                           }
                                                                        }
                                                                        §§goto(addr794);
                                                                     }
                                                                     §§goto(addr759);
                                                                  }
                                                                  §§goto(addr752);
                                                               }
                                                               §§goto(addr744);
                                                            }
                                                            §§goto(addr795);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      while(false);
                                                      
                                                      break loop11;
                                                   }
                                                   addr179:
                                                }
                                                break;
                                             }
                                             addr287:
                                             §§push(this.§^!Q§);
                                             break loop8;
                                          }
                                          continue;
                                       }
                                       §§goto(addr279);
                                    }
                                    break;
                                 }
                                 addr325:
                                 §§push(_loc2_);
                                 if(_loc16_ || _loc2_)
                                 {
                                    §§goto(addr333);
                                 }
                                 §§goto(addr334);
                                 §§goto(addr333);
                              }
                              §§push(§§pop() / §§pop());
                              if(!_loc15_)
                              {
                                 §§goto(addr273);
                                 §§push(§§pop());
                              }
                              §§goto(addr333);
                           }
                           §§goto(addr243);
                        }
                        §§push(§§pop().y);
                        if(_loc16_)
                        {
                           §§goto(addr273);
                        }
                        §§goto(addr334);
                     }
                  }
               }
               §§goto(addr179);
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^!K§ = §^!K§(§,!q§.§9!,§.levelObjects);
         if(_loc3_ || _loc3_)
         {
            _loc1_.§8#G§.removeChild(this.§,!d§,true);
            while(true)
            {
               this.§1=§ = false;
               addr57:
               if(_loc2_ && this)
               {
                  continue;
               }
               return;
               addr64:
            }
         }
         while(true)
         {
            this.§,!d§.dispose();
            while(_loc3_)
            {
               this.§,!d§ = null;
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr57);
            }
         }
         §§goto(addr64);
      }
      
      public function get phase() : int
      {
         return this.§`!a§;
      }
      
      private function §%"8§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§`!a§ = param1;
         }
         while(this.§`!a§ == §+!`§)
         {
            if(_loc3_ || _loc2_)
            {
               dispatchEvent(new Event(§%m§));
            }
            if(_loc3_ || this)
            {
               break;
            }
         }
      }
      
      private function §4!N§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = 0;
         §§push(this.§`!a§);
         if(!(_loc3_ && this))
         {
            loop0:
            while(true)
            {
               var _loc2_:* = §§pop();
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§#!P§);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc3_ && this))
                           {
                              addr106:
                              §§push(0);
                              if(!_loc3_)
                              {
                                 addr109:
                              }
                              else
                              {
                                 addr118:
                              }
                           }
                           else
                           {
                              addr115:
                              §§push(1);
                              if(!_loc3_)
                              {
                                 §§goto(addr118);
                              }
                           }
                        }
                        else
                        {
                           §§push(§6o§);
                           if(!_loc3_)
                           {
                              addr114:
                              if(§§pop() === _loc2_)
                              {
                                 §§goto(addr115);
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        if(_loc4_ || _loc2_)
                        {
                           switch(§§pop())
                           {
                              case 0:
                                 §§push(this.§&!9§);
                                 if(_loc4_ || this)
                                 {
                                    §§push(§§pop().specialtyBeamPhase1Time);
                                    if(!_loc3_)
                                    {
                                       §§push(int(§§pop()));
                                       if(!_loc4_)
                                       {
                                       }
                                       break loop0;
                                    }
                                    _loc1_ = §§pop();
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       break;
                                    }
                                    addr57:
                                    break;
                                 }
                                 continue;
                              case 1:
                                 continue;
                           }
                           §§push(this.§&!9§);
                           §§push(this.§6B§);
                           break;
                        }
                        break;
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr109);
               }
               §§goto(addr106);
            }
         }
         if(§§pop() >= _loc1_)
         {
            if(!_loc3_)
            {
               this.§%"8§(§+!`§);
            }
         }
         §§goto(addr158);
      }
      
      private function §6"y§(param1:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§,!d§);
            if(!(_loc5_ && param1))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     this.§]!P§ += param1;
                     if(!_loc5_)
                     {
                        §§push(this.§]!P§);
                        if(!_loc5_)
                        {
                           if(§§pop() >= this.§9",§)
                           {
                              addr139:
                              if(!_loc5_)
                              {
                                 var _loc2_:*;
                                 §§push((_loc2_ = this).§#!d§);
                                 if(!_loc5_)
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc3_:* = §§pop();
                                 if(!_loc5_)
                                 {
                                    _loc2_.§#!d§ = _loc3_;
                                 }
                                 §§goto(addr102);
                              }
                              loop1:
                              while(true)
                              {
                                 addr103:
                                 while(true)
                                 {
                                    §§push(this.§,!d§);
                                    addr106:
                                    while(true)
                                    {
                                       §§pop().texture = §7#5§.§%!E§.getTexture(this.§#",§[this.§#!d§]).texture;
                                       do
                                       {
                                          this.§]!P§ = 0;
                                       }
                                       while(_loc5_);
                                       
                                       if(!(_loc5_ && this))
                                       {
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    addr102:
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(this.§#!d§);
                                    }
                                    return;
                                    continue loop1;
                                 }
                              }
                              addr139:
                           }
                           §§goto(addr102);
                        }
                        if(§§pop() > this.§#",§.length - 1)
                        {
                           if(_loc4_)
                           {
                              this.§#!d§ = 0;
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr139);
               }
               §§goto(addr102);
            }
            §§goto(addr106);
         }
         §§goto(addr102);
      }
      
      private function §1#§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Vector.<Point>
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc6_:b2Vec2 = new b2Vec2();
         var _loc7_:b2Vec2 = new b2Vec2(1,1);
         var _loc8_:b2Vec2 = new b2Vec2();
         var _loc9_:b2Vec2 = new b2Vec2(1,0);
         var _loc10_:b2Vec2 = new b2Vec2(0,1);
         §§push(§§findproperty(b2Vec2));
         §§push(param3);
         if(_loc21_ || param3)
         {
            §§push(param1);
            if(!_loc20_)
            {
               addr56:
               §§push(§§pop() - §§pop());
               §§push(param4);
               if(!(_loc20_ && param3))
               {
                  §§push(§§pop() - param2);
               }
            }
            var _loc11_:b2Vec2;
            §§push((_loc11_ = new §§pop().b2Vec2(§§pop(),§§pop())).x);
            if(_loc21_ || param1)
            {
               §§push(§§pop() - _loc8_.x);
               if(!_loc20_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc12_:* = §§pop();
            §§push(_loc11_.y);
            if(_loc21_ || param3)
            {
               §§push(§§pop() - _loc8_.y);
               if(_loc21_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc13_:* = §§pop();
            §§push(param1);
            if(_loc21_ || param1)
            {
               §§push(_loc8_.x);
               if(_loc21_ || param3)
               {
                  §§push(§§pop() + §§pop());
                  if(_loc21_)
                  {
                     addr123:
                     §§push(§§pop() + _loc6_.x);
                     if(_loc21_)
                     {
                        addr126:
                        §§push(Number(§§pop()));
                     }
                  }
                  var _loc14_:* = §§pop();
                  §§push(param2);
                  if(_loc21_ || param3)
                  {
                     §§push(_loc8_.y);
                     if(!(_loc20_ && this))
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc20_)
                        {
                           addr150:
                           §§push(§§pop() + _loc6_.y);
                           if(_loc21_)
                           {
                              addr153:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc15_:* = §§pop();
                        var _loc16_:Vector.<b2Vec2>;
                        (_loc16_ = new Vector.<b2Vec2>())[0] = new b2Vec2();
                        if(!_loc20_)
                        {
                           _loc16_[0].x = _loc7_.x * (_loc14_ + _loc9_.x * -_loc8_.x + _loc10_.x * -_loc8_.y);
                        }
                        loop0:
                        while(true)
                        {
                           _loc16_[0].y = _loc7_.y * (_loc15_ + _loc9_.y * -_loc8_.x + _loc10_.y * -_loc8_.y);
                           while(true)
                           {
                              _loc16_[1] = new b2Vec2();
                              loop2:
                              while(true)
                              {
                                 addr206:
                                 while(true)
                                 {
                                    _loc16_[1].x = _loc7_.x * (_loc14_ + _loc9_.x * _loc12_ + _loc10_.x * _loc13_);
                                    while(!_loc20_)
                                    {
                                       _loc16_[1].y = _loc7_.y * (_loc15_ + _loc9_.y * _loc12_ + _loc10_.y * _loc13_);
                                       if(_loc21_ || param2)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr153);
               }
               §§goto(addr123);
            }
            §§goto(addr126);
         }
         §§goto(addr56);
      }
   }
}
