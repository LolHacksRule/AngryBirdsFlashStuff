package §+!c§
{
   import §1!i§.§,#_§;
   import com.rovio.assets.§5_§;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class §9"1§ extends Sprite
   {
      
      private static var §!">§:§,#_§;
       
      
      private var §""b§:String;
      
      private var §1"O§:Array;
      
      private var §6"?§:Number = -1;
      
      private var §[!4§:Number = -1;
      
      private var §5!n§:Number = -1;
      
      private var §9"%§:Number = -1;
      
      private var §&"H§:Boolean;
      
      private var §=#V§:Array;
      
      public function §9"1§(param1:String, param2:Boolean = true)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§1"O§ = [];
            while(true)
            {
               super();
               loop1:
               while(!(_loc3_ && param1))
               {
                  while(true)
                  {
                     this.§&"H§ = param2;
                     loop3:
                     while(true)
                     {
                        this.§""b§ = param1;
                        loop4:
                        while(this.§&"H§)
                        {
                           loop5:
                           while(_loc4_)
                           {
                              addEventListener(Event.ADDED_TO_STAGE,this.§2f§);
                              loop6:
                              while(true)
                              {
                                 addEventListener(Event.REMOVED_FROM_STAGE,this.§+y§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§!">§);
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop() == null)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             if(_loc3_)
                                             {
                                                continue loop3;
                                             }
                                             §!">§ = new §,#_§();
                                             loop10:
                                             while(true)
                                             {
                                                addr85:
                                                loop15:
                                                while(true)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr92:
                                                      while(true)
                                                      {
                                                         this.§=#V§ = §!">§[this.§""b§];
                                                         if(_loc4_)
                                                         {
                                                            addr33:
                                                            if(!(_loc3_ && this))
                                                            {
                                                               break;
                                                            }
                                                            addr61:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               continue loop9;
                                                               §§goto(addr33);
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop15;
                                                         §§goto(addr92);
                                                      }
                                                      if(!_loc3_)
                                                      {
                                                         break loop4;
                                                      }
                                                      continue loop6;
                                                      addr24:
                                                   }
                                                   continue loop10;
                                                }
                                             }
                                          }
                                          continue loop4;
                                       }
                                       while(true)
                                       {
                                          §§push(§!">§);
                                          if(!_loc3_)
                                          {
                                             continue loop8;
                                          }
                                          addr81:
                                          while(true)
                                          {
                                             §§push(this.§""b§);
                                             addr83:
                                             while(true)
                                             {
                                                §§pop()[§§pop()] = [];
                                                §§goto(addr85);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr159);
      }
      
      private function §2f§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§@",§();
         }
      }
      
      private function §+y§(param1:Event) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = null;
         var _loc4_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.§1"O§.length)
         {
            _loc3_ = this.§1"O§[_loc2_];
            if(!_loc5_)
            {
               while(_loc3_.length > 0)
               {
                  _loc4_ = _loc3_.pop();
                  if(_loc6_ || this)
                  {
                     removeChild(_loc4_);
                     if(_loc6_)
                     {
                        this.§#2§(_loc4_);
                     }
                  }
               }
               if(_loc5_)
               {
                  continue;
               }
            }
            _loc2_++;
         }
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§6"?§ = param1;
         }
         while(true)
         {
            this.§[!4§ = param2;
            while(_loc3_)
            {
               this.§@",§();
               if(_loc3_ || param2)
               {
                  return;
               }
            }
         }
      }
      
      private function §@",§() : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObject = null;
         if(_loc10_ || _loc1_)
         {
            §§push(this.§6"?§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc10_)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§pop();
                              loop4:
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§[!4§);
                                    if(!(_loc9_ && this))
                                    {
                                       §§push(0);
                                       if(_loc10_)
                                       {
                                          if(!_loc10_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() < §§pop());
                                          if(_loc10_)
                                          {
                                             if(!(_loc9_ && _loc1_))
                                             {
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc10_ || _loc2_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   §§push(this.§5!n§);
                                                   if(_loc10_ || _loc3_)
                                                   {
                                                      if(!_loc10_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(-1);
                                                      if(_loc10_ || _loc3_)
                                                      {
                                                         §§push(§§pop() == §§pop());
                                                         if(!(_loc9_ && _loc2_))
                                                         {
                                                            §§push(§§pop());
                                                            if(!_loc10_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               if(_loc10_ || _loc2_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc10_ || _loc3_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           §§push(this.§9"%§);
                                                                        }
                                                                        continue loop5;
                                                                        break loop5;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  addr143:
                                                                  _loc4_ = this.§#!`§();
                                                                  if(!_loc9_)
                                                                  {
                                                                     this.§5!n§ = _loc4_.width;
                                                                     addr173:
                                                                     this.§9"%§ = _loc4_.height;
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        if(this.§&"H§)
                                                                        {
                                                                           if(!(_loc9_ && _loc3_))
                                                                           {
                                                                              if(_loc10_ || this)
                                                                              {
                                                                                 this.§#2§(_loc4_);
                                                                                 §§goto(addr171);
                                                                              }
                                                                              §§goto(addr173);
                                                                           }
                                                                           addr171:
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr173);
                                                                           }
                                                                           §§goto(addr191);
                                                                        }
                                                                        addr191:
                                                                        var _loc1_:int = Math.ceil(this.§6"?§ / (this.§5!n§ * scaleX));
                                                                        var _loc2_:int = Math.ceil(this.§[!4§ / (this.§9"%§ * scaleY));
                                                                        var _loc3_:* = 0;
                                                                        addr380:
                                                                        §§push(_loc3_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(this.§1"O§);
                                                                           if(_loc10_)
                                                                           {
                                                                              if(§§pop() < §§pop().length)
                                                                              {
                                                                                 §§push(this.§1"O§);
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    §§push(_loc3_);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(int((_loc5_ = §§pop()[§§pop()]).length - 1));
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr369:
                                                                                             addr370:
                                                                                             addr371:
                                                                                             if(_loc6_ < 0)
                                                                                             {
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   addr379:
                                                                                                   _loc3_++;
                                                                                                }
                                                                                                §§goto(addr380);
                                                                                             }
                                                                                             §§push(_loc6_);
                                                                                             if(_loc10_ || _loc1_)
                                                                                             {
                                                                                                §§push(_loc1_);
                                                                                                if(_loc10_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() >= §§pop());
                                                                                                   if(!(_loc9_ && _loc2_))
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            if(_loc10_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc3_);
                                                                                                               if(!(_loc9_ && this))
                                                                                                               {
                                                                                                                  §§push(_loc2_);
                                                                                                                  if(_loc10_ || this)
                                                                                                                  {
                                                                                                                     addr306:
                                                                                                                     if(§§pop() >= §§pop())
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           addr309:
                                                                                                                           _loc7_ = _loc5_[_loc6_];
                                                                                                                           if(!(_loc9_ && _loc3_))
                                                                                                                           {
                                                                                                                              removeChild(_loc7_);
                                                                                                                           }
                                                                                                                           addr336:
                                                                                                                           addr349:
                                                                                                                           if(this.§&"H§)
                                                                                                                           {
                                                                                                                              addr340:
                                                                                                                              this.§#2§(_loc7_);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr322:
                                                                                                                                 _loc5_.pop();
                                                                                                                                 if(_loc10_ || this)
                                                                                                                                 {
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          §§goto(addr336);
                                                                                                                                       }
                                                                                                                                       addr350:
                                                                                                                                       §§push(_loc6_);
                                                                                                                                       if(_loc10_)
                                                                                                                                       {
                                                                                                                                          addr353:
                                                                                                                                          §§push(§§pop() - 1);
                                                                                                                                          if(!(_loc9_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             addr361:
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             if(_loc10_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr369);
                                                                                                                                             }
                                                                                                                                             §§goto(addr379);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr370);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr340);
                                                                                                                              }
                                                                                                                              §§goto(addr349);
                                                                                                                           }
                                                                                                                           §§goto(addr322);
                                                                                                                        }
                                                                                                                        §§goto(addr380);
                                                                                                                     }
                                                                                                                     §§goto(addr350);
                                                                                                                  }
                                                                                                                  §§goto(addr371);
                                                                                                               }
                                                                                                               §§goto(addr361);
                                                                                                            }
                                                                                                            §§goto(addr309);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr306);
                                                                                             }
                                                                                             §§goto(addr361);
                                                                                          }
                                                                                          §§goto(addr379);
                                                                                       }
                                                                                       §§goto(addr353);
                                                                                    }
                                                                                    addr441:
                                                                                    _loc5_ = §§pop()[§§pop()];
                                                                                    if(_loc10_ || _loc2_)
                                                                                    {
                                                                                       addr494:
                                                                                       if(_loc5_.length >= _loc1_)
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr510:
                                                                                             _loc3_++;
                                                                                          }
                                                                                          §§goto(addr511);
                                                                                       }
                                                                                       (_loc8_ = this.§#!`§()).x = _loc5_.length * this.§5!n§;
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          _loc8_.y = _loc3_ * this.§9"%§;
                                                                                       }
                                                                                       addr475:
                                                                                       addChild(_loc8_);
                                                                                       if(_loc10_ || _loc1_)
                                                                                       {
                                                                                          _loc5_.push(_loc8_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(false)
                                                                                             {
                                                                                                §§goto(addr475);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr494);
                                                                                       }
                                                                                       addr493:
                                                                                       §§goto(addr493);
                                                                                    }
                                                                                    §§goto(addr510);
                                                                                 }
                                                                                 §§goto(addr440);
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                              }
                                                                              addr411:
                                                                              §§push(this.§1"O§);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 if(§§pop().length < _loc2_)
                                                                                 {
                                                                                    §§push(this.§1"O§);
                                                                                    if(_loc10_ || _loc1_)
                                                                                    {
                                                                                       §§pop().push([]);
                                                                                       if(!(_loc9_ && _loc2_))
                                                                                       {
                                                                                          §§goto(addr411);
                                                                                       }
                                                                                       §§goto(addr436);
                                                                                    }
                                                                                    §§goto(addr440);
                                                                                 }
                                                                                 if(_loc10_ || _loc3_)
                                                                                 {
                                                                                    §§push(0);
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       if(!(_loc9_ && this))
                                                                                       {
                                                                                          addr436:
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr511);
                                                                                 }
                                                                                 §§goto(addr436);
                                                                              }
                                                                              §§goto(addr440);
                                                                           }
                                                                           §§goto(addr511);
                                                                        }
                                                                        addr511:
                                                                        if(_loc3_ < this.§1"O§.length)
                                                                        {
                                                                           addr440:
                                                                           §§goto(addr441);
                                                                           §§push(this.§1"O§);
                                                                           §§push(_loc3_);
                                                                        }
                                                                        return;
                                                                        addr185:
                                                                     }
                                                                     addr190:
                                                                     §§goto(addr190);
                                                                  }
                                                                  §§goto(addr185);
                                                               }
                                                               addr142:
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr143);
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                         }
                                                         §§goto(addr142);
                                                      }
                                                   }
                                                   break loop5;
                                                }
                                                addr124:
                                                return;
                                                addr115:
                                             }
                                             continue loop3;
                                          }
                                          §§goto(addr142);
                                       }
                                       addr141:
                                       §§goto(addr142);
                                       §§push(§§pop() == §§pop());
                                    }
                                    break;
                                 }
                                 §§goto(addr141);
                              }
                           }
                        }
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr142);
               }
            }
         }
         §§goto(addr124);
      }
      
      override public function get width() : Number
      {
         return this.§6"?§;
      }
      
      override public function set width(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6"?§ = param1;
         }
         do
         {
            this.§@",§();
         }
         while(!_loc3_);
         
      }
      
      override public function get height() : Number
      {
         return this.§[!4§;
      }
      
      override public function set height(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§[!4§ = param1;
         }
         do
         {
            this.§@",§();
         }
         while(!_loc3_);
         
      }
      
      override public function set scaleX(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.scaleX = param1;
         }
         do
         {
            this.§@",§();
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      override public function set scaleY(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.scaleY = param1;
         }
         do
         {
            this.§@",§();
         }
         while(_loc2_ && param1);
         
      }
      
      private function §#!`§() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§&"H§);
            if(_loc1_)
            {
               §§push(false);
               if(_loc1_)
               {
                  addr101:
                  §§push(§§pop() == §§pop());
                  if(_loc1_)
                  {
                     §§push(§§pop());
                  }
                  while(true)
                  {
                     §§pop();
                     addr102:
                     while(true)
                     {
                        §§push(this.§=#V§);
                        addr41:
                        §§goto(addr56);
                     }
                  }
                  addr101:
               }
               if(!§§pop())
               {
                  §§goto(addr101);
               }
               addr56:
               while(true)
               {
                  §§push(§§pop().length == 0);
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop2;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc1_ || _loc1_)
                     {
                        if(!(_loc2_ && this))
                        {
                           return new §5_§.§`"G§(this.§""b§)();
                        }
                        continue loop3;
                     }
                  }
                  §§push(this.§=#V§);
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  §§goto(addr41);
               }
               return §§pop().pop();
            }
            §§goto(addr101);
         }
         §§goto(addr102);
      }
      
      private function §#2§(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§=#V§.push(param1);
         }
      }
   }
}
