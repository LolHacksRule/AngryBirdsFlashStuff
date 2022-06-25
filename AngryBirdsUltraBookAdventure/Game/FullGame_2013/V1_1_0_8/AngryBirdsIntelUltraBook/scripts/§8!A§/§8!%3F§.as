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
         }
         loop0:
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§&!k§ = param3;
               while(true)
               {
                  this.§]2§ = param2;
                  loop3:
                  while(_loc14_ || param2)
                  {
                     if(_loc14_)
                     {
                        while(true)
                        {
                           this.§%C§ = param1.§ ;§;
                           continue loop3;
                           addr37:
                           if(_loc15_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           var _loc5_:* = Number(1);
                           if(_loc14_ || this)
                           {
                              §§push(param1.§?z§);
                              if(!(_loc15_ && this))
                              {
                                 if(§§pop() != 0)
                                 {
                                    if(_loc14_ || param3)
                                    {
                                       §§push(param1.§?z§);
                                       if(!_loc15_)
                                       {
                                          addr113:
                                          §§push(Number(§§pop()));
                                          if(!_loc15_)
                                          {
                                             _loc5_ = §§pop();
                                             addr117:
                                             §§push(Number(0));
                                          }
                                       }
                                       var _loc7_:* = §§pop();
                                       var _loc8_:* = Number(0);
                                       var _loc9_:* = Number(1);
                                       var _loc10_:DisplayObject;
                                       if(!(_loc10_ = §4s§.§<Y§(param1.mName,this.§&!k§,param1.§^!T§)))
                                       {
                                          if(!(_loc15_ && this))
                                          {
                                             §§push((_loc13_ = param3.§&u§(param1.mName)).pivotY);
                                             if(!(_loc15_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc15_)
                                                {
                                                   _loc7_ = §§pop();
                                                   if(_loc14_)
                                                   {
                                                      if(!this.§<!B§)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            addr174:
                                                            _loc8_ = Number(_loc13_.pivotX);
                                                            addr171:
                                                         }
                                                      }
                                                      _loc6_ = _loc13_.texture;
                                                      if(!(_loc15_ && param2))
                                                      {
                                                         §§push(this);
                                                         §§push(_loc13_.width);
                                                         if(_loc14_ || param1)
                                                         {
                                                            §§push(§§pop() * _loc5_);
                                                            if(_loc14_ || this)
                                                            {
                                                               addr205:
                                                               §§push(§§pop() - 2);
                                                            }
                                                            §§pop().§<!^§ = §§pop();
                                                            if(!_loc15_)
                                                            {
                                                               §§push(_loc13_.scale);
                                                               if(_loc14_ || param3)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc9_ = §§pop();
                                                               if(!_loc15_)
                                                               {
                                                                  addr280:
                                                                  if(this.§<!^§ <= 0)
                                                                  {
                                                                     if(!(_loc15_ && param3))
                                                                     {
                                                                        §§goto(addr291);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr359:
                                                                     this.§<!^§ = Math.round(this.§<!^§);
                                                                  }
                                                                  addr323:
                                                                  addr365:
                                                                  if(!param1.§<!`§)
                                                                  {
                                                                     this.§6i§ = 1;
                                                                     if(!(_loc15_ && param2))
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr323);
                                                                           }
                                                                           addr366:
                                                                           var _loc11_:Sprite = new Sprite();
                                                                           var _loc12_:int = 0;
                                                                           addr536:
                                                                           if(_loc12_ < this.§6i§)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          _loc10_ = §4s§.§<Y§(param1.mName,this.§&!k§,param1.§^!T§);
                                                                                          addr401:
                                                                                          §§push(_loc10_);
                                                                                          §§push(_loc12_ - 1);
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() * this.§<!^§);
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                addr411:
                                                                                                §§push(_loc8_);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      addr417:
                                                                                                      §§push(_loc5_);
                                                                                                      if(!(_loc15_ && param3))
                                                                                                      {
                                                                                                         addr436:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc14_ || param1)
                                                                                                         {
                                                                                                            §§push(param1.§0!8§);
                                                                                                         }
                                                                                                         §§pop().x = §§pop() + §§pop();
                                                                                                         if(!(_loc15_ && param3))
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            §§push(_loc7_);
                                                                                                            if(_loc14_)
                                                                                                            {
                                                                                                               §§push(-§§pop());
                                                                                                               if(!_loc15_)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  if(!_loc15_)
                                                                                                                  {
                                                                                                                     addr528:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc15_ && param2))
                                                                                                                     {
                                                                                                                        addr525:
                                                                                                                        §§push(param1.§%F§);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     §§push(_loc10_);
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!(_loc15_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc9_);
                                                                                                                     }
                                                                                                                     §§pop().scaleX = §§pop();
                                                                                                                     §§push(_loc10_);
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!_loc15_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * _loc9_);
                                                                                                                     }
                                                                                                                     §§pop().scaleY = §§pop();
                                                                                                                     addr529:
                                                                                                                     addr506:
                                                                                                                     if(_loc14_ || param3)
                                                                                                                     {
                                                                                                                        addr461:
                                                                                                                        §§push(this);
                                                                                                                        §§push(param1);
                                                                                                                        §§push(_loc12_ - 1);
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * this.§<!^§);
                                                                                                                        }
                                                                                                                        §§pop().§7T§(§§pop(),§§pop());
                                                                                                                        if(!_loc15_)
                                                                                                                        {
                                                                                                                           if(!_loc15_)
                                                                                                                           {
                                                                                                                              _loc11_.addChild(_loc10_);
                                                                                                                              if(_loc14_ || param2)
                                                                                                                              {
                                                                                                                                 if(_loc14_)
                                                                                                                                 {
                                                                                                                                    if(false)
                                                                                                                                    {
                                                                                                                                       §§goto(addr461);
                                                                                                                                    }
                                                                                                                                    _loc10_ = null;
                                                                                                                                    if(_loc14_)
                                                                                                                                    {
                                                                                                                                       _loc12_++;
                                                                                                                                    }
                                                                                                                                    §§goto(addr536);
                                                                                                                                 }
                                                                                                                                 §§goto(addr529);
                                                                                                                              }
                                                                                                                              addr681:
                                                                                                                              this.§]2§.addChild(this.§@E§);
                                                                                                                              addr684:
                                                                                                                              addr679:
                                                                                                                              if(!_loc15_)
                                                                                                                              {
                                                                                                                                 addr608:
                                                                                                                                 §§push(this.§ C§);
                                                                                                                                 if(!(_loc15_ && this))
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       if(_loc14_)
                                                                                                                                       {
                                                                                                                                          if(_loc14_)
                                                                                                                                          {
                                                                                                                                             addr625:
                                                                                                                                             if(this.§ C§.numChildren > 0)
                                                                                                                                             {
                                                                                                                                                addr628:
                                                                                                                                                if(_loc14_)
                                                                                                                                                {
                                                                                                                                                   addr632:
                                                                                                                                                   this.§]2§.addChildAt(this.§ C§,0);
                                                                                                                                                   addr561:
                                                                                                                                                   addr636:
                                                                                                                                                   §§push(this.§]2§);
                                                                                                                                                   if(_loc14_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc14_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc14_)
                                                                                                                                                         {
                                                                                                                                                            §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
                                                                                                                                                            if(_loc15_)
                                                                                                                                                            {
                                                                                                                                                               addr591:
                                                                                                                                                               if(_loc14_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc14_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc15_)
                                                                                                                                                                     {
                                                                                                                                                                        addr607:
                                                                                                                                                                        §§goto(addr561);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr684);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr628);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr636);
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                         }
                                                                                                                                                         addr689:
                                                                                                                                                         §§pop().addChild(_loc11_);
                                                                                                                                                         addr666:
                                                                                                                                                         if(this.§@E§)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc15_ && this))
                                                                                                                                                            {
                                                                                                                                                               addr676:
                                                                                                                                                               if(this.§@E§.numChildren > 0)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                               }
                                                                                                                                                               §§push(this.§@E§);
                                                                                                                                                               if(!(_loc15_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc14_)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().dispose();
                                                                                                                                                                     addr662:
                                                                                                                                                                     §§goto(addr608);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr666);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr676);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr684);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr608);
                                                                                                                                                         addr691:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr681);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr632);
                                                                                                                                                   addr630:
                                                                                                                                                }
                                                                                                                                                §§goto(addr662);
                                                                                                                                             }
                                                                                                                                             §§push(this.§ C§);
                                                                                                                                             if(!_loc15_)
                                                                                                                                             {
                                                                                                                                                §§pop().dispose();
                                                                                                                                                §§goto(addr591);
                                                                                                                                             }
                                                                                                                                             §§goto(addr625);
                                                                                                                                          }
                                                                                                                                          §§goto(addr681);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr632);
                                                                                                                                 }
                                                                                                                                 §§goto(addr625);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr506);
                                                                                                                        }
                                                                                                                        addr547:
                                                                                                                        _loc11_.flatten();
                                                                                                                        if(_loc14_ || this)
                                                                                                                        {
                                                                                                                           §§goto(addr689);
                                                                                                                           §§push(this.§]2§);
                                                                                                                        }
                                                                                                                        §§goto(addr632);
                                                                                                                     }
                                                                                                                     §§goto(addr691);
                                                                                                                  }
                                                                                                                  §§goto(addr528);
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                               }
                                                                                                               §§goto(addr525);
                                                                                                            }
                                                                                                            §§goto(addr528);
                                                                                                         }
                                                                                                         §§goto(addr547);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§goto(addr436);
                                                                                                }
                                                                                                §§goto(addr417);
                                                                                             }
                                                                                             §§goto(addr436);
                                                                                          }
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                       §§goto(addr607);
                                                                                    }
                                                                                    _loc10_ = new §"<§(_loc6_,false,param1.§^!T§);
                                                                                    §§goto(addr401);
                                                                                 }
                                                                                 §§goto(addr528);
                                                                              }
                                                                              §§goto(addr401);
                                                                           }
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§goto(addr547);
                                                                           }
                                                                           §§goto(addr630);
                                                                        }
                                                                        §§goto(addr365);
                                                                     }
                                                                     addr358:
                                                                     §§goto(addr366);
                                                                     addr358:
                                                                  }
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr339:
                                                                     §§push(this);
                                                                     §§push(2);
                                                                     §§push(§5G§.§&!d§);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(1.5);
                                                                        if(!_loc15_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc15_)
                                                                           {
                                                                              addr355:
                                                                              §§push(§§pop() / (this.§<!^§ * param4));
                                                                           }
                                                                           §§pop().§6i§ = §§pop() + §§pop();
                                                                           §§goto(addr358);
                                                                        }
                                                                     }
                                                                     §§goto(addr355);
                                                                  }
                                                                  §§goto(addr358);
                                                               }
                                                               addr291:
                                                               throw new Error("Invalid texture for background layer: " + param1.mName);
                                                            }
                                                            §§goto(addr339);
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr359);
                                                   }
                                                   §§goto(addr171);
                                                }
                                             }
                                             §§goto(addr174);
                                          }
                                          else
                                          {
                                             addr248:
                                             §§push(Number(_loc10_.§`b§.bottom));
                                             if(_loc14_ || this)
                                             {
                                                _loc7_ = §§pop();
                                                if(!_loc15_)
                                                {
                                                   addr262:
                                                   §§push((_loc10_.§`b§.left + _loc10_.§`b§.right) / 2);
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      addr278:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   _loc8_ = §§pop();
                                                }
                                                §§goto(addr280);
                                             }
                                             §§goto(addr278);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this);
                                          §§push(_loc10_.width);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() * _loc5_);
                                             if(_loc14_ || param1)
                                             {
                                                §§push(§§pop() - 2);
                                             }
                                          }
                                          §§pop().§<!^§ = §§pop();
                                          if(_loc14_ || param1)
                                          {
                                             §§goto(addr248);
                                          }
                                       }
                                       §§goto(addr262);
                                    }
                                 }
                                 §§goto(addr117);
                              }
                              §§goto(addr113);
                           }
                           while(!(_loc15_ && param1))
                           {
                              this.§<!B§ = param1.§,H§;
                              if(!(_loc14_ || param1))
                              {
                                 continue;
                              }
                              §§goto(addr37);
                           }
                           §§goto(addr117);
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get §]"!§() : Boolean
      {
         return this.§<!B§;
      }
      
      private function §7T§(param1:§1!Q§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§9e§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§%;§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§0!z§(_loc3_.id,this.§&!k§)));
            if(_loc10_ || this)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     addr59:
                     §§pop();
                     if(!_loc9_)
                     {
                        addr66:
                        if(_loc4_.§[!z§ > 0)
                        {
                           if(!(_loc9_ && this))
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§0!8§;
                              if(_loc10_ || param1)
                              {
                                 addr90:
                                 _loc4_.y = _loc3_.y;
                                 if(_loc10_ || this)
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(_loc10_)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       _loc4_.alpha = _loc3_.alpha;
                                       loop1:
                                       while(true)
                                       {
                                          _loc4_.start();
                                          addr312:
                                          loop2:
                                          while(true)
                                          {
                                             §<!?§.§#T§.add(_loc4_);
                                             loop3:
                                             while(true)
                                             {
                                                this.§%;§.push(_loc4_);
                                                loop4:
                                                while(true)
                                                {
                                                   if(!_loc3_.isBehindGraphic)
                                                   {
                                                      §§push(this.§@E§);
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               this.§@E§ = new Sprite();
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        addr220:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§@E§);
                                                                           if(!_loc10_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§pop().addChild(_loc4_);
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              addr229:
                                                                              loop9:
                                                                              while(true)
                                                                              {
                                                                                 §§push(0);
                                                                                 loop10:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    loop11:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(!(_loc10_ || _loc3_))
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                                                   {
                                                                                                      if(_loc9_ && _loc3_)
                                                                                                      {
                                                                                                         addr166:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               continue loop11;
                                                                                                            }
                                                                                                            if(!(_loc10_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            if(!(_loc10_ || param1))
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               if(true)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr265:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§ C§);
                                                                                                                  loop19:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!§§pop())
                                                                                                                     {
                                                                                                                        break loop11;
                                                                                                                     }
                                                                                                                     addr248:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§ C§);
                                                                                                                        if(_loc9_ && param1)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        addr258:
                                                                                                                        §§pop().addChild(_loc4_);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           continue loop9;
                                                                                                                           §§goto(addr258);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr265:
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                         addr166:
                                                                                                      }
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      addr204:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_++;
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      _loc4_.§in§(1 / 20);
                                                                                                   }
                                                                                                   §§goto(addr204);
                                                                                                }
                                                                                                continue loop2;
                                                                                                addr114:
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop4;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr247:
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                   }
                                                   §§goto(addr265);
                                                }
                                             }
                                          }
                                       }
                                       addr323:
                                       addr318:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr248);
                                    }
                                 }
                                 §§goto(addr312);
                              }
                              §§goto(addr265);
                           }
                           §§goto(addr247);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!(_loc9_ && param1))
                           {
                              if(!(_loc9_ && param1))
                              {
                                 _loc4_.dispose();
                                 §§goto(addr166);
                              }
                              else
                              {
                                 §§goto(addr323);
                              }
                           }
                        }
                        §§goto(addr166);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr59);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc4_)
         {
            §§push(this.§]2§);
            if(_loc5_ || _loc2_)
            {
               §§pop().§5!7§(0,-1,true);
               §§goto(addr54);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§#Z§);
         }
         addr54:
         if(!_loc4_)
         {
            §§push(this.§]2§);
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§%;§)
         {
            if(_loc5_ || _loc2_)
            {
               §<!?§.§#T§.§0z§(_loc1_);
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.dispose();
         }
         if(_loc5_)
         {
            this.§%;§ = [];
            while(true)
            {
               this.§ C§ = null;
               §§goto(addr116);
            }
         }
         addr116:
         while(true)
         {
            this.§@E§ = null;
            if(_loc5_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop1;
            }
         }
      }
      
      private function §#Z§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§ !A§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§%C§);
         if(_loc4_)
         {
            §§push(§§pop() * param1);
            if(_loc4_)
            {
               addr24:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_)
            {
               §§push(this.§]2§);
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  if(!(_loc5_ && param1))
                  {
                     §§push(-§§pop());
                  }
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                     addr84:
                     if(_loc4_ || _loc3_)
                     {
                        addr92:
                        §§pop().y = -§§pop();
                        do
                        {
                           this.§'!_§();
                        }
                        while(!_loc4_);
                        
                        if(!(_loc5_ && param2))
                        {
                           return;
                           addr55:
                        }
                        continue loop0;
                     }
                  }
               }
            }
            §§goto(addr55);
         }
         §§goto(addr24);
      }
      
      private function § !A§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§!R§);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        addr52:
                        §§pop();
                        §§goto(addr67);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr67:
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(!this.§]2§.stage);
                     }
                     return;
                  }
               }
               for each(_loc1_ in this.§%;§)
               {
                  if(_loc4_)
                  {
                     §<!?§.§#T§.add(_loc1_);
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.visible = true;
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      private function §9!q§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         var _loc3_:* = this.§%;§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_)
            {
               §<!?§.§#T§.§0z§(_loc1_);
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §'6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            loop0:
            while(§§pop() != this.§!R§)
            {
               while(true)
               {
                  this.§!R§ = param1;
                  continue loop0;
               }
            }
            addr102:
            return;
            addr99:
         }
         while(true)
         {
            §§push(this.§!R§);
            if(!_loc3_)
            {
               if(!§§pop())
               {
                  this.§9!q§();
                  if(_loc2_)
                  {
                     if(_loc2_ || this)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§goto(addr24);
                        }
                        §§goto(addr102);
                     }
                     else
                     {
                        addr76:
                        this.§ !A§();
                     }
                  }
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  if(_loc2_ || _loc2_)
                  {
                     break;
                  }
                  §§goto(addr93);
               }
               §§goto(addr76);
            }
            else
            {
               §§goto(addr99);
            }
         }
         addr24:
      }
      
      protected function §'!_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
                     addr138:
                     while(true)
                     {
                        §§push(this.§%;§.length > 0);
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(§§pop())
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
                  §§goto(addr138);
               }
               addr24:
               §§push(§%X§.§+!_§);
               if(_loc2_ || _loc1_)
               {
                  §§push(this.§]2§.x - this.§<!^§);
                  if(!(_loc1_ && this))
                  {
                     §§push(§§pop() * §%X§.§'!f§);
                  }
                  §§push(§§pop() + §§pop());
               }
               if(§§pop() <= 0)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     this.§87§();
                  }
                  if(_loc1_ && _loc2_)
                  {
                     addr92:
                     §§goto(addr24);
                  }
                  return;
               }
               this.§]2§.x -= this.§<!^§;
               §§goto(addr92);
            }
         }
         §§goto(addr138);
      }
      
      private function §87§() : void
      {
      }
   }
}
