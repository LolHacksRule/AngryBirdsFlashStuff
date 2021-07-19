package §,z§
{
   import §&v§.§9B§;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §?s§.§8K§;
   import §@L§.§?!'§;
   import each.§!!'§;
   
   public class §?!;§ extends §<!r§
   {
      
      private static const PI:Number = 3.141592653589793;
      
      private static const §0!h§:Number = 6.283185307179586;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            PI = Math.PI;
            do
            {
               §0!h§ = Math.PI * 2;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §3§:Number;
      
      private var §8!Y§:Number;
      
      private var §6X§:Number;
      
      private var §1!7§:Number;
      
      private var §1!S§:Number;
      
      private var §^!M§:Number;
      
      private var §!L§:Number = 0.0;
      
      private var §82§:Number = 0;
      
      private var §7!^§:Number = 0;
      
      protected var §-!k§:§8K§;
      
      protected var §%!3§:Number = 0;
      
      protected var §?!e§:Number = 0;
      
      protected var §!&§:Number = 0;
      
      public function §?!;§(param1:Sprite, param2:b2World, param3:§9B§, param4:§8K§)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§-!k§ = param4;
            while(true)
            {
               super(param1,param2,param3);
               addr151:
               while(true)
               {
                  this.§^!M§ = this.§-!k§.angle;
                  addr134:
                  while(true)
                  {
                     this.§6X§ = this.§-!k§.angle;
                  }
               }
               addr113:
               if(!(_loc6_ || param3))
               {
                  continue;
               }
               §§push(this);
               §§push(this.§-!k§.y);
               if(_loc6_)
               {
                  §§push(§§pop() / §?!'§.§'!i§);
               }
               §§pop().§1!S§ = §§pop();
               while(!_loc5_)
               {
                  §§push(this);
                  §§push(this.§-!k§.x);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §?!'§.§'!i§);
                  }
                  §§pop().§3§ = §§pop();
                  do
                  {
                     §§push(this);
                     §§push(this.§-!k§.y);
                     if(!(_loc5_ && param2))
                     {
                        §§push(§§pop() / §?!'§.§'!i§);
                     }
                     §§pop().§8!Y§ = §§pop();
                  }
                  while(!(_loc6_ || param2));
                  
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        return;
                        addr63:
                     }
                     else
                     {
                        §§goto(addr134);
                     }
                  }
                  while(_loc6_)
                  {
                     §§goto(addr113);
                  }
                  §§goto(addr151);
                  addr111:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§-!k§.x);
                  if(!_loc5_)
                  {
                     §§push(§§pop() / §?!'§.§'!i§);
                  }
                  §§pop().§1!7§ = §§pop();
                  §§goto(addr111);
               }
               §§goto(addr63);
               addr127:
            }
         }
         §§goto(addr127);
      }
      
      public function get §<E§() : Number
      {
         return this.§!L§;
      }
      
      public function get §;"!§() : §8K§
      {
         return this.§-!k§;
      }
      
      public function §2F§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§%!3§);
         if(!(_loc2_ && _loc1_))
         {
            return §§pop() * §?!'§.§'!i§;
         }
      }
      
      public function §&!s§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§?!e§);
         if(_loc1_)
         {
            return §§pop() * §?!'§.§'!i§;
         }
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.update(param1,param2);
         }
         var _loc3_:Number = §^`§().GetPosition().x;
         var _loc4_:Number = §^`§().GetPosition().y;
         if(_loc6_)
         {
            this.§8&§(this.§6X§);
            while(true)
            {
               this.§1!7§ = this.§3§;
               addr127:
               while(true)
               {
                  this.§1!S§ = this.§8!Y§;
               }
            }
            addr132:
         }
         loop2:
         while(true)
         {
            this.§6X§ = §^`§().GetAngle();
            loop3:
            while(true)
            {
               if(_loc5_)
               {
                  continue loop2;
               }
               §§push(this);
               §§push(_loc3_);
               if(_loc6_)
               {
                  §§push(§§pop() / §?!'§.§'!i§);
               }
               §§pop().§3§ = §§pop();
               loop4:
               while(true)
               {
                  if(_loc6_)
                  {
                     §§push(this);
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        §§push(§§pop() / §?!'§.§'!i§);
                     }
                     §§pop().§8!Y§ = §§pop();
                     while(_loc6_)
                     {
                        §§push(this);
                        §§push(this.§!L§);
                        if(!(_loc5_ && this))
                        {
                           §§push(§§pop() + param1);
                        }
                        §§pop().§!L§ = §§pop();
                        if(!_loc5_)
                        {
                           if(_loc6_)
                           {
                              if(_loc6_)
                              {
                                 break loop2;
                              }
                              break loop4;
                           }
                           continue loop3;
                        }
                     }
                     continue;
                  }
                  §§goto(addr132);
               }
               §§goto(addr127);
            }
         }
      }
      
      protected function §8&§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§^!M§ = param1;
            do
            {
               this.§6X§ = param1;
            }
            while(_loc3_ && param1);
            
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            super.render(param1,param2,param3);
            do
            {
               this.§1!x§(param2,param3);
            }
            while(!(_loc5_ || param1));
            
         }
      }
      
      protected function §1!x§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = NaN;
         if(!_loc5_)
         {
            §§push(param2);
            loop0:
            while(true)
            {
               §§push(1e-9);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§!!'§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeOffsetMilliSeconds value = " + param2);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + " overriding to 0");
                        }
                        §§pop().log(§§pop());
                        while(true)
                        {
                           loop38:
                           for(; !(_loc5_ && param2); while(true)
                           {
                              §§pop();
                              continue loop38;
                              §§goto(addr383);
                           })
                           {
                              §§push(param2);
                              loop39:
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(0);
                                    if(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          addr383:
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc4_ || param2))
                                          {
                                             continue loop38;
                                          }
                                          if(_loc4_ || param2)
                                          {
                                             if(_loc4_)
                                             {
                                                loop33:
                                                while(!§§pop())
                                                {
                                                   §§push(this.§6X§);
                                                   loop34:
                                                   while(_loc4_ || param1)
                                                   {
                                                      §§push(this.§^!M§);
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               loop36:
                                                               for(; _loc4_; while(true)
                                                               {
                                                                  if(_loc5_ && _loc3_)
                                                                  {
                                                                     continue loop36;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§goto(addr337);
                                                                     §§push(§0!h§);
                                                                  }
                                                                  §§goto(addr495);
                                                               })
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  loop50:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop51:
                                                                     while(true)
                                                                     {
                                                                        §§push(PI);
                                                                        addr325:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 continue loop36;
                                                                              }
                                                                              addr326:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(PI);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          loop53:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc4_ || param1)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      addr261:
                                                                                                      §§push(_loc3_);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               continue loop51;
                                                                                                            }
                                                                                                            addr338:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            addr340:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr177:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§^!M§);
                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        §§push(param2);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                           if(!(_loc5_ && _loc3_))
                                                                                                                           {
                                                                                                                              addr202:
                                                                                                                              §§push(param1);
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 addr205:
                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    addr209:
                                                                                                                                    §§push(§§pop() * _loc3_);
                                                                                                                                 }
                                                                                                                                 §§pop().§!&§ = §§pop() + §§pop();
                                                                                                                                 continue loop50;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr209);
                                                                                                                        }
                                                                                                                        §§goto(addr205);
                                                                                                                     }
                                                                                                                     §§goto(addr202);
                                                                                                                  }
                                                                                                                  §§goto(addr205);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop51;
                                                                                                      addr261:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr492:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr407:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§6X§);
                                                                                                         break loop34;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(this.§8!Y§);
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop() + this.§7!^§);
                                                                                                   }
                                                                                                   §§pop().§?!e§ = §§pop();
                                                                                                   break loop53;
                                                                                                }
                                                                                                addr486:
                                                                                             }
                                                                                             break;
                                                                                             addr96:
                                                                                             if(_loc5_ && param2)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc4_ || this)
                                                                                             {
                                                                                                if(!(_loc5_ && param2))
                                                                                                {
                                                                                                   addr21:
                                                                                                   return;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§?!e§ = this.§8!Y§;
                                                                                                   §§goto(addr492);
                                                                                                }
                                                                                                addr506:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr326);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                continue loop2;
                                                                                             }
                                                                                             §§goto(addr407);
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          addr249:
                                                                                       }
                                                                                       §§goto(addr177);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr278:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr287:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc4_ || _loc3_)
                                                                                                   {
                                                                                                      _loc3_ = §§pop();
                                                                                                      addr295:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc4_ || _loc3_))
                                                                                                         {
                                                                                                            break loop33;
                                                                                                         }
                                                                                                         if(_loc5_ && this)
                                                                                                         {
                                                                                                            continue loop38;
                                                                                                         }
                                                                                                         addr309:
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§goto(addr177);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop16:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_ || param2)
                                                                                                               {
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§8!Y§);
                                                                                                                     addr510:
                                                                                                                     addr585:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§1!S§);
                                                                                                                        addr512:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           addr513:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr514:
                                                                                                                              addr619:
                                                                                                                              while(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    loop22:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr523:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param2);
                                                                                                                                          addr495:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             addr496:
                                                                                                                                             while(_loc4_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                while(_loc4_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§7!^§ = 0;
                                                                                                                                                            §§goto(addr506);
                                                                                                                                                         }
                                                                                                                                                         addr503:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(param2);
                                                                                                                                                         if(!(_loc5_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§1!S§);
                                                                                                                                                            if(!_loc5_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - this.§8!Y§);
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr485:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc5_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§7!^§ = §§pop();
                                                                                                                                                                  §§goto(addr486);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr485);
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr485);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr407);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             addr589:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                addr590:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   break loop39;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr501);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    addr620:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       break loop16;
                                                                                                                                    }
                                                                                                                                    addr620:
                                                                                                                                 }
                                                                                                                                 §§goto(addr590);
                                                                                                                                 §§goto(addr514);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr585:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop17;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr592:
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  this.§82§ = 0;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     this.§%!3§ = this.§3§;
                                                                                                                     §§goto(addr585);
                                                                                                                  }
                                                                                                               }
                                                                                                               break;
                                                                                                               §§goto(addr309);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(param2);
                                                                                                               addr588:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§goto(addr589);
                                                                                                               }
                                                                                                            }
                                                                                                            addr621:
                                                                                                            addr534:
                                                                                                         }
                                                                                                      }
                                                                                                      addr295:
                                                                                                   }
                                                                                                   §§goto(addr510);
                                                                                                }
                                                                                             }
                                                                                             addr286:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr338);
                                                                                             }
                                                                                             addr337:
                                                                                          }
                                                                                          §§goto(addr177);
                                                                                       }
                                                                                       addr278:
                                                                                    }
                                                                                    §§goto(addr338);
                                                                                 }
                                                                                 §§goto(addr278);
                                                                              }
                                                                              §§goto(addr261);
                                                                           }
                                                                        }
                                                                        continue loop34;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(-1);
                                                                  addr625:
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr626);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr512);
                                                         }
                                                         break;
                                                         while(_loc4_ || this)
                                                         {
                                                            if(§§pop() >= §§pop())
                                                            {
                                                               §§goto(addr146);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr27);
                                                            }
                                                            §§goto(addr53);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop38;
                                                                     }
                                                                     continue loop33;
                                                                  }
                                                                  §§goto(addr514);
                                                               }
                                                               §§goto(addr620);
                                                            }
                                                            break;
                                                         }
                                                         continue loop38;
                                                      }
                                                      §§goto(addr499);
                                                   }
                                                   while(!_loc5_)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§goto(addr416);
                                                      §§push(this.§^!M§);
                                                   }
                                                   §§goto(addr588);
                                                }
                                                this.§!&§ = this.§6X§;
                                                §§goto(addr406);
                                             }
                                             break;
                                          }
                                          §§goto(addr513);
                                       }
                                       §§goto(addr625);
                                    }
                                    §§goto(addr496);
                                 }
                                 §§goto(addr627);
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§push(this);
                                    §§push(param2);
                                    if(_loc4_)
                                    {
                                       §§push(this.§1!7§);
                                       if(_loc4_ || this)
                                       {
                                          §§push(§§pop() - this.§3§);
                                          if(_loc4_ || _loc3_)
                                          {
                                             addr578:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc5_ && param1))
                                             {
                                                §§push(param1);
                                             }
                                             §§pop().§82§ = §§pop();
                                             §§goto(addr579);
                                          }
                                          §§goto(addr578);
                                          §§push(§§pop() / §§pop());
                                       }
                                    }
                                    §§goto(addr578);
                                 }
                                 §§goto(addr592);
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr624);
                  }
               }
            }
         }
         §§goto(addr373);
      }
   }
}
