package §9!9§
{
   import § in§.§[!U§;
   import §"!I§.§4Q§;
   import §"!I§.§^!2§;
   import §"^§.§+!'§;
   import §+"§.§#!=§;
   import §2Y§.§7!f§;
   import §2Y§.DisplayObject;
   import §2Y§.Sprite;
   import §53§.§7k§;
   import §9!4§.§95§;
   import §=!<§.§8!!§;
   import §=!<§.§>a§;
   import §=!<§.§`[§;
   import starling.events.Event;
   
   public class §;!R§
   {
       
      
      protected var §[R§:int;
      
      private var §=O§:int;
      
      protected var §use§:Number;
      
      private var §<-§:Boolean;
      
      protected var §;=§:Sprite;
      
      private var §&!C§:Array;
      
      private var §19§:Boolean = true;
      
      private var §;u§:§>a§;
      
      private var §]!b§:Sprite;
      
      private var §>4§:Sprite;
      
      public function §;!R§(param1:§#!=§, param2:Sprite, param3:§>a§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§8!!§ = null;
         if(_loc14_)
         {
            this.§&!C§ = [];
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§;u§ = param3;
                  while(true)
                  {
                     this.§;=§ = param2;
                     loop3:
                     while(true)
                     {
                        addr39:
                        while(true)
                        {
                           this.§use§ = param1.§4r§;
                           continue loop3;
                        }
                     }
                  }
                  if(_loc15_ && param1)
                  {
                     continue;
                  }
                  if(!_loc14_)
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     this.§<-§ = param1.§@v§;
                     if(!(_loc15_ && param3))
                     {
                        if(true)
                        {
                           break;
                        }
                        §§goto(addr39);
                     }
                     §§goto(addr44);
                  }
                  var _loc5_:* = Number(1);
                  if(_loc14_)
                  {
                     §§push(param1.get);
                     if(_loc14_ || param2)
                     {
                        if(§§pop() != 0)
                        {
                           if(_loc14_)
                           {
                              addr99:
                              §§push(param1.get);
                              if(_loc14_)
                              {
                                 addr103:
                                 §§push(Number(§§pop()));
                                 if(!(_loc15_ && param2))
                                 {
                                    _loc5_ = §§pop();
                                    addr112:
                                    §§push(Number(0));
                                 }
                              }
                              var _loc7_:* = §§pop();
                              var _loc8_:* = Number(0);
                              var _loc9_:* = Number(1);
                              var _loc10_:DisplayObject;
                              if(!(_loc10_ = §`[§.§&Y§(param1.mName,this.§;u§,param1.§[!+§)))
                              {
                                 if(!_loc15_)
                                 {
                                    §§push((_loc13_ = param3.§8t§(param1.mName)).pivotY);
                                    if(!_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc15_)
                                       {
                                          _loc7_ = §§pop();
                                          if(_loc14_ || param3)
                                          {
                                             if(!this.§<-§)
                                             {
                                                if(_loc14_)
                                                {
                                                   addr164:
                                                   _loc8_ = Number(_loc13_.pivotX);
                                                }
                                             }
                                          }
                                          _loc6_ = _loc13_.texture;
                                          if(!_loc15_)
                                          {
                                             §§push(this);
                                             §§push(_loc13_.width);
                                             if(!(_loc15_ && param1))
                                             {
                                                §§push(§§pop() * _loc5_);
                                                if(_loc14_)
                                                {
                                                   addr185:
                                                   §§push(§§pop() - 2);
                                                }
                                                §§pop().§[R§ = §§pop();
                                                if(!_loc15_)
                                                {
                                                   §§push(_loc13_.scale);
                                                   if(_loc14_ || param1)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc9_ = §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      addr250:
                                                      if(this.§[R§ <= 0)
                                                      {
                                                         if(!_loc15_)
                                                         {
                                                            §§goto(addr256);
                                                         }
                                                         loop27:
                                                         while(false)
                                                         {
                                                            loop28:
                                                            while(true)
                                                            {
                                                               if(param1.§@P§)
                                                               {
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(2);
                                                                     §§push(§^!2§.§@!@§);
                                                                     if(_loc14_ || this)
                                                                     {
                                                                        §§push(1.5);
                                                                        if(_loc14_)
                                                                        {
                                                                           addr314:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              §§push(this.§[R§ * param4);
                                                                           }
                                                                           §§pop().§=O§ = §§pop() + §§pop();
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              break loop27;
                                                                              addr323:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr330:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              continue loop28;
                                                                           }
                                                                        }
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                     §§goto(addr314);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  this.§=O§ = 1;
                                                                  if(!_loc15_)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                         }
                                                         var _loc11_:Sprite = new Sprite();
                                                         var _loc12_:int = 0;
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(_loc12_ >= this.§=O§)
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  _loc11_.flatten();
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(this.§;=§);
                                                                     loop22:
                                                                     while(true)
                                                                     {
                                                                        §§pop().addChild(_loc11_);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§]!b§);
                                                                           loop14:
                                                                           while(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§]!b§);
                                                                                 do
                                                                                 {
                                                                                    if(§§pop().numChildren > 0)
                                                                                    {
                                                                                       break loop7;
                                                                                    }
                                                                                    §§push(this.§]!b§);
                                                                                 }
                                                                                 while(!(_loc14_ || this));
                                                                                 
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 §§pop().dispose();
                                                                                 while(true)
                                                                                 {
                                                                                    break loop14;
                                                                                 }
                                                                              }
                                                                           }
                                                                           loop10:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§>4§);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§>4§);
                                                                                       addr623:
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop().numChildren <= 0)
                                                                                          {
                                                                                             §§push(this.§>4§);
                                                                                             if(_loc15_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§pop().dispose();
                                                                                             while(_loc14_)
                                                                                             {
                                                                                                continue loop11;
                                                                                             }
                                                                                             loop20:
                                                                                             while(!_loc15_)
                                                                                             {
                                                                                                if(_loc14_ || param1)
                                                                                                {
                                                                                                   if(_loc15_ && this)
                                                                                                   {
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§;=§);
                                                                                                      if(_loc14_ || param1)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§,§);
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            if(!(_loc15_ && param3))
                                                                                                            {
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                     addr591:
                                                                                                                  }
                                                                                                                  break loop7;
                                                                                                               }
                                                                                                               break loop10;
                                                                                                            }
                                                                                                            addr626:
                                                                                                            addr626:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§;=§);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr605);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc14_)
                                                                                                         {
                                                                                                            break loop12;
                                                                                                         }
                                                                                                         §§pop().addChildAt(this.§>4§,0);
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().addChild(this.§]!b§);
                                                                                                      break loop20;
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr671);
                                                                                                }
                                                                                             }
                                                                                             addr605:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr626);
                                                                                       }
                                                                                    }
                                                                                    addr621:
                                                                                 }
                                                                                 §§goto(addr561);
                                                                              }
                                                                              §§goto(addr623);
                                                                           }
                                                                           §§goto(addr666);
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr614);
                                                            }
                                                            else
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           _loc10_ = §`[§.§&Y§(param1.mName,this.§;u§,param1.§[!+§);
                                                                           addr381:
                                                                           §§push(_loc10_);
                                                                           §§push(_loc12_ - 1);
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§push(§§pop() * this.§[R§);
                                                                              if(!(_loc15_ && this))
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc14_ || param1)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc15_ && param3))
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr431:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc14_ || param3)
                                                                                          {
                                                                                             addr428:
                                                                                             §§push(param1.§=E§);
                                                                                          }
                                                                                          §§pop().x = §§pop() + §§pop();
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             §§push(_loc7_);
                                                                                             if(_loc14_ || param3)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc14_ || this)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(!(_loc15_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr530:
                                                                                                         §§push(§§pop() + param1.§+8§);
                                                                                                      }
                                                                                                      §§pop().y = §§pop();
                                                                                                      if(_loc14_)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         §§push(_loc5_);
                                                                                                         if(_loc14_ || param2)
                                                                                                         {
                                                                                                            §§push(§§pop() * _loc9_);
                                                                                                         }
                                                                                                         §§pop().scaleX = §§pop();
                                                                                                         if(!(_loc15_ && param2))
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            §§push(_loc5_);
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc9_);
                                                                                                            }
                                                                                                            §§pop().scaleY = §§pop();
                                                                                                            if(_loc14_ || param2)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(param1);
                                                                                                                  §§push(_loc12_ - 1);
                                                                                                                  if(_loc14_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * this.§[R§);
                                                                                                                  }
                                                                                                                  §§pop().§<2§(§§pop(),§§pop());
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     _loc11_.addChild(_loc10_);
                                                                                                                     if(!(_loc15_ && param3))
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        _loc10_ = null;
                                                                                                                        if(_loc14_ || param2)
                                                                                                                        {
                                                                                                                           _loc12_++;
                                                                                                                        }
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                     §§goto(addr626);
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr591);
                                                                                                            }
                                                                                                            §§goto(addr621);
                                                                                                         }
                                                                                                         §§goto(addr626);
                                                                                                      }
                                                                                                      §§goto(addr666);
                                                                                                   }
                                                                                                   §§goto(addr530);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr530);
                                                                                             addr435:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§goto(addr431);
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§goto(addr428);
                                                                                 }
                                                                                 §§goto(addr431);
                                                                              }
                                                                           }
                                                                           §§goto(addr431);
                                                                        }
                                                                        §§goto(addr435);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc10_ = new §7!f§(_loc6_,false,param1.§[!+§);
                                                                        §§goto(addr381);
                                                                     }
                                                                  }
                                                                  §§goto(addr691);
                                                               }
                                                               §§goto(addr381);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr688);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         this.§[R§ = Math.round(this.§[R§);
                                                      }
                                                      §§goto(addr330);
                                                      addr203:
                                                   }
                                                   §§goto(addr323);
                                                }
                                                addr256:
                                                throw new Error("Invalid texture for background layer: " + param1.mName);
                                             }
                                             §§goto(addr185);
                                          }
                                          §§goto(addr203);
                                       }
                                    }
                                    §§goto(addr164);
                                 }
                              }
                              else
                              {
                                 §§push(this);
                                 §§push(_loc10_.width);
                                 if(!_loc15_)
                                 {
                                    §§push(§§pop() * _loc5_);
                                    if(_loc14_)
                                    {
                                       §§push(§§pop() - 2);
                                    }
                                 }
                                 §§pop().§[R§ = §§pop();
                                 if(_loc14_ || this)
                                 {
                                    §§push(Number(_loc10_.§!!2§.bottom));
                                    if(!_loc15_)
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc14_ || param3)
                                       {
                                          §§push((_loc10_.§!!2§.left + _loc10_.§!!2§.right) / 2);
                                          if(!_loc15_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       §§goto(addr250);
                                    }
                                    _loc8_ = §§pop();
                                 }
                              }
                              §§goto(addr250);
                           }
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr99);
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get §,C§() : Boolean
      {
         return this.§<-§;
      }
      
      private function §<2§(param1:§#!=§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§4Q§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§&!C§)
         {
            §§push(Boolean(_loc4_ = §[!U§.§=#§(_loc3_.id,this.§;u§)));
            if(!(_loc9_ && param2))
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     addr59:
                     §§pop();
                     if(_loc10_ || this)
                     {
                        addr71:
                        if(_loc4_.§3!U§ > 0)
                        {
                           if(_loc10_ || this)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§=E§;
                              if(_loc10_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(_loc10_ || this)
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(!(_loc9_ && this))
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       loop21:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          addr301:
                                          addr303:
                                          while(_loc9_)
                                          {
                                             continue loop21;
                                          }
                                          _loc4_.start();
                                          loop2:
                                          while(true)
                                          {
                                             §+!'§.§9!;§.add(_loc4_);
                                             addr291:
                                             loop26:
                                             while(true)
                                             {
                                                this.§&!C§.push(_loc4_);
                                                loop3:
                                                for(; !_loc9_; while(!(_loc9_ && param2))
                                                {
                                                   §§goto(addr251);
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      if(!_loc3_.isBehindGraphic)
                                                      {
                                                         §§push(this.§]!b§);
                                                         loop4:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§]!b§ = new Sprite();
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§]!b§);
                                                                           if(_loc9_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().addChild(_loc4_);
                                                                           loop12:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc10_ || this))
                                                                              {
                                                                                 continue loop3;
                                                                              }
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    continue loop12;
                                                                                    addr119:
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!(_loc10_ || param2))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                                       {
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                continue loop0;
                                                                                             }
                                                                                             addr195:
                                                                                             if(!(_loc10_ || this))
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_++;
                                                                                                }
                                                                                                addr182:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§>4§ = new Sprite();
                                                                                                   continue loop3;
                                                                                                }
                                                                                                addr266:
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   if(_loc10_ || _loc3_)
                                                                                                   {
                                                                                                      if(!(_loc10_ || this))
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      _loc4_.dispose();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            while(false)
                                                                                                            {
                                                                                                               §§goto(addr182);
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                            addr180:
                                                                                                         }
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr258:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      addr258:
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr145:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                continue loop16;
                                                                                             }
                                                                                             continue loop6;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          _loc4_.§!T§(1 / 20);
                                                                                       }
                                                                                       §§goto(addr195);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop4;
                                                                        addr218:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr263:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§>4§);
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>4§);
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§pop().addChild(_loc4_);
                                                                                 §§goto(addr258);
                                                                              }
                                                                              continue;
                                                                              addr251:
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr266);
                                                                  }
                                                               }
                                                               addr239:
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                      }
                                                      §§goto(addr263);
                                                   }
                                                }
                                                §§goto(addr301);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr239);
                                 }
                                 §§goto(addr285);
                              }
                              §§goto(addr258);
                           }
                           §§goto(addr180);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc10_)
                           {
                              §§goto(addr145);
                           }
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr291);
                  }
               }
               §§goto(addr71);
            }
            §§goto(addr59);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7k§ = null;
         if(!(_loc4_ && this))
         {
            §§push(this.§;=§);
            if(_loc5_)
            {
               §§pop().§`!C§(0,-1,true);
               addr44:
               if(!_loc4_)
               {
                  §§push(this.§;=§);
               }
               for each(_loc1_ in this.§&!C§)
               {
                  if(_loc5_)
                  {
                     §+!'§.§9!;§.§8!8§(_loc1_);
                     if(!(_loc5_ || _loc1_))
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(!_loc4_)
               {
                  this.§&!C§ = [];
                  while(true)
                  {
                     this.§>4§ = null;
                     while(_loc5_)
                     {
                        this.§]!b§ = null;
                        if(!_loc4_)
                        {
                           return;
                           addr99:
                        }
                     }
                  }
               }
               §§goto(addr99);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§,§);
         }
         §§goto(addr44);
      }
      
      private function §,§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!L§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§use§);
         if(!(_loc4_ && param2))
         {
            §§push(§§pop() * param1);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§;=§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               addr90:
               while(true)
               {
                  §§push(-§§pop());
                  addr91:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      private function §'!L§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7k§ = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§19§);
            if(_loc5_ || this)
            {
               §§push(!§§pop());
               if(!(_loc4_ && _loc3_))
               {
                  if(!§§pop())
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§pop();
                        if(_loc5_ || this)
                        {
                           §§goto(addr75);
                        }
                        §§goto(addr78);
                     }
                  }
               }
            }
            addr75:
            §§goto(addr71);
         }
         addr71:
         if(!this.§;=§.stage)
         {
            if(!_loc4_)
            {
               addr78:
               return;
            }
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§&!C§)
         {
            if(_loc5_)
            {
               §+!'§.§9!;§.add(_loc1_);
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
            }
            _loc1_.visible = true;
         }
      }
      
      private function §`9§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§7k§ = null;
         for each(_loc1_ in this.§&!C§)
         {
            if(_loc4_ || _loc1_)
            {
               §+!'§.§9!;§.§8!8§(_loc1_);
               if(!_loc5_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §=[§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§19§; §§push(this.§19§),if(_loc2_ && this)
            {
               continue;
            },if(§§pop())
            {
               addr65:
               if(_loc2_)
               {
                  §§goto(addr91);
               }
               §§goto(addr67);
            },this.§`9§(),if(!(_loc2_ && _loc3_))
            {
               if(_loc2_ && _loc3_)
               {
                  §§goto(addr65);
               }
               addr20:
               return;
            },§§goto(addr69))
            {
               loop1:
               while(true)
               {
                  this.§19§ = param1;
                  addr91:
                  addr67:
                  addr69:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     continue loop1;
                  }
                  this.§'!L§();
                  if(_loc3_ || this)
                  {
                     §§goto(addr20);
                  }
                  break loop0;
               }
            }
         }
      }
      
      protected function §^!L§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§=O§ == 1);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(§§pop())
                  {
                     if(!_loc1_)
                     {
                        return;
                     }
                     if(_loc2_ || _loc1_)
                     {
                        addr125:
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§&!C§.length > 0);
                        if(_loc2_ || _loc1_)
                        {
                           continue loop0;
                        }
                        addr132:
                        while(true)
                        {
                           §§pop();
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     §§push(§95§.§02§);
                     if(!_loc1_)
                     {
                        §§push(this.§;=§.x - this.§[R§);
                        if(_loc2_ || this)
                        {
                           §§push(§§pop() * §95§.§3d§);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     if(§§pop() <= 0)
                     {
                        if(_loc1_)
                        {
                           break;
                        }
                        if(!_loc1_)
                        {
                           this.§7P§();
                           break;
                        }
                     }
                     else
                     {
                        this.§;=§.x -= this.§[R§;
                     }
                  }
                  return;
                  addr103:
               }
               §§goto(addr132);
            }
         }
         §§goto(addr125);
      }
      
      private function §7P§() : void
      {
      }
   }
}
