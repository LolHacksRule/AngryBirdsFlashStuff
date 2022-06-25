package §3p§
{
   import §&L§.b2Vec2;
   import §,!_§.§;K§;
   import §,!_§.Animation;
   import §,!_§.AnimationManager;
   import §2!H§.§?Y§;
   import §2!H§.LevelMain;
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import §;T§.LevelItemShape;
   import flash.filters.GlowFilter;
   
   public class LevelObjectRenderer
   {
      
      public static const §9!g§:Number = 1000;
      
      public static const §[W§:Number = 500;
      
      private static var §6H§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9!g§ = 1000;
         }
         do
         {
            §[W§ = 500;
            do
            {
               §6H§ = null;
            }
            while(_loc1_);
            
         }
         while(_loc1_);
         
      }
      
      private var §,,§:LevelObject;
      
      public var §^!;§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §]N§:Number;
      
      public var §1!T§:Number;
      
      public var §,R§:int = -1;
      
      private var §[!9§:String;
      
      private var §=n§:Animation;
      
      private var §';§:Animation;
      
      private var §"!P§:§-m§;
      
      private var §;!@§:Number = 0;
      
      private var §3C§:Number = 0;
      
      public var §0!;§:int = -1;
      
      private var §,d§:int = -1;
      
      private var §%!H§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>!&§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §1L§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §=m§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var § !Z§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §0!?§:String = "fly";
      
      public var §'R§:String = "fly_yell";
      
      public var §'Y§:GlowFilter;
      
      private var §9h§:Vector.<§?Y§>;
      
      private var §5D§:Animation;
      
      private var §'6§:Sprite = null;
      
      private var §"!>§:LevelMain;
      
      public function LevelObjectRenderer(param1:LevelObject, param2:Sprite, param3:LevelMain)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super();
            while(true)
            {
               this.§"!>§ = param3;
               loop1:
               while(true)
               {
                  this.§,,§ = param1;
                  addr90:
                  while(true)
                  {
                     this.§[!9§ = this.§,,§.§#>§;
                     continue loop1;
                  }
               }
               loop4:
               while(_loc5_ || param1)
               {
                  while(true)
                  {
                     this.§'6§ = param2;
                     if(!_loc5_)
                     {
                        continue loop4;
                     }
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr78);
                  }
                  return;
               }
            }
         }
         §§goto(addr71);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§?Y§ = null;
         if(_loc3_ || _loc1_)
         {
            this.§1!&§();
            if(!(_loc2_ && _loc3_))
            {
               §§goto(addr47);
            }
            §§goto(addr51);
         }
         addr47:
         if(this.§9h§)
         {
            addr51:
            while(this.§9h§.length > 0)
            {
               _loc1_ = this.§9h§.pop();
               if(_loc3_ || this)
               {
                  _loc1_.dispose();
               }
            }
            if(!(_loc2_ && _loc2_))
            {
               this.§9h§ = null;
            }
         }
      }
      
      public function §,!=§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.mW = param3;
            loop0:
            while(true)
            {
               this.mH = param4;
               loop1:
               while(true)
               {
                  this.§,R§ = param1;
                  loop2:
                  do
                  {
                     this.§1!T§ = param2;
                     while(_loc5_)
                     {
                        continue loop0;
                        this.§=u§();
                        if(_loc5_ || param2)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!_loc5_);
                  
               }
            }
         }
      }
      
      public function §1!?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1)
            {
               if(_loc2_)
               {
                  this.§]N§ = 1;
               }
            }
            else
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§]N§ = §§pop();
                  loop1:
                  while(true)
                  {
                     if(this.§]N§ >= 1)
                     {
                        do
                        {
                           this.§]N§ = Math.min(11,this.§]N§);
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                        }
                        while(_loc3_ && _loc2_);
                        
                        return;
                        addr28:
                        addr56:
                     }
                     while(_loc2_)
                     {
                        this.§]N§ = 1 / this.§]N§;
                        continue loop1;
                        §§goto(addr39);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §?E§(param1:AnimationManager) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§;K§ = null;
         var _loc3_:Texture = null;
         if(!_loc6_)
         {
            §§push(this.§,,§.isGround());
            if(_loc5_ || _loc3_)
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     this.§5D§ = param1.getAnimation("SPARKLES");
                     loop1:
                     while(_loc5_ || _loc2_)
                     {
                        loop2:
                        while(true)
                        {
                           this.§=n§ = param1.getAnimation(this.§[!9§);
                           loop3:
                           while(!(_loc6_ && this))
                           {
                              while(true)
                              {
                                 this.§';§ = this.§=n§;
                                 if(_loc5_ || _loc2_)
                                 {
                                    if(!_loc6_)
                                    {
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop0;
                                 }
                                 continue loop3;
                              }
                              var _loc4_:* = Number(1);
                              if(!_loc6_)
                              {
                                 §§push(this.§';§);
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       addr97:
                                       _loc2_ = this.§';§.getFrame(0);
                                       addr95:
                                       if(_loc5_ || _loc2_)
                                       {
                                          §§push(_loc2_.scale);
                                          if(!_loc6_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                       }
                                       _loc3_ = _loc2_.texture;
                                       if(!_loc6_)
                                       {
                                          addr127:
                                          this.§"!P§ = new §-m§(_loc3_);
                                          if(!_loc6_)
                                          {
                                             §§push(Boolean(_loc2_));
                                             loop5:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   §§push(this.§"!P§);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(this.§"!P§);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(-§§pop().width);
                                                         loop8:
                                                         while(true)
                                                         {
                                                            §§push(2);
                                                            addr332:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§pop().x = §§pop();
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§"!P§);
                                                                     loop12:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc6_ && this))
                                                                        {
                                                                           §§push(this.§"!P§);
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(-§§pop().height);
                                                                        }
                                                                        else
                                                                        {
                                                                           loop27:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_.pivotX);
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(-§§pop());
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr359:
                                                                                    addr348:
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§"!P§);
                                                                                       addr338:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_.pivotY);
                                                                                          if(_loc5_ || param1)
                                                                                          {
                                                                                             break loop23;
                                                                                          }
                                                                                          continue loop25;
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                    addr349:
                                                                                    §§pop().y = -§§pop();
                                                                                    addr349:
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§"!P§);
                                                                                       loop17:
                                                                                       while(!_loc6_)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§pop().scaleX = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ || param1))
                                                                                                      {
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                      if(_loc5_)
                                                                                                      {
                                                                                                         §§push(this.§"!P§);
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      addr353:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      addr158:
                                                                                                      if(!(_loc5_ || _loc3_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!(_loc6_ && _loc3_))
                                                                                                      {
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      §§goto(addr349);
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop26;
                                                                                             }
                                                                                             addr222:
                                                                                             §§push(_loc4_);
                                                                                             if(_loc6_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_ || param1)
                                                                                                {
                                                                                                   §§pop().scaleY = §§pop();
                                                                                                   loop20:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc6_ && param1))
                                                                                                         {
                                                                                                            this.mW = this.§"!P§.width / 2;
                                                                                                            loop21:
                                                                                                            do
                                                                                                            {
                                                                                                               this.mH = this.§"!P§.height / 2;
                                                                                                               while(!_loc6_)
                                                                                                               {
                                                                                                                  this.§'6§.addChild(this.§"!P§);
                                                                                                                  if(_loc5_ || param1)
                                                                                                                  {
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            while(_loc6_);
                                                                                                            
                                                                                                            §§goto(addr158);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr359);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         addr311:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr349);
                                                                                                }
                                                                                                §§goto(addr348);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().y = §§pop();
                                                                                                }
                                                                                                addr310:
                                                                                             }
                                                                                             §§goto(addr311);
                                                                                          }
                                                                                          continue loop26;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(_loc5_ || this)
                                                                        {
                                                                           continue loop8;
                                                                           §§goto(addr256);
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     continue loop7;
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
                                       §§goto(addr353);
                                    }
                                    else
                                    {
                                       _loc3_ = this.§"!>§.textureManager.§;?§();
                                    }
                                    §§goto(addr127);
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr95);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr55);
      }
      
      public function §#R§(param1:LevelItemShape) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§"!5§);
         if(!(_loc6_ && _loc2_))
         {
            var _loc4_:* = §§pop();
            if(_loc5_ || _loc3_)
            {
               §§push(LevelItemShape.§,!4§);
               if(_loc5_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc6_ && param1)
                           {
                              addr168:
                           }
                        }
                        else
                        {
                           addr171:
                           §§push(2);
                           if(_loc6_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(LevelItemShape.§ h§);
                        if(_loc5_)
                        {
                           addr142:
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr160:
                                 §§push(1);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§goto(addr168);
                                 }
                                 addr177:
                                 switch(§§pop())
                                 {
                                    case 0:
                                       _loc2_ = param1.§6!^§();
                                       _loc3_ = _loc2_[0];
                                       if(_loc5_ || param1)
                                       {
                                          §§push(this);
                                          §§push(_loc3_.x);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§push(§§pop() / LevelMain.§8N§);
                                          }
                                          §§pop().§;!@§ = §§pop();
                                          if(!_loc6_)
                                          {
                                             §§push(this);
                                             §§push(_loc3_.y);
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(§§pop() / LevelMain.§8N§);
                                             }
                                             §§pop().§3C§ = §§pop();
                                             if(_loc6_ && param1)
                                             {
                                             }
                                             break;
                                          }
                                          addr178:
                                          this.§<3§();
                                          break;
                                       }
                                       break;
                                    case 1:
                                       §§goto(addr178);
                                    default:
                                       §§goto(addr178);
                                 }
                                 return;
                                 addr176:
                              }
                           }
                           else if(true)
                           {
                              §§goto(addr176);
                              §§push(2);
                           }
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr176);
                  }
               }
               §§goto(addr142);
            }
            §§goto(addr160);
         }
         §§goto(addr177);
      }
      
      public function §&!^§() : Array
      {
         return LevelObjectMovieClipHelper.§&!^§(null,this.§,,§.§9!&§());
      }
      
      public function §7I§() : Array
      {
         return LevelObjectMovieClipHelper.§7I§(null,this.§,,§.§9!&§());
      }
      
      public function §4N§() : Array
      {
         return LevelObjectMovieClipHelper.§4N§(null);
      }
      
      public function §=u§() : void
      {
      }
      
      public function §+!=§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§'6§.scaleX = this.§'6§.scaleY = param1;
         }
      }
      
      public function §<3§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§;K§ = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§=n§);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        return;
                     }
                     addr622:
                     loop96:
                     while(true)
                     {
                        §§push(this.§=n§);
                        loop84:
                        while(true)
                        {
                           §§push(this.§ !Z§);
                           loop81:
                           while(true)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop().getSubAnimation(§§pop()));
                                    addr538:
                                    loop80:
                                    while(true)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc5_ || _loc1_)
                                       {
                                          loop27:
                                          while(true)
                                          {
                                             addr547:
                                             while(!§§pop())
                                             {
                                                §§push(this.mTryToFly);
                                                loop28:
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc5_)
                                                            {
                                                               addr452:
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  addr459:
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     addr467:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc5_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           loop29:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(this.§=n§);
                                                                                                      if(_loc4_ && _loc1_)
                                                                                                      {
                                                                                                         continue loop84;
                                                                                                      }
                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(!_loc4_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§0!?§);
                                                                                                                  if(_loc4_ && this)
                                                                                                                  {
                                                                                                                     continue loop81;
                                                                                                                  }
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                     if(_loc4_ && this)
                                                                                                                     {
                                                                                                                        continue loop80;
                                                                                                                     }
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 break loop28;
                                                                                                                              }
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           loop77:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              loop78:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr796:
                                                                                                                                 loop79:
                                                                                                                                 while(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(this.mTryToScream);
                                                                                                                                    loop1:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       loop2:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                          loop3:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             addr778:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop());
                                                                                                                                                addr779:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Boolean(§§pop()));
                                                                                                                                                   loop6:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            loop8:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.mTryToFly);
                                                                                                                                                               addr750:
                                                                                                                                                               loop9:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() > 0);
                                                                                                                                                                  if(!(_loc4_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        addr760:
                                                                                                                                                                        addr817:
                                                                                                                                                                        loop10:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr816:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 break loop10;
                                                                                                                                                                              }
                                                                                                                                                                              addr816:
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           addr818:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop78;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 addr820:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§=n§);
                                                                                                                                                                                    addr791:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§>!&§);
                                                                                                                                                                                       addr793:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop77;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr759:
                                                                                                                                                                  }
                                                                                                                                                                  addr768:
                                                                                                                                                                  loop11:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     addr769:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§=n§);
                                                                                                                                                                        addr718:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§'R§);
                                                                                                                                                                           addr720:
                                                                                                                                                                           while(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                 loop16:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr760);
                                                                                                                                                                                    }
                                                                                                                                                                                    loop17:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.mTryToScream);
                                                                                                                                                                                          loop18:
                                                                                                                                                                                          for(; _loc5_ || _loc2_; §§push(this.mTryToBlink),if(_loc4_ && _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          },§§push(0),if(!_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr665);
                                                                                                                                                                                          },§§push(§§pop() > §§pop()),if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop9;
                                                                                                                                                                                          },§§goto(addr617))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                addr665:
                                                                                                                                                                                                while(_loc5_ || _loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                      if(_loc5_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                                                                         loop20:
                                                                                                                                                                                                         for(; !_loc4_; while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_ && _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr642);
                                                                                                                                                                                                         })
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc4_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                               loop21:
                                                                                                                                                                                                               while(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Boolean(§§pop()));
                                                                                                                                                                                                                     addr689:
                                                                                                                                                                                                                     while(_loc5_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 this.§';§ = this.§=n§.getSubAnimation(this.§=m§);
                                                                                                                                                                                                                                 this.mIsScreaming = true;
                                                                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop20;
                                                                                                                                                                                                                              addr642:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              addr695:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§=n§);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§=m§);
                                                                                                                                                                                                                                       addr633:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                                                                                          addr634:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr631:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc5_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop79;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc5_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.mIsScreaming = true;
                                                                                                                                                                                                                                          addr712:
                                                                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.mIsFlying = true;
                                                                                                                                                                                                                                             addr707:
                                                                                                                                                                                                                                             addr714:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr787:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr746:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr820);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr737:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr834:
                                                                                                                                                                                                                           §§push(this.§';§);
                                                                                                                                                                                                                           if(!(_loc4_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                                                                                                                              break loop28;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           _loc1_ = §§pop().getFrame(this.§%!H§);
                                                                                                                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§"!P§);
                                                                                                                                                                                                                              loop43:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    if(_loc5_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop();
                                                                                                                                                                                                                                          addr1009:
                                                                                                                                                                                                                                          loop63:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Boolean(_loc1_));
                                                                                                                                                                                                                                             if(!(_loc5_ || this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop45:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§"!P§);
                                                                                                                                                                                                                                                      loop46:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().texture = _loc1_.texture;
                                                                                                                                                                                                                                                         loop47:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§"!P§);
                                                                                                                                                                                                                                                               loop48:
                                                                                                                                                                                                                                                               for(; !_loc4_; if(_loc4_ && _loc1_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                                                                               },§§push(_loc1_.scale),if(_loc5_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc4_ && _loc1_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop().scaleY = §§pop();
                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(false)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr886);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1010);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr950);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr899);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr949);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr929);
                                                                                                                                                                                                                                                               },§§goto(addr891))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc1_.pivotX);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                                                                     addr946:
                                                                                                                                                                                                                                                                     addr919:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§;!@§);
                                                                                                                                                                                                                                                                        addr948:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                           addr949:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                                                                              addr950:
                                                                                                                                                                                                                                                                              while(_loc5_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§"!P§);
                                                                                                                                                                                                                                                                                 continue loop43;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop45;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(_loc1_.pivotY);
                                                                                                                                                                                                                                                                     if(_loc4_ && _loc1_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§3C§);
                                                                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                           loop56:
                                                                                                                                                                                                                                                                           for(; _loc5_; while(_loc5_ || _loc2_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().scaleX = §§pop();
                                                                                                                                                                                                                                                                              §§goto(addr899);
                                                                                                                                                                                                                                                                           })
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                              loop57:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr886:
                                                                                                                                                                                                                                                                                 addr1010:
                                                                                                                                                                                                                                                                                 addr899:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§"!P§);
                                                                                                                                                                                                                                                                                    addr889:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc1_.scale);
                                                                                                                                                                                                                                                                                       continue loop56;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 return;
                                                                                                                                                                                                                                                                                 addr899:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc5_ || _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(this.§"!P§);
                                                                                                                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop48;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr889);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop47;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr946);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr948);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop63;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop63;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1010);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop63;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1008:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr968);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1008);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1009);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr818);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr765:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc5_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop11;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop17;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr817);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc4_ && _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr617:
                                                                                                                                                                                                                           while(_loc5_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop96;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr832:
                                                                                                                                                                                                                              addr832:
                                                                                                                                                                                                                              addr832:
                                                                                                                                                                                                                              §§goto(addr834);
                                                                                                                                                                                                                              §§push(this.§';§);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                           addr617:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop27;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr764:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr765);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr452);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop78;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop79;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop3;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr694);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop2;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop1;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop8;
                                                                                                                                                                                          }
                                                                                                                                                                                          this.§';§ = this.§=n§.getSubAnimation(this.§'R§);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr737);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr793);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc4_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        addr591:
                                                                                                                                                                        while(_loc5_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr602);
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                              §§goto(addr459);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr689);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr635);
                                                                                                                                                                     }
                                                                                                                                                                     addr590:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr819);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr781:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr764);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 this.§';§ = this.§=n§.getSubAnimation(this.§>!&§);
                                                                                                                                 addr804:
                                                                                                                                 this.mIsSpecial = true;
                                                                                                                                 §§goto(addr787);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr723);
                                                                                                                     }
                                                                                                                     §§goto(addr634);
                                                                                                                  }
                                                                                                                  §§goto(addr720);
                                                                                                               }
                                                                                                               addr347:
                                                                                                            }
                                                                                                            §§goto(addr791);
                                                                                                         }
                                                                                                         §§goto(addr718);
                                                                                                      }
                                                                                                      §§goto(addr631);
                                                                                                   }
                                                                                                   §§goto(addr728);
                                                                                                }
                                                                                                §§goto(addr707);
                                                                                             }
                                                                                             §§goto(addr651);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc5_ || _loc1_))
                                                                                                {
                                                                                                   break loop27;
                                                                                                }
                                                                                                if(_loc4_ && this)
                                                                                                {
                                                                                                   §§goto(addr804);
                                                                                                }
                                                                                                §§goto(addr834);
                                                                                             }
                                                                                             addr510:
                                                                                          }
                                                                                          §§goto(addr804);
                                                                                       }
                                                                                       §§goto(addr832);
                                                                                    }
                                                                                    addr479:
                                                                                 }
                                                                                 §§goto(addr768);
                                                                              }
                                                                              §§goto(addr694);
                                                                           }
                                                                           continue loop84;
                                                                        }
                                                                        addr410:
                                                                        while(true)
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              this.§';§ = this.§=n§;
                                                                              if(_loc5_ || _loc2_)
                                                                              {
                                                                                 if(_loc5_ || _loc1_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             loop30:
                                                                                             while(true)
                                                                                             {
                                                                                                this.mIsFlying = true;
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      if(_loc5_ || _loc3_)
                                                                                                      {
                                                                                                         §§goto(addr834);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§';§ = this.§=n§.getSubAnimation(this.§0!?§);
                                                                                                         }
                                                                                                         addr412:
                                                                                                      }
                                                                                                      §§goto(addr834);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                      {
                                                                                                         if(_loc5_ || this)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         §§goto(addr712);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr695);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr832);
                                                                                          }
                                                                                          §§goto(addr834);
                                                                                       }
                                                                                       §§goto(addr644);
                                                                                    }
                                                                                    §§goto(addr627);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    loop65:
                                                                                    while(true)
                                                                                    {
                                                                                       this.mIsBlinking = true;
                                                                                       §§goto(addr510);
                                                                                       addr555:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§';§ = this.§=n§.getSubAnimation(this.§ !Z§);
                                                                                          continue loop65;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr804);
                                                                              }
                                                                              §§goto(addr832);
                                                                           }
                                                                           §§goto(addr412);
                                                                        }
                                                                        §§goto(addr832);
                                                                     }
                                                                     §§goto(addr779);
                                                                  }
                                                                  §§goto(addr599);
                                                               }
                                                               §§goto(addr602);
                                                            }
                                                            §§goto(addr467);
                                                         }
                                                         break loop28;
                                                      }
                                                      addr441:
                                                   }
                                                   §§goto(addr591);
                                                   if(_loc4_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§goto(addr410);
                                                         }
                                                         §§goto(addr778);
                                                      }
                                                      §§goto(addr781);
                                                   }
                                                   §§goto(addr617);
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr832);
                                                }
                                                §§goto(addr1010);
                                             }
                                             break;
                                          }
                                          while(!(_loc5_ || _loc3_))
                                          {
                                             §§goto(addr769);
                                          }
                                          §§goto(addr555);
                                       }
                                       §§goto(addr831);
                                    }
                                 }
                                 addr537:
                              }
                              §§goto(addr633);
                           }
                        }
                     }
                     addr622:
                  }
                  else
                  {
                     §§push(this.§1L§);
                     if(!(_loc4_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              this.§%!H§ = 1;
                              if(_loc4_ && _loc1_)
                              {
                                 §§goto(addr707);
                              }
                           }
                           else
                           {
                              §§goto(addr746);
                           }
                           §§goto(addr834);
                        }
                        else
                        {
                           §§push(this.§,,§);
                           if(_loc5_ || _loc3_)
                           {
                              §§push(§§pop().getSpecialAnimationProgress());
                              if(!_loc4_)
                              {
                                 §§push(0);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(!_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc4_ && _loc1_))
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && _loc1_))
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc4_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ || _loc2_))
                                                   {
                                                      break;
                                                   }
                                                   §§pop();
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(this.§=n§);
                                                      if(_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      §§goto(addr347);
                                                   }
                                                   §§goto(addr714);
                                                }
                                                else
                                                {
                                                   addr111:
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         this.§';§ = this.§=n§.getSubAnimation(this.§>!&§);
                                                         if(!_loc4_)
                                                         {
                                                            loop72:
                                                            while(true)
                                                            {
                                                               this.§%!H§ = this.§';§.getFrameCount() * this.§,,§.getSpecialAnimationProgress();
                                                               while(true)
                                                               {
                                                                  §§push(this.§%!H§ == this.§';§.getFrameCount() - 1);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     if(_loc5_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(!(_loc4_ && _loc1_))
                                                                                    {
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(false)
                                                                                       {
                                                                                          continue loop72;
                                                                                       }
                                                                                       addr235:
                                                                                       §§push(this.§,,§.getSpecialAnimationTimeLeft());
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(100);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             addr241:
                                                                                             §§push(§§pop() > §§pop());
                                                                                             if(_loc5_ || _loc2_)
                                                                                             {
                                                                                                addr249:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   break loop0;
                                                                                                }
                                                                                                §§goto(addr759);
                                                                                             }
                                                                                             §§goto(addr441);
                                                                                          }
                                                                                          §§goto(addr672);
                                                                                       }
                                                                                       §§goto(addr664);
                                                                                    }
                                                                                    §§goto(addr804);
                                                                                 }
                                                                                 §§goto(addr479);
                                                                              }
                                                                              break loop0;
                                                                           }
                                                                        }
                                                                        §§goto(addr817);
                                                                     }
                                                                     §§goto(addr750);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr590);
                                                            }
                                                         }
                                                         addr255:
                                                         var _loc2_:*;
                                                         §§push((_loc2_ = this).§%!H§);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         var _loc3_:* = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            _loc2_.§%!H§ = _loc3_;
                                                         }
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                            §§goto(addr622);
                                                         }
                                                         else
                                                         {
                                                            addr805:
                                                         }
                                                         §§goto(addr834);
                                                      }
                                                      §§goto(addr644);
                                                   }
                                                   else
                                                   {
                                                      §§push(this.mTryToSpecial);
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         §§goto(addr816);
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      §§goto(addr816);
                                                   }
                                                }
                                                §§goto(addr816);
                                             }
                                          }
                                          §§goto(addr688);
                                       }
                                       §§goto(addr249);
                                    }
                                    §§goto(addr816);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr775);
                           }
                           §§goto(addr235);
                        }
                     }
                  }
                  §§goto(addr547);
               }
               break;
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §§goto(addr255);
               }
               §§goto(addr555);
            }
            §§goto(addr805);
         }
         §§goto(addr622);
      }
      
      public function §9! §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§'6§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§0!;§);
            if(!_loc2_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_ || _loc3_)
                  {
                     this.§1]§();
                     addr35:
                     §§push(0);
                     if(!_loc2_)
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
               §§goto(addr35);
            }
            var _loc1_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               §§push(1);
               while(true)
               {
                  §§push(this.§,,§.§0o§);
                  if(_loc3_)
                  {
                     §§push(§§pop() / this.§,,§.§]!3§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop() * this.§0!;§);
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc1_ = §§pop();
                     §§goto(addr132);
                  }
               }
            }
            addr132:
            loop2:
            while(true)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     if(§§pop() != this.§,d§)
                     {
                        loop3:
                        do
                        {
                           this.§,d§ = _loc1_;
                           while(!(_loc2_ && this))
                           {
                              this.§%!H§ = this.§,d§;
                              do
                              {
                                 this.§<3§();
                              }
                              while(!_loc3_);
                              
                              if(_loc3_)
                              {
                                 continue loop3;
                              }
                           }
                           continue loop2;
                        }
                        while(_loc2_);
                        
                        break;
                     }
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §1]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§=n§)
            {
               if(_loc1_)
               {
                  addr24:
                  this.§0!;§ = this.§=n§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §;!!§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            this.§'Y§ = new GlowFilter();
            while(true)
            {
               this.§'Y§.blurX = param2;
               loop1:
               while(!(_loc5_ && param3))
               {
                  while(true)
                  {
                     this.§'Y§.blurY = param3;
                     while(_loc4_)
                     {
                        this.§'Y§.color = param1;
                        if(_loc4_)
                        {
                           return;
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §1!&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§'Y§ = null;
         }
      }
      
      public function §&!L§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§,,§.§%W§(false),1));
         §§push(0);
         if(_loc4_ || _loc1_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc3_)
            {
               if(!(_loc3_ && _loc1_))
               {
                  if(§§pop() >= _loc1_)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§<!H§(_loc2_);
                  }
                  §§push(_loc2_);
               }
               §§push(§§pop() + 1);
               if(_loc4_ || _loc1_)
               {
                  §§push(int(§§pop()));
               }
            }
            _loc2_ = §§pop();
         }
      }
      
      public function §,!<§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§9h§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  if(!(_loc4_ && _loc3_))
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        if(this.§9h§[_loc2_].lifeTime < 0)
                        {
                           addr89:
                           this.§<!H§(_loc2_);
                        }
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - 1);
                           if(_loc3_)
                           {
                              addr79:
                              _loc2_ = §§pop();
                              continue;
                           }
                        }
                        §§goto(addr79);
                        addr103:
                     }
                  }
                  §§goto(addr89);
               }
               else
               {
                  this.§9h§[_loc2_].updateLifeTime(param1);
               }
               §§goto(addr103);
            }
            §§goto(addr79);
         }
      }
      
      private function §<!H§(param1:int) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || _loc3_)
         {
            if(!this.§5D§)
            {
               if(!_loc7_)
               {
                  §§goto(addr29);
               }
            }
            §§push(0);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc7_ && param1))
            {
               if(Math.random() < 0.5)
               {
                  if(!_loc7_)
                  {
                     §§push(1);
                     if(!(_loc7_ && this))
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
            var _loc3_:§;K§ = this.§5D§.getFrame(_loc2_);
            §§push(100 + Math.random() * 100);
            if(!(_loc7_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:§?Y§ = null;
            if(!_loc7_)
            {
               if(param1 < this.§9h§.length)
               {
                  addr91:
                  _loc5_ = this.§9h§[param1];
                  if(_loc6_)
                  {
                     _loc5_.§6X§(_loc4_);
                     if(!_loc7_)
                     {
                        _loc5_.§[B§(_loc3_.texture);
                        if(!_loc7_)
                        {
                           addr155:
                           §§push(_loc5_.image);
                           if(_loc6_)
                           {
                              §§push(_loc3_.pivotX);
                              if(_loc6_)
                              {
                                 §§push(-§§pop());
                                 if(_loc6_)
                                 {
                                    §§push(this.§"!P§);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop().width / 2);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!_loc7_)
                                          {
                                             §§push(Math.random() * this.§"!P§.width);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc6_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      addr207:
                                                      §§push(_loc5_.image);
                                                      §§push(-_loc3_.pivotY);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         addr215:
                                                         addr227:
                                                         §§push(this.§"!P§.height / 2);
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr237:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                            }
                                                            §§goto(addr253);
                                                         }
                                                         addr252:
                                                         addr253:
                                                         §§pop().y = §§pop();
                                                         return;
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   §§goto(addr253);
                                                }
                                                §§push(Math.random() * this.§"!P§.height);
                                             }
                                             §§goto(addr252);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr237);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr237);
                              }
                           }
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr237);
                  }
                  §§goto(addr207);
               }
               else
               {
                  _loc5_ = new §?Y§(_loc3_.texture,_loc4_);
                  if(_loc6_ || _loc3_)
                  {
                     this.§9h§.push(_loc5_);
                     if(_loc6_ || this)
                     {
                        this.§'6§.addChild(_loc5_.image);
                     }
                  }
               }
               §§goto(addr155);
            }
            §§goto(addr91);
         }
         addr29:
      }
      
      public function § !d§() : §-m§
      {
         return this.§"!P§;
      }
   }
}
