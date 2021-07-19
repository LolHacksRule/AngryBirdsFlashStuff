package §+!8§
{
   import §"!I§.§&v§;
   import §"!I§.§^!2§;
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import §6A§.b2Vec2;
   import §=!<§.§!x§;
   import §=!<§.§8!!§;
   import §=!<§.§>"§;
   import §@0§.§3U§;
   import flash.filters.GlowFilter;
   
   public class §&!_§
   {
      
      public static const §6!c§:Number = 1000;
      
      public static const §`I§:Number = 500;
      
      private static var §8!R§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §&!_§)
         {
            §6!c§ = 1000;
            while(true)
            {
               §`I§ = 500;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §8!R§ = null;
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §++§:§,_§;
      
      public var §`r§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §5+§:Number;
      
      public var §`!G§:Number;
      
      public var §6>§:int = -1;
      
      private var §=q§:String;
      
      private var §&!e§:§!x§;
      
      private var §]w§:§!x§;
      
      private var §@!!§:§7!f§;
      
      private var §5!c§:Number = 0;
      
      private var §@l§:Number = 0;
      
      public var §9!F§:int = -1;
      
      private var §+!e§:int = -1;
      
      private var §7!8§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §6Z§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §]!S§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §&!@§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §!!T§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §'1§:String = "fly";
      
      public var §3z§:String = "fly_yell";
      
      public var § ! §:GlowFilter;
      
      private var §,!M§:Vector.<§&v§>;
      
      private var §+^§:§!x§;
      
      private var §;=§:Sprite = null;
      
      private var §=!V§:§^!2§;
      
      public function §&!_§(param1:§,_§, param2:Sprite, param3:§^!2§)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§=!V§ = param3;
               loop1:
               while(true)
               {
                  this.§++§ = param1;
                  while(true)
                  {
                     this.§=q§ = this.§++§.§>R§;
                     continue loop1;
                     addr40:
                     if(_loc5_ || this)
                     {
                        return;
                        addr57:
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§,!M§ = new Vector.<§&v§>();
            §§goto(addr65);
         }
         §§goto(addr57);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§&v§ = null;
         if(!(_loc2_ && this))
         {
            this.§?!!§();
            if(!(_loc2_ && _loc1_))
            {
               if(this.§,!M§)
               {
                  addr49:
                  while(this.§,!M§.length > 0)
                  {
                     _loc1_ = this.§,!M§.pop();
                     if(_loc3_ || _loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(_loc3_)
                  {
                     this.§,!M§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr49);
      }
      
      public function §0>§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.mW = param3;
            while(true)
            {
               this.mH = param4;
               loop2:
               for(; _loc6_ || param2; if(!(_loc5_ && this))
               {
                  return;
               })
               {
                  this.§`!G§ = param2;
                  while(_loc6_ || param1)
                  {
                     this.§,c§();
                     if(_loc6_)
                     {
                        continue loop2;
                     }
                  }
                  while(true)
                  {
                     this.§6>§ = param1;
                     continue loop2;
                     §§goto(addr51);
                  }
                  addr51:
               }
            }
         }
         §§goto(addr85);
      }
      
      public function §9p§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(_loc2_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§5+§ = §§pop();
                  loop1:
                  for(; !(_loc3_ && _loc3_); if(_loc2_)
                  {
                     return;
                  })
                  {
                     if(this.§5+§ < 1)
                     {
                        loop3:
                        while(true)
                        {
                           this.§5+§ = 1 / this.§5+§;
                           loop4:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    this.§5+§ = Math.min(11,this.§5+§);
                                    if(_loc2_ || _loc2_)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 addr23:
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           addr107:
                           this.§5+§ = 1;
                           break loop1;
                        }
                        addr63:
                     }
                     §§goto(addr23);
                  }
                  return;
               }
            }
            §§goto(addr107);
         }
         §§goto(addr63);
      }
      
      public function §`!3§(param1:§>"§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§8!!§ = null;
         var _loc3_:Texture = null;
         if(!_loc6_)
         {
            §§push(this.§++§.isGround());
            if(_loc5_ || _loc2_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§+^§ = param1.§!5§("SPARKLES");
                     while(true)
                     {
                        if(!_loc6_)
                        {
                           if(_loc6_ && _loc2_)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§&!e§ = param1.§!5§(this.§=q§);
                              do
                              {
                                 this.§]w§ = this.§&!e§;
                              }
                              while(!_loc5_);
                              
                              if(!_loc5_)
                              {
                                 break;
                              }
                              if(false)
                              {
                                 continue;
                              }
                              var _loc4_:* = Number(1);
                              if(_loc5_)
                              {
                                 §§push(this.§]w§);
                                 if(_loc5_ || param1)
                                 {
                                    if(§§pop())
                                    {
                                       addr91:
                                       _loc2_ = this.§]w§.getFrame(0);
                                       addr89:
                                       if(_loc5_)
                                       {
                                          §§push(_loc2_.scale);
                                          if(_loc5_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       _loc3_ = _loc2_.texture;
                                       if(_loc5_)
                                       {
                                          addr116:
                                          this.§@!!§ = new §7!f§(_loc3_);
                                          if(!(_loc6_ && this))
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§@!!§);
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§@!!§);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(-§§pop().width);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(2);
                                                            loop7:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     loop9:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§@!!§);
                                                                        loop10:
                                                                        for(; _loc5_; while(_loc5_ || _loc3_)
                                                                        {
                                                                           §§goto(addr238);
                                                                           §§push(_loc4_);
                                                                        })
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(this.§@!!§);
                                                                              if(_loc5_)
                                                                              {
                                                                                 §§push(-§§pop().height);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    §§push(2);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop7;
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                                 loop11:
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§@!!§);
                                                                                             addr292:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(_loc2_.pivotY);
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         addr300:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr227:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§@!!§);
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr299:
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.pivotX);
                                                                                                   }
                                                                                                   addr315:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   continue loop20;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr227);
                                                                                       while(!(_loc6_ && this))
                                                                                       {
                                                                                          this.mH = this.§@!!§.height / 2;
                                                                                          loop19:
                                                                                          for(; !(_loc6_ && this); while(true)
                                                                                          {
                                                                                             this.§;=§.addChild(this.§@!!§);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop19;
                                                                                          },return true)
                                                                                          {
                                                                                             addr168:
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§@!!§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr204:
                                                                                                   §§push(_loc4_);
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      §§pop().scaleY = §§pop();
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().scaleX = §§pop();
                                                                                                         continue loop16;
                                                                                                         §§goto(addr204);
                                                                                                      }
                                                                                                      addr238:
                                                                                                   }
                                                                                                }
                                                                                                continue loop10;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         this.mW = this.§@!!§.width / 2;
                                                                                                         break loop19;
                                                                                                      }
                                                                                                      addr313:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr315);
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop9;
                                                                                                §§goto(addr168);
                                                                                             }
                                                                                             §§goto(addr300);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr292);
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  §§goto(addr299);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr318);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr313);
                                          }
                                       }
                                       §§goto(addr182);
                                    }
                                    else
                                    {
                                       _loc3_ = this.§=!V§.textureManager.§,!A§();
                                    }
                                    §§goto(addr116);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr89);
                           }
                           continue;
                        }
                        continue loop0;
                     }
                     addr71:
                  }
               }
               §§goto(addr71);
            }
            return §§pop();
         }
         §§goto(addr71);
      }
      
      public function §3!^§(param1:§3U§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§&!>§);
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               §§push(§3U§.§=P§);
               if(_loc6_)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && _loc2_))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!(_loc6_ || _loc3_))
                           {
                              addr118:
                              if(§§pop() === _loc4_)
                              {
                                 addr120:
                                 §§push(1);
                                 if(_loc6_ || param1)
                                 {
                                    addr128:
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                           §§goto(addr144);
                        }
                        §§goto(addr120);
                     }
                     else
                     {
                        §§push(§3U§.§?t§);
                        if(_loc6_)
                        {
                           §§goto(addr118);
                        }
                        §§goto(addr128);
                     }
                  }
                  §§goto(addr118);
               }
               §§goto(addr128);
            }
            §§goto(addr120);
         }
         addr144:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§^!;§();
               _loc3_ = _loc2_[0];
               if(_loc6_ || _loc3_)
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(_loc6_ || this)
                  {
                     §§push(§§pop() / §^!2§.§3!S§);
                  }
                  §§pop().§5!c§ = §§pop();
                  if(!_loc5_)
                  {
                     §§push(this);
                     §§push(_loc3_.y);
                     if(_loc6_)
                     {
                        §§push(§§pop() / §^!2§.§3!S§);
                     }
                     §§pop().§@l§ = §§pop();
                     if(!_loc6_)
                     {
                     }
                     break;
                  }
                  addr145:
                  this.§8=§();
                  break;
               }
               break;
            case 1:
               §§goto(addr145);
            default:
               §§goto(addr145);
         }
      }
      
      public function §`!T§() : Array
      {
         return §1!@§.§`!T§(null,this.§++§.§^M§());
      }
      
      public function §>!B§() : Array
      {
         return §1!@§.§>!B§(null,this.§++§.§^M§());
      }
      
      public function §;7§() : Array
      {
         return §1!@§.§;7§(null);
      }
      
      public function §,c§() : void
      {
      }
      
      public function §-!b§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§;=§.scaleX = this.§;=§.scaleY = param1;
         }
      }
      
      public function §8=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§8!!§ = null;
         if(!_loc5_)
         {
            §§push(this.§&!e§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§push(this.§]!S§);
                  if(!(_loc5_ && _loc2_))
                  {
                     if(!§§pop())
                     {
                        §§push(this.§++§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(0);
                              if(!(_loc5_ && _loc1_))
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!(_loc5_ && _loc3_))
                                 {
                                    §§push(§§pop());
                                    loop1:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§pop();
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§push(this.§&!e§);
                                                if(_loc4_ || _loc2_)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(this.§6Z§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(!_loc5_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(!_loc5_)
                                                         {
                                                            addr107:
                                                            if(!§§pop())
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                               break;
                                                            }
                                                            if(!_loc5_)
                                                            {
                                                               this.§]w§ = this.§&!e§.getSubAnimation(this.§6Z§);
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     §§goto(addr192);
                                                                  }
                                                                  loop2:
                                                                  while(true)
                                                                  {
                                                                     this.§7!8§ = this.§]w§.getFrameCount() * this.§++§.getSpecialAnimationProgress();
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(this.§7!8§ == this.§]w§.getFrameCount() - 1);
                                                                           if(!(_loc5_ && _loc3_))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc5_ && this))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc5_ && _loc1_))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!(_loc5_ && _loc1_))
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr203:
                                                                                          §§push(this.§++§.getSpecialAnimationTimeLeft());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(100);
                                                                                             if(!(_loc5_ && this))
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(_loc4_ || _loc2_)
                                                                                                {
                                                                                                   addr222:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                      {
                                                                                                         var _loc2_:*;
                                                                                                         §§push((_loc2_ = this).§7!8§);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         var _loc3_:* = §§pop();
                                                                                                         if(!_loc5_)
                                                                                                         {
                                                                                                            _loc2_.§7!8§ = _loc3_;
                                                                                                         }
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            loop45:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§&!e§);
                                                                                                               loop46:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§6Z§);
                                                                                                                  loop47:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                        loop49:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc5_ && _loc1_)
                                                                                                                           {
                                                                                                                              break loop1;
                                                                                                                           }
                                                                                                                           loop52:
                                                                                                                           while(!§§pop())
                                                                                                                           {
                                                                                                                              §§push(this.mTryToScream);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                    addr713:
                                                                                                                                    loop5:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop6:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                addr716:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(this.mTryToFly);
                                                                                                                                                   addr692:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ || _loc3_))
                                                                                                                                                      {
                                                                                                                                                         continue loop49;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() > 0);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop49;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr715:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             loop11:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr703:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      break loop0;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(this.mTryToScream);
                                                                                                                                                         loop20:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            addr619:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                               addr620:
                                                                                                                                                               loop22:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc5_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc5_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop45;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           loop23:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 loop24:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§&!e§);
                                                                                                                                                                                       loop25:
                                                                                                                                                                                       for(; !(_loc5_ && this); while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc4_ || _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc5_ && _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop46;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr466);
                                                                                                                                                                                          §§push(this.§!!T§);
                                                                                                                                                                                          §§goto(addr424);
                                                                                                                                                                                       })
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§&!@§);
                                                                                                                                                                                             loop26:
                                                                                                                                                                                             for(; _loc4_; while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc4_ || _loc1_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr474);
                                                                                                                                                                                                }
                                                                                                                                                                                             },§§goto(addr596))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                loop27:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                                                                   addr597:
                                                                                                                                                                                                   while(_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr474:
                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                   loop36:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ || _loc1_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         addr482:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr483:
                                                                                                                                                                                                            loop38:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.mTryToFly);
                                                                                                                                                                                                                  loop39:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                                                                        loop40:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop38;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop23;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc4_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc5_ && this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop36;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc5_ && _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    while(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§&!e§);
                                                                                                                                                                                                                                          if(_loc4_ || _loc1_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§'1§);
                                                                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop36;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                                                                          addr424:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr766:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr484:
                                                                                                                                                                                                                                       addr721:
                                                                                                                                                                                                                                       addr754:
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§]w§ = this.§&!e§.getSubAnimation(this.§!!T§);
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(this.§]w§);
                                                                                                                                                                                                                                       if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break loop24;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr914);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       _loc1_ = §§pop().getFrame(this.§7!8§);
                                                                                                                                                                                                                                       if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§@!!§);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                             loop54:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      addr913:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Boolean(_loc1_));
                                                                                                                                                                                                                                                         if(_loc5_ && _loc2_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop57:
                                                                                                                                                                                                                                                while(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop58:
                                                                                                                                                                                                                                                   while(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§@!!§);
                                                                                                                                                                                                                                                      loop59:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().texture = _loc1_.texture;
                                                                                                                                                                                                                                                         addr906:
                                                                                                                                                                                                                                                         loop60:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§@!!§);
                                                                                                                                                                                                                                                            loop61:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc1_.pivotX);
                                                                                                                                                                                                                                                               loop62:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§5!c§);
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr872:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  loop64:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                                                                                                                     loop65:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§@!!§);
                                                                                                                                                                                                                                                                        loop66:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc1_.pivotY);
                                                                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                                                                                                                           loop67:
                                                                                                                                                                                                                                                                           while(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§@l§);
                                                                                                                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                    addr850:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc4_ || _loc2_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop60;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§@!!§);
                                                                                                                                                                                                                                                                                          loop71:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc1_.scale);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§pop().scaleX = §§pop();
                                                                                                                                                                                                                                                                                                addr828:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§@!!§);
                                                                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop59;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop71;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop67;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop61;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr797:
                                                                                                                                                                                                                                                                                    continue loop58;
                                                                                                                                                                                                                                                                                    if(!(_loc4_ || _loc2_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop67;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().scaleY = §§pop();
                                                                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             break loop57;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr850);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr818);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr828);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr872);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop64;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop62;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr913);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr914:
                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr906);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    this.mIsBlinking = true;
                                                                                                                                                                                                                                    addr344:
                                                                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                    if(!(_loc4_ || this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop39;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop43:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§]w§ = this.§&!e§;
                                                                                                                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc4_ || _loc2_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc5_ && _loc2_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr297:
                                                                                                                                                                                                                                                            while(false)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               loop82:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.mIsFlying = true;
                                                                                                                                                                                                                                                                  if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr312:
                                                                                                                                                                                                                                                                        break loop43;
                                                                                                                                                                                                                                                                        addr312:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr358:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        this.§]w§ = this.§&!e§.getSubAnimation(this.§'1§);
                                                                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop82;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr415);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break loop24;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  break loop24;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                            addr297:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         this.mIsSpecial = true;
                                                                                                                                                                                                                                                         §§goto(addr721);
                                                                                                                                                                                                                                                         addr745:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr705:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§&!e§);
                                                                                                                                                                                                                                                            break loop25;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr705:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr681:
                                                                                                                                                                                                                                                      this.§]w§ = this.§&!e§.getSubAnimation(this.§3z§);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   this.mIsScreaming = true;
                                                                                                                                                                                                                                                   addr655:
                                                                                                                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop2;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break loop22;
                                                                                                                                                                                                                                                   addr688:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§&!e§);
                                                                                                                                                                                                                                                            continue loop25;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr655);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr557:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr573:
                                                                                                                                                                                                                                                if(_loc5_ && this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr601:
                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      this.§]w§ = this.§&!e§.getSubAnimation(this.§&!@§);
                                                                                                                                                                                                                                                      addr610:
                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         this.mIsScreaming = true;
                                                                                                                                                                                                                                                         §§goto(addr573);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr688);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break loop52;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr429:
                                                                                                                                                                                                                                             if(_loc4_ || _loc1_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr610);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break loop24;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr358);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr754);
                                                                                                                                                                                                                                    addr356:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr356);
                                                                                                                                                                                                                              §§goto(addr429);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop0;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop24;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr524:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop6;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr556:
                                                                                                                                                                                                                     addr556:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr557);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr484);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr597);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr668:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc4_ || _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop47;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr676);
                                                                                                                                                                                                §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop47;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr668);
                                                                                                                                                                                          §§goto(addr584);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr584:
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr764:
                                                                                                                                                                                 §§goto(addr766);
                                                                                                                                                                                 §§push(this.§]w§);
                                                                                                                                                                              }
                                                                                                                                                                              while(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop20;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr601);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr751);
                                                                                                                                                                           }
                                                                                                                                                                           addr750:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr715);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr677);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr716);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr681);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           this.§]w§ = this.§&!e§.getSubAnimation(this.§6Z§);
                                                                                                                           §§goto(addr745);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr753:
                                                                                                         }
                                                                                                         §§goto(addr764);
                                                                                                      }
                                                                                                      §§goto(addr297);
                                                                                                   }
                                                                                                   §§goto(addr766);
                                                                                                }
                                                                                                §§goto(addr699);
                                                                                             }
                                                                                             §§goto(addr523);
                                                                                          }
                                                                                          §§goto(addr513);
                                                                                       }
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§goto(addr483);
                                                                                 }
                                                                                 §§goto(addr222);
                                                                              }
                                                                              §§goto(addr703);
                                                                           }
                                                                           §§goto(addr699);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr183:
                                                                           this.§7!8§ = 1;
                                                                           if(!_loc5_)
                                                                           {
                                                                              §§goto(addr766);
                                                                           }
                                                                           §§goto(addr764);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  this.mIsFlying = true;
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr766);
                                                                  }
                                                                  §§goto(addr764);
                                                               }
                                                               §§goto(addr753);
                                                            }
                                                            §§goto(addr764);
                                                         }
                                                         §§goto(addr713);
                                                      }
                                                      §§goto(addr481);
                                                   }
                                                   §§goto(addr473);
                                                }
                                                §§goto(addr591);
                                             }
                                             §§goto(addr312);
                                          }
                                          §§goto(addr556);
                                       }
                                       §§goto(addr107);
                                    }
                                    while(true)
                                    {
                                       §§goto(addr750);
                                    }
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr619);
                           }
                           §§goto(addr711);
                        }
                        §§goto(addr203);
                     }
                     §§goto(addr183);
                  }
                  break;
               }
               addr192:
               return;
            }
            while(true)
            {
               §§pop();
               §§goto(addr705);
            }
         }
         §§goto(addr297);
      }
      
      public function §4!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;=§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9!F§);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr31:
                     this.§6!R§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(1);
               while(true)
               {
                  §§push(this.§++§.§[h§);
                  if(_loc2_)
                  {
                     §§push(§§pop() / this.§++§.§'!V§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this.§9!F§);
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc1_ = §§pop();
                     §§goto(addr131);
                  }
               }
            }
            addr131:
            loop2:
            while(true)
            {
               §§push(_loc1_);
               if(!(_loc3_ && this))
               {
                  if(_loc2_)
                  {
                     if(§§pop() != this.§+!e§)
                     {
                        loop3:
                        while(true)
                        {
                           this.§+!e§ = _loc1_;
                           while(true)
                           {
                              this.§7!8§ = this.§+!e§;
                              while(_loc2_)
                              {
                                 continue loop3;
                                 this.§8=§();
                                 if(_loc2_ || _loc2_)
                                 {
                                    if(_loc2_ || _loc1_)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §6!R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§&!e§)
            {
               if(!_loc2_)
               {
                  this.§9!F§ = this.§&!e§.getFrameCount();
               }
            }
         }
      }
      
      public function §"! §(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§ ! § = new GlowFilter();
            while(true)
            {
               this.§ ! §.blurX = param2;
               loop2:
               while(!(_loc5_ && this))
               {
                  this.§ ! §.color = param1;
                  if(_loc4_)
                  {
                     addr30:
                     if(!(_loc4_ || this))
                     {
                        while(true)
                        {
                           this.§ ! §.blurY = param3;
                           continue loop2;
                           §§goto(addr30);
                        }
                        addr76:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §?!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§ ! § = null;
         }
      }
      
      public function § !d§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§++§.§[x§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc3_ || this))
               {
                  continue;
               }
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§>!%§(_loc2_);
            }
            _loc2_++;
         }
      }
      
      public function §super§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§,!M§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(!(_loc4_ && param1))
               {
                  if(§§pop() < 0)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           this.§>!%§(_loc2_);
                           loop2:
                           while(true)
                           {
                              break loop1;
                              addr57:
                              while(!(_loc3_ || this))
                              {
                                 continue loop2;
                              }
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           addr55:
                           while(true)
                           {
                              §§push(§§pop() - 1);
                              addr56:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                           }
                           §§goto(addr78);
                        }
                        addr53:
                     }
                     §§goto(addr57);
                  }
                  else
                  {
                     this.§,!M§[_loc2_].updateLifeTime(param1);
                     §§goto(addr97);
                  }
               }
               §§goto(addr55);
            }
            §§goto(addr56);
         }
      }
      
      private function §>!%§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(!this.§+^§)
            {
               if(!_loc7_)
               {
                  §§goto(addr23);
               }
            }
            var _loc2_:int = 0;
            if(!(_loc7_ && _loc3_))
            {
               if(Math.random() < 0.5)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     addr44:
                     _loc2_ = 1;
                  }
               }
               var _loc3_:§8!!§ = this.§+^§.getFrame(_loc2_);
               §§push(100 + Math.random() * 100);
               if(_loc6_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:§&v§ = null;
               if(!_loc7_)
               {
                  if(param1 < this.§,!M§.length)
                  {
                     addr72:
                     (_loc5_ = this.§,!M§[param1]).§>!I§(_loc4_);
                     if(_loc6_ || _loc3_)
                     {
                        _loc5_.§!&§(_loc3_.texture);
                        if(!(_loc7_ && this))
                        {
                           addr140:
                           §§push(_loc5_.image);
                           if(!_loc7_)
                           {
                              §§push(_loc3_.pivotX);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(-§§pop());
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(this.§@!!§);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§§pop().width / 2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc7_ && this))
                                          {
                                             §§push(Math.random() * this.§@!!§.width);
                                             if(_loc6_)
                                             {
                                                addr191:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§goto(addr194);
                                                }
                                                §§goto(addr204);
                                             }
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr204);
                                 }
                                 addr194:
                                 §§pop().x = §§pop();
                                 if(_loc6_)
                                 {
                                    addr201:
                                    addr199:
                                    addr197:
                                    §§push(_loc5_.image);
                                    §§push(-_loc3_.pivotY);
                                    if(_loc6_)
                                    {
                                       addr204:
                                       §§push(this.§@!!§.height / 2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc7_)
                                          {
                                             addr230:
                                             §§push(§§pop() + Math.random() * this.§@!!§.height);
                                          }
                                       }
                                       §§goto(addr230);
                                    }
                                    §§pop().y = §§pop();
                                    §§goto(addr232);
                                 }
                                 addr232:
                                 return;
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr199);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr197);
                  }
                  else
                  {
                     _loc5_ = new §&v§(_loc3_.texture,_loc4_);
                     if(_loc6_ || param1)
                     {
                        this.§,!M§.push(_loc5_);
                        if(_loc6_ || param1)
                        {
                        }
                        §§goto(addr140);
                     }
                     this.§;=§.addChild(_loc5_.image);
                  }
                  §§goto(addr140);
               }
               §§goto(addr72);
            }
            §§goto(addr44);
         }
         addr23:
      }
      
      public function §3F§() : §7!f§
      {
         return this.§@!!§;
      }
   }
}
