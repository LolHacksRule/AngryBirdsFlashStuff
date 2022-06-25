package §68§
{
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §,!5§.§6o§;
   import §,!5§.§^g§;
   import §,!Q§.§,!-§;
   import §-w§.§+W§;
   import §-w§.§,Q§;
   import §-w§.§]c§;
   import §0!I§.ParticleDesignerPS;
   import §2!R§.§#C§;
   import §<&§.§^b§;
   import §?!G§.ParticleManager;
   import §^!+§.Texture;
   import starling.events.Event;
   
   public class §7L§
   {
       
      
      private var §,9§:int;
      
      private var §<!d§:int;
      
      private var §'<§:Number;
      
      private var §+!J§:Boolean;
      
      private var §8X§:Sprite;
      
      private var §@B§:Array;
      
      private var §]!4§:Boolean = true;
      
      private var §;!t§:§,Q§;
      
      private var §]E§:Sprite;
      
      private var §`!&§:Sprite;
      
      public function §7L§(param1:§,!-§, param2:Sprite, param3:§,Q§, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§+W§ = null;
         if(!(_loc14_ && param3))
         {
            this.§@B§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§;!t§ = param3;
                  while(_loc15_)
                  {
                     this.§8X§ = param2;
                     while(_loc15_)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr45);
         }
         var _loc5_:* = Number(1);
         if(_loc15_)
         {
            §§push(param1.§'8§);
            if(_loc15_)
            {
               if(§§pop() != 0)
               {
                  if(_loc15_ || this)
                  {
                     addr100:
                     §§push(param1.§'8§);
                     if(!_loc14_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc14_)
                        {
                           addr107:
                           _loc5_ = §§pop();
                           §§push(Number(0));
                        }
                        var _loc7_:* = §§pop();
                        var _loc8_:* = Number(0);
                        var _loc9_:* = Number(1);
                        var _loc10_:DisplayObject;
                        if(!(_loc10_ = §]c§.§!!h§(param1.mName,this.§;!t§,param1.§^!%§)))
                        {
                           if(!(_loc14_ && param2))
                           {
                              §§push((_loc13_ = param3.§6u§(param1.mName)).pivotY);
                              if(_loc15_ || param3)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc15_)
                                 {
                                    _loc7_ = §§pop();
                                    if(!_loc14_)
                                    {
                                       if(!this.§+!J§)
                                       {
                                          if(!(_loc14_ && this))
                                          {
                                             addr170:
                                             _loc8_ = Number(_loc13_.pivotX);
                                             addr167:
                                          }
                                       }
                                       _loc6_ = _loc13_.texture;
                                       if(!(_loc14_ && param3))
                                       {
                                          §§push(this);
                                          §§push(_loc13_.width);
                                          if(!(_loc14_ && param3))
                                          {
                                             §§push(§§pop() * _loc5_);
                                             if(_loc15_ || param1)
                                             {
                                                §§push(§§pop() - 2);
                                             }
                                          }
                                          §§pop().§,9§ = §§pop();
                                          if(!_loc14_)
                                          {
                                             §§push(_loc13_.scale);
                                             if(!(_loc14_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc9_ = §§pop();
                                             if(!_loc14_)
                                             {
                                                addr261:
                                                if(this.§,9§ <= 0)
                                                {
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      throw new Error("Invalid texture for background layer: " + param1.mName);
                                                   }
                                                   addr281:
                                                }
                                                this.§,9§ = Math.round(this.§,9§);
                                                loop27:
                                                while(true)
                                                {
                                                   addr299:
                                                   addr352:
                                                   while(true)
                                                   {
                                                      if(param1.§;9§)
                                                      {
                                                         if(!_loc14_)
                                                         {
                                                            addr305:
                                                            §§push(this);
                                                            §§push(2);
                                                            §§push(§^g§.§<!"§);
                                                            if(_loc15_ || param2)
                                                            {
                                                               §§push(1.5);
                                                               if(!(_loc14_ && param3))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc14_)
                                                                  {
                                                                     addr331:
                                                                     §§push(§§pop() / (this.§,9§ * param4));
                                                                  }
                                                                  §§pop().§<!d§ = §§pop() + §§pop();
                                                                  break;
                                                               }
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         break;
                                                      }
                                                      this.§<!d§ = 1;
                                                      if(!_loc15_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop27;
                                                   }
                                                   var _loc11_:Sprite = new Sprite();
                                                   var _loc12_:int = 0;
                                                   loop7:
                                                   while(true)
                                                   {
                                                      if(_loc12_ >= this.§<!d§)
                                                      {
                                                         addr682:
                                                         if(_loc15_)
                                                         {
                                                            break;
                                                         }
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(this.§]E§);
                                                            while(true)
                                                            {
                                                               if(§§pop().numChildren <= 0)
                                                               {
                                                                  §§push(this.§]E§);
                                                                  if(!_loc14_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               addr687:
                                                               while(true)
                                                               {
                                                                  §§push(this.§8X§);
                                                                  addr689:
                                                                  while(true)
                                                                  {
                                                                     §§pop().addChild(this.§]E§);
                                                                  }
                                                               }
                                                            }
                                                            if(!_loc15_)
                                                            {
                                                               continue;
                                                            }
                                                            §§pop().dispose();
                                                            while(true)
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  break loop16;
                                                               }
                                                            }
                                                         }
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §§push(this.§`!&§);
                                                            if(_loc15_ || param2)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc15_ || param2)
                                                                     {
                                                                        §§push(this.§`!&§);
                                                                        break;
                                                                     }
                                                                     §§goto(addr682);
                                                                     continue loop20;
                                                                  }
                                                                  while(§§pop().numChildren <= 0)
                                                                  {
                                                                     §§push(this.§`!&§);
                                                                     if(_loc14_ && param2)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     addr591:
                                                                     loop14:
                                                                     for(; _loc15_ || param2; §§goto(addr591))
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr547:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§8X§);
                                                                              if(_loc14_ && param2)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§'6§);
                                                                              if(!_loc15_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 if(_loc15_ || this)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 addr697:
                                                                                 addr697:
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr681);
                                                                                 }
                                                                              }
                                                                              §§goto(addr687);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc14_ && param3))
                                                                              {
                                                                                 if(_loc15_ || param3)
                                                                                 {
                                                                                    §§pop().addChildAt(this.§`!&§,0);
                                                                                    break loop14;
                                                                                 }
                                                                                 addr695:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().addChild(_loc11_);
                                                                                    §§goto(addr697);
                                                                                 }
                                                                              }
                                                                              §§goto(addr689);
                                                                           }
                                                                           addr547:
                                                                           addr634:
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr613);
                                                                        }
                                                                        §§goto(addr682);
                                                                     }
                                                                     §§pop().dispose();
                                                                     while(true)
                                                                     {
                                                                        if(_loc15_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr547);
                                                                           }
                                                                           addr654:
                                                                        }
                                                                        §§goto(addr675);
                                                                     }
                                                                     addr652:
                                                                  }
                                                                  addr613:
                                                                  addr625:
                                                                  if(!(_loc14_ && param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr634);
                                                                        §§goto(addr625);
                                                                     }
                                                                     addr632:
                                                                  }
                                                                  §§goto(addr652);
                                                                  addr622:
                                                               }
                                                               §§goto(addr547);
                                                            }
                                                            §§goto(addr622);
                                                         }
                                                         addr682:
                                                         addr602:
                                                      }
                                                      else
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc15_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(!_loc14_)
                                                                  {
                                                                     _loc10_ = §]c§.§!!h§(param1.mName,this.§;!t§,param1.§^!%§);
                                                                     addr387:
                                                                     §§push(_loc10_);
                                                                     §§push(_loc12_ - 1);
                                                                     if(_loc15_ || param2)
                                                                     {
                                                                        §§push(§§pop() * this.§,9§);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§push(_loc8_);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc15_ || param1)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(_loc15_ || param2)
                                                                                 {
                                                                                    addr433:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc15_ || param3)
                                                                                    {
                                                                                       addr431:
                                                                                       §§push(§§pop() + param1.§ !F§);
                                                                                    }
                                                                                    §§pop().x = §§pop() + §§pop();
                                                                                    if(_loc15_)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       §§push(_loc7_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(-§§pop());
                                                                                          if(!_loc14_)
                                                                                          {
                                                                                             addr503:
                                                                                             §§push(_loc5_);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                addr512:
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                   §§push(param1.§1!M§);
                                                                                                }
                                                                                                §§pop().y = §§pop();
                                                                                                if(!(_loc14_ && param3))
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc15_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc9_);
                                                                                                   }
                                                                                                   §§pop().scaleX = §§pop();
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(_loc10_);
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc15_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc9_);
                                                                                                   }
                                                                                                   §§pop().scaleY = §§pop();
                                                                                                   if(_loc15_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this);
                                                                                                         §§push(param1);
                                                                                                         §§push(_loc12_ - 1);
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§,9§);
                                                                                                         }
                                                                                                         §§pop().§7!#§(§§pop(),§§pop());
                                                                                                         if(_loc15_)
                                                                                                         {
                                                                                                            _loc11_.addChild(_loc10_);
                                                                                                            if(_loc15_ || this)
                                                                                                            {
                                                                                                               if(false)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               _loc10_ = null;
                                                                                                               if(!_loc14_)
                                                                                                               {
                                                                                                                  _loc12_++;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            addr542:
                                                                                                            §§goto(addr695);
                                                                                                            §§push(this.§8X§);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr687);
                                                                                                   }
                                                                                                   §§goto(addr697);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr602);
                                                                                                }
                                                                                                addr692:
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                          }
                                                                                          §§goto(addr512);
                                                                                       }
                                                                                       §§goto(addr503);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr431);
                                                                              }
                                                                           }
                                                                           §§goto(addr431);
                                                                        }
                                                                     }
                                                                     §§goto(addr433);
                                                                  }
                                                                  break;
                                                               }
                                                               _loc10_ = new §?!U§(_loc6_,false,param1.§^!%§);
                                                               §§goto(addr387);
                                                               §§goto(addr387);
                                                            }
                                                            §§goto(addr654);
                                                         }
                                                         §§goto(addr387);
                                                      }
                                                      §§goto(addr692);
                                                   }
                                                   _loc11_.flatten();
                                                   if(_loc15_ || param1)
                                                   {
                                                      §§goto(addr542);
                                                   }
                                                   §§goto(addr632);
                                                }
                                                addr351:
                                             }
                                             §§goto(addr305);
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr351);
                                    }
                                    §§goto(addr167);
                                 }
                              }
                              §§goto(addr170);
                           }
                           else
                           {
                              addr248:
                              §§push((_loc10_.§]!N§.left + _loc10_.§]!N§.right) / 2);
                              if(!_loc14_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc8_ = §§pop();
                           }
                        }
                        else
                        {
                           §§push(this);
                           §§push(_loc10_.width);
                           if(!_loc14_)
                           {
                              §§push(§§pop() * _loc5_);
                              if(!_loc14_)
                              {
                                 addr229:
                                 §§push(§§pop() - 2);
                              }
                              §§pop().§,9§ = §§pop();
                              if(!(_loc14_ && param3))
                              {
                                 §§push(Number(_loc10_.§]!N§.bottom));
                                 if(_loc15_)
                                 {
                                    _loc7_ = §§pop();
                                    if(_loc15_)
                                    {
                                       §§goto(addr248);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr248);
                              }
                              §§goto(addr261);
                           }
                           §§goto(addr229);
                        }
                        §§goto(addr261);
                     }
                     §§goto(addr107);
                  }
               }
            }
            §§goto(addr107);
         }
         §§goto(addr100);
      }
      
      public function get §[!7§() : Boolean
      {
         return this.§+!J§;
      }
      
      private function §7!#§(param1:§,!-§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§6o§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§@B§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§<x§(_loc3_.id,this.§;!t§)));
            if(!(_loc10_ && param2))
            {
               if(§§pop())
               {
                  if(!(_loc10_ && _loc3_))
                  {
                     addr63:
                     §§pop();
                     if(_loc9_ || param2)
                     {
                        addr75:
                        if(_loc4_.§9N§ > 0)
                        {
                           if(!(_loc10_ && param2))
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§ !F§;
                              if(!(_loc10_ && _loc3_))
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(_loc9_ || param1)
                                 {
                                    addr110:
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(_loc9_)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       loop1:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          while(true)
                                          {
                                             _loc4_.start();
                                             loop3:
                                             for(; _loc9_; if(!(_loc10_ && this))
                                             {
                                                continue loop0;
                                             })
                                             {
                                                §^b§.§&#§.add(_loc4_);
                                                loop4:
                                                while(true)
                                                {
                                                   this.§@B§.push(_loc4_);
                                                   loop5:
                                                   while(true)
                                                   {
                                                      if(!_loc3_.isBehindGraphic)
                                                      {
                                                         §§push(this.§]E§);
                                                         loop6:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               continue;
                                                            }
                                                            loop7:
                                                            while(true)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  this.§]E§ = new Sprite();
                                                                  while(true)
                                                                  {
                                                                     continue loop6;
                                                                     addr190:
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                                              {
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_++;
                                                                                             }
                                                                                             addr184:
                                                                                          }
                                                                                          §§goto(addr269);
                                                                                       }
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§goto(addr184);
                                                                                                continue loop26;
                                                                                             }
                                                                                             addr206:
                                                                                          }
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §§goto(addr190);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(!_loc10_)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   break loop13;
                                                                                                }
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   addr209:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      addr211:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         §§goto(addr212);
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr212:
                                                                                             addr229:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop0;
                                                                                    addr168:
                                                                                 }
                                                                                 if(!(_loc10_ && this))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 addr266:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§`!&§);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr269:
                                                                                          while(true)
                                                                                          {
                                                                                             this.§`!&§ = new Sprite();
                                                                                             break loop13;
                                                                                          }
                                                                                          addr269:
                                                                                       }
                                                                                       addr245:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.§`!&§);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             break;
                                                                                             addr252:
                                                                                          }
                                                                                          §§pop().addChild(_loc4_);
                                                                                          while(_loc9_)
                                                                                          {
                                                                                             continue loop1;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr269);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc4_.§&9§(1 / 20);
                                                                              }
                                                                              §§goto(addr206);
                                                                           }
                                                                           §§goto(addr211);
                                                                        }
                                                                        addr273:
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr245);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr252);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr266);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr197);
                                 }
                                 §§goto(addr269);
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr273);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!_loc10_)
                           {
                              _loc4_.dispose();
                           }
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr110);
                  }
               }
               §§goto(addr75);
            }
            §§goto(addr63);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc5_ || this)
         {
            §§push(this.§8X§);
            if(_loc5_)
            {
               §§pop().§5!c§(0,-1,true);
               addr49:
               if(!(_loc4_ && _loc2_))
               {
                  §§push(this.§8X§);
               }
               var _loc3_:* = this.§@B§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc4_)
                  {
                     §^b§.§&#§.§4!g§(_loc1_);
                     if(_loc4_ && _loc1_)
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(!(_loc4_ && _loc3_))
               {
                  this.§@B§ = [];
                  while(true)
                  {
                     this.§`!&§ = null;
                     while(_loc5_ || _loc1_)
                     {
                        this.§]E§ = null;
                        if(!_loc5_)
                        {
                           continue;
                        }
                        return;
                        addr119:
                     }
                  }
               }
               §§goto(addr119);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§'6§);
         }
         §§goto(addr49);
      }
      
      private function §'6§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#W§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§'<§);
         if(_loc4_)
         {
            §§push(§§pop() * param1);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.§8X§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc5_ && param2))
               {
                  §§push(-§§pop());
               }
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
                  addr69:
                  if(_loc4_ || param2)
                  {
                     addr77:
                     §§pop().y = -§§pop();
                     while(true)
                     {
                        this.§?!I§();
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                     return;
                     addr78:
                  }
               }
            }
         }
         §§goto(addr78);
      }
      
      private function §#W§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc4_ || _loc2_)
         {
            §§push(this.§]!4§);
            if(!(_loc5_ && _loc2_))
            {
               §§push(!§§pop());
               if(!(_loc5_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc5_ && _loc2_)
                     {
                     }
                  }
                  §§goto(addr69);
               }
               §§pop();
               if(_loc4_)
               {
                  §§push(!this.§8X§.stage);
               }
               §§goto(addr72);
            }
            addr69:
            if(§§pop())
            {
               if(_loc4_)
               {
                  §§goto(addr72);
               }
            }
            for each(_loc1_ in this.§@B§)
            {
               if(_loc4_)
               {
                  §^b§.§&#§.add(_loc1_);
                  if(_loc5_)
                  {
                     continue;
                  }
               }
               _loc1_.visible = true;
            }
            return;
         }
         addr72:
      }
      
      private function §'d§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§@B§)
         {
            if(_loc4_)
            {
               §^b§.§&#§.§4!g§(_loc1_);
               if(!_loc5_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §"$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() == this.§]!4§)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr57:
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr24);
                     }
                  }
               }
               addr86:
               while(true)
               {
                  this.§]!4§ = param1;
                  continue loop0;
               }
            }
            return;
            addr92:
         }
         do
         {
            §§push(this.§]!4§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  this.§'d§();
                  if(_loc2_ || _loc3_)
                  {
                     if(!(_loc2_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr57);
                  }
                  else
                  {
                     addr85:
                  }
                  addr24:
               }
               continue;
               return;
            }
            §§goto(addr92);
            §§goto(addr86);
         }
         while(!_loc2_);
         
         this.§#W§();
         §§goto(addr85);
      }
      
      private function §?!I§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§<!d§ == 1);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr142:
                     do
                     {
                        §§push(this.§@B§.length > 0);
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc1_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc2_ && _loc2_)
                  {
                     break;
                  }
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr133);
                  }
                  §§goto(addr142);
               }
               addr28:
               §§push(§#C§.§]!J§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.§8X§.x - this.§,9§);
                  if(_loc1_ || this)
                  {
                     §§push(§§pop() * §#C§.§-!k§);
                  }
                  §§push(§§pop() + §§pop());
               }
               if(§§pop() <= 0)
               {
                  if(!(_loc2_ && this))
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        addr96:
                        §§goto(addr28);
                     }
                     this.§3`§();
                  }
                  return;
               }
               this.§8X§.x -= this.§,9§;
               §§goto(addr96);
            }
         }
         addr133:
      }
      
      private function §3`§() : void
      {
      }
   }
}
