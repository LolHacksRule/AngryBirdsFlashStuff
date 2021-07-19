package §9_§
{
   import §1n§.§,!0§;
   import §1n§.§1D§;
   import §1n§.§?!C§;
   import §4N§.§2D§;
   import §[P§.Texture;
   import §[x§.§2^§;
   import §[x§.§7!&§;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §`-§
   {
      
      public static const §`w§:Number = 1000;
      
      public static const §&H§:Number = 500;
      
      private static var §6z§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §`w§ = 1000;
         }
         do
         {
            §&H§ = 500;
            do
            {
               §6z§ = null;
            }
            while(_loc2_ && _loc1_);
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      private var §>0§:§+>§;
      
      public var §7m§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §-k§:Number;
      
      public var §^!7§:Number;
      
      public var §"!E§:int = -1;
      
      private var §^s§:String;
      
      private var §,k§:§?!C§;
      
      private var §in §:§?!C§;
      
      private var §6-§:§1!,§;
      
      private var §"!H§:Number = 0;
      
      private var §;5§:Number = 0;
      
      public var §=d§:int = -1;
      
      private var §3F§:int = -1;
      
      private var §6y§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §@E§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §11§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §1X§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §]D§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §%?§:String = "fly";
      
      public var §9Q§:String = "fly_yell";
      
      public var §<o§:GlowFilter;
      
      private var §#"§:Vector.<§7!&§>;
      
      private var §%F§:§?!C§;
      
      private var §1-§:Sprite = null;
      
      private var §1! §:§2^§;
      
      public function §`-§(param1:§+>§, param2:Sprite, param3:§2^§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            super();
            loop0:
            while(true)
            {
               this.§1! § = param3;
               this.§>0§ = param1;
               while(true)
               {
                  this.§^s§ = this.§>0§.§57§;
                  addr76:
                  if(!(_loc5_ && param3))
                  {
                     this.§1-§ = param2;
                     addr83:
                     if(_loc4_ || param1)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              this.§#"§ = new Vector.<§7!&§>();
                              continue loop3;
                           }
                           return;
                           addr56:
                           addr90:
                        }
                        §§goto(addr76);
                     }
                  }
               }
            }
         }
         §§goto(addr90);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§7!&§ = null;
         if(_loc3_ || _loc2_)
         {
            this.§"'§();
            if(_loc3_)
            {
               if(this.§#"§)
               {
                  addr54:
                  while(this.§#"§.length > 0)
                  {
                     _loc1_ = this.§#"§.pop();
                     if(_loc3_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(!(_loc2_ && _loc3_))
                  {
                     this.§#"§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function §!P§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.mW = param3;
            loop0:
            while(true)
            {
               this.mH = param4;
               loop1:
               do
               {
                  this.§"!E§ = param1;
                  while(!_loc5_)
                  {
                     this.§^!7§ = param2;
                     while(_loc6_ || this)
                     {
                        this.§79§();
                        if(!(_loc5_ && this))
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               while(!_loc6_);
               
            }
         }
      }
      
      public function §-!!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§-k§ = §§pop();
                  addr101:
                  while(true)
                  {
                     if(this.§-k§ >= 1)
                     {
                        continue;
                     }
                     this.§-k§ = 1 / this.§-k§;
                     if(_loc3_ || this)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr112);
               }
            }
            this.§-k§ = 1;
            addr112:
            return;
         }
         §§goto(addr101);
      }
      
      public function §`!4§(param1:§,!0§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§1D§ = null;
         var _loc3_:Texture = null;
         if(_loc5_ || this)
         {
            §§push(this.§>0§.isGround());
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && param1))
                  {
                     §§goto(addr72);
                  }
                  else
                  {
                     addr73:
                     while(true)
                     {
                     }
                     addr73:
                  }
               }
               loop0:
               while(true)
               {
                  this.§%F§ = param1.§9$§("SPARKLES");
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        this.§,k§ = param1.§9$§(this.§^s§);
                        while(_loc5_)
                        {
                           this.§in § = this.§,k§;
                           if(_loc6_)
                           {
                              continue;
                           }
                           if(!_loc5_)
                           {
                              break loop2;
                           }
                           if(false)
                           {
                              continue loop2;
                           }
                           var _loc4_:* = Number(1);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(this.§in §);
                              if(_loc5_ || this)
                              {
                                 if(§§pop())
                                 {
                                    addr96:
                                    _loc2_ = this.§in §.getFrame(0);
                                    addr94:
                                    if(!_loc6_)
                                    {
                                       §§push(_loc2_.scale);
                                       if(!_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc4_ = §§pop();
                                    }
                                    _loc3_ = _loc2_.texture;
                                    if(_loc5_ || _loc2_)
                                    {
                                       addr126:
                                       this.§6-§ = new §1!,§(_loc3_);
                                       if(!_loc6_)
                                       {
                                          if(_loc2_)
                                          {
                                             addr319:
                                             this.§6-§.x = -_loc2_.pivotX;
                                             addr301:
                                             addr317:
                                             §§push(this.§6-§);
                                             §§push(_loc2_.pivotY);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                §§pop().y = -§§pop();
                                                addr210:
                                                §§push(this.§6-§);
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      addr228:
                                                      §§pop().scaleX = _loc4_;
                                                      §§push(this.§6-§);
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            §§pop().scaleY = §§pop();
                                                            this.mW = this.§6-§.width / 2;
                                                            addr182:
                                                            if(_loc5_ || param1)
                                                            {
                                                               this.mH = this.§6-§.height / 2;
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  this.§1-§.addChild(this.§6-§);
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr297:
                                                                     §§push(this.§6-§);
                                                                     if(!_loc6_)
                                                                     {
                                                                        §§push(this.§6-§);
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           §§push(-§§pop().height);
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr294:
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §§push(2);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr259:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       §§pop().y = §§pop();
                                                                                       §§goto(addr210);
                                                                                    }
                                                                                    addr296:
                                                                                    §§pop().x = §§pop();
                                                                                    §§goto(addr297);
                                                                                 }
                                                                                 addr295:
                                                                                 §§goto(addr296);
                                                                                 §§push(§§pop() / §§pop());
                                                                              }
                                                                              §§goto(addr295);
                                                                              §§push(2);
                                                                           }
                                                                           §§goto(addr259);
                                                                        }
                                                                        addr292:
                                                                        §§goto(addr294);
                                                                        §§push(-§§pop().width);
                                                                     }
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§goto(addr292);
                                                                        §§push(this.§6-§);
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  return true;
                                                                  addr173:
                                                                  addr157:
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            addr209:
                                                            §§goto(addr209);
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr210);
                                                   }
                                                   §§goto(addr317);
                                                }
                                                §§goto(addr297);
                                             }
                                             §§goto(addr319);
                                          }
                                          else
                                          {
                                             §§push(this.§6-§);
                                          }
                                          §§goto(addr297);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr157);
                                 }
                                 else
                                 {
                                    _loc3_ = this.§1! §.textureManager.§9!5§();
                                 }
                                 §§goto(addr126);
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr94);
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
            addr72:
            return false;
         }
         §§goto(addr73);
      }
      
      public function §9%§(param1:§2D§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§-'§);
         if(!(_loc5_ && _loc3_))
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(§2D§.§>!$§);
               if(_loc6_ || param1)
               {
                  §§push(_loc4_);
                  if(_loc6_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!_loc5_)
                           {
                              addr139:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1.§9H§();
                                    _loc3_ = _loc2_[0];
                                    if(!_loc5_)
                                    {
                                       §§push(this);
                                       §§push(_loc3_.x);
                                       if(!_loc5_)
                                       {
                                          §§push(§§pop() / §2^§.§,]§);
                                       }
                                       §§pop().§"!H§ = §§pop();
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(this);
                                          §§push(_loc3_.y);
                                          if(!_loc5_)
                                          {
                                             §§push(§§pop() / §2^§.§,]§);
                                          }
                                          §§pop().§;5§ = §§pop();
                                          if(_loc6_)
                                          {
                                             addr73:
                                             break;
                                          }
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr73);
                                 case 1:
                              }
                              this.§;&§();
                              addr138:
                              addr142:
                              return;
                              addr138:
                           }
                        }
                        else
                        {
                           addr130:
                           §§push(1);
                           if(!_loc6_)
                           {
                           }
                        }
                        §§goto(addr138);
                     }
                     else
                     {
                        §§push(§2D§.§&W§);
                        if(_loc6_)
                        {
                           addr129:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr130);
                           }
                           else
                           {
                              §§goto(addr138);
                              §§push(2);
                           }
                           §§goto(addr138);
                        }
                     }
                     §§goto(addr138);
                  }
                  §§goto(addr129);
               }
               §§goto(addr138);
            }
            §§goto(addr130);
         }
         §§goto(addr139);
      }
      
      public function §"!A§() : Array
      {
         return §&!F§.§"!A§(null,this.§>0§.§"N§());
      }
      
      public function §@!&§() : Array
      {
         return §&!F§.§@!&§(null,this.§>0§.§"N§());
      }
      
      public function §if §() : Array
      {
         return §&!F§.§if §(null);
      }
      
      public function §79§() : void
      {
      }
      
      public function §-+§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§1-§.scaleX = this.§1-§.scaleY = param1;
         }
      }
      
      public function §;&§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§1D§ = null;
         if(!this.§,k§)
         {
            if(_loc5_ || _loc3_)
            {
               return;
            }
         }
         else
         {
            loop0:
            while(true)
            {
               §§push(this.§11§);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     this.§6y§ = 1;
                     if(_loc4_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§,k§);
                           §§push(this.§%?§);
                           if(_loc5_ || this)
                           {
                              if(_loc5_)
                              {
                                 §§push(§§pop().getSubAnimation(§§pop()));
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc4_ && this))
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(!_loc4_)
                                                {
                                                   loop4:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         this.§in § = this.§,k§;
                                                         if(!(_loc4_ && this))
                                                         {
                                                            if(false)
                                                            {
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                         break;
                                                      }
                                                      if(_loc5_ || _loc1_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            this.§in § = this.§,k§.getSubAnimation(this.§%?§);
                                                            addr275:
                                                            if(_loc5_ || this)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        loop5:
                                                                        for(; _loc5_; §§pop())
                                                                        {
                                                                           §§push(this.§,k§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(this.§]D§);
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                       addr354:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          loop14:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr357:
                                                                                                this.§in § = this.§,k§.getSubAnimation(this.§]D§);
                                                                                                this.mIsBlinking = true;
                                                                                                §§goto(addr548);
                                                                                                addr364:
                                                                                                addr328:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.mTryToFly);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      addr297:
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc5_ || _loc2_)
                                                                                                      {
                                                                                                         if(_loc5_ || _loc1_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               continue loop4;
                                                                                                            }
                                                                                                            if(_loc5_ || this)
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               addr544:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop());
                                                                                                                  addr545:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§,k§);
                                                                                                                           §§push(this.§@E§);
                                                                                                                           addr521:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                              addr522:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr547:
                                                                                                                     }
                                                                                                                     loop19:
                                                                                                                     while(!§§pop())
                                                                                                                     {
                                                                                                                        §§push(this.mTryToScream);
                                                                                                                        loop20:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           addr506:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                              addr508:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    break loop14;
                                                                                                                                 }
                                                                                                                                 addr495:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    loop16:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       addr497:
                                                                                                                                       while(!§§pop())
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(this.mTryToScream);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      break loop1;
                                                                                                                                                   }
                                                                                                                                                   continue loop20;
                                                                                                                                                }
                                                                                                                                                continue loop20;
                                                                                                                                                addr439:
                                                                                                                                             }
                                                                                                                                             this.§in § = this.§,k§.getSubAnimation(this.§9Q§);
                                                                                                                                             this.mIsScreaming = true;
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                break loop19;
                                                                                                                                             }
                                                                                                                                             this.mIsFlying = true;
                                                                                                                                             §§goto(addr548);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr498:
                                                                                                                                       addr467:
                                                                                                                                       §§pop();
                                                                                                                                       §§push(this.§,k§);
                                                                                                                                       loop6:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§9Q§);
                                                                                                                                          addr469:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                             addr470:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                addr471:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      continue loop6;
                                                                                                                                                   }
                                                                                                                                                   if(!(_loc5_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop16;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr480);
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
                                                                                                                     while(!(_loc5_ || _loc1_))
                                                                                                                     {
                                                                                                                        §§goto(addr547);
                                                                                                                     }
                                                                                                                     this.§in § = this.§,k§.getSubAnimation(this.§@E§);
                                                                                                                     addr539:
                                                                                                                     this.mIsSpecial = true;
                                                                                                                     §§goto(addr548);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            loop12:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  §§push(this.§,k§);
                                                                                                                  §§push(this.§1X§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc5_ || _loc1_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           addr424:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr426:
                                                                                                                                 this.§in § = this.§,k§.getSubAnimation(this.§1X§);
                                                                                                                                 break loop5;
                                                                                                                              }
                                                                                                                              §§push(this.mTryToBlink);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr447:
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc5_)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       addr377:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() > §§pop());
                                                                                                                                          addr378:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             addr379:
                                                                                                                                             while(_loc5_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   continue loop5;
                                                                                                                                                }
                                                                                                                                                continue loop14;
                                                                                                                                                §§goto(addr297);
                                                                                                                                             }
                                                                                                                                             §§goto(addr545);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr377:
                                                                                                                                    }
                                                                                                                                    §§goto(addr506);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    continue loop12;
                                                                                                                                 }
                                                                                                                                 addr447:
                                                                                                                              }
                                                                                                                              §§goto(addr439);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr423:
                                                                                                                     }
                                                                                                                     §§goto(addr469);
                                                                                                                  }
                                                                                                                  addr415:
                                                                                                               }
                                                                                                               §§goto(addr424);
                                                                                                            }
                                                                                                            §§goto(addr548);
                                                                                                         }
                                                                                                         §§goto(addr497);
                                                                                                      }
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                   break loop14;
                                                                                                }
                                                                                                addr294:
                                                                                             }
                                                                                             §§goto(addr548);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr495);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr353:
                                                                                 }
                                                                                 §§goto(addr521);
                                                                              }
                                                                              addr336:
                                                                           }
                                                                           §§goto(addr467);
                                                                        }
                                                                        this.mIsScreaming = true;
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              §§goto(addr548);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr456);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr221:
                                                                     this.mIsFlying = true;
                                                                     addr548:
                                                                     §§push(this.§in §);
                                                                     if(!(_loc4_ && this))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr715);
                                                                     }
                                                                     _loc1_ = §§pop().getFrame(this.§6y§);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this.§6-§);
                                                                        loop31:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    addr714:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(_loc1_));
                                                                                       if(!(_loc5_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§push(this.§6-§);
                                                                                             while(!_loc4_)
                                                                                             {
                                                                                                §§pop().texture = _loc1_.texture;
                                                                                                §§push(this.§6-§);
                                                                                                while(!(_loc4_ && _loc1_))
                                                                                                {
                                                                                                   §§push(_loc1_.pivotX);
                                                                                                   loop34:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      loop35:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§"!H§);
                                                                                                         loop36:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            loop37:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               loop38:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§6-§);
                                                                                                                  loop39:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_.pivotY);
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§push(-§§pop());
                                                                                                                     loop40:
                                                                                                                     for(; !_loc4_; if(_loc4_ && this)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     },§§pop().scaleX = §§pop(),§§goto(addr626))
                                                                                                                     {
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop35;
                                                                                                                        }
                                                                                                                        §§push(this.§;5§);
                                                                                                                        if(!_loc5_)
                                                                                                                        {
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        loop41:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           addr597:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§6-§);
                                                                                                                              continue loop39;
                                                                                                                           }
                                                                                                                           addr611:
                                                                                                                           addr715:
                                                                                                                           return;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop40;
                                                                                                                              }
                                                                                                                              continue loop41;
                                                                                                                              addr578:
                                                                                                                              §§push(_loc1_.scale);
                                                                                                                              if(!(_loc5_ || _loc2_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr587:
                                                                                                                              §§pop().scaleY = §§pop();
                                                                                                                              if(_loc4_ && _loc3_)
                                                                                                                              {
                                                                                                                                 while(_loc5_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(this.§6-§);
                                                                                                                                    if(_loc4_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop39;
                                                                                                                                    }
                                                                                                                                    §§goto(addr578);
                                                                                                                                    §§goto(addr587);
                                                                                                                                 }
                                                                                                                                 continue loop38;
                                                                                                                                 addr626:
                                                                                                                              }
                                                                                                                              if(false)
                                                                                                                              {
                                                                                                                                 §§goto(addr597);
                                                                                                                              }
                                                                                                                              §§goto(addr715);
                                                                                                                           }
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop37;
                                                                                                                  }
                                                                                                                  continue loop34;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop31;
                                                                                          }
                                                                                          §§goto(addr715);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr713:
                                                                              }
                                                                              §§goto(addr691);
                                                                           }
                                                                           §§goto(addr713);
                                                                        }
                                                                     }
                                                                     §§goto(addr714);
                                                                     §§goto(addr548);
                                                                  }
                                                                  §§goto(addr357);
                                                               }
                                                               §§goto(addr364);
                                                            }
                                                            §§goto(addr328);
                                                         }
                                                         §§goto(addr539);
                                                      }
                                                      §§goto(addr275);
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr221);
                                                   §§push(this.§in §);
                                                }
                                                §§goto(addr471);
                                             }
                                             addr254:
                                          }
                                          §§goto(addr522);
                                       }
                                       §§goto(addr470);
                                    }
                                    §§goto(addr423);
                                 }
                                 §§goto(addr354);
                              }
                              §§goto(addr415);
                           }
                           §§goto(addr336);
                        }
                        addr323:
                     }
                     §§goto(addr221);
                  }
                  else
                  {
                     §§push(this.§>0§);
                     if(_loc5_ || _loc3_)
                     {
                        §§push(§§pop().getSpecialAnimationProgress());
                        if(_loc5_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              §§push(§§pop() >= §§pop());
                              if(§§pop() >= §§pop())
                              {
                                 §§pop();
                                 if(_loc5_)
                                 {
                                    §§push(this.§,k§);
                                    §§push(this.§@E§);
                                    if(_loc5_ || this)
                                    {
                                       §§push(§§pop().getSubAnimation(§§pop()));
                                       if(!_loc4_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc5_ || this)
                                          {
                                             addr89:
                                             if(§§pop())
                                             {
                                                if(_loc5_)
                                                {
                                                   this.§in § = this.§,k§.getSubAnimation(this.§@E§);
                                                   if(_loc5_ || this)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§6y§ = this.§in §.getFrameCount() * this.§>0§.getSpecialAnimationProgress();
                                                         §§push(this.§6y§ == this.§in §.getFrameCount() - 1);
                                                         §§push(this.§6y§ == this.§in §.getFrameCount() - 1);
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc4_ && _loc2_))
                                                               {
                                                                  if(!(_loc4_ && _loc2_))
                                                                  {
                                                                     §§pop();
                                                                     if(true)
                                                                     {
                                                                        §§push(this.§>0§.getSpecialAnimationTimeLeft());
                                                                        if(!(_loc4_ && _loc2_))
                                                                        {
                                                                           §§push(100);
                                                                           if(!(_loc4_ && _loc2_))
                                                                           {
                                                                              addr176:
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 var _loc2_:*;
                                                                                 §§push((_loc2_ = this).§6y§);
                                                                                 if(_loc5_ || _loc3_)
                                                                                 {
                                                                                    §§push(§§pop() - 1);
                                                                                 }
                                                                                 var _loc3_:* = §§pop();
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    _loc2_.§6y§ = _loc3_;
                                                                                 }
                                                                                 if(!(_loc5_ || _loc2_))
                                                                                 {
                                                                                    §§goto(addr323);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr540:
                                                                                 }
                                                                                 §§goto(addr221);
                                                                              }
                                                                              §§goto(addr540);
                                                                           }
                                                                           §§goto(addr377);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr159:
                                                                     }
                                                                     continue;
                                                                     break loop1;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr378);
                                                            }
                                                            §§goto(addr176);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr508);
                                                   }
                                                   §§goto(addr288);
                                                }
                                                §§goto(addr426);
                                             }
                                             else
                                             {
                                                §§push(Boolean(this.mTryToSpecial));
                                             }
                                             §§goto(addr544);
                                          }
                                          §§goto(addr294);
                                       }
                                       §§goto(addr254);
                                    }
                                    §§goto(addr353);
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr89);
                           }
                           §§goto(addr447);
                        }
                        §§goto(addr505);
                     }
                     §§goto(addr159);
                  }
               }
               while(true)
               {
                  §§goto(addr447);
               }
            }
         }
         §§goto(addr426);
      }
      
      public function § !5§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§1-§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§=d§);
            if(_loc2_ || this)
            {
               if(§§pop() < 0)
               {
                  if(!_loc3_)
                  {
                     this.§%b§();
                     addr33:
                     §§push(0);
                  }
               }
               §§goto(addr33);
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§>0§.§8!'§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() / this.§>0§.§[!3§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc2_)
                  {
                     §§push(§§pop() * this.§=d§);
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc1_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!(_loc2_ || this))
                        {
                           break;
                        }
                        if(!_loc3_)
                        {
                           if(§§pop() != this.§3F§)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 this.§3F§ = _loc1_;
                              }
                              while(true)
                              {
                                 this.§6y§ = this.§3F§;
                                 while(true)
                                 {
                                    if(_loc2_ || _loc3_)
                                    {
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§goto(addr38);
                                 }
                              }
                              addr117:
                           }
                           addr38:
                        }
                        continue loop0;
                        return;
                     }
                  }
               }
            }
            §§goto(addr117);
         }
         §§goto(addr33);
      }
      
      public function §%b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§,k§)
            {
               if(!(_loc2_ && this))
               {
                  addr28:
                  this.§=d§ = this.§,k§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function §=O§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param2)
         {
            this.§<o§ = new GlowFilter();
            do
            {
               this.§<o§.blurX = param2;
               do
               {
                  this.§<o§.blurY = param3;
                  do
                  {
                     this.§<o§.color = param1;
                  }
                  while(!(_loc5_ || param1));
                  
               }
               while(!(_loc5_ || param2));
               
            }
            while(!_loc5_);
            
         }
      }
      
      public function §"'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§<o§ = null;
         }
      }
      
      public function §?! §() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§>0§.§8@§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!(_loc4_ && _loc1_))
               {
                  break;
               }
               loop1:
               while(!(_loc3_ || _loc1_))
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§&!#§(_loc2_);
            §§goto(addr80);
         }
      }
      
      public function §24§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§#"§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  while(_loc3_)
                  {
                     while(true)
                     {
                     }
                  }
                  continue;
                  addr56:
               }
               else
               {
                  this.§#"§[_loc2_].updateLifeTime(param1);
                  for(; this.§#"§[_loc2_].lifeTime < 0; if(_loc3_ && this)
                  {
                     continue;
                  },this.§&!#§(_loc2_),§§goto(addr94))
                  {
                     if(_loc4_ || _loc2_)
                     {
                        continue;
                     }
                     §§goto(addr94);
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() - 1);
                  }
               }
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr56);
            }
         }
      }
      
      private function §&!#§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(!this.§%F§)
            {
               if(!_loc6_)
               {
                  §§goto(addr24);
               }
            }
            var _loc2_:int = 0;
            if(_loc7_)
            {
               if(Math.random() < 0.5)
               {
                  if(_loc7_ || _loc2_)
                  {
                     addr40:
                     _loc2_ = 1;
                  }
               }
               var _loc3_:§1D§ = this.§%F§.getFrame(_loc2_);
               §§push(100 + Math.random() * 100);
               if(_loc7_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:§7!&§ = null;
               if(!(_loc6_ && param1))
               {
                  if(param1 < this.§#"§.length)
                  {
                     addr73:
                     (_loc5_ = this.§#"§[param1]).§#F§(_loc4_);
                     if(!_loc6_)
                     {
                        _loc5_.§,3§(_loc3_.texture);
                        if(_loc7_ || _loc2_)
                        {
                           addr126:
                           §§push(_loc5_.image);
                           if(_loc7_ || _loc3_)
                           {
                              §§push(_loc3_.pivotX);
                              if(_loc7_ || param1)
                              {
                                 §§push(-§§pop());
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§push(this.§6-§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().width / 2);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc7_)
                                          {
                                             addr164:
                                             §§push(Math.random() * this.§6-§.width);
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                addr177:
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      addr197:
                                                      §§push(_loc5_.image);
                                                      §§push(-_loc3_.pivotY);
                                                      if(!_loc6_)
                                                      {
                                                         addr200:
                                                         §§push(this.§6-§.height / 2);
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc7_ || param1)
                                                            {
                                                               addr221:
                                                               §§push(§§pop() + Math.random() * this.§6-§.height);
                                                            }
                                                            §§pop().y = §§pop();
                                                         }
                                                      }
                                                      §§goto(addr221);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr200);
                                             }
                                          }
                                          §§goto(addr221);
                                       }
                                       §§goto(addr177);
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr164);
                              }
                           }
                           §§goto(addr197);
                        }
                     }
                     §§goto(addr197);
                  }
                  else
                  {
                     _loc5_ = new §7!&§(_loc3_.texture,_loc4_);
                     if(!_loc6_)
                     {
                        this.§#"§.push(_loc5_);
                        if(_loc7_)
                        {
                           this.§1-§.addChild(_loc5_.image);
                        }
                     }
                  }
                  §§goto(addr126);
               }
               §§goto(addr73);
            }
            §§goto(addr40);
         }
         addr24:
      }
      
      public function §,D§() : §1!,§
      {
         return this.§6-§;
      }
   }
}
