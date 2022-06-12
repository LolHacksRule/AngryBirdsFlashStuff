package §`!W§
{
   import §'6§.§"]§;
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §3"7§.ParticleManager;
   import §6!D§.§0Y§;
   import §6!D§.§3!K§;
   import §6!D§.§9R§;
   import §9"!§.§7!k§;
   import §9"!§.§9"3§;
   import §<!E§.ParticleDesignerPS;
   import §<u§.§%"8§;
   import §[!"§.§&0§;
   import starling.events.Event;
   
   public class §<W§
   {
       
      
      protected var §2b§:int;
      
      private var §-!T§:int;
      
      protected var §0e§:Number;
      
      private var §7+§:Boolean;
      
      protected var §3^§:Sprite;
      
      private var § e§:Array;
      
      private var §=!-§:Boolean = true;
      
      private var § !@§:§0Y§;
      
      private var §5!9§:Sprite;
      
      private var §'U§:Sprite;
      
      public function §<W§(param1:§%"8§, param2:Sprite, param3:§0Y§, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§3!K§ = null;
         if(_loc15_ || param3)
         {
            this.§ e§ = [];
            while(true)
            {
               super();
               addr70:
               while(_loc15_)
               {
               }
            }
         }
         while(true)
         {
            this.§ !@§ = param3;
            loop3:
            while(true)
            {
               this.§3^§ = param2;
               while(true)
               {
                  while(true)
                  {
                     this.§0e§ = param1.§ 1§;
                     do
                     {
                        this.§7+§ = param1.§""D§;
                     }
                     while(!_loc15_);
                     
                     if(!(_loc15_ || param1))
                     {
                        break;
                     }
                     if(_loc14_)
                     {
                        continue loop3;
                     }
                     if(_loc15_)
                     {
                        if(false)
                        {
                           continue;
                        }
                        var _loc5_:* = Number(1);
                        if(!(_loc14_ && param3))
                        {
                           §§push(param1.§[!q§);
                           if(_loc15_)
                           {
                              if(§§pop() != 0)
                              {
                                 if(!(_loc14_ && param3))
                                 {
                                    §§push(param1.§[!q§);
                                    if(!_loc14_)
                                    {
                                       addr104:
                                       §§push(Number(§§pop()));
                                       if(!(_loc14_ && this))
                                       {
                                          addr112:
                                          _loc5_ = §§pop();
                                          §§push(Number(0));
                                       }
                                       var _loc7_:* = §§pop();
                                       var _loc8_:* = Number(0);
                                       var _loc9_:* = Number(1);
                                       var _loc10_:DisplayObject;
                                       if(!(_loc10_ = §9R§.§ C§(param1.mName,this.§ !@§,param1.§5!1§)))
                                       {
                                          if(_loc15_)
                                          {
                                             §§push((_loc13_ = param3.§>s§(param1.mName)).pivotY);
                                             if(_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc14_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      if(!this.§7+§)
                                                      {
                                                         if(_loc15_)
                                                         {
                                                            addr160:
                                                            _loc8_ = Number(_loc13_.pivotX);
                                                            addr157:
                                                         }
                                                      }
                                                      _loc6_ = _loc13_.texture;
                                                      if(!_loc14_)
                                                      {
                                                         §§push(this);
                                                         §§push(_loc13_.width);
                                                         if(_loc15_)
                                                         {
                                                            §§push(§§pop() * _loc5_);
                                                            if(_loc15_ || this)
                                                            {
                                                               §§push(§§pop() - 2);
                                                            }
                                                         }
                                                         §§pop().§2b§ = §§pop();
                                                         if(_loc15_)
                                                         {
                                                            §§push(_loc13_.scale);
                                                            if(!_loc14_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            _loc9_ = §§pop();
                                                            if(!(_loc14_ && param2))
                                                            {
                                                               addr256:
                                                               if(this.§2b§ <= 0)
                                                               {
                                                                  if(_loc15_)
                                                                  {
                                                                     §§goto(addr262);
                                                                  }
                                                                  addr292:
                                                                  if(false)
                                                                  {
                                                                     addr294:
                                                                     if(param1.§`!+§)
                                                                     {
                                                                        addr298:
                                                                        §§push(this);
                                                                        §§push(2);
                                                                        §§push(§9"3§.§=k§);
                                                                        if(_loc15_ || param2)
                                                                        {
                                                                           §§push(1.5);
                                                                           if(!(_loc14_ && param3))
                                                                           {
                                                                              addr325:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc15_)
                                                                              {
                                                                                 §§push(this.§2b§ * param4);
                                                                              }
                                                                              §§pop().§-!T§ = §§pop() + §§pop();
                                                                              addr327:
                                                                              if(!_loc15_)
                                                                              {
                                                                                 addr346:
                                                                                 §§goto(addr294);
                                                                              }
                                                                              addr347:
                                                                              var _loc11_:Sprite = new Sprite();
                                                                              var _loc12_:int = 0;
                                                                              addr547:
                                                                              if(_loc12_ < this.§-!T§)
                                                                              {
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!(_loc14_ && this))
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc15_ || param3)
                                                                                          {
                                                                                             _loc10_ = §9R§.§ C§(param1.mName,this.§ !@§,param1.§5!1§);
                                                                                             addr392:
                                                                                             §§push(_loc10_);
                                                                                             §§push(_loc12_ - 1);
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(§§pop() * this.§2b§);
                                                                                                if(!(_loc14_ && param3))
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(_loc15_ || param2)
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(!(_loc14_ && param3))
                                                                                                         {
                                                                                                            addr437:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc15_ || param3)
                                                                                                            {
                                                                                                               addr434:
                                                                                                               §§push(param1.§?!R§);
                                                                                                            }
                                                                                                            §§pop().x = §§pop() + §§pop();
                                                                                                            if(_loc15_)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               §§push(_loc7_);
                                                                                                               if(_loc15_ || param3)
                                                                                                               {
                                                                                                                  §§push(-§§pop());
                                                                                                                  if(_loc15_ || param1)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!(_loc14_ && this))
                                                                                                                     {
                                                                                                                        addr534:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc15_)
                                                                                                                        {
                                                                                                                           §§push(param1.§8!`§);
                                                                                                                        }
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        §§push(_loc10_);
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!(_loc14_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc9_);
                                                                                                                        }
                                                                                                                        §§pop().scaleX = §§pop();
                                                                                                                        §§push(_loc10_);
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc9_);
                                                                                                                        }
                                                                                                                        §§pop().scaleY = §§pop();
                                                                                                                        addr484:
                                                                                                                        addr535:
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              addr457:
                                                                                                                              §§push(this);
                                                                                                                              §§push(param1);
                                                                                                                              §§push(_loc12_ - 1);
                                                                                                                              if(_loc15_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * this.§2b§);
                                                                                                                              }
                                                                                                                              §§pop().§`!e§(§§pop(),§§pop());
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 _loc11_.addChild(_loc10_);
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc14_ && param2))
                                                                                                                                    {
                                                                                                                                       addr455:
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr457);
                                                                                                                                       }
                                                                                                                                       _loc10_ = null;
                                                                                                                                       if(!(_loc14_ && param1))
                                                                                                                                       {
                                                                                                                                          _loc12_++;
                                                                                                                                       }
                                                                                                                                       §§goto(addr547);
                                                                                                                                    }
                                                                                                                                    §§goto(addr484);
                                                                                                                                 }
                                                                                                                                 addr642:
                                                                                                                                 §§push(this.§3^§);
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    if(_loc15_ || param3)
                                                                                                                                    {
                                                                                                                                       §§pop().addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                                                                                                                       if(!_loc14_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc14_ && param3))
                                                                                                                                          {
                                                                                                                                             if(!(_loc15_ || this))
                                                                                                                                             {
                                                                                                                                                addr616:
                                                                                                                                                addr656:
                                                                                                                                                if(this.§'U§)
                                                                                                                                                {
                                                                                                                                                   if(_loc15_)
                                                                                                                                                   {
                                                                                                                                                      addr624:
                                                                                                                                                      if(this.§'U§.numChildren > 0)
                                                                                                                                                      {
                                                                                                                                                         addr627:
                                                                                                                                                         addr629:
                                                                                                                                                         §§push(this.§3^§);
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().addChildAt(this.§'U§,0);
                                                                                                                                                            addr635:
                                                                                                                                                            if(_loc15_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr642);
                                                                                                                                                            }
                                                                                                                                                            §§push(this.§5!9§);
                                                                                                                                                            if(!(_loc14_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     addr682:
                                                                                                                                                                     if(this.§5!9§.numChildren > 0)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc14_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr694:
                                                                                                                                                                           this.§3^§.addChild(this.§5!9§);
                                                                                                                                                                           addr697:
                                                                                                                                                                           §§goto(addr616);
                                                                                                                                                                           addr697:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr697);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(this.§5!9§);
                                                                                                                                                                     if(_loc15_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().dispose();
                                                                                                                                                                        §§goto(addr656);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr682);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr697);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr616);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr682);
                                                                                                                                                            addr702:
                                                                                                                                                         }
                                                                                                                                                         §§pop().addChild(_loc11_);
                                                                                                                                                         §§goto(addr702);
                                                                                                                                                      }
                                                                                                                                                      §§push(this.§'U§);
                                                                                                                                                      if(!(_loc14_ && param3))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().dispose();
                                                                                                                                                            addr611:
                                                                                                                                                            if(!_loc14_)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc14_)
                                                                                                                                                               {
                                                                                                                                                                  addr615:
                                                                                                                                                                  §§goto(addr642);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr697);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr635);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr616);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr624);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr635);
                                                                                                                                                }
                                                                                                                                                §§goto(addr642);
                                                                                                                                             }
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                          §§goto(addr627);
                                                                                                                                       }
                                                                                                                                       §§goto(addr611);
                                                                                                                                    }
                                                                                                                                    §§goto(addr694);
                                                                                                                                 }
                                                                                                                                 §§goto(addr629);
                                                                                                                              }
                                                                                                                              §§goto(addr616);
                                                                                                                           }
                                                                                                                           §§goto(addr535);
                                                                                                                        }
                                                                                                                        addr502:
                                                                                                                        §§goto(addr502);
                                                                                                                     }
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr534);
                                                                                                            }
                                                                                                            §§goto(addr455);
                                                                                                         }
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§goto(addr437);
                                                                                                   }
                                                                                                   §§goto(addr434);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr437);
                                                                                          }
                                                                                          §§goto(addr615);
                                                                                       }
                                                                                       _loc10_ = new §0!N§(_loc6_,false,param1.§5!1§);
                                                                                       §§goto(addr392);
                                                                                    }
                                                                                    §§goto(addr534);
                                                                                 }
                                                                                 §§goto(addr392);
                                                                              }
                                                                              if(_loc15_)
                                                                              {
                                                                                 _loc11_.flatten();
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    §§goto(addr627);
                                                                                    §§push(this.§3^§);
                                                                                 }
                                                                                 §§goto(addr627);
                                                                              }
                                                                              §§goto(addr642);
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§goto(addr325);
                                                                     }
                                                                     this.§-!T§ = 1;
                                                                     if(_loc15_ || param1)
                                                                     {
                                                                        if(!(_loc14_ && param2))
                                                                        {
                                                                           §§goto(addr292);
                                                                        }
                                                                        §§goto(addr298);
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  §§goto(addr347);
                                                               }
                                                               else
                                                               {
                                                                  this.§2b§ = Math.round(this.§2b§);
                                                                  addr330:
                                                               }
                                                               §§goto(addr346);
                                                            }
                                                            addr262:
                                                            throw new Error("Invalid texture for background layer: " + param1.mName);
                                                         }
                                                         §§goto(addr330);
                                                      }
                                                      §§goto(addr292);
                                                   }
                                                   §§goto(addr157);
                                                }
                                             }
                                             §§goto(addr160);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this);
                                          §§push(_loc10_.width);
                                          if(!_loc14_)
                                          {
                                             §§push(§§pop() * _loc5_);
                                             if(!(_loc14_ && param2))
                                             {
                                                §§push(§§pop() - 2);
                                             }
                                          }
                                          §§pop().§2b§ = §§pop();
                                          if(_loc15_ || this)
                                          {
                                             §§push(Number(_loc10_.§3",§.bottom));
                                             if(!(_loc14_ && param1))
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc14_)
                                                {
                                                   §§push((_loc10_.§3",§.left + _loc10_.§3",§.right) / 2);
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr256);
                                             }
                                             _loc8_ = §§pop();
                                          }
                                       }
                                       §§goto(addr256);
                                    }
                                 }
                              }
                              §§goto(addr112);
                           }
                           §§goto(addr104);
                        }
                        §§goto(addr112);
                     }
                     else
                     {
                        §§goto(addr70);
                     }
                  }
               }
            }
         }
      }
      
      public function get §]p§() : Boolean
      {
         return this.§7+§;
      }
      
      private function §`!e§(param1:§%"8§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§7!k§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§ e§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§=D§(_loc3_.id,this.§ !@§)));
            if(_loc10_ || _loc3_)
            {
               if(§§pop())
               {
                  if(_loc10_ || this)
                  {
                     §§pop();
                     if(!(_loc9_ && this))
                     {
                        addr76:
                        if(_loc4_.§&!&§ > 0)
                        {
                           if(!_loc9_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§?!R§;
                              if(_loc10_)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(_loc10_)
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(!_loc9_)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          loop2:
                                          while(!_loc9_)
                                          {
                                             _loc4_.start();
                                             while(true)
                                             {
                                                §"]§.§^!v§.add(_loc4_);
                                                loop4:
                                                while(!_loc9_)
                                                {
                                                   this.§ e§.push(_loc4_);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!_loc3_.isBehindGraphic)
                                                      {
                                                         §§push(this.§5!9§);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     this.§5!9§ = new Sprite();
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        addr196:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§5!9§);
                                                                           if(!_loc10_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().addChild(_loc4_);
                                                                           loop19:
                                                                           while(true)
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    loop14:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       loop15:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          loop16:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_ && param1)
                                                                                             {
                                                                                                while(_loc10_)
                                                                                                {
                                                                                                   this.§'U§ = new Sprite();
                                                                                                   break loop16;
                                                                                                }
                                                                                                continue loop4;
                                                                                                addr241:
                                                                                             }
                                                                                             loop17:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   continue loop15;
                                                                                                }
                                                                                                if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  break loop14;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            continue loop8;
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                      addr182:
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue loop16;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_++;
                                                                                                      }
                                                                                                      addr157:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_ || param1)
                                                                                                         {
                                                                                                            _loc4_.dispose();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break loop14;
                                                                                                               }
                                                                                                               §§goto(addr157);
                                                                                                            }
                                                                                                            addr155:
                                                                                                         }
                                                                                                      }
                                                                                                      addr146:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ && this)
                                                                                                      {
                                                                                                         break loop17;
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   addr159:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc4_.§8D§(1 / 20);
                                                                                                }
                                                                                                §§goto(addr182);
                                                                                                addr173:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop14;
                                                                                                §§goto(addr159);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 addr226:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§'U§);
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§pop().addChild(_loc4_);
                                                                                    §§goto(addr233);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§'U§);
                                                                     }
                                                                     addr238:
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr241);
                                                                     }
                                                                     §§goto(addr226);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr196);
                                                         }
                                                      }
                                                      §§goto(addr238);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr288:
                                       addr108:
                                    }
                                    §§goto(addr207);
                                 }
                              }
                              §§goto(addr288);
                           }
                           §§goto(addr263);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!_loc9_)
                           {
                              §§goto(addr146);
                           }
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr108);
                  }
               }
            }
            §§goto(addr76);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc5_)
         {
            §§push(this.§3^§);
            if(!_loc4_)
            {
               §§pop().§8!,§(0,-1,true);
               if(!_loc4_)
               {
                  addr34:
                  this.§3^§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               }
               var _loc3_:* = this.§ e§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_)
                  {
                     §"]§.§^!v§.§<"<§(_loc1_);
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(!_loc4_)
               {
                  this.§ e§ = [];
                  while(true)
                  {
                     this.§'U§ = null;
                     §§goto(addr121);
                  }
               }
               addr121:
               while(true)
               {
                  this.§5!9§ = null;
                  if(!(_loc4_ && _loc3_))
                  {
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
               }
               return;
            }
         }
         §§goto(addr34);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§+",§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§0e§);
         if(!(_loc5_ && _loc3_))
         {
            §§push(§§pop() * param1);
            if(_loc4_ || this)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param2))
            {
               §§push(this.§3^§);
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  addr109:
                  while(true)
                  {
                     §§push(-§§pop());
                     addr110:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr105);
         }
         §§goto(addr34);
      }
      
      private function §+",§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc5_)
         {
            §§push(this.§=!-§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc5_ && this))
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(_loc4_ || _loc3_)
                        {
                           addr59:
                           if(!this.§3^§.stage)
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr62);
                              }
                           }
                        }
                        var _loc3_:* = this.§ e§;
                        for each(_loc1_ in _loc3_)
                        {
                           if(_loc4_ || _loc1_)
                           {
                              §"]§.§^!v§.add(_loc1_);
                              if(!(_loc5_ && _loc3_))
                              {
                                 _loc1_.visible = true;
                              }
                           }
                        }
                        return;
                     }
                  }
               }
            }
            §§goto(addr59);
         }
         addr62:
      }
      
      private function §`S§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         var _loc3_:* = this.§ e§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc3_))
            {
               §"]§.§^!v§.§<"<§(_loc1_);
               if(_loc5_ && this)
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §'h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§=!-§; while(true)
            {
               §§push(this.§=!-§);
               if(!(_loc3_ && this))
               {
                  if(!§§pop())
                  {
                     this.§`S§();
                     if(!_loc3_)
                     {
                        if(!(_loc2_ || _loc3_))
                        {
                           break;
                        }
                        if(_loc2_ || param1)
                        {
                           §§goto(addr19);
                        }
                        continue;
                     }
                     §§goto(addr80);
                  }
                  break;
               }
               continue loop0;
            },if(_loc3_)
            {
               §§goto(addr83);
            },§§goto(addr78))
            {
               while(true)
               {
                  this.§=!-§ = param1;
                  continue loop0;
               }
               this.§+",§();
               if(_loc3_)
               {
                  break;
               }
            }
            return;
         }
         addr19:
      }
      
      protected function §13§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§-!T§ == 1);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     addr119:
                     if(!_loc2_)
                     {
                        return;
                     }
                     loop2:
                     while(true)
                     {
                        §§push(this.§ e§.length > 0);
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        addr126:
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
                     §§push(§&0§.§0"&§);
                     if(!_loc2_)
                     {
                        §§push(this.§3^§.x - this.§2b§);
                        if(!_loc2_)
                        {
                           §§push(§§pop() * §&0§.§8!F§);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     if(§§pop() <= 0)
                     {
                        if(_loc1_ || _loc1_)
                        {
                           this.§#-§();
                        }
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§3^§.x -= this.§2b§;
                     }
                  }
                  return;
                  addr112:
               }
               §§goto(addr126);
            }
         }
         §§goto(addr119);
      }
      
      private function §#-§() : void
      {
      }
   }
}
