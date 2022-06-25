package §8!A§
{
   import §#!7§.ParticleDesignerPS;
   import §2@§.§1!Q§;
   import §2m§.§<!?§;
   import §40§.§5G§;
   import §40§.§9e§;
   import §=!A§.ParticleManager;
   import §=`§.§#`§;
   import §=`§.§4s§;
   import §=`§.§6!I§;
   import §?]§.Texture;
   import §`!M§.§%X§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import starling.events.Event;
   
   public class §8!?§
   {
       
      
      protected var §<!^§:int;
      
      private var §6i§:int;
      
      protected var §%C§:Number;
      
      private var §<!B§:Boolean;
      
      protected var §]2§:Sprite;
      
      private var §%;§:Array;
      
      private var §!R§:Boolean = true;
      
      private var §&!k§:§6!I§;
      
      private var §@E§:Sprite;
      
      private var § C§:Sprite;
      
      public function §8!?§(param1:§1!Q§, param2:Sprite, param3:§6!I§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§#`§ = null;
         if(_loc14_)
         {
            this.§%;§ = [];
            while(true)
            {
               super();
               loop1:
               while(!_loc15_)
               {
                  this.§&!k§ = param3;
                  while(true)
                  {
                     this.§]2§ = param2;
                     loop3:
                     while(!(_loc15_ && param2))
                     {
                        if(!_loc14_)
                        {
                           continue loop1;
                        }
                        loop4:
                        while(true)
                        {
                           this.§%C§ = param1.§ ;§;
                           loop5:
                           while(!_loc15_)
                           {
                              while(true)
                              {
                                 this.§<!B§ = param1.§,H§;
                                 if(!_loc15_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              var _loc5_:* = Number(1);
                              if(_loc14_)
                              {
                                 §§push(param1.§?z§);
                                 if(_loc14_ || param2)
                                 {
                                    if(§§pop() != 0)
                                    {
                                       if(_loc14_)
                                       {
                                          addr89:
                                          §§push(param1.§?z§);
                                          if(!(_loc15_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc15_)
                                             {
                                             }
                                             addr104:
                                             var _loc7_:* = §§pop();
                                             var _loc8_:* = Number(0);
                                             var _loc9_:* = Number(1);
                                             var _loc10_:DisplayObject;
                                             if(!(_loc10_ = §4s§.§<Y§(param1.mName,this.§&!k§,param1.§^!T§)))
                                             {
                                                if(!_loc15_)
                                                {
                                                   §§push((_loc13_ = param3.§&u§(param1.mName)).pivotY);
                                                   if(_loc14_ || this)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc14_ || param3)
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(!_loc15_)
                                                         {
                                                            if(!this.§<!B§)
                                                            {
                                                               if(_loc14_ || param1)
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
                                                            if(!(_loc15_ && this))
                                                            {
                                                               §§push(§§pop() * _loc5_);
                                                               if(_loc14_ || param3)
                                                               {
                                                                  addr190:
                                                                  §§push(§§pop() - 2);
                                                               }
                                                               §§pop().§<!^§ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(_loc13_.scale);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc9_ = §§pop();
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr260:
                                                                     if(this.§<!^§ <= 0)
                                                                     {
                                                                        if(!(_loc15_ && this))
                                                                        {
                                                                           throw new Error("Invalid texture for background layer: " + param1.mName);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr344:
                                                                        this.§<!^§ = Math.round(this.§<!^§);
                                                                        loop7:
                                                                        do
                                                                        {
                                                                           loop8:
                                                                           while(!param1.§<!`§)
                                                                           {
                                                                              this.§6i§ = 1;
                                                                              if(!_loc14_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc15_ && param3)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              while(false)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              var _loc11_:Sprite = new Sprite();
                                                                              var _loc12_:int = 0;
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc12_ >= this.§6i§)
                                                                                 {
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       addr532:
                                                                                       _loc11_.flatten();
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(this.§]2§);
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().addChild(_loc11_);
                                                                                             loop12:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§@E§);
                                                                                                loop13:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop14:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§@E§);
                                                                                                         while(§§pop().numChildren <= 0)
                                                                                                         {
                                                                                                            §§push(this.§@E§);
                                                                                                            if(_loc14_ || this)
                                                                                                            {
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                         }
                                                                                                         addr669:
                                                                                                         loop19:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§]2§);
                                                                                                            loop17:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().addChild(this.§@E§);
                                                                                                               addr674:
                                                                                                               while(_loc14_)
                                                                                                               {
                                                                                                               }
                                                                                                               continue loop12;
                                                                                                               loop27:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc14_ || param3))
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  if(!_loc14_)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  §§pop().addChildAt(this.§ C§,0);
                                                                                                                  loop25:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc14_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr541:
                                                                                                                           loop22:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§]2§);
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 continue loop27;
                                                                                                                              }
                                                                                                                              §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
                                                                                                                              if(_loc14_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    return;
                                                                                                                                 }
                                                                                                                                 addr597:
                                                                                                                                 addr597:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§ C§);
                                                                                                                                    addr599:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(§§pop().numChildren <= 0)
                                                                                                                                       {
                                                                                                                                          §§push(this.§ C§);
                                                                                                                                          if(_loc15_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§pop().dispose();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc14_ || this))
                                                                                                                                             {
                                                                                                                                                continue loop25;
                                                                                                                                             }
                                                                                                                                             if(!(_loc15_ && this))
                                                                                                                                             {
                                                                                                                                                if(!(_loc14_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc15_ && param2))
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             addr609:
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr674);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr569);
                                                                                                                           }
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        addr626:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc15_)
                                                                                                                           {
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr657:
                                                                                                                     }
                                                                                                                     addr591:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§ C§);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr597);
                                                                                                                           }
                                                                                                                           §§goto(addr541);
                                                                                                                        }
                                                                                                                        §§goto(addr599);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr591);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr536:
                                                                                       }
                                                                                       §§goto(addr669);
                                                                                    }
                                                                                    §§goto(addr597);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                _loc10_ = §4s§.§<Y§(param1.mName,this.§&!k§,param1.§^!T§);
                                                                                                addr386:
                                                                                                §§push(_loc10_);
                                                                                                §§push(_loc12_ - 1);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   §§push(§§pop() * this.§<!^§);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      addr396:
                                                                                                      §§push(_loc8_);
                                                                                                      if(!(_loc15_ && param3))
                                                                                                      {
                                                                                                         §§push(-§§pop());
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            addr412:
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               addr422:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  addr420:
                                                                                                                  §§push(§§pop() + param1.§0!8§);
                                                                                                               }
                                                                                                               §§pop().x = §§pop() + §§pop();
                                                                                                               if(_loc14_)
                                                                                                               {
                                                                                                                  §§push(_loc10_);
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(_loc14_ || param1)
                                                                                                                  {
                                                                                                                     §§push(-§§pop());
                                                                                                                     if(!(_loc15_ && param2))
                                                                                                                     {
                                                                                                                        §§push(_loc5_);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           addr516:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc15_ && param1))
                                                                                                                           {
                                                                                                                              addr513:
                                                                                                                              §§push(param1.§%F§);
                                                                                                                           }
                                                                                                                           §§pop().y = §§pop();
                                                                                                                           if(_loc14_)
                                                                                                                           {
                                                                                                                              §§push(_loc10_);
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!(_loc15_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * _loc9_);
                                                                                                                              }
                                                                                                                              §§pop().scaleX = §§pop();
                                                                                                                              if(_loc14_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc10_);
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(_loc14_)
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
                                                                                                                                          §§push(§§pop() * this.§<!^§);
                                                                                                                                       }
                                                                                                                                       §§pop().§7T§(§§pop(),§§pop());
                                                                                                                                       if(!_loc15_)
                                                                                                                                       {
                                                                                                                                          _loc11_.addChild(_loc10_);
                                                                                                                                          if(!_loc15_)
                                                                                                                                          {
                                                                                                                                             if(false)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             _loc10_ = null;
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                _loc12_++;
                                                                                                                                             }
                                                                                                                                             continue loop9;
                                                                                                                                          }
                                                                                                                                          §§goto(addr532);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr590);
                                                                                                                                 }
                                                                                                                                 §§goto(addr626);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr536);
                                                                                                                        }
                                                                                                                        §§goto(addr516);
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                     }
                                                                                                                     §§goto(addr513);
                                                                                                                  }
                                                                                                                  §§goto(addr516);
                                                                                                               }
                                                                                                               §§goto(addr590);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr420);
                                                                                                      }
                                                                                                      §§goto(addr412);
                                                                                                   }
                                                                                                   §§goto(addr422);
                                                                                                }
                                                                                                §§goto(addr396);
                                                                                             }
                                                                                             §§goto(addr669);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             _loc10_ = new §"<§(_loc6_,false,param1.§^!T§);
                                                                                             §§goto(addr386);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr609);
                                                                                    }
                                                                                    §§goto(addr386);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§push(this);
                                                                           §§push(2);
                                                                           §§push(§5G§.§&!d§);
                                                                           if(_loc14_ || param1)
                                                                           {
                                                                              §§push(1.5);
                                                                              if(!(_loc15_ && this))
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    addr338:
                                                                                    §§push(§§pop() / (this.§<!^§ * param4));
                                                                                 }
                                                                                 §§pop().§6i§ = §§pop() + §§pop();
                                                                                 continue;
                                                                              }
                                                                           }
                                                                           §§goto(addr338);
                                                                        }
                                                                        while(!_loc14_);
                                                                        
                                                                     }
                                                                     §§goto(addr351);
                                                                     addr203:
                                                                  }
                                                                  §§goto(addr344);
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                            §§goto(addr190);
                                                         }
                                                         §§goto(addr296);
                                                      }
                                                   }
                                                   §§goto(addr164);
                                                }
                                                else
                                                {
                                                   addr247:
                                                   §§push((_loc10_.§`b§.left + _loc10_.§`b§.right) / 2);
                                                   if(!_loc15_)
                                                   {
                                                      addr258:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc8_ = §§pop();
                                                }
                                             }
                                             else
                                             {
                                                §§push(this);
                                                §§push(_loc10_.width);
                                                if(_loc14_ || param3)
                                                {
                                                   §§push(§§pop() * _loc5_);
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      addr223:
                                                      §§push(§§pop() - 2);
                                                   }
                                                   §§pop().§<!^§ = §§pop();
                                                   if(!(_loc15_ && param2))
                                                   {
                                                      §§push(Number(_loc10_.§`b§.bottom));
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         _loc7_ = §§pop();
                                                         if(!_loc15_)
                                                         {
                                                            §§goto(addr247);
                                                         }
                                                         §§goto(addr260);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr260);
                                                }
                                                §§goto(addr223);
                                             }
                                             §§goto(addr260);
                                          }
                                          _loc5_ = §§pop();
                                       }
                                    }
                                    §§push(Number(0));
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr89);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function get §]"!§() : Boolean
      {
         return this.§<!B§;
      }
      
      private function §7T§(param1:§1!Q§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§9e§ = null;
         var _loc5_:* = 0;
         for each(_loc3_ in param1.§%;§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§0!z§(_loc3_.id,this.§&!k§)));
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     addr53:
                     §§pop();
                     if(_loc9_ || param2)
                     {
                        addr65:
                        if(_loc4_.§[!z§ > 0)
                        {
                           if(!(_loc10_ && param2))
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§0!8§;
                              if(_loc9_)
                              {
                                 addr84:
                                 _loc4_.y = _loc3_.y;
                                 if(_loc9_)
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(_loc9_ || this)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          loop5:
                                          while(true)
                                          {
                                             _loc4_.start();
                                             loop23:
                                             while(true)
                                             {
                                                if(_loc10_ && param1)
                                                {
                                                   continue loop5;
                                                }
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§@E§);
                                                   if(_loc9_)
                                                   {
                                                      §§pop().addChild(_loc4_);
                                                      while(true)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(0);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr204:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc10_ && param2))
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     addr301:
                                                                     addr228:
                                                                     addr301:
                                                                     while(true)
                                                                     {
                                                                        this.§@E§ = new Sprite();
                                                                        continue loop23;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §<!?§.§#T§.add(_loc4_);
                                                                        addr297:
                                                                        while(true)
                                                                        {
                                                                           this.§%;§.push(_loc4_);
                                                                           addr291:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc3_.isBehindGraphic)
                                                                              {
                                                                                 §§push(this.§@E§);
                                                                                 break loop11;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr257:
                                                         while(true)
                                                         {
                                                            §§goto(addr259);
                                                         }
                                                         if(_loc10_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr108);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr228);
                                                }
                                                addr212:
                                             }
                                          }
                                       }
                                       addr107:
                                    }
                                 }
                                 §§goto(addr301);
                              }
                              §§goto(addr257);
                           }
                           §§goto(addr84);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              §§goto(addr134);
                           }
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr107);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr53);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc5_)
         {
            §§push(this.§]2§);
            if(!(_loc5_ && this))
            {
               §§pop().§5!7§(0,-1,true);
               addr58:
               if(_loc4_ || _loc3_)
               {
                  §§push(this.§]2§);
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§%;§)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     §<!?§.§#T§.§0z§(_loc1_);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(_loc4_)
               {
                  this.§%;§ = [];
                  while(true)
                  {
                     this.§ C§ = null;
                     while(_loc4_)
                     {
                        this.§@E§ = null;
                        if(!_loc5_)
                        {
                           return;
                           addr113:
                        }
                     }
                  }
               }
               §§goto(addr113);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
         }
         §§goto(addr58);
      }
      
      private function §#Z§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ !A§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§%C§);
         if(!_loc4_)
         {
            §§push(§§pop() * param1);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_ || param1)
         {
            §§push(this.§]2§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               addr105:
               while(true)
               {
                  §§push(-§§pop());
                  addr106:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr104:
         }
         while(true)
         {
            §§push(this.§]2§);
            if(!_loc4_)
            {
               §§push(param2);
               if(!_loc4_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr93:
                     §§push(-§§pop());
                     if(!(_loc4_ && param2))
                     {
                        §§pop().y = §§pop();
                        do
                        {
                           this.§'!_§();
                        }
                        while(_loc4_ && _loc3_);
                        
                        if(_loc5_ || param2)
                        {
                           break;
                        }
                        continue;
                     }
                  }
                  else
                  {
                     §§goto(addr105);
                  }
                  §§goto(addr106);
               }
               §§goto(addr93);
            }
            else
            {
               §§goto(addr104);
            }
         }
      }
      
      private function § !A§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc5_)
         {
            §§push(this.§!R§);
            if(_loc5_ || this)
            {
               §§push(!§§pop());
               if(!(_loc4_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc5_ || _loc1_)
                     {
                        §§pop();
                        §§goto(addr89);
                     }
                  }
               }
            }
            if(§§pop())
            {
               if(_loc5_ || this)
               {
                  return;
               }
            }
         }
         addr89:
         if(_loc5_ || _loc2_)
         {
            §§push(!this.§]2§.stage);
         }
         for each(_loc1_ in this.§%;§)
         {
            if(_loc5_)
            {
               §<!?§.§#T§.add(_loc1_);
               if(!_loc4_)
               {
                  _loc1_.visible = true;
               }
            }
         }
      }
      
      private function §9!q§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§%;§)
         {
            if(!_loc5_)
            {
               §<!?§.§#T§.§0z§(_loc1_);
               if(_loc4_ || _loc1_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §'6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§!R§)
               {
                  addr98:
                  return;
               }
               addr20:
               addr89:
               addr88:
               while(true)
               {
                  this.§!R§ = param1;
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      protected function §'!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§6i§ == 1);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr113:
                     while(true)
                     {
                        §§push(this.§%;§.length > 0);
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(!_loc1_)
                  {
                     return;
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr113);
               }
               addr24:
               §§push(§%X§.§+!_§);
               if(_loc2_)
               {
                  §§push(this.§]2§.x - this.§<!^§);
                  if(!_loc1_)
                  {
                     §§push(§§pop() * §%X§.§'!f§);
                  }
                  §§push(§§pop() + §§pop());
               }
               if(§§pop() <= 0)
               {
                  if(_loc2_)
                  {
                     if(_loc1_ && _loc2_)
                     {
                        addr87:
                        §§goto(addr24);
                     }
                     this.§87§();
                  }
                  return;
               }
               this.§]2§.x -= this.§<!^§;
               §§goto(addr87);
            }
         }
         §§goto(addr113);
      }
      
      private function §87§() : void
      {
      }
   }
}
