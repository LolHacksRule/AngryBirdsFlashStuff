package §31§
{
   import § `§.§2w§;
   import § `§.§6!=§;
   import § `§.§>o§;
   import §!!I§.§`[§;
   import §!X§.§7!H§;
   import §!X§.§86§;
   import §+3§.§7>§;
   import §2!D§.§'t§;
   import §?h§.§<I§;
   import §]!B§.Texture;
   import §]@§.DisplayObject;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import §`C§.§9!'§;
   import starling.events.Event;
   
   public class §&#§
   {
       
      
      private var §#&§:int;
      
      private var §null §:int;
      
      private var §>U§:Number;
      
      private var §?!"§:Boolean;
      
      private var §?!N§:Sprite;
      
      private var §?!A§:Array;
      
      private var § P§:Boolean = true;
      
      private var §8!M§:§2w§;
      
      private var §2e§:Sprite;
      
      private var §>!C§:Sprite;
      
      public function §&#§(param1:§7>§, param2:Sprite, param3:§2w§, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§6!=§ = null;
         if(_loc15_ || this)
         {
            this.§?!A§ = [];
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§8!M§ = param3;
                  while(true)
                  {
                     this.§?!N§ = param2;
                     loop3:
                     while(_loc15_ || param2)
                     {
                        continue loop1;
                        loop5:
                        while(true)
                        {
                           this.§?!"§ = param1.§^5§;
                           if(_loc14_)
                           {
                              continue;
                           }
                           if(_loc14_ && param3)
                           {
                              continue loop3;
                           }
                           if(true)
                           {
                              break;
                           }
                           while(true)
                           {
                              this.§>U§ = param1.§0t§;
                              continue loop5;
                           }
                        }
                        var _loc5_:* = Number(1);
                        if(!(_loc14_ && this))
                        {
                           §§push(param1.§1R§);
                           if(!_loc14_)
                           {
                              if(§§pop() != 0)
                              {
                                 if(!(_loc14_ && this))
                                 {
                                    addr110:
                                    §§push(param1.§1R§);
                                    if(_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc15_)
                                       {
                                          addr117:
                                          _loc5_ = §§pop();
                                          addr118:
                                          §§push(Number(0));
                                       }
                                    }
                                    var _loc7_:* = §§pop();
                                    var _loc8_:* = Number(0);
                                    var _loc9_:* = Number(1);
                                    var _loc10_:DisplayObject;
                                    if(!(_loc10_ = §>o§.§#]§(param1.mName,this.§8!M§,param1.§!#§)))
                                    {
                                       if(_loc15_ || this)
                                       {
                                          §§push((_loc13_ = param3.§4!,§(param1.mName)).pivotY);
                                          if(!_loc14_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc14_ && this))
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc15_ || param3)
                                                {
                                                   if(!this.§?!"§)
                                                   {
                                                      if(_loc15_ || param3)
                                                      {
                                                         addr185:
                                                         _loc8_ = Number(_loc13_.pivotX);
                                                      }
                                                   }
                                                }
                                                _loc6_ = _loc13_.texture;
                                                if(!_loc14_)
                                                {
                                                   §§push(this);
                                                   §§push(_loc13_.width);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(§§pop() * _loc5_);
                                                      if(!(_loc14_ && param3))
                                                      {
                                                         addr206:
                                                         §§push(§§pop() - 2);
                                                      }
                                                      §§pop().§#&§ = §§pop();
                                                      if(!_loc14_)
                                                      {
                                                         §§push(_loc13_.scale);
                                                         if(!_loc14_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(!_loc14_)
                                                         {
                                                            addr266:
                                                            if(this.§#&§ <= 0)
                                                            {
                                                               if(_loc15_)
                                                               {
                                                                  throw new Error("Invalid texture for background layer: " + param1.mName);
                                                               }
                                                               addr281:
                                                            }
                                                            this.§#&§ = Math.round(this.§#&§);
                                                            do
                                                            {
                                                               loop26:
                                                               while(!param1.§+4§)
                                                               {
                                                                  this.§null § = 1;
                                                                  if(_loc15_)
                                                                  {
                                                                     if(!(_loc15_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(false)
                                                                     {
                                                                        continue loop26;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr344:
                                                                  }
                                                                  var _loc11_:Sprite = new Sprite();
                                                                  var _loc12_:int = 0;
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(_loc12_ >= this.§null §)
                                                                     {
                                                                        if(!(_loc14_ && param3))
                                                                        {
                                                                           addr553:
                                                                           _loc11_.flatten();
                                                                           if(!_loc14_)
                                                                           {
                                                                              addr710:
                                                                              this.§?!N§.addChild(_loc11_);
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§>!C§);
                                                                                 if(_loc15_ || this)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop18:
                                                                                       while(_loc15_ || param3)
                                                                                       {
                                                                                          §§push(this.§>!C§);
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop().numChildren <= 0)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             loop22:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc14_ && param2))
                                                                                                {
                                                                                                   if(!(_loc14_ && param3))
                                                                                                   {
                                                                                                      addr639:
                                                                                                      §§push(this.§?!N§);
                                                                                                      loop23:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc14_ && param3))
                                                                                                         {
                                                                                                            if(_loc15_ || param3)
                                                                                                            {
                                                                                                               §§pop().addChildAt(this.§>!C§,0);
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc15_ || param3)
                                                                                                                  {
                                                                                                                     loop19:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§?!N§);
                                                                                                                        if(!_loc14_)
                                                                                                                        {
                                                                                                                           §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§]j§);
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 if(_loc15_)
                                                                                                                                 {
                                                                                                                                    addr558:
                                                                                                                                    return;
                                                                                                                                    addr578:
                                                                                                                                 }
                                                                                                                                 continue loop17;
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           addr592:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc14_ && param3))
                                                                                                                              {
                                                                                                                                 if(!_loc14_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              continue loop24;
                                                                                                                           }
                                                                                                                           continue loop24;
                                                                                                                        }
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     addr562:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§?!N§);
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     addr692:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr710);
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().addChild(this.§2e§);
                                                                                                            addr707:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop11:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§2e§);
                                                                                                      while(§§pop().numChildren <= 0)
                                                                                                      {
                                                                                                         §§push(this.§2e§);
                                                                                                         if(_loc15_ || param2)
                                                                                                         {
                                                                                                            if(!_loc15_)
                                                                                                            {
                                                                                                               break loop11;
                                                                                                            }
                                                                                                            §§pop().dispose();
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr692);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§goto(addr687);
                                                                                                   }
                                                                                                   addr687:
                                                                                                   addr686:
                                                                                                }
                                                                                                §§goto(addr707);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       break loop6;
                                                                                    }
                                                                                    §§goto(addr562);
                                                                                 }
                                                                                 §§goto(addr622);
                                                                              }
                                                                           }
                                                                           addr682:
                                                                        }
                                                                        §§goto(addr578);
                                                                     }
                                                                     else
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(_loc15_ || param1)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc15_)
                                                                                 {
                                                                                    _loc10_ = §>o§.§#]§(param1.mName,this.§8!M§,param1.§!#§);
                                                                                    addr402:
                                                                                    §§push(_loc10_);
                                                                                    §§push(_loc12_ - 1);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       §§push(§§pop() * this.§#&§);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          addr412:
                                                                                          §§push(_loc8_);
                                                                                          if(_loc15_ || param1)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   addr433:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      addr431:
                                                                                                      §§push(§§pop() + param1.§2s§);
                                                                                                   }
                                                                                                   §§pop().x = §§pop() + §§pop();
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      §§push(_loc7_);
                                                                                                      if(!_loc14_)
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc15_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc15_)
                                                                                                               {
                                                                                                                  addr521:
                                                                                                                  §§push(§§pop() + param1.§@!Y§);
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               if(_loc15_ || this)
                                                                                                               {
                                                                                                                  §§push(_loc10_);
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * _loc9_);
                                                                                                                  }
                                                                                                                  §§pop().scaleX = §§pop();
                                                                                                                  if(_loc15_ || param2)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!_loc14_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc9_);
                                                                                                                     }
                                                                                                                     §§pop().scaleY = §§pop();
                                                                                                                     if(_loc15_ || this)
                                                                                                                     {
                                                                                                                        loop8:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(param1);
                                                                                                                           §§push(_loc12_ - 1);
                                                                                                                           if(_loc15_ || param2)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * this.§#&§);
                                                                                                                           }
                                                                                                                           §§pop().§2!J§(§§pop(),§§pop());
                                                                                                                           if(!(_loc14_ && param2))
                                                                                                                           {
                                                                                                                              _loc11_.addChild(_loc10_);
                                                                                                                              addr468:
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       continue loop8;
                                                                                                                                    }
                                                                                                                                    _loc10_ = null;
                                                                                                                                    if(!(_loc14_ && param1))
                                                                                                                                    {
                                                                                                                                       _loc12_++;
                                                                                                                                    }
                                                                                                                                    continue loop6;
                                                                                                                                    §§goto(addr468);
                                                                                                                                 }
                                                                                                                                 §§goto(addr578);
                                                                                                                                 addr443:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr578);
                                                                                                                              }
                                                                                                                              §§goto(addr558);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr707);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr553);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr682);
                                                                                                               }
                                                                                                               §§goto(addr639);
                                                                                                            }
                                                                                                            §§goto(addr521);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr521);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr431);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr431);
                                                                                       }
                                                                                       §§goto(addr433);
                                                                                    }
                                                                                    §§goto(addr412);
                                                                                 }
                                                                                 §§goto(addr443);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc10_ = new §`!C§(_loc6_,false,param1.§!#§);
                                                                                 §§goto(addr402);
                                                                              }
                                                                           }
                                                                           §§goto(addr553);
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§goto(addr686);
                                                                  }
                                                               }
                                                            }
                                                            while(_loc14_ && param1);
                                                            
                                                            §§push(this);
                                                            §§push(2);
                                                            §§push(§86§.§super§);
                                                            if(!(_loc14_ && this))
                                                            {
                                                               §§push(1.5);
                                                               if(_loc15_ || param3)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc15_ || param2)
                                                                  {
                                                                     addr341:
                                                                     §§push(§§pop() / (this.§#&§ * param4));
                                                                  }
                                                                  §§pop().§null § = §§pop() + §§pop();
                                                                  §§goto(addr344);
                                                               }
                                                            }
                                                            §§goto(addr341);
                                                         }
                                                         §§goto(addr344);
                                                      }
                                                      §§goto(addr281);
                                                   }
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr297);
                                             }
                                          }
                                          §§goto(addr185);
                                       }
                                    }
                                    else
                                    {
                                       §§push(this);
                                       §§push(_loc10_.width);
                                       if(!(_loc14_ && param3))
                                       {
                                          §§push(§§pop() * _loc5_);
                                          if(_loc15_ || param1)
                                          {
                                             §§push(§§pop() - 2);
                                          }
                                       }
                                       §§pop().§#&§ = §§pop();
                                       if(!_loc14_)
                                       {
                                          §§push(Number(_loc10_.§"!5§.bottom));
                                          if(_loc15_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc14_)
                                             {
                                                §§push((_loc10_.§"!5§.left + _loc10_.§"!5§.right) / 2);
                                                if(_loc15_)
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             §§goto(addr266);
                                          }
                                          _loc8_ = §§pop();
                                       }
                                    }
                                    §§goto(addr266);
                                 }
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr110);
                     }
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function get §<!+§() : Boolean
      {
         return this.§?!"§;
      }
      
      private function §2!J§(param1:§7>§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§7!H§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§?!A§)
         {
            §§push(Boolean(_loc4_ = §'t§.§8G§(_loc3_.id,this.§8!M§)));
            if(_loc9_ || param2)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     addr58:
                     §§pop();
                     if(_loc9_)
                     {
                        addr65:
                        if(_loc4_.§9!1§ > 0)
                        {
                           if(!(_loc10_ && this))
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§2s§;
                              if(_loc9_ || param1)
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(!_loc10_)
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(!_loc10_)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       loop22:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          loop12:
                                          while(true)
                                          {
                                             _loc4_.start();
                                             loop11:
                                             while(true)
                                             {
                                                §9!'§.§`!@§.add(_loc4_);
                                                loop13:
                                                while(true)
                                                {
                                                   this.§?!A§.push(_loc4_);
                                                   addr271:
                                                   loop14:
                                                   while(true)
                                                   {
                                                      if(!_loc3_.isBehindGraphic)
                                                      {
                                                         addr205:
                                                         loop4:
                                                         for(; !§§pop(); §§goto(addr205))
                                                         {
                                                            loop5:
                                                            while(_loc10_ && param1)
                                                            {
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  this.§>!C§ = new Sprite();
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        loop8:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§>!C§);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§pop().addChild(_loc4_);
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr187:
                                                                                       addr134:
                                                                                       loop19:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             addr108:
                                                                                             loop20:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                                                {
                                                                                                   addr115:
                                                                                                   if(!(_loc9_ || param1))
                                                                                                   {
                                                                                                      break loop19;
                                                                                                   }
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   continue loop11;
                                                                                                }
                                                                                                addr179:
                                                                                                _loc4_.§#N§(1 / 20);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue loop7;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_++;
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             continue loop19;
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc10_ && param1))
                                                                                          {
                                                                                             if(!(_loc10_ && param2))
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      _loc4_.dispose();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            while(false)
                                                                                                            {
                                                                                                               §§goto(addr168);
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                            addr166:
                                                                                                         }
                                                                                                         §§goto(addr179);
                                                                                                      }
                                                                                                      addr164:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§>!C§);
                                                                                                               addr253:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr251:
                                                                                                         }
                                                                                                         if(!(_loc9_ || param1))
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            break loop4;
                                                                                                         }
                                                                                                         continue loop22;
                                                                                                      }
                                                                                                      addr220:
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                addr202:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr187);
                                                                                             }
                                                                                             §§goto(addr108);
                                                                                          }
                                                                                          §§goto(addr170);
                                                                                          §§goto(addr115);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               this.§2e§ = new Sprite();
                                                               §§goto(addr220);
                                                            }
                                                         }
                                                         §§push(this.§2e§);
                                                         while(true)
                                                         {
                                                            §§push(this.§2e§);
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§pop().addChild(_loc4_);
                                                               §§goto(addr202);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr208);
                                                            }
                                                         }
                                                         addr208:
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr216);
                              }
                              §§goto(addr189);
                           }
                           §§goto(addr166);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc9_ || param1)
                           {
                              §§goto(addr134);
                           }
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr271);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr58);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`[§ = null;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§?!N§);
            if(_loc5_ || this)
            {
               §§pop().§7i§(0,-1,true);
               addr54:
               if(_loc5_ || this)
               {
                  §§push(this.§?!N§);
               }
               var _loc3_:* = this.§?!A§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_)
                  {
                     §9!'§.§`!@§.§0@§(_loc1_);
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(_loc5_ || _loc3_)
               {
                  this.§?!A§ = [];
                  while(true)
                  {
                     this.§>!C§ = null;
                     while(!_loc4_)
                     {
                        this.§2e§ = null;
                        if(_loc5_ || _loc1_)
                        {
                           return;
                           addr114:
                        }
                     }
                  }
               }
               §§goto(addr114);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§]j§);
         }
         §§goto(addr54);
      }
      
      private function §]j§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§9q§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§>U§);
         if(!(_loc4_ && this))
         {
            §§push(§§pop() * param1);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§?!N§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               addr95:
               while(true)
               {
                  §§push(-§§pop());
                  addr96:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      private function §9q§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`[§ = null;
         if(!(_loc5_ && _loc1_))
         {
            §§push(this.§ P§);
            if(!(_loc5_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc4_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc5_ && _loc2_)
                     {
                     }
                     §§goto(addr74);
                  }
                  addr74:
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        return;
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr78);
               }
               §§pop();
               if(!(_loc5_ && _loc2_))
               {
                  §§push(!this.§?!N§.stage);
               }
               §§goto(addr78);
            }
            §§goto(addr74);
         }
         addr78:
         var _loc2_:int = 0;
         for each(_loc1_ in this.§?!A§)
         {
            if(_loc4_ || _loc2_)
            {
               §9!'§.§`!@§.add(_loc1_);
               if(_loc4_)
               {
                  _loc1_.visible = true;
               }
            }
         }
      }
      
      private function §8O§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§`[§ = null;
         for each(_loc1_ in this.§?!A§)
         {
            if(!(_loc4_ && this))
            {
               §9!'§.§`!@§.§0@§(_loc1_);
               if(_loc5_ || _loc1_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §?B§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            for(; §§pop() != this.§ P§; §§push(this.§ P§),if(!(_loc2_ || param1))
            {
               continue;
            },if(!§§pop())
            {
               this.§8O§();
               if(_loc2_)
               {
                  if(_loc2_ || param1)
                  {
                     if(!_loc2_)
                     {
                        §§goto(addr75);
                     }
                     addr19:
                     return;
                  }
                  §§goto(addr61);
               }
               §§goto(addr63);
            },§§goto(addr61))
            {
               while(true)
               {
                  this.§ P§ = param1;
                  addr75:
                  addr61:
                  addr63:
                  while(true)
                  {
                     if(_loc2_ || _loc3_)
                     {
                        continue loop0;
                     }
                  }
                  this.§9q§();
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr19);
                  }
                  break loop0;
               }
            }
            return;
         }
         while(true)
         {
            §§goto(addr71);
         }
      }
      
      private function §#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§null § == 1);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr132:
                     while(true)
                     {
                        §§push(this.§?!A§.length > 0);
                        if(_loc1_ || _loc1_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr131:
               }
               while(§§pop())
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  addr112:
                  if(_loc1_ || this)
                  {
                     return;
                  }
                  §§goto(addr132);
               }
               while(true)
               {
                  §§push(§<I§.§5!S§);
                  if(_loc1_ || _loc2_)
                  {
                     §§push(this.§?!N§.x - this.§#&§);
                     if(_loc1_)
                     {
                        §§push(§§pop() * §<I§.§,0§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  if(§§pop() <= 0)
                  {
                     if(!(_loc1_ || this))
                     {
                        break;
                     }
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§+H§();
                        break;
                     }
                  }
                  else
                  {
                     this.§?!N§.x -= this.§#&§;
                  }
               }
               return;
            }
            §§goto(addr131);
         }
         §§goto(addr112);
      }
      
      private function §+H§() : void
      {
      }
   }
}
