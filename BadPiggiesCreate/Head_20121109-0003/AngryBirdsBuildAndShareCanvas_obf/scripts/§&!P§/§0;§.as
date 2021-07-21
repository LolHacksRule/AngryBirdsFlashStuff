package §&!P§
{
   import §%!0§.§,4§;
   import §%!0§.§>"+§;
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §0!%§.Texture;
   import §;"7§.§"!B§;
   import §;"7§.§+!I§;
   import §;"7§.§5!O§;
   import §<!a§.b2Vec2;
   import §]";§.§1Y§;
   import flash.filters.GlowFilter;
   
   public class §0;§
   {
      
      public static const §2!_§:Number = 1000;
      
      public static const §]!7§:Number = 500;
      
      private static var §"Q§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §2!_§ = 1000;
            do
            {
               §]!7§ = 500;
               do
               {
                  §"Q§ = null;
               }
               while(_loc2_ && _loc1_);
               
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private var §!!0§:§``§;
      
      public var §0@§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §@i§:Number;
      
      public var §?3§:Number;
      
      public var §@!=§:int = -1;
      
      private var §6"3§:String;
      
      private var §,0§:§"!B§;
      
      private var §'"9§:§"!B§;
      
      private var §>i§:§7"#§;
      
      private var §4!_§:Number = 0;
      
      private var §^i§:Number = 0;
      
      public var §[!%§:int = -1;
      
      private var §6X§:int = -1;
      
      private var §3!d§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §5!;§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §!t§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §;"§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §]!?§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §9!X§:String = "fly";
      
      public var §;""§:String = "fly_yell";
      
      public var §9!K§:GlowFilter;
      
      private var §;;§:Vector.<§>"+§>;
      
      private var §0!y§:§"!B§;
      
      private var § D§:Sprite = null;
      
      private var §`!G§:§,4§;
      
      public function §0;§(param1:§``§, param2:Sprite, param3:§,4§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
         }
         while(true)
         {
            this.§`!G§ = param3;
            loop1:
            while(_loc4_)
            {
               this.§!!0§ = param1;
               while(true)
               {
                  this.§6"3§ = this.§!!0§.§+!A§;
                  loop3:
                  while(!_loc5_)
                  {
                     this.§;;§ = new Vector.<§>"+§>();
                     while(_loc4_)
                     {
                        this.§ D§ = param2;
                        if(_loc4_)
                        {
                           if(_loc4_ || this)
                           {
                              return;
                           }
                           continue loop3;
                           continue loop3;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§>"+§ = null;
         if(_loc2_ || _loc1_)
         {
            this.§3X§();
            if(_loc2_)
            {
               if(this.§;;§)
               {
                  addr43:
                  while(this.§;;§.length > 0)
                  {
                     _loc1_ = this.§;;§.pop();
                     if(_loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(!(_loc3_ && this))
                  {
                     this.§;;§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §'!m§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.mW = param3;
            loop0:
            while(true)
            {
               this.mH = param4;
               while(true)
               {
                  this.§@!=§ = param1;
                  loop2:
                  while(_loc5_ || param1)
                  {
                     while(true)
                     {
                        this.§?3§ = param2;
                        do
                        {
                           this.§`T§();
                        }
                        while(!_loc5_);
                        
                        if(!(_loc6_ && param3))
                        {
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §^!v§(param1:Boolean) : void
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
                  if(!_loc3_)
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§@i§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(this.§@i§ < 1)
                     {
                        if(!(_loc3_ && param1))
                        {
                           this.§@i§ = 1 / this.§@i§;
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    this.§@i§ = 1;
                                 }
                                 else
                                 {
                                    addr102:
                                 }
                                 continue;
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        return;
                        addr105:
                        addr69:
                     }
                     while(true)
                     {
                        this.§@i§ = Math.min(11,this.§@i§);
                        if(!(_loc3_ && this))
                        {
                           if(!_loc3_)
                           {
                              return;
                           }
                           §§goto(addr105);
                        }
                        else
                        {
                           §§goto(addr69);
                        }
                     }
                  }
               }
            }
            §§goto(addr102);
         }
         §§goto(addr105);
      }
      
      public function §@N§(param1:§5!O§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§+!I§ = null;
         var _loc3_:Texture = null;
         if(!_loc6_)
         {
            §§push(this.§!!0§.isGround());
            if(_loc5_ || _loc2_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§0!y§ = param1.§`" §("SPARKLES");
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           this.§,0§ = param1.§`" §(this.§6"3§);
                           do
                           {
                              this.§'"9§ = this.§,0§;
                           }
                           while(_loc6_);
                           
                           if(!(_loc5_ || _loc2_))
                           {
                              break;
                           }
                           if(_loc6_ && _loc3_)
                           {
                              continue loop0;
                           }
                           if(!_loc6_)
                           {
                              while(false)
                              {
                                 continue loop2;
                              }
                              var _loc4_:* = Number(1);
                              if(!_loc6_)
                              {
                                 §§push(this.§'"9§);
                                 if(!_loc6_)
                                 {
                                    if(§§pop())
                                    {
                                       addr91:
                                       _loc2_ = this.§'"9§.getFrame(0);
                                       addr89:
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(_loc2_.scale);
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       _loc3_ = _loc2_.texture;
                                       if(_loc5_ || _loc2_)
                                       {
                                          addr131:
                                          this.§>i§ = new §7"#§(_loc3_);
                                          if(_loc5_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§>i§);
                                                loop5:
                                                while(true)
                                                {
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      §§push(this.§>i§);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(-§§pop().width);
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(2);
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  loop9:
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>i§);
                                                                        while(true)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(this.§>i§);
                                                                              if(_loc6_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(-§§pop().height);
                                                                              continue loop8;
                                                                           }
                                                                           addr332:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.pivotY);
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 addr342:
                                                                                 §§push(-§§pop());
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    addr343:
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§>i§);
                                                                                          addr360:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_.pivotX);
                                                                                          }
                                                                                       }
                                                                                       continue loop24;
                                                                                    }
                                                                                    addr258:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§>i§);
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 addr342:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                              }
                                                                           }
                                                                           addr218:
                                                                           if(!(_loc6_ && this))
                                                                           {
                                                                              addr225:
                                                                              §§push(_loc4_);
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr235:
                                                                                    if(_loc6_ && _loc2_)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    if(!(_loc6_ && this))
                                                                                    {
                                                                                       §§pop().scaleY = §§pop();
                                                                                       loop19:
                                                                                       while(_loc5_ || _loc3_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             this.mW = this.§>i§.width / 2;
                                                                                             while(_loc5_)
                                                                                             {
                                                                                                this.mH = this.§>i§.height / 2;
                                                                                                while(!(_loc6_ && param1))
                                                                                                {
                                                                                                   this.§ D§.addChild(this.§>i§);
                                                                                                   if(_loc6_ && this)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   if(!_loc5_)
                                                                                                   {
                                                                                                      continue loop19;
                                                                                                   }
                                                                                                   addr159:
                                                                                                   if(_loc5_ || _loc2_)
                                                                                                   {
                                                                                                      if(_loc6_ && param1)
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         return true;
                                                                                                      }
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr332);
                                                                                                         §§push(this.§>i§);
                                                                                                         addr363:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr258);
                                                                                                         §§goto(addr159);
                                                                                                      }
                                                                                                      addr306:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr277:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§>i§);
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   continue loop5;
                                                                                                }
                                                                                                §§goto(addr218);
                                                                                             }
                                                                                             §§goto(addr342);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr343);
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 while(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    §§pop().y = §§pop();
                                                                                    §§goto(addr306);
                                                                                 }
                                                                                 continue loop9;
                                                                                 addr298:
                                                                              }
                                                                              while(!(_loc6_ && param1))
                                                                              {
                                                                                 §§pop().scaleX = §§pop();
                                                                                 §§goto(addr277);
                                                                                 §§goto(addr225);
                                                                              }
                                                                              continue loop7;
                                                                              addr269:
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr360);
                                                }
                                             }
                                          }
                                          §§goto(addr358);
                                       }
                                       §§goto(addr257);
                                    }
                                    else
                                    {
                                       _loc3_ = this.§`!G§.§8=§.§-t§();
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr91);
                              }
                              §§goto(addr89);
                              addr48:
                           }
                        }
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr48);
      }
      
      public function §[!Q§(param1:§1Y§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§^!^§);
         if(_loc6_ || _loc2_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && this))
            {
               §§push(§1Y§.§;&§);
               if(!_loc5_)
               {
                  §§push(_loc4_);
                  if(_loc6_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc6_ || _loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr150:
                           §§push(1);
                           if(_loc6_ || param1)
                           {
                              addr158:
                           }
                        }
                        addr174:
                        switch(§§pop())
                        {
                           case 0:
                              _loc2_ = param1.§=`§();
                              _loc3_ = _loc2_[0];
                              if(!_loc5_)
                              {
                                 §§push(this);
                                 §§push(_loc3_.x);
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(§§pop() / §,4§.§,^§);
                                 }
                                 §§pop().§4!_§ = §§pop();
                                 if(_loc5_ && this)
                                 {
                                 }
                                 break;
                              }
                              §§push(this);
                              §§push(_loc3_.y);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() / §,4§.§,^§);
                              }
                              §§pop().§^i§ = §§pop();
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr175:
                                 this.§^!+§();
                                 break;
                              }
                              break;
                           case 1:
                              §§goto(addr175);
                           default:
                              §§goto(addr175);
                        }
                        return;
                        addr173:
                     }
                     else
                     {
                        §§push(§1Y§.§0R§);
                        if(_loc6_ || _loc2_)
                        {
                           addr149:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr150);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr173);
                        }
                     }
                     §§goto(addr158);
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr150);
         }
         §§goto(addr174);
      }
      
      public function §0!_§() : Array
      {
         return §9!v§.§0!_§(null,this.§!!0§.§^_§());
      }
      
      public function §-!A§() : Array
      {
         return §9!v§.§-!A§(null,this.§!!0§.§^_§());
      }
      
      public function §`C§() : Array
      {
         return §9!v§.§`C§(null);
      }
      
      public function §`T§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§ D§.scaleX = this.§ D§.scaleY = param1;
         }
      }
      
      public function §^!+§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+!I§ = null;
         if(_loc4_)
         {
            §§push(this.§,0§);
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     return;
                  }
                  this.mIsScreaming = true;
                  this.mIsFlying = true;
                  addr619:
                  if(!(_loc5_ && _loc3_))
                  {
                     addr689:
                     §§push(this.§'"9§);
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           addr696:
                           _loc1_ = this.§'"9§.getFrame(this.§3!d§);
                           if(_loc4_)
                           {
                              §§push(this.§>i§);
                              loop54:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr863:
                                          loop72:
                                          while(true)
                                          {
                                             §§push(Boolean(_loc1_));
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc4_ || _loc1_)
                                                   {
                                                      §§push(this.§>i§);
                                                      loop56:
                                                      while(true)
                                                      {
                                                         §§pop().texture = _loc1_.texture;
                                                         loop64:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               §§push(_loc1_.pivotY);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     §§push(this.§^i§);
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        loop65:
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr736);
                                                                                 }
                                                                                 addr794:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§4!_§);
                                                                                    addr803:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       break loop65;
                                                                                    }
                                                                                 }
                                                                                 addr801:
                                                                              }
                                                                           }
                                                                           break;
                                                                           addr748:
                                                                           loop69:
                                                                           while(_loc4_ || this)
                                                                           {
                                                                              §§pop().scaleX = §§pop();
                                                                              loop70:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>i§);
                                                                                 if(!(_loc5_ && _loc2_))
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop54;
                                                                                       }
                                                                                       §§push(_loc1_.scale);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop69;
                                                                                       }
                                                                                       §§pop().scaleY = §§pop();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(_loc5_ && _loc2_)
                                                                                          {
                                                                                             while(!(_loc5_ && this))
                                                                                             {
                                                                                                §§push(this.§>i§);
                                                                                                continue loop64;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   §§push(this.§>i§);
                                                                                                   break loop70;
                                                                                                }
                                                                                                continue loop72;
                                                                                             }
                                                                                             continue loop72;
                                                                                             addr805:
                                                                                             addr832:
                                                                                          }
                                                                                          if(false)
                                                                                          {
                                                                                             addr736:
                                                                                          }
                                                                                          §§goto(addr864);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr794);
                                                                                       }
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 continue loop64;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc1_.pivotX);
                                                                                 break loop64;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§pop().x = §§pop();
                                                                           §§goto(addr805);
                                                                        }
                                                                        addr784:
                                                                     }
                                                                     §§goto(addr803);
                                                                  }
                                                                  §§goto(addr784);
                                                               }
                                                               break;
                                                            }
                                                            continue loop56;
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr801);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr832);
                                                }
                                                addr864:
                                                while(true)
                                                {
                                                   §§push(this.§>i§);
                                                   continue loop64;
                                                }
                                                return;
                                                continue loop72;
                                             }
                                          }
                                       }
                                       addr862:
                                    }
                                    §§goto(addr818);
                                 }
                                 §§goto(addr862);
                              }
                           }
                           §§goto(addr863);
                        }
                        §§goto(addr864);
                     }
                     §§goto(addr696);
                     addr593:
                  }
                  §§goto(addr696);
                  addr619:
                  addr598:
               }
               else
               {
                  §§push(this.§!t§);
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && this))
                        {
                           this.§3!d§ = 1;
                           if(!_loc5_)
                           {
                              §§goto(addr689);
                           }
                           else
                           {
                              addr666:
                              this.§'"9§ = this.§,0§.getSubAnimation(this.§5!;§);
                              this.mIsSpecial = true;
                              addr673:
                           }
                        }
                        §§goto(addr689);
                        addr656:
                     }
                     else
                     {
                        §§push(this.§!!0§);
                        if(_loc4_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(!_loc5_)
                           {
                              §§push(0);
                              if(!(_loc5_ && this))
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(§§pop());
                                    if(_loc4_ || _loc2_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§pop();
                                             if(!_loc5_)
                                             {
                                                §§push(this.§,0§);
                                                if(_loc4_)
                                                {
                                                   §§push(this.§5!;§);
                                                   if(_loc4_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc4_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc4_)
                                                         {
                                                            addr91:
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  this.§'"9§ = this.§,0§.getSubAnimation(this.§5!;§);
                                                                  if(_loc4_ || _loc1_)
                                                                  {
                                                                     loop52:
                                                                     while(true)
                                                                     {
                                                                        this.§3!d§ = this.§'"9§.getFrameCount() * this.§!!0§.getSpecialAnimationProgress();
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(this.§3!d§ == this.§'"9§.getFrameCount() - 1);
                                                                           if(_loc4_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc4_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr193:
                                                                                          §§push(this.§!!0§.getSpecialAnimationTimeLeft());
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             §§push(100);
                                                                                             if(_loc4_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   addr207:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         var _loc2_:*;
                                                                                                         §§push((_loc2_ = this).§3!d§);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         var _loc3_:* = §§pop();
                                                                                                         if(_loc4_ || this)
                                                                                                         {
                                                                                                            _loc2_.§3!d§ = _loc3_;
                                                                                                         }
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            addr503:
                                                                                                            §§goto(addr689);
                                                                                                            addr503:
                                                                                                         }
                                                                                                         §§goto(addr689);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr248:
                                                                                                         this.mIsFlying = true;
                                                                                                         addr339:
                                                                                                         if(_loc4_ || _loc2_)
                                                                                                         {
                                                                                                            if(!_loc5_)
                                                                                                            {
                                                                                                               if(!_loc5_)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     addr265:
                                                                                                                     §§goto(addr689);
                                                                                                                     addr265:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr666);
                                                                                                                  }
                                                                                                                  §§goto(addr689);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr526:
                                                                                                                  this.§'"9§ = this.§,0§.getSubAnimation(this.§;"§);
                                                                                                               }
                                                                                                               §§goto(addr696);
                                                                                                            }
                                                                                                            if(_loc4_ || _loc3_)
                                                                                                            {
                                                                                                               this.mIsScreaming = true;
                                                                                                               §§goto(addr503);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr619);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr696);
                                                                                                         addr339:
                                                                                                      }
                                                                                                      §§goto(addr696);
                                                                                                   }
                                                                                                   §§goto(addr689);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop78:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§push(this.mTryToBlink);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        addr472:
                                                                                                                        loop28:
                                                                                                                        for(; !(_loc4_ || this); §§goto(addr472))
                                                                                                                        {
                                                                                                                           loop29:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc5_ && this)
                                                                                                                              {
                                                                                                                                 loop31:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       loop36:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc5_ && this))
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                loop35:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   loop33:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc5_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc5_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§,0§);
                                                                                                                                                               loop32:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§;"§);
                                                                                                                                                                     loop81:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                           loop47:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop29;
                                                                                                                                                                              }
                                                                                                                                                                              loop19:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 loop20:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.mTryToScream);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             addr547:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop31;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§'"9§ = this.§,0§.getSubAnimation(this.§;""§);
                                                                                                                                                                                             §§goto(addr619);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             loop3:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§,0§);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§5!;§);
                                                                                                                                                                                                   addr662:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                      addr663:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         addr664:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr665:
                                                                                                                                                                                                            while(!§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.mTryToScream);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(0);
                                                                                                                                                                                                                  addr645:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                     addr646:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                        addr647:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(this.mTryToFly);
                                                                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() > 0);
                                                                                                                                                                                                                                    while(_loc4_ || _loc2_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          addr636:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr608);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                    addr627:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    addr638:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§,0§);
                                                                                                                                                                                                                                       addr602:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§;""§);
                                                                                                                                                                                                                                          addr604:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr696);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr634);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr666);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr410:
                                                                                                                                                                                                   if(!(_loc4_ || _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§]!?§);
                                                                                                                                                                                                      loop49:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                         loop46:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop47;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                                  loop38:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop27:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop52;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc5_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§'"9§ = this.§,0§.getSubAnimation(this.§]!?§);
                                                                                                                                                                                                                                    break loop52;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop33;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(this.mTryToFly);
                                                                                                                                                                                                                              if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc4_ || _loc1_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 loop45:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc4_ || _loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop38;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr367:
                                                                                                                                                                                                                                    if(_loc4_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop35;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                                                                          if(_loc4_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr387:
                                                                                                                                                                                                                                                      loop75:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§,0§);
                                                                                                                                                                                                                                                               if(!(_loc5_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§9!X§);
                                                                                                                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop49;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc4_ || _loc2_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop81;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr287:
                                                                                                                                                                                                                                                                     if(_loc4_ || _loc2_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                                                                                           if(_loc5_ && this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop46;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                           if(_loc5_ && _loc3_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop75;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc4_ || _loc2_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop52;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(!(_loc5_ && _loc1_))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          this.§'"9§ = this.§,0§.getSubAnimation(this.§9!X§);
                                                                                                                                                                                                                                                                                          §§goto(addr339);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr598);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr339);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§'"9§ = this.§,0§;
                                                                                                                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc5_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(false)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr248);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr689);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc5_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr689);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc5_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(this.§,0§);
                                                                                                                                                                                                                                                                                                            addr408:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc5_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop32;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr410);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr498:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr496:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr402:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr673);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr248);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr696);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr319:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr685:
                                                                                                                                                                                                                                                                              loop51:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                                                                 addr686:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr687:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                                                                          continue loop3;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr687:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop51;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr685:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr696);
                                                                                                                                                                                                                                                                           §§goto(addr287);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr294:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr662);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr664);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr276:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr408);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr503);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr696);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr387:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr319);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr386:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr686);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(!_loc5_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                     §§goto(addr496);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr495:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr646);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr367);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop20;
                                                                                                                                                                                                                                                            addr491:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr490:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop36;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr689);
                                                                                                                                                                                                                                             addr481:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr636);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr491);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr387);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr665);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr637);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr434:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr663);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             addr688:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr696);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr608:
                                                                                                                                                                                       addr610:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr627);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr604);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr602);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr638);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr610);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr656);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop78;
                                                                                                                                                }
                                                                                                                                                §§goto(addr619);
                                                                                                                                                addr524:
                                                                                                                                             }
                                                                                                                                             §§goto(addr619);
                                                                                                                                          }
                                                                                                                                          §§goto(addr647);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr687);
                                                                                                                                    }
                                                                                                                                    §§goto(addr688);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr524);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr481);
                                                                                                                        }
                                                                                                                        addr480:
                                                                                                                     }
                                                                                                                     §§goto(addr645);
                                                                                                                  }
                                                                                                                  §§goto(addr547);
                                                                                                               }
                                                                                                               addr467:
                                                                                                            }
                                                                                                            §§goto(addr644);
                                                                                                         }
                                                                                                         §§goto(addr546);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr526);
                                                                                             }
                                                                                             §§goto(addr547);
                                                                                          }
                                                                                          §§goto(addr546);
                                                                                       }
                                                                                       §§goto(addr498);
                                                                                    }
                                                                                    §§goto(addr687);
                                                                                 }
                                                                                 §§goto(addr207);
                                                                              }
                                                                              §§goto(addr490);
                                                                           }
                                                                           §§goto(addr685);
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.mIsBlinking = true;
                                                                        §§goto(addr402);
                                                                     }
                                                                  }
                                                                  §§goto(addr619);
                                                               }
                                                               §§goto(addr593);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.mTryToSpecial);
                                                               if(!(_loc5_ && _loc1_))
                                                               {
                                                                  §§goto(addr685);
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                            }
                                                            §§goto(addr687);
                                                         }
                                                         §§goto(addr376);
                                                      }
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr294);
                                                }
                                                §§goto(addr417);
                                             }
                                             §§goto(addr265);
                                          }
                                          §§goto(addr480);
                                       }
                                       §§goto(addr91);
                                    }
                                    §§goto(addr386);
                                 }
                                 §§goto(addr387);
                              }
                              §§goto(addr547);
                           }
                           §§goto(addr467);
                        }
                        §§goto(addr193);
                     }
                     §§goto(addr696);
                  }
                  §§goto(addr495);
               }
               §§goto(addr689);
            }
            §§goto(addr276);
         }
         §§goto(addr265);
      }
      
      public function §1!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§ D§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§[!%§);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc2_)
                  {
                     addr32:
                     this.§6G§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(_loc3_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§!!0§.§8W§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() / this.§!!0§.§%5§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop() * this.§[!%§);
                  }
                  §§push(int(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     addr137:
                     addr39:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc3_ || _loc2_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr74);
         }
         §§goto(addr32);
      }
      
      public function §6G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§,0§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr48:
                  this.§[!%§ = this.§,0§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §0X§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§9!K§ = new GlowFilter();
            while(true)
            {
               this.§9!K§.blurX = param2;
            }
            addr82:
         }
         loop1:
         while(true)
         {
            this.§9!K§.blurY = param3;
            while(!(_loc4_ && param3))
            {
               this.§9!K§.color = param1;
               if(_loc4_)
               {
                  continue;
               }
               if(_loc5_)
               {
                  break loop1;
               }
               §§goto(addr82);
            }
         }
      }
      
      public function §3X§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9!K§ = null;
         }
      }
      
      public function §@4§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§!!0§.§9!3§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(_loc3_ || this)
               {
                  break;
               }
               loop1:
               while(_loc4_ && _loc1_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§&o§(_loc2_);
            §§goto(addr80);
         }
      }
      
      public function §1t§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§;;§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  loop1:
                  for(; !_loc3_; while(true)
                  {
                     _loc2_ = §§pop();
                     continue loop1;
                  })
                  {
                     while(!_loc3_)
                     {
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop() - 1);
                        }
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§;;§[_loc2_].updateLifeTime(param1);
               while(true)
               {
                  if(this.§;;§[_loc2_].lifeTime < 0)
                  {
                     if(!_loc4_)
                     {
                        this.§&o§(_loc2_);
                     }
                     §§goto(addr71);
                  }
                  §§goto(addr34);
               }
            }
            §§goto(addr54);
         }
      }
      
      private function §&o§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(!this.§0!y§)
            {
               if(_loc6_)
               {
                  §§goto(addr23);
               }
            }
            var _loc2_:int = 0;
            if(_loc6_)
            {
               if(Math.random() < 0.5)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     addr39:
                     _loc2_ = 1;
                  }
               }
               var _loc3_:§+!I§ = this.§0!y§.getFrame(_loc2_);
               §§push(100 + Math.random() * 100);
               if(_loc6_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:§>"+§ = null;
               if(!_loc7_)
               {
                  if(param1 < this.§;;§.length)
                  {
                     addr72:
                     (_loc5_ = this.§;;§[param1]).§[@§(_loc4_);
                     if(_loc6_)
                     {
                        _loc5_.§ "§(_loc3_.texture);
                        if(!(_loc7_ && _loc2_))
                        {
                           addr130:
                           §§push(_loc5_.image);
                           if(!_loc7_)
                           {
                              §§push(_loc3_.pivotX);
                              if(_loc6_ || param1)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(this.§>i§);
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(§§pop().width / 2);
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc6_)
                                          {
                                             §§push(Math.random() * this.§>i§.width);
                                             if(!_loc7_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!(_loc7_ && _loc2_))
                                                   {
                                                      addr196:
                                                      §§push(_loc5_.image);
                                                      §§push(-_loc3_.pivotY);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         addr204:
                                                         addr206:
                                                         §§push(this.§>i§.height / 2);
                                                         if(!_loc7_)
                                                         {
                                                            addr236:
                                                            addr211:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               §§push(Math.random() * this.§>i§.height);
                                                            }
                                                            §§pop().y = §§pop();
                                                            §§goto(addr237);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   addr237:
                                                   return;
                                                }
                                                §§goto(addr236);
                                             }
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr204);
                              }
                           }
                        }
                        §§goto(addr196);
                     }
                     §§goto(addr236);
                  }
                  else
                  {
                     _loc5_ = new §>"+§(_loc3_.texture,_loc4_);
                     if(!_loc7_)
                     {
                        this.§;;§.push(_loc5_);
                        if(!(_loc7_ && this))
                        {
                           this.§ D§.addChild(_loc5_.image);
                        }
                     }
                  }
                  §§goto(addr130);
               }
               §§goto(addr72);
            }
            §§goto(addr39);
         }
         addr23:
      }
      
      public function §-W§() : §7"#§
      {
         return this.§>i§;
      }
   }
}
