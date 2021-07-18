package §-!&§
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §#e§.§4^§;
   import §#e§.§@!+§;
   import §#e§.§`!9§;
   import §2G§.§+b§;
   import §8z§.Texture;
   import §9T§.§0!4§;
   import §9T§.§1r§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.filters.GlowFilter;
   
   public class §?k§
   {
      
      public static const §1J§:Number = 1000;
      
      public static const §[R§:Number = 500;
      
      private static var §-!P§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §1J§ = 1000;
            do
            {
               §[R§ = 500;
               do
               {
                  §-!P§ = null;
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
         }
      }
      
      private var §'!0§:§3!,§;
      
      public var §if §:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §;!=§:Number;
      
      public var §1!#§:Number;
      
      public var §=n§:int = -1;
      
      private var §"u§:String;
      
      private var §3!Q§:§4^§;
      
      private var §[s§:§4^§;
      
      private var §<!8§:§1!A§;
      
      private var §3!B§:Number = 0;
      
      private var §=h§:Number = 0;
      
      public var §8!H§:int = -1;
      
      private var §[$§:int = -1;
      
      private var §4!1§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §6,§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §1y§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §&!D§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §5!A§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §"Y§:String = "fly";
      
      public var §"m§:String = "fly_yell";
      
      public var §@O§:GlowFilter;
      
      private var §>!@§:Vector.<§0!4§>;
      
      private var §%h§:§4^§;
      
      private var §8A§:Sprite = null;
      
      private var §;§:§1r§;
      
      public function §?k§(param1:§3!,§, param2:Sprite, param3:§1r§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         loop0:
         while(true)
         {
            this.§;§ = param3;
            loop1:
            while(true)
            {
               this.§'!0§ = param1;
               loop2:
               do
               {
                  this.§"u§ = this.§'!0§.§4V§;
                  while(_loc4_)
                  {
                     this.§>!@§ = new Vector.<§0!4§>();
                     while(_loc4_ || param1)
                     {
                        continue loop0;
                        this.§8A§ = param2;
                        if(_loc4_ || this)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue loop1;
               }
               while(!_loc4_);
               
               return;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§0!4§ = null;
         if(!(_loc2_ && this))
         {
            this.§^B§();
            if(_loc3_)
            {
               if(this.§>!@§)
               {
                  addr54:
                  while(this.§>!@§.length > 0)
                  {
                     _loc1_ = this.§>!@§.pop();
                     if(!_loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(_loc3_ || _loc1_)
                  {
                     this.§>!@§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function §+,§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.mW = param3;
            while(true)
            {
               this.mH = param4;
               loop1:
               while(!_loc6_)
               {
                  while(true)
                  {
                     this.§=n§ = param1;
                     do
                     {
                        this.§1!#§ = param2;
                        do
                        {
                           this.§<<§();
                        }
                        while(!(_loc5_ || this));
                        
                     }
                     while(!(_loc5_ || param3));
                     
                     if(!(_loc6_ && param3))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr84);
      }
      
      public function §7G§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(param1)
         {
            this.§;!=§ = 1;
            return;
         }
         §§push(this);
         §§push(this.mW);
         if(_loc3_)
         {
            §§push(§§pop() / this.mH);
         }
         §§pop().§;!=§ = §§pop();
         if(this.§;!=§ < 1)
         {
            this.§;!=§ = 1 / this.§;!=§;
         }
         this.§;!=§ = Math.min(11,this.§;!=§);
      }
      
      public function §[!B§(param1:§@!+§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`!9§ = null;
         var _loc3_:Texture = null;
         if(!(_loc6_ && this))
         {
            §§push(this.§'!0§.isGround());
            if(_loc5_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     this.§%h§ = param1.getAnimation("SPARKLES");
                     while(_loc5_ || this)
                     {
                        if(!_loc6_)
                        {
                           loop2:
                           while(true)
                           {
                              this.§3!Q§ = param1.getAnimation(this.§"u§);
                              do
                              {
                                 this.§[s§ = this.§3!Q§;
                              }
                              while(_loc6_ && _loc3_);
                              
                              if(!(_loc5_ || this))
                              {
                                 break;
                              }
                              while(false)
                              {
                                 continue loop2;
                              }
                              var _loc4_:* = Number(1);
                              if(_loc5_ || param1)
                              {
                                 §§push(this.§[s§);
                                 if(_loc5_)
                                 {
                                    if(§§pop())
                                    {
                                       addr101:
                                       _loc2_ = this.§[s§.getFrame(0);
                                       addr99:
                                       if(_loc5_ || this)
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
                                          addr131:
                                          this.§<!8§ = new §1!A§(_loc3_);
                                          if(!_loc6_)
                                          {
                                             if(_loc2_)
                                             {
                                                addr304:
                                                §§push(this.§<!8§);
                                                while(true)
                                                {
                                                   §§push(_loc2_.pivotX);
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(-§§pop());
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop();
                                                         while(true)
                                                         {
                                                            §§push(this.§<!8§);
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(_loc2_.pivotY);
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§pop().y = -§§pop();
                                                               while(true)
                                                               {
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§<!8§);
                                                                     continue loop9;
                                                                     addr268:
                                                                     while(true)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§<!8§);
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr301);
                                       }
                                       §§goto(addr304);
                                    }
                                    else
                                    {
                                       _loc3_ = this.§;§.textureManager.§6K§();
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr101);
                              }
                              §§goto(addr99);
                           }
                           continue;
                        }
                     }
                  }
               }
               return false;
            }
         }
         §§goto(addr49);
      }
      
      public function §!!,§(param1:§+b§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§6H§);
         if(!_loc5_)
         {
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               §§push(§+b§.§%<§);
               if(_loc6_ || param1)
               {
                  §§push(_loc4_);
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc6_)
                        {
                           §§goto(addr115);
                        }
                        §§goto(addr130);
                     }
                     else
                     {
                        §§push(§+b§.§'J§);
                        if(_loc6_)
                        {
                           §§goto(addr128);
                        }
                     }
                     §§goto(addr133);
                  }
               }
               §§goto(addr128);
            }
            addr115:
            §§push(0);
            if(!(_loc6_ || this))
            {
               addr128:
               if(§§pop() === _loc4_)
               {
                  addr130:
                  §§push(1);
                  if(_loc6_)
                  {
                     addr133:
                  }
               }
               else
               {
                  §§push(2);
               }
            }
            §§goto(addr139);
         }
         addr139:
         switch(§§pop())
         {
            case 0:
               _loc2_ = param1.§'! §();
               _loc3_ = _loc2_[0];
               if(_loc6_ || _loc3_)
               {
                  §§push(this);
                  §§push(_loc3_.x);
                  if(_loc6_)
                  {
                     §§push(§§pop() / §1r§.§[M§);
                  }
                  §§pop().§3!B§ = §§pop();
                  if(_loc6_)
                  {
                     §§push(this);
                     §§push(_loc3_.y);
                     if(!_loc5_)
                     {
                        §§push(§§pop() / §1r§.§[M§);
                     }
                     §§pop().§=h§ = §§pop();
                     if(!_loc5_)
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
         this.§08§();
         addr142:
      }
      
      public function §%k§() : Array
      {
         return §'s§.§%k§(null,this.§'!0§.§4H§());
      }
      
      public function §7m§() : Array
      {
         return §'s§.§7m§(null,this.§'!0§.§4H§());
      }
      
      public function §3'§() : Array
      {
         return §'s§.§3'§(null);
      }
      
      public function §<<§() : void
      {
      }
      
      public function §%!0§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§8A§.scaleX = this.§8A§.scaleY = param1;
         }
      }
      
      public function §08§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`!9§ = null;
         §§push(this.§3!Q§);
         if(!_loc4_)
         {
            if(!§§pop())
            {
               return;
            }
            §§push(this.§1y§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  this.§4!1§ = 1;
               }
               else
               {
                  §§push(this.§'!0§);
                  if(_loc5_ || _loc2_)
                  {
                     §§push(§§pop().getSpecialAnimationProgress());
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           §§push(§§pop() >= §§pop());
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop());
                              loop1:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc5_ || _loc2_)
                                    {
                                       §§pop();
                                       if(!_loc4_)
                                       {
                                          §§push(this.§3!Q§);
                                          §§push(this.§6,§);
                                          if(!_loc4_)
                                          {
                                             §§push(§§pop().getSubAnimation(§§pop()));
                                             if(_loc5_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc5_)
                                                {
                                                   addr78:
                                                   if(!§§pop())
                                                   {
                                                      §§push(Boolean(this.mTryToSpecial));
                                                      break;
                                                   }
                                                   if(!_loc4_)
                                                   {
                                                      this.§[s§ = this.§3!Q§.getSubAnimation(this.§6,§);
                                                      if(_loc5_ || this)
                                                      {
                                                         loop2:
                                                         while(true)
                                                         {
                                                            this.§4!1§ = this.§[s§.getFrameCount() * this.§'!0§.getSpecialAnimationProgress();
                                                            if(!(_loc4_ && _loc2_))
                                                            {
                                                               §§push(this.§4!1§ == this.§[s§.getFrameCount() - 1);
                                                               §§push(this.§4!1§ == this.§[s§.getFrameCount() - 1);
                                                               if(_loc5_ || _loc1_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§pop();
                                                                     if(false)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr153:
                                                                     §§push(this.§'!0§.getSpecialAnimationTimeLeft());
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(100);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                        }
                                                                        else
                                                                        {
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              §§push(§§pop() > §§pop());
                                                                              addr453:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    §§pop();
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§3!Q§);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          §§push(this.§&!D§);
                                                                                          loop22:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().getSubAnimation(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                addr433:
                                                                                                loop24:
                                                                                                while(true)
                                                                                                {
                                                                                                   loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr385:
                                                                                                         §§push(this.mTryToBlink);
                                                                                                         if(_loc5_ || _loc2_)
                                                                                                         {
                                                                                                            addr395:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  if(_loc5_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        loop26:
                                                                                                                        while(!_loc4_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_ && _loc1_)
                                                                                                                                 {
                                                                                                                                    this.§[s§ = this.§3!Q§.getSubAnimation(this.§"m§);
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       this.mIsScreaming = true;
                                                                                                                                       this.mIsFlying = true;
                                                                                                                                       addr554:
                                                                                                                                       §§push(this.§[s§);
                                                                                                                                       if(_loc5_ || this)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             break loop0;
                                                                                                                                          }
                                                                                                                                          §§goto(addr699);
                                                                                                                                       }
                                                                                                                                       _loc1_ = §§pop().getFrame(this.§4!1§);
                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          §§push(this.§<!8§);
                                                                                                                                          loop35:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   do
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      §§push(Boolean(_loc1_));
                                                                                                                                                   }
                                                                                                                                                   while(!_loc5_);
                                                                                                                                                   
                                                                                                                                                   addr697:
                                                                                                                                                }
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(this.§<!8§);
                                                                                                                                                   loop36:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().texture = _loc1_.texture;
                                                                                                                                                      addr689:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§<!8§);
                                                                                                                                                         loop39:
                                                                                                                                                         while(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc1_.pivotX);
                                                                                                                                                            loop40:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(-§§pop());
                                                                                                                                                               loop41:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§3!B§);
                                                                                                                                                                  loop42:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     loop43:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        §§push(this.§<!8§);
                                                                                                                                                                        loop44:
                                                                                                                                                                        while(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(_loc1_.pivotY);
                                                                                                                                                                           if(!_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop40;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(_loc5_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop41;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(this.§=h§);
                                                                                                                                                                              if(!_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop42;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                           }
                                                                                                                                                                           loop45:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                              loop46:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr608:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§<!8§);
                                                                                                                                                                                    loop48:
                                                                                                                                                                                    while(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc1_.scale);
                                                                                                                                                                                       while(!(_loc4_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().scaleX = §§pop();
                                                                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§<!8§);
                                                                                                                                                                                             if(_loc5_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc1_.scale);
                                                                                                                                                                                                if(_loc5_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop46;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop43;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop44;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop45;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop39;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop36;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr697);
                                                                                                                                          }
                                                                                                                                          addr699:
                                                                                                                                          return;
                                                                                                                                       }
                                                                                                                                       §§goto(addr689);
                                                                                                                                       addr460:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr484:
                                                                                                                                 }
                                                                                                                                 §§push(this.§3!Q§);
                                                                                                                                 §§push(this.§5!A§);
                                                                                                                                 continue loop22;
                                                                                                                                 addr368:
                                                                                                                                 if(!(_loc5_ || _loc3_))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 this.§[s§ = this.§3!Q§.getSubAnimation(this.§5!A§);
                                                                                                                                 this.mIsBlinking = true;
                                                                                                                                 §§goto(addr554);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              loop30:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(this.mTryToFly);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                       loop31:
                                                                                                                                       for(; _loc5_ || _loc2_; while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          if(_loc4_ && this)
                                                                                                                                          {
                                                                                                                                             continue loop31;
                                                                                                                                          }
                                                                                                                                          if(_loc5_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr254);
                                                                                                                                          }
                                                                                                                                          §§goto(addr537);
                                                                                                                                       })
                                                                                                                                       {
                                                                                                                                          §§push(§§pop());
                                                                                                                                          if(!_loc5_)
                                                                                                                                          {
                                                                                                                                             continue loop26;
                                                                                                                                          }
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(_loc5_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc4_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            this.§[s§ = this.§3!Q§.getSubAnimation(this.§"Y§);
                                                                                                                                                            addr274:
                                                                                                                                                            if(_loc5_ || _loc1_)
                                                                                                                                                            {
                                                                                                                                                               addr210:
                                                                                                                                                               this.mIsFlying = true;
                                                                                                                                                               if(!_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop21;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr554);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr460);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         this.mIsScreaming = true;
                                                                                                                                                         addr442:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr554);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr274);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr196:
                                                                                                                                                   this.§[s§ = this.§3!Q§;
                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr210);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr254:
                                                                                                                                          }
                                                                                                                                          loop32:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc4_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(_loc5_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§3!Q§);
                                                                                                                                                      §§push(this.§"Y§);
                                                                                                                                                      if(!(_loc5_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue loop22;
                                                                                                                                                      }
                                                                                                                                                      if(_loc5_)
                                                                                                                                                      {
                                                                                                                                                         addr231:
                                                                                                                                                         §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                         if(!(_loc4_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            continue loop31;
                                                                                                                                                         }
                                                                                                                                                         addr345:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            addr347:
                                                                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc5_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  if(!_loc5_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr359:
                                                                                                                                                                  if(!(_loc4_ && _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop30;
                                                                                                                                                                  }
                                                                                                                                                                  addr509:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     if(_loc5_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§3!Q§);
                                                                                                                                                                        break loop21;
                                                                                                                                                                     }
                                                                                                                                                                     addr553:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§3!Q§);
                                                                                                                                                                        addr532:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§6,§);
                                                                                                                                                                           addr534:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr359);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                  addr536:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     break loop32;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr535:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               break loop31;
                                                                                                                                                               §§goto(addr347);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr231);
                                                                                                                                                         }
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr474);
                                                                                                                                                            §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr534);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr535);
                                                                                                                                                      addr316:
                                                                                                                                                   }
                                                                                                                                                   break loop2;
                                                                                                                                                }
                                                                                                                                                addr435:
                                                                                                                                                this.§[s§ = this.§3!Q§.getSubAnimation(this.§&!D§);
                                                                                                                                                §§goto(addr442);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr368);
                                                                                                                                             }
                                                                                                                                             §§goto(addr196);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                this.§[s§ = this.§3!Q§.getSubAnimation(this.§6,§);
                                                                                                                                                this.mIsSpecial = true;
                                                                                                                                                break;
                                                                                                                                                addr528:
                                                                                                                                             }
                                                                                                                                             addr518:
                                                                                                                                             §§push(this.mTryToScream);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                break loop25;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr554);
                                                                                                                                       }
                                                                                                                                       while(_loc5_ || this)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr484);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this.mTryToScream);
                                                                                                                                                while(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   continue loop20;
                                                                                                                                                   §§goto(addr385);
                                                                                                                                                }
                                                                                                                                                §§goto(addr518);
                                                                                                                                                addr448:
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr520:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§pop();
                                                                                                                                                break loop2;
                                                                                                                                             }
                                                                                                                                             addr522:
                                                                                                                                          }
                                                                                                                                          addr506:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                §§goto(addr509);
                                                                                                                                             }
                                                                                                                                             §§goto(addr482);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr287:
                                                                                                                                 }
                                                                                                                                 §§goto(addr368);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr554);
                                                                                                                        }
                                                                                                                        addr551:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr553);
                                                                                                                           }
                                                                                                                           §§goto(addr536);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr406:
                                                                                                                  }
                                                                                                                  break loop25;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            addr395:
                                                                                                         }
                                                                                                         §§goto(addr448);
                                                                                                      }
                                                                                                      §§goto(addr435);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr520);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr431:
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr471);
                                                                                       §§goto(addr455);
                                                                                    }
                                                                                    addr455:
                                                                                 }
                                                                                 §§goto(addr433);
                                                                              }
                                                                           }
                                                                           addr451:
                                                                        }
                                                                        §§goto(addr554);
                                                                     }
                                                                     §§goto(addr395);
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        var _loc2_:*;
                                                                        §§push((_loc2_ = this).§4!1§);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        var _loc3_:* = §§pop();
                                                                        if(_loc5_ || _loc3_)
                                                                        {
                                                                           _loc2_.§4!1§ = _loc3_;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr442);
                                                                     }
                                                                  }
                                                                  §§goto(addr554);
                                                               }
                                                               §§goto(addr453);
                                                            }
                                                            break;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.mTryToFly);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            while(true)
                                                            {
                                                               §§goto(addr506);
                                                            }
                                                            addr504:
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr522);
                                                   }
                                                   §§goto(addr554);
                                                }
                                                §§goto(addr406);
                                             }
                                             §§goto(addr239);
                                          }
                                          §§goto(addr431);
                                       }
                                       §§goto(addr528);
                                    }
                                    §§goto(addr504);
                                 }
                                 §§goto(addr78);
                              }
                              §§goto(addr551);
                              §§push(§§pop());
                           }
                           §§goto(addr287);
                        }
                        §§goto(addr451);
                     }
                     §§goto(addr395);
                  }
                  §§goto(addr153);
               }
               §§goto(addr554);
            }
            §§goto(addr554);
            §§push(this.§[s§);
         }
         §§goto(addr532);
      }
      
      public function §in§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§8A§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§8!H§);
            if(_loc2_)
            {
               if(§§pop() < 0)
               {
                  if(_loc2_ || this)
                  {
                     addr36:
                     this.§`t§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(_loc2_)
            {
               §§push(1);
               loop0:
               while(true)
               {
                  §§push(this.§'!0§.§8!2§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() / this.§'!0§.§53§);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() * this.§8!H§);
                  }
                  §§push(int(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc1_ = §§pop();
                     while(true)
                     {
                        §§push(_loc1_);
                        if(_loc2_ || this)
                        {
                           if(_loc2_)
                           {
                              if(§§pop() != this.§[$§)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(!(_loc2_ || this))
                                    {
                                       continue;
                                    }
                                    this.§[$§ = _loc1_;
                                 }
                                 do
                                 {
                                    this.§4!1§ = this.§[$§;
                                    do
                                    {
                                       this.§08§();
                                    }
                                    while(!_loc2_);
                                    
                                 }
                                 while(_loc3_);
                                 
                                 break;
                                 addr112:
                              }
                              break;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr112);
         }
         §§goto(addr36);
      }
      
      public function §`t§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(this.§3!Q§)
            {
               if(_loc2_ || _loc1_)
               {
                  this.§8!H§ = this.§3!Q§.getFrameCount();
               }
            }
         }
      }
      
      public function §0V§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§@O§ = new GlowFilter();
            while(true)
            {
               this.§@O§.blurX = param2;
               loop2:
               while(!(_loc4_ && param2))
               {
                  this.§@O§.color = param1;
                  if(!(_loc4_ && param3))
                  {
                     addr61:
                     if(!_loc5_)
                     {
                        while(true)
                        {
                           this.§@O§.blurY = param3;
                           continue loop2;
                           §§goto(addr61);
                        }
                        addr82:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §^B§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§@O§ = null;
         }
      }
      
      public function §4!@§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§'!0§.§8!D§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc4_)
               {
                  break;
               }
            }
            else
            {
               this.§&t§(_loc2_);
            }
            _loc2_++;
         }
      }
      
      public function §56§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = this.§>!@§.length - 1;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(§§pop() < 0)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        addr102:
                        while(true)
                        {
                           if(this.§>!@§[_loc2_].lifeTime < 0)
                           {
                              if(_loc3_ || this)
                              {
                                 this.§&t§(_loc2_);
                                 addr93:
                                 while(true)
                                 {
                                 }
                                 addr93:
                              }
                              §§goto(addr93);
                           }
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc4_)
                              {
                                 §§push(§§pop() - 1);
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr93);
                  }
                  continue;
               }
               this.§>!@§[_loc2_].updateLifeTime(param1);
               §§goto(addr102);
            }
            §§goto(addr59);
         }
      }
      
      private function §&t§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            if(!this.§%h§)
            {
               if(_loc7_)
               {
                  §§goto(addr24);
               }
            }
            var _loc2_:int = 0;
            if(!(_loc6_ && _loc3_))
            {
               if(Math.random() < 0.5)
               {
                  if(!_loc6_)
                  {
                     addr40:
                     _loc2_ = 1;
                  }
               }
               var _loc3_:§`!9§ = this.§%h§.getFrame(_loc2_);
               §§push(100 + Math.random() * 100);
               if(_loc7_ || param1)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:§0!4§ = null;
               if(_loc7_)
               {
                  if(param1 < this.§>!@§.length)
                  {
                     addr73:
                     (_loc5_ = this.§>!@§[param1]).§]!D§(_loc4_);
                     if(!_loc6_)
                     {
                        _loc5_.§6?§(_loc3_.texture);
                        if(_loc7_ || _loc3_)
                        {
                           addr131:
                           §§push(_loc5_.image);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(_loc3_.pivotX);
                              if(_loc7_ || _loc3_)
                              {
                                 §§push(-§§pop());
                                 if(_loc7_ || this)
                                 {
                                    §§push(this.§<!8§);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(§§pop().width / 2);
                                       if(_loc7_ || _loc3_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc6_ && this))
                                          {
                                             §§push(Math.random() * this.§<!8§.width);
                                             if(!_loc6_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(_loc7_ || param1)
                                                   {
                                                      addr207:
                                                      §§push(_loc5_.image);
                                                      §§push(-_loc3_.pivotY);
                                                      if(_loc7_ || this)
                                                      {
                                                         addr227:
                                                         §§push(this.§<!8§.height / 2);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            addr237:
                                                            §§push(§§pop() - §§pop());
                                                            if(!_loc6_)
                                                            {
                                                               addr247:
                                                               §§pop().y = §§pop() + Math.random() * this.§<!8§.height;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   return;
                                                }
                                                §§goto(addr247);
                                             }
                                             §§goto(addr237);
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr247);
                              }
                           }
                           §§goto(addr207);
                           addr95:
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr95);
                  }
                  else
                  {
                     _loc5_ = new §0!4§(_loc3_.texture,_loc4_);
                     if(_loc7_ || _loc3_)
                     {
                        this.§>!@§.push(_loc5_);
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr131);
                     }
                     this.§8A§.addChild(_loc5_.image);
                  }
                  §§goto(addr131);
               }
               §§goto(addr73);
            }
            §§goto(addr40);
         }
         addr24:
      }
      
      public function §[c§() : §1!A§
      {
         return this.§<!8§;
      }
   }
}
