package §+!o§
{
   import §&"5§.§+2§;
   import §&"5§.§1!A§;
   import §&"5§.§6!L§;
   import §,a§.§^7§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§3x§;
   import §7R§.Texture;
   import §default§.§=!Z§;
   import §default§.Sprite;
   import flash.filters.GlowFilter;
   
   public class §<Y§
   {
      
      public static const §^!7§:Number = 1000;
      
      public static const §?!§:Number = 500;
      
      private static var §^!A§:Array = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §^!7§ = 1000;
         }
         while(true)
         {
            §?!§ = 500;
            while(_loc1_ || §<Y§)
            {
               §^!A§ = null;
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §1"0§:§]"5§;
      
      public var §,!I§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §0n§:Number;
      
      public var §;!`§:Number;
      
      public var §8!!§:int = -1;
      
      private var §?<§:String;
      
      private var §<!1§:§+2§;
      
      private var §!9§:§+2§;
      
      private var §2u§:§=!Z§;
      
      private var §4!B§:Number = 0;
      
      private var §2E§:Number = 0;
      
      public var §%!q§:int = -1;
      
      private var §]!<§:int = -1;
      
      private var §1!W§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §9"1§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §,!R§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §;3§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §?"<§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §%!+§:String = "fly";
      
      public var §7"1§:String = "fly_yell";
      
      public var §6Y§:GlowFilter;
      
      private var §]"#§:Vector.<§3x§>;
      
      private var §8%§:§+2§;
      
      private var §!&§:Sprite = null;
      
      private var §9q§:§!w§;
      
      public function §<Y§(param1:§]"5§, param2:Sprite, param3:§!w§)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§9q§ = param3;
               loop1:
               for(; _loc4_; if(_loc5_)
               {
                  continue;
               },§§goto(addr48))
               {
                  this.§1"0§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§?<§ = this.§1"0§.§!F§;
                     while(true)
                     {
                        this.§]"#§ = new Vector.<§3x§>();
                        loop4:
                        while(!(_loc5_ && param1))
                        {
                           while(true)
                           {
                              this.§!&§ = param2;
                              if(!(_loc5_ && param3))
                              {
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§3x§ = null;
         if(_loc2_)
         {
            this.§'0§();
            if(!(_loc3_ && _loc1_))
            {
               if(this.§]"#§)
               {
                  addr43:
                  while(this.§]"#§.length > 0)
                  {
                     _loc1_ = this.§]"#§.pop();
                     if(!(_loc3_ && this))
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(_loc2_)
                  {
                     this.§]"#§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function §#]§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.mW = param3;
         }
         do
         {
            this.mH = param4;
            do
            {
               this.§8!!§ = param1;
               do
               {
                  this.§;!`§ = param2;
                  do
                  {
                     this.§%!j§();
                  }
                  while(!(_loc5_ || param2));
                  
               }
               while(_loc6_ && param3);
               
            }
            while(_loc6_);
            
         }
         while(_loc6_ && param2);
         
      }
      
      public function §6!0§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
                  §§pop().§0n§ = §§pop();
                  while(_loc2_)
                  {
                     if(!_loc2_)
                     {
                        this.§0n§ = 1;
                     }
                     else
                     {
                        addr97:
                     }
                     if(this.§0n§ < 1)
                     {
                        while(_loc2_ || _loc3_)
                        {
                           this.§0n§ = 1 / this.§0n§;
                           while(true)
                           {
                           }
                        }
                        continue loop0;
                        addr53:
                     }
                     while(true)
                     {
                        this.§0n§ = Math.min(11,this.§0n§);
                        if(_loc3_)
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           break;
                        }
                        §§goto(addr53);
                     }
                     if(_loc2_)
                     {
                        return;
                     }
                  }
                  return;
               }
            }
            §§goto(addr97);
         }
         §§goto(addr66);
      }
      
      public function §!!?§(param1:§1!A§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§6!L§ = null;
         var _loc3_:Texture = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§1"0§.isGround());
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && param1))
                  {
                     §§goto(addr88);
                  }
                  else
                  {
                     addr89:
                     while(true)
                     {
                     }
                     addr89:
                  }
               }
               loop0:
               while(true)
               {
                  this.§8%§ = param1.§@7§("SPARKLES");
                  while(true)
                  {
                     while(true)
                     {
                        this.§<!1§ = param1.§@7§(this.§?<§);
                        do
                        {
                           this.§!9§ = this.§<!1§;
                        }
                        while(_loc5_ && _loc3_);
                        
                        if(_loc5_ && _loc2_)
                        {
                           break;
                        }
                        if(_loc5_ && _loc3_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue;
                        }
                        var _loc4_:* = Number(1);
                        if(_loc6_)
                        {
                           §§push(this.§!9§);
                           if(_loc6_ || param1)
                           {
                              if(§§pop())
                              {
                                 addr107:
                                 _loc2_ = this.§!9§.getFrame(0);
                                 addr105:
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(_loc2_.scale);
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 _loc3_ = _loc2_.texture;
                                 if(_loc6_ || _loc3_)
                                 {
                                    addr147:
                                    this.§2u§ = new §=!Z§(_loc3_);
                                    if(!_loc5_)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr333:
                                          this.§2u§.x = -this.§2u§.width / 2;
                                          addr334:
                                          addr327:
                                          addr331:
                                          addr332:
                                          addr329:
                                          if(_loc6_)
                                          {
                                             addr287:
                                             §§push(this.§2u§);
                                             if(!_loc5_)
                                             {
                                                §§push(this.§2u§);
                                                if(!(_loc5_ && param1))
                                                {
                                                   addr300:
                                                   §§push(-§§pop().height);
                                                   if(_loc6_ || _loc2_)
                                                   {
                                                      if(!(_loc5_ && _loc3_))
                                                      {
                                                         §§push(2);
                                                         if(_loc6_)
                                                         {
                                                            addr318:
                                                            §§push(§§pop() / §§pop());
                                                            if(!_loc5_)
                                                            {
                                                               §§pop().y = §§pop();
                                                               addr321:
                                                               §§push(this.§2u§);
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr266:
                                                                     §§push(_loc4_);
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc5_ && _loc2_))
                                                                        {
                                                                           §§pop().scaleX = §§pop();
                                                                           addr276:
                                                                           if(!(_loc5_ && _loc2_))
                                                                           {
                                                                              §§push(this.§2u§);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(!(_loc5_ && param1))
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(_loc6_ || this)
                                                                                    {
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§pop().scaleY = §§pop();
                                                                                          addr246:
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                if(!(_loc5_ && this))
                                                                                                {
                                                                                                   this.mW = this.§2u§.width / 2;
                                                                                                   this.mH = this.§2u§.height / 2;
                                                                                                   addr222:
                                                                                                   if(!(_loc5_ && _loc2_))
                                                                                                   {
                                                                                                      this.§!&§.addChild(this.§2u§);
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         if(!(_loc5_ && this))
                                                                                                         {
                                                                                                            if(_loc5_ && param1)
                                                                                                            {
                                                                                                               §§goto(addr246);
                                                                                                            }
                                                                                                            return true;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr222);
                                                                                                      addr213:
                                                                                                   }
                                                                                                   §§goto(addr321);
                                                                                                }
                                                                                                addr364:
                                                                                                this.§2u§.x = -_loc2_.pivotX;
                                                                                                addr363:
                                                                                             }
                                                                                             addr340:
                                                                                             §§push(this.§2u§);
                                                                                             §§push(_loc2_.pivotY);
                                                                                             if(_loc6_)
                                                                                             {
                                                                                                addr345:
                                                                                                §§pop().y = -§§pop();
                                                                                                §§goto(addr321);
                                                                                                addr346:
                                                                                             }
                                                                                             §§goto(addr363);
                                                                                          }
                                                                                          §§goto(addr276);
                                                                                       }
                                                                                       §§goto(addr300);
                                                                                    }
                                                                                    §§goto(addr266);
                                                                                 }
                                                                                 §§goto(addr287);
                                                                              }
                                                                              §§goto(addr321);
                                                                              addr283:
                                                                           }
                                                                           §§goto(addr334);
                                                                        }
                                                                        §§goto(addr345);
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  §§goto(addr340);
                                                               }
                                                               §§goto(addr327);
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         §§goto(addr332);
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                   §§goto(addr333);
                                                }
                                                §§goto(addr329);
                                             }
                                             §§goto(addr364);
                                          }
                                          §§goto(addr346);
                                       }
                                       §§goto(addr364);
                                    }
                                    §§goto(addr283);
                                 }
                                 §§goto(addr213);
                              }
                              else
                              {
                                 _loc3_ = this.§9q§.§7!J§.§4!A§();
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr105);
                     }
                  }
               }
            }
            addr88:
            return false;
         }
         §§goto(addr89);
      }
      
      public function §!!1§(param1:§^7§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§#z§);
         if(_loc5_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc6_ && _loc2_))
            {
               §§push(§^7§.§+!h§);
               if(_loc5_ || this)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(0);
                           if(_loc5_ || this)
                           {
                              addr153:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc2_ = param1.§#!g§();
                                    _loc3_ = _loc2_[0];
                                    if(!_loc6_)
                                    {
                                       §§push(this);
                                       §§push(_loc3_.x);
                                       if(_loc5_ || param1)
                                       {
                                          §§push(§§pop() / §!w§.§4!-§);
                                       }
                                       §§pop().§4!B§ = §§pop();
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(this);
                                          §§push(_loc3_.y);
                                          if(_loc5_)
                                          {
                                             §§push(§§pop() / §!w§.§4!-§);
                                          }
                                          §§pop().§2E§ = §§pop();
                                          if(_loc5_ || this)
                                          {
                                             addr82:
                                             break;
                                          }
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr82);
                                 case 1:
                              }
                              this.§>y§();
                              addr152:
                              addr156:
                              return;
                              addr152:
                           }
                        }
                        else
                        {
                           addr134:
                           §§push(1);
                           if(!_loc5_)
                           {
                           }
                        }
                        §§goto(addr152);
                     }
                     else
                     {
                        §§push(§^7§.§<!g§);
                        if(_loc5_)
                        {
                           addr133:
                           if(§§pop() === _loc4_)
                           {
                              §§goto(addr134);
                           }
                           else
                           {
                              §§goto(addr152);
                              §§push(2);
                           }
                           §§goto(addr152);
                        }
                     }
                     §§goto(addr152);
                  }
                  §§goto(addr133);
               }
               §§goto(addr152);
            }
            §§goto(addr134);
         }
         §§goto(addr153);
      }
      
      public function §+I§() : Array
      {
         return §"4§.§+I§(null,this.§1"0§.§@!i§());
      }
      
      public function §@!e§() : Array
      {
         return §"4§.§@!e§(null,this.§1"0§.§@!i§());
      }
      
      public function §8z§() : Array
      {
         return §"4§.§8z§(null);
      }
      
      public function §%!j§() : void
      {
      }
      
      public function setScale(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§!&§.scaleX = this.§!&§.scaleY = param1;
         }
      }
      
      public function §>y§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§6!L§ = null;
         if(_loc5_ || _loc3_)
         {
            §§push(this.§<!1§);
            if(!(_loc4_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc4_ && this))
                  {
                     return;
                  }
                  loop30:
                  while(true)
                  {
                     §§push(this.§<!1§);
                     addr599:
                     loop76:
                     while(true)
                     {
                        §§push(this.§;3§);
                        loop34:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              while(true)
                              {
                                 §§push(§§pop().getSubAnimation(§§pop()));
                                 loop32:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop33:
                                    while(true)
                                    {
                                       addr606:
                                       loop51:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             addr541:
                                             §§push(this.mTryToBlink);
                                             if(_loc5_ || _loc1_)
                                             {
                                                if(!(_loc4_ && _loc2_))
                                                {
                                                   addr558:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            §§push(§§pop() > §§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               §§push(§§pop());
                                                               loop54:
                                                               while(!(_loc4_ && this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop43:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop51;
                                                                           }
                                                                           if(_loc5_)
                                                                           {
                                                                              addr589:
                                                                              §§pop();
                                                                              while(true)
                                                                              {
                                                                                 addr467:
                                                                                 §§push(this.§<!1§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr471:
                                                                                    §§push(this.§?"<§);
                                                                                    if(_loc4_ && _loc1_)
                                                                                    {
                                                                                       continue loop34;
                                                                                    }
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr481:
                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          continue loop32;
                                                                                       }
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc5_ || _loc1_)
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             loop15:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc4_ && this))
                                                                                                {
                                                                                                   loop16:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr669:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  this.§!9§ = this.§<!1§.getSubAnimation(this.§7"1§);
                                                                                                                  addr679:
                                                                                                                  if(!(_loc4_ && this))
                                                                                                                  {
                                                                                                                     this.mIsScreaming = true;
                                                                                                                     this.mIsFlying = true;
                                                                                                                     addr760:
                                                                                                                     §§push(this.§!9§);
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr767:
                                                                                                                           _loc1_ = this.§!9§.getFrame(this.§1!W§);
                                                                                                                           if(!(_loc4_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(this.§2u§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          loop70:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(_loc1_));
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                loop56:
                                                                                                                                                while(§§pop())
                                                                                                                                                {
                                                                                                                                                   loop57:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§2u§);
                                                                                                                                                      loop58:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop().texture = _loc1_.texture;
                                                                                                                                                         loop59:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§2u§);
                                                                                                                                                            loop60:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc1_.pivotX);
                                                                                                                                                               loop61:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  loop62:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§4!B§);
                                                                                                                                                                     loop63:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        loop64:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           loop65:
                                                                                                                                                                           while(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§2u§);
                                                                                                                                                                              loop66:
                                                                                                                                                                              for(; _loc5_ || this; while(_loc5_ || _loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr839);
                                                                                                                                                                                 §§push(_loc1_.scale);
                                                                                                                                                                              })
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc1_.pivotY);
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop64;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§2E§);
                                                                                                                                                                                       if(_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop63;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    while(!(_loc4_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc5_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop70;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr827:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§2u§);
                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr811:
                                                                                                                                                                                          if(!(_loc5_ || _loc2_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc5_ || _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop57;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             break loop56;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr827);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop70;
                                                                                                                                                                                       while(!(_loc4_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop().scaleX = §§pop();
                                                                                                                                                                                          while(!(_loc4_ && _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§2u§);
                                                                                                                                                                                             if(_loc5_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop60;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop66;
                                                                                                                                                                                             §§pop().scaleY = §§pop();
                                                                                                                                                                                             if(!(_loc5_ || _loc1_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr811);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(_loc1_.scale);
                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                          if(_loc4_ && _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr803);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop62;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop61;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop58;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop59;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr940:
                                                                                                                                                return;
                                                                                                                                                addr913:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr938:
                                                                                                                                    }
                                                                                                                                    §§goto(addr913);
                                                                                                                                 }
                                                                                                                                 §§goto(addr938);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr894);
                                                                                                                        }
                                                                                                                        §§goto(addr940);
                                                                                                                     }
                                                                                                                     §§goto(addr767);
                                                                                                                     addr641:
                                                                                                                     addr646:
                                                                                                                     addr686:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr737:
                                                                                                                     this.§!9§ = this.§<!1§.getSubAnimation(this.§9"1§);
                                                                                                                     if(!(_loc4_ && _loc2_))
                                                                                                                     {
                                                                                                                        this.mIsSpecial = true;
                                                                                                                        addr727:
                                                                                                                        §§goto(addr760);
                                                                                                                        addr727:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr767);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop18:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.mTryToFly);
                                                                                                                     addr690:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > 0);
                                                                                                                        addr692:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              if(_loc5_)
                                                                                                                              {
                                                                                                                                 while(§§pop())
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop18;
                                                                                                                                       }
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr703:
                                                                                                                                          §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§<!1§);
                                                                                                                                             addr650:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§7"1§);
                                                                                                                                                addr652:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr703);
                                                                                                                                          }
                                                                                                                                          addr704:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr755:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                          }
                                                                                                                                          addr755:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop16;
                                                                                                                                 addr696:
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 addr757:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop();
                                                                                                                                          addr731:
                                                                                                                                          §§push(this.§<!1§);
                                                                                                                                          §§push(this.§9"1§);
                                                                                                                                          addr733:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                             addr734:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr758:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr736:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§goto(addr737);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§push(this.mTryToScream);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(0);
                                                                                                                                                addr711:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr710:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           loop29:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr713:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc4_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    §§goto(addr696);
                                                                                                                                 }
                                                                                                                                 §§goto(addr757);
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr722:
                                                                                                               }
                                                                                                               §§goto(addr737);
                                                                                                            }
                                                                                                            addr670:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.mTryToScream);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(0);
                                                                                                               addr623:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                  addr624:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(§§pop());
                                                                                                                        break loop54;
                                                                                                                     }
                                                                                                                     continue loop15;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr541);
                                                                                                            }
                                                                                                            addr622:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr758);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr734);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr733);
                                                                                 }
                                                                                 §§goto(addr650);
                                                                                 §§goto(addr589);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 loop2:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       continue loop43;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(_loc5_ || this)
                                                                                                {
                                                                                                   if(!(_loc4_ && _loc1_))
                                                                                                   {
                                                                                                      if(_loc5_ || _loc1_)
                                                                                                      {
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            this.§!9§ = this.§<!1§.getSubAnimation(this.§?"<§);
                                                                                                            addr529:
                                                                                                            if(!(_loc4_ && _loc2_))
                                                                                                            {
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  this.mIsBlinking = true;
                                                                                                                  if(_loc5_ || _loc2_)
                                                                                                                  {
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop30;
                                                                                                                     }
                                                                                                                     §§goto(addr590);
                                                                                                                  }
                                                                                                                  §§goto(addr767);
                                                                                                               }
                                                                                                               §§goto(addr670);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr607:
                                                                                                               this.§!9§ = this.§<!1§.getSubAnimation(this.§;3§);
                                                                                                               addr614:
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  this.mIsScreaming = true;
                                                                                                                  §§goto(addr760);
                                                                                                                  addr595:
                                                                                                                  addr616:
                                                                                                               }
                                                                                                               §§goto(addr760);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr704);
                                                                                                      }
                                                                                                      §§goto(addr679);
                                                                                                   }
                                                                                                   §§goto(addr614);
                                                                                                }
                                                                                                §§goto(addr529);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.mTryToFly);
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop5:
                                                                                                   while(_loc5_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(_loc4_ && _loc1_)
                                                                                                      {
                                                                                                         continue loop54;
                                                                                                      }
                                                                                                      if(_loc5_ || this)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop6:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc5_ || this))
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               if(_loc4_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop30;
                                                                                                               }
                                                                                                               §§pop();
                                                                                                               loop7:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§<!1§);
                                                                                                                  if(_loc4_ && this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     continue loop76;
                                                                                                                  }
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(this.§%!+§);
                                                                                                                     if(_loc5_ || this)
                                                                                                                     {
                                                                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc4_)
                                                                                                                           {
                                                                                                                              continue loop6;
                                                                                                                           }
                                                                                                                           if(_loc4_ && _loc2_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           if(_loc5_ || _loc1_)
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!_loc5_)
                                                                                                                                    {
                                                                                                                                       continue loop7;
                                                                                                                                    }
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          this.§!9§ = this.§<!1§.getSubAnimation(this.§%!+§);
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       §§goto(addr641);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr595);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    this.§!9§ = this.§<!1§;
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       if(_loc5_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   this.mIsFlying = true;
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         continue loop7;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr760);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   addr382:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr760);
                                                                                                                                          }
                                                                                                                                          addr280:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr646);
                                                                                                                                       }
                                                                                                                                       §§goto(addr760);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr767);
                                                                                                                              }
                                                                                                                              addr341:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr481);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr471);
                                                                                                                     }
                                                                                                                     §§goto(addr690);
                                                                                                                  }
                                                                                                                  §§goto(addr731);
                                                                                                               }
                                                                                                               §§goto(addr467);
                                                                                                            }
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         §§goto(addr341);
                                                                                                      }
                                                                                                      §§goto(addr698);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr692);
                                                                                          }
                                                                                          addr453:
                                                                                          §§goto(addr760);
                                                                                          addr497:
                                                                                          addr453:
                                                                                       }
                                                                                       §§goto(addr699);
                                                                                    }
                                                                                    §§goto(addr624);
                                                                                 }
                                                                                 §§goto(addr483);
                                                                              }
                                                                              addr590:
                                                                              addr490:
                                                                           }
                                                                           §§goto(addr736);
                                                                        }
                                                                        addr585:
                                                                     }
                                                                     §§goto(addr497);
                                                                  }
                                                               }
                                                               while(_loc5_ || _loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop30;
                                                                  }
                                                                  continue loop33;
                                                               }
                                                               §§goto(addr713);
                                                            }
                                                            §§goto(addr585);
                                                         }
                                                         §§goto(addr711);
                                                      }
                                                      §§goto(addr623);
                                                   }
                                                   addr558:
                                                }
                                                §§goto(addr710);
                                             }
                                             §§goto(addr622);
                                          }
                                          §§goto(addr607);
                                       }
                                    }
                                 }
                              }
                              addr603:
                           }
                           §§goto(addr652);
                        }
                     }
                  }
                  addr636:
               }
               else
               {
                  §§push(this.§,!R§);
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc4_ && this))
                        {
                           this.§1!W§ = 1;
                           if(!_loc4_)
                           {
                              §§goto(addr760);
                           }
                           else
                           {
                              §§goto(addr727);
                           }
                        }
                        else
                        {
                           §§goto(addr453);
                        }
                        §§goto(addr760);
                     }
                     else
                     {
                        §§push(this.§1"0§);
                        if(_loc5_)
                        {
                           §§push(§§pop().getSpecialAnimationProgress());
                           if(_loc5_)
                           {
                              §§push(0);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(§§pop() >= §§pop());
                                 if(!(_loc4_ && _loc1_))
                                 {
                                    §§push(§§pop());
                                    if(!_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             if(!_loc4_)
                                             {
                                                §§push(this.§<!1§);
                                                if(!(_loc4_ && _loc1_))
                                                {
                                                   §§push(this.§9"1§);
                                                   if(_loc5_)
                                                   {
                                                      §§push(§§pop().getSubAnimation(§§pop()));
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         if(_loc5_ || this)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr669);
                                                      }
                                                      §§goto(addr490);
                                                   }
                                                   §§goto(addr603);
                                                }
                                                §§goto(addr599);
                                             }
                                             break;
                                          }
                                          §§goto(addr722);
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc5_ || _loc2_)
                                          {
                                             this.§!9§ = this.§<!1§.getSubAnimation(this.§9"1§);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                while(true)
                                                {
                                                   this.§1!W§ = this.§!9§.getFrameCount() * this.§1"0§.getSpecialAnimationProgress();
                                                   if(_loc5_)
                                                   {
                                                      §§push(this.§1!W§ == this.§!9§.getFrameCount() - 1);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc4_ && _loc1_))
                                                               {
                                                                  §§pop();
                                                                  if(_loc5_)
                                                                  {
                                                                     if(false)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr204:
                                                                     §§push(this.§1"0§.getSpecialAnimationTimeLeft());
                                                                     if(!(_loc4_ && _loc2_))
                                                                     {
                                                                        §§push(100);
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           §§push(§§pop() > §§pop());
                                                                           if(_loc5_ || _loc2_)
                                                                           {
                                                                              addr228:
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc4_ && _loc2_))
                                                                                 {
                                                                                    var _loc2_:*;
                                                                                    §§push((_loc2_ = this).§1!W§);
                                                                                    if(_loc5_ || _loc2_)
                                                                                    {
                                                                                       §§push(§§pop() - 1);
                                                                                    }
                                                                                    var _loc3_:* = §§pop();
                                                                                    if(_loc5_ || _loc3_)
                                                                                    {
                                                                                       _loc2_.§1!W§ = _loc3_;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§goto(addr636);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr767);
                                                                              }
                                                                              §§goto(addr760);
                                                                           }
                                                                           §§goto(addr755);
                                                                        }
                                                                        §§goto(addr623);
                                                                     }
                                                                     §§goto(addr558);
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               §§goto(addr669);
                                                            }
                                                            §§goto(addr228);
                                                         }
                                                         §§goto(addr757);
                                                      }
                                                      §§goto(addr690);
                                                   }
                                                   §§goto(addr453);
                                                }
                                             }
                                             §§goto(addr686);
                                          }
                                          §§goto(addr737);
                                       }
                                       else
                                       {
                                          §§push(this.mTryToSpecial);
                                       }
                                       §§goto(addr755);
                                    }
                                    §§goto(addr584);
                                 }
                                 §§goto(addr606);
                              }
                              §§goto(addr623);
                           }
                           §§goto(addr558);
                        }
                        §§goto(addr204);
                     }
                  }
                  §§goto(addr228);
               }
               §§goto(addr760);
            }
            §§goto(addr599);
         }
         §§goto(addr616);
      }
      
      public function §76§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§!&§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§%!q§);
            if(_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_)
                  {
                     addr32:
                     this.§%U§();
                  }
               }
               §§push(0);
            }
            var _loc1_:* = §§pop();
            if(!_loc2_)
            {
               §§push(1);
               while(true)
               {
                  §§push(this.§1"0§.§@!P§);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() / this.§1"0§.§'">§);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop() * this.§%!q§);
                  }
                  §§push(int(§§pop()));
                  while(true)
                  {
                     _loc1_ = §§pop();
                     §§goto(addr122);
                  }
               }
            }
            addr122:
            while(true)
            {
               §§push(_loc1_);
               if(!(_loc2_ && this))
               {
                  if(!_loc2_)
                  {
                     if(§§pop() == this.§]!<§)
                     {
                        break;
                     }
                     do
                     {
                        this.§]!<§ = _loc1_;
                        do
                        {
                           this.§1!W§ = this.§]!<§;
                           do
                           {
                              this.§>y§();
                           }
                           while(_loc2_);
                           
                        }
                        while(!_loc3_);
                        
                     }
                     while(!_loc3_);
                     
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               continue loop1;
            }
            return;
         }
         §§goto(addr32);
      }
      
      public function §%U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§<!1§)
            {
               if(_loc1_ || this)
               {
                  addr48:
                  this.§%!q§ = this.§<!1§.getFrameCount();
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      public function §^`§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            this.§6Y§ = new GlowFilter();
            while(true)
            {
               this.§6Y§.blurX = param2;
               while(!(_loc5_ && param3))
               {
                  this.§6Y§.blurY = param3;
                  loop2:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§6Y§.color = param1;
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §'0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6Y§ = null;
         }
      }
      
      public function §!!7§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = Math.min(8,Math.max(this.§1"0§.§0&§(false),1));
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= _loc1_)
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
               this.§%V§(_loc2_);
            }
            _loc2_++;
         }
      }
      
      public function §?!0§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = int(this.§]"#§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_ || this)
                  {
                     if(_loc4_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        this.§%V§(_loc2_);
                        addr74:
                        addr93:
                        while(true)
                        {
                           addr52:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!_loc3_)
                              {
                                 addr57:
                                 §§push(§§pop() - 1);
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 addr57:
                              }
                              §§goto(addr57);
                           }
                        }
                        addr93:
                        while(true)
                        {
                           if(this.§]"#§[_loc2_].lifeTime < 0)
                           {
                              continue loop1;
                           }
                           §§goto(addr52);
                        }
                     }
                  }
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           break;
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr74);
                  }
                  continue;
               }
               this.§]"#§[_loc2_].updateLifeTime(param1);
               §§goto(addr93);
            }
            §§goto(addr57);
         }
      }
      
      private function §%V§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            if(!this.§8%§)
            {
               if(_loc7_ || this)
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:int = 0;
            if(!_loc6_)
            {
               if(Math.random() < 0.5)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     addr45:
                     _loc2_ = 1;
                  }
               }
               var _loc3_:§6!L§ = this.§8%§.getFrame(_loc2_);
               §§push(100 + Math.random() * 100);
               if(!(_loc6_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:§3x§ = null;
               if(_loc7_ || this)
               {
                  if(param1 < this.§]"#§.length)
                  {
                     addr83:
                     (_loc5_ = this.§]"#§[param1]).§ O§(_loc4_);
                     if(_loc7_ || param1)
                     {
                        _loc5_.§7!X§(_loc3_.texture);
                        if(!(_loc6_ && _loc3_))
                        {
                           addr141:
                           §§push(_loc5_.image);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(_loc3_.pivotX);
                              if(!_loc6_)
                              {
                                 §§push(-§§pop());
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§push(this.§2u§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop().width / 2);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(_loc7_ || this)
                                          {
                                             addr179:
                                             §§push(Math.random() * this.§2u§.width);
                                             if(!_loc6_)
                                             {
                                                addr187:
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_ || _loc2_)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      addr202:
                                                      §§push(_loc5_.image);
                                                      §§push(-_loc3_.pivotY);
                                                      if(_loc7_ || param1)
                                                      {
                                                         addr212:
                                                         §§push(this.§2u§.height / 2);
                                                         if(_loc7_)
                                                         {
                                                            addr242:
                                                            addr217:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               addr235:
                                                               §§push(Math.random() * this.§2u§.height);
                                                            }
                                                            §§pop().y = §§pop();
                                                            §§goto(addr243);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                   }
                                                   addr243:
                                                   return;
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr187);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr179);
                              }
                           }
                           §§goto(addr202);
                           addr110:
                        }
                        §§goto(addr242);
                     }
                     §§goto(addr110);
                  }
                  else
                  {
                     _loc5_ = new §3x§(_loc3_.texture,_loc4_);
                     if(!_loc6_)
                     {
                        this.§]"#§.push(_loc5_);
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr141);
                     }
                     this.§!&§.addChild(_loc5_.image);
                  }
                  §§goto(addr141);
               }
               §§goto(addr83);
            }
            §§goto(addr45);
         }
         addr29:
      }
      
      public function §'!x§() : §=!Z§
      {
         return this.§2u§;
      }
   }
}
