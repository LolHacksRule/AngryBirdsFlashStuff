package §8!+§
{
   import §#b§.b2Shape;
   import §&!m§.§&m§;
   import §&!m§.§;5§;
   import §+]§.§"U§;
   import §+]§.§"^§;
   import §+]§.§7&§;
   import §6C§.§ set§;
   import §<!<§.§7E§;
   import §<!B§.b2Transform;
   import §<!B§.b2Vec2;
   import §>!'§.§<!3§;
   import §`a§.§^7§;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   
   public class §"!X§ extends §]p§
   {
      
      private static const §9!%§:Number = 5.0E-4;
      
      private static const §%T§:Number = §§pop();
      
      private static const §;!s§:Number = 1.005;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§findproperty(§9!%§));
            §§push(§7E§.§8!'§);
            if(_loc1_)
            {
               §§push(§§pop() / 100);
            }
            §§pop().§9!%§ = §§pop();
            if(!(_loc2_ && §"!X§))
            {
               §§goto(addr58);
            }
            §§goto(addr72);
         }
         addr58:
         §§push(§§findproperty(§%T§));
         §§push(§9!%§);
         if(!_loc2_)
         {
            §§push(§§pop() * 30);
         }
         if(!(_loc2_ && §"!X§))
         {
            addr72:
            §;!s§ = 1.005;
         }
      }
      
      public var §&!@§:Point;
      
      private var §``§:Number = 0;
      
      private var §7;§:Number = 0;
      
      private var §;!c§:Boolean = false;
      
      private var §^"§:Boolean = true;
      
      private var §+A§:Boolean = false;
      
      public var §<!$§:Number;
      
      public var §`Z§:Number;
      
      public function §"!X§(param1:§"U§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super(param1);
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super.update(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(Math.abs(this.§``§) > 0);
               if(_loc3_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        §§pop();
                        if(!(_loc2_ && param1))
                        {
                           §§push(Math.abs(this.§7;§) > 0);
                           if(!(_loc2_ && param1))
                           {
                              addr82:
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(Math.abs(this.§``§) < §%T§)
                                    {
                                       §§push(this);
                                       §§push(this.§``§);
                                       if(!_loc2_)
                                       {
                                          §§push(§§pop() * Math.pow(§;!s§,param1));
                                       }
                                       §§pop().§``§ = §§pop();
                                       §§goto(addr102);
                                    }
                                    addr102:
                                    if(Math.abs(this.§7;§) < §%T§)
                                    {
                                    }
                                    §§goto(addr126);
                                 }
                                 §§push(this);
                                 §§push(this.§7;§);
                                 if(!(_loc2_ && this))
                                 {
                                    §§push(§§pop() * Math.pow(§;!s§,param1));
                                 }
                                 §§pop().§7;§ = §§pop();
                                 if(_loc3_)
                                 {
                                    addr126:
                                    §§push(this);
                                    §§push(this.§``§);
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§push(this.§7;§);
                                    if(!_loc2_)
                                    {
                                       §§push(§§pop() * param1);
                                    }
                                    §§pop().§,Y§(§§pop(),§§pop());
                                    §§goto(addr155);
                                 }
                              }
                              addr155:
                              §§goto(addr157);
                           }
                           addr157:
                           if(this.§+A§)
                           {
                              if(!(_loc2_ && param1))
                              {
                                 addr165:
                                 this.§>!t§();
                              }
                           }
                           this.§'!§();
                           return;
                        }
                        §§goto(addr102);
                     }
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr165);
         }
         §§goto(addr102);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.stopObjectDrag();
            if(!(_loc2_ && _loc1_))
            {
               this.§2!W§();
               if(!_loc2_)
               {
                  addr46:
                  super.deActivate();
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      public function isDragging() : Boolean
      {
         return this.§+A§;
      }
      
      override public function onKeyDown(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Vector.<§;5§> = null;
         var _loc3_:§;5§ = null;
         if(param1 == Keyboard.SHIFT)
         {
            this.§;!c§ = true;
            if(!(_loc7_ || param1))
            {
               addr177:
            }
         }
         else
         {
            §§push(param1);
            if(_loc7_ || _loc3_)
            {
               if(§§pop() == Keyboard.UP)
               {
                  if(_loc7_ || _loc3_)
                  {
                     this.§7;§ = Math.min(this.§7;§,-§9!%§);
                  }
                  else
                  {
                     addr101:
                     this.§``§ = Math.min(this.§``§,-§9!%§);
                     if(!_loc7_)
                     {
                        addr193:
                     }
                  }
                  §§goto(addr300);
               }
               else
               {
                  §§push(param1);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop() == Keyboard.DOWN)
                     {
                        if(_loc7_)
                        {
                           this.§7;§ = Math.max(this.§7;§,§9!%§);
                           if(_loc6_)
                           {
                              addr168:
                              §%!3§.deleteSelectedObjectsFromLevel();
                              if(_loc7_ || _loc3_)
                              {
                                 §§goto(addr177);
                              }
                           }
                        }
                        else
                        {
                           addr154:
                        }
                        §§goto(addr300);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc7_)
                        {
                           addr91:
                           if(§§pop() == Keyboard.LEFT)
                           {
                              if(!(_loc6_ && param1))
                              {
                                 §§goto(addr101);
                              }
                              else
                              {
                                 addr125:
                                 this.§``§ = Math.max(this.§``§,§9!%§);
                                 if(!_loc7_)
                                 {
                                 }
                                 §§goto(addr300);
                              }
                           }
                           else
                           {
                              §§push(param1);
                              if(_loc7_)
                              {
                                 if(§§pop() == Keyboard.RIGHT)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§goto(addr125);
                                    }
                                    else
                                    {
                                       §§goto(addr184);
                                    }
                                 }
                                 else
                                 {
                                    if(param1 == Keyboard.SPACE)
                                    {
                                       if(_loc7_)
                                       {
                                          §%!3§.setTool(§-!k§);
                                          §§goto(addr154);
                                       }
                                       else
                                       {
                                          addr184:
                                          §%!3§.copyObjectsToClipboard();
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§goto(addr193);
                                          }
                                          else
                                          {
                                             addr198:
                                             _loc2_ = §%!3§.pasteSelectedObjectsIntoLevel();
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc2_.length > 0)
                                                {
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      this.clearSelection();
                                                      addr222:
                                                      for each(_loc3_ in _loc2_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §;;§(_loc3_,true);
                                                         }
                                                      }
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         this.§6=§();
                                                      }
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr300);
                                             }
                                             §§goto(addr222);
                                          }
                                       }
                                       §§goto(addr300);
                                    }
                                    else
                                    {
                                       §§push(param1);
                                       if(!(_loc6_ && param1))
                                       {
                                          addr163:
                                          if(§§pop() == Keyboard.DELETE)
                                          {
                                             if(_loc7_)
                                             {
                                                §§goto(addr168);
                                             }
                                             else
                                             {
                                                §§goto(addr184);
                                             }
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(!_loc6_)
                                             {
                                                addr181:
                                                if(§§pop() == Keyboard.C)
                                                {
                                                   §§goto(addr184);
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                }
                                                §§goto(addr198);
                                             }
                                          }
                                          §§goto(addr198);
                                       }
                                       if(§§pop() == Keyboard.V)
                                       {
                                          §§goto(addr198);
                                       }
                                       else
                                       {
                                          §§push(param1);
                                          if(_loc7_)
                                          {
                                             if(§§pop() == Keyboard.J)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §&m§.§9_§(§4!-§,§%!3§.getLevelMain().objects);
                                                   if(_loc7_ || _loc2_)
                                                   {
                                                      §§goto(addr300);
                                                   }
                                                }
                                                else
                                                {
                                                   addr292:
                                                   §&m§.§3c§(§4!-§,§%!3§.getLevelMain().objects);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr300);
                                                   }
                                                }
                                                §§goto(addr300);
                                             }
                                             else
                                             {
                                                §§push(param1);
                                             }
                                             §§goto(addr300);
                                          }
                                          if(§§pop() == Keyboard.U)
                                          {
                                             if(!_loc6_)
                                             {
                                                §§goto(addr292);
                                             }
                                          }
                                          §§goto(addr300);
                                       }
                                    }
                                    §§goto(addr198);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr181);
                           }
                        }
                        §§goto(addr163);
                     }
                  }
                  §§goto(addr163);
               }
            }
            §§goto(addr91);
         }
         addr300:
         super.onKeyDown(param1);
      }
      
      override public function clearSelection() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.stopObjectDrag();
            if(_loc2_ || _loc1_)
            {
               super.clearSelection();
            }
         }
      }
      
      override public function onKeyUp(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         if(_loc3_ || param1)
         {
            if(§§pop() == Keyboard.SHIFT)
            {
               this.§;!c§ = false;
               if(_loc2_)
               {
                  addr106:
               }
            }
            else
            {
               §§push(param1);
               if(!(_loc2_ && _loc3_))
               {
                  §§push(38);
                  if(!_loc2_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc3_ || this)
                        {
                           this.§7;§ = Math.max(0,this.§7;§);
                           if(!_loc2_)
                           {
                              dispatchEvent(new Event(Event.COMPLETE));
                           }
                           else
                           {
                              addr98:
                              dispatchEvent(new Event(Event.COMPLETE));
                              if(_loc3_)
                              {
                                 §§goto(addr106);
                              }
                              else
                              {
                                 addr172:
                                 dispatchEvent(new Event(Event.COMPLETE));
                                 §§goto(addr178);
                              }
                           }
                        }
                        §§goto(addr178);
                     }
                     else
                     {
                        §§push(param1);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr87:
                           §§push(40);
                           if(_loc3_)
                           {
                              addr90:
                              if(§§pop() == §§pop())
                              {
                                 this.§7;§ = Math.min(0,this.§7;§);
                                 §§goto(addr98);
                              }
                              else
                              {
                                 §§push(param1);
                                 if(_loc3_ || _loc3_)
                                 {
                                    §§push(37);
                                    if(_loc3_ || param1)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          this.§``§ = Math.max(0,this.§``§);
                                          dispatchEvent(new Event(Event.COMPLETE));
                                          if(!(_loc2_ && param1))
                                          {
                                             addr178:
                                             super.onKeyUp(param1);
                                             return;
                                          }
                                          addr165:
                                          this.§``§ = Math.min(0,this.§``§);
                                          §§goto(addr172);
                                          §§goto(addr172);
                                       }
                                       else
                                       {
                                          addr156:
                                          §§push(param1);
                                          §§push(39);
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                                 §§goto(addr156);
                              }
                           }
                           if(§§pop() == §§pop())
                           {
                              if(!(_loc2_ && this))
                              {
                                 §§goto(addr165);
                              }
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr156);
                     }
                  }
                  §§goto(addr90);
               }
               §§goto(addr87);
            }
            §§goto(addr172);
         }
         §§goto(addr156);
      }
      
      override public function onMouseDown() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§;5§ = §;5§.§9!6§(§%!3§.getObjectFromCoordinate(§%!3§.mMousePosition));
         if(!_loc2_)
         {
            if(§4!-§.indexOf(_loc1_) > -1)
            {
               if(this.§;!c§)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §!!K§(_loc1_);
                  }
                  else
                  {
                     §;;§(_loc1_,this.§;!c§);
                     addr71:
                     §§push(_loc1_ == null);
                     if(_loc3_)
                     {
                        §§push(!§§pop());
                        if(_loc3_)
                        {
                           §§push(§§pop());
                           if(_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    §§pop();
                                    §§push(this.§;!c§);
                                    if(!(_loc2_ && this))
                                    {
                                       §§push(!§§pop());
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          addr108:
                                          if(§§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                this.§6=§();
                                                if(!(_loc3_ || this))
                                                {
                                                   addr141:
                                                   if(!this.§+A§)
                                                   {
                                                      addr145:
                                                      this.clearSelection();
                                                      addr147:
                                                      this.startAreaSelection();
                                                   }
                                                }
                                                return;
                                             }
                                          }
                                          else
                                          {
                                             §§push(this.§;!c§);
                                             if(!_loc2_)
                                             {
                                                addr135:
                                                §§push(!§§pop());
                                                if(!_loc2_)
                                                {
                                                   addr139:
                                                   if(§§pop())
                                                   {
                                                      addr140:
                                                      §§pop();
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr141);
                                       }
                                       §§goto(addr135);
                                    }
                                 }
                                 §§goto(addr140);
                              }
                              §§goto(addr108);
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr141);
                     }
                     §§goto(addr135);
                     addr56:
                  }
                  §§goto(addr71);
               }
            }
            else if(_loc1_ != null)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§goto(addr56);
               }
               §§goto(addr147);
            }
            §§goto(addr71);
         }
         §§goto(addr145);
      }
      
      private function §,x§(param1:Object) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§;5§ = null;
         for each(_loc2_ in §4!-§)
         {
            if(_loc6_)
            {
               if(_loc2_.getObject() == param1)
               {
                  if(!_loc5_)
                  {
                     return true;
                  }
               }
            }
         }
         return false;
      }
      
      override public function onMouseUp() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.stopObjectDrag();
            if(!_loc1_)
            {
               this.§2!W§();
            }
         }
      }
      
      private function §>!t§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:Point = §%!3§.mMousePositionB2;
         §§push(_loc1_.x - this.§<!$§);
         if(!(_loc4_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc1_.y - this.§`Z§);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(this.§+A§)
            {
               if(!_loc4_)
               {
                  this.§1!;§(_loc2_,_loc3_);
               }
            }
         }
      }
      
      public function §6=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§;5§ = null;
         if(_loc4_)
         {
            this.§+A§ = true;
            if(!(_loc5_ && _loc1_))
            {
               this.§<!$§ = §%!3§.mMousePositionB2.x;
               if(!(_loc5_ && this))
               {
                  addr63:
                  this.§`Z§ = §%!3§.mMousePositionB2.y;
               }
               for each(_loc1_ in §4!-§)
               {
                  if(!_loc5_)
                  {
                     §%!3§.storeTransformationForObject(_loc1_);
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      public function stopObjectDrag() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§+A§ = false;
            if(_loc1_ || this)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      public function §,Y§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            if(this.§+A§)
            {
               if(!(_loc4_ && param1))
               {
                  §§goto(addr44);
               }
            }
            var _loc3_:int = 0;
            do
            {
               if(_loc3_ >= §4!-§.length)
               {
                  if(_loc5_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               §%!3§.storeTransformationForObject(§4!-§[_loc3_]);
               if(!_loc5_)
               {
                  break;
               }
               _loc3_++;
            }
            while(!(_loc4_ && this));
            
            this.§1!;§(param1,param2,true);
            addr85:
            return;
         }
         addr44:
      }
      
      public function §1!;§(param1:Number = 0, param2:Number = 0, param3:Boolean = false) : void
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc9_:int = 0;
         var _loc10_:§;5§ = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:Rectangle = null;
         var _loc14_:b2Transform = null;
         var _loc15_:Rectangle = null;
         var _loc16_:* = 0;
         var _loc17_:b2Vec2 = null;
         var _loc18_:Rectangle = null;
         var _loc19_:Point = null;
         if(!(_loc20_ && param1))
         {
            §§push(param1);
            if(_loc21_ || param1)
            {
               §§push(0);
               if(!_loc20_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc21_ || this)
                  {
                     if(§§pop())
                     {
                        if(!_loc20_)
                        {
                           §§pop();
                           if(!(_loc20_ && this))
                           {
                              addr86:
                              §§push(param2 == 0);
                              if(!_loc20_)
                              {
                                 addr89:
                                 if(§§pop())
                                 {
                                    if(_loc21_)
                                    {
                                       return;
                                    }
                                 }
                                 else
                                 {
                                    addr95:
                                    dispatchEvent(new Event(Event.CHANGE));
                                 }
                                 addr102:
                                 var _loc4_:Boolean = true;
                                 var _loc5_:Boolean = false;
                                 var _loc6_:Boolean = true;
                                 var _loc7_:Boolean = false;
                                 if(!(_loc20_ && this))
                                 {
                                    §§push(this.§^"§);
                                    if(_loc21_ || param3)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(!(_loc20_ && param2))
                                       {
                                          addr133:
                                          §§push(§§pop());
                                          if(_loc21_)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc21_)
                                                {
                                                   §§pop();
                                                   if(_loc21_ || param1)
                                                   {
                                                      §§push(§7&§.§=n§().§4V§(§7&§.§4!K§));
                                                      if(!_loc20_)
                                                      {
                                                         addr154:
                                                         §§push(Boolean(§§pop()));
                                                         if(!(_loc20_ && this))
                                                         {
                                                            addr162:
                                                            if(§§pop())
                                                            {
                                                               §§pop();
                                                               addr166:
                                                               §§push(!param3);
                                                               if(_loc21_)
                                                               {
                                                                  addr169:
                                                                  §§push(Boolean(§§pop()));
                                                               }
                                                               var _loc8_:* = §§pop();
                                                               if(!(_loc20_ && param3))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     if(!_loc20_)
                                                                     {
                                                                        _loc9_ = 0;
                                                                        addr184:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(_loc21_)
                                                                           {
                                                                              if(§§pop() >= §4!-§.length)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(Boolean(§§pop()));
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc20_ && param3))
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc21_ || param3)
                                                                                                {
                                                                                                   §§push(§4!-§.length == 1);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      addr472:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc21_ || param1)
                                                                                                         {
                                                                                                            this.§=!Y§();
                                                                                                            if(!(_loc20_ && this))
                                                                                                            {
                                                                                                               addr489:
                                                                                                               §§push(Boolean(§8e§));
                                                                                                               if(Boolean(§8e§))
                                                                                                               {
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr495:
                                                                                                                     §§pop();
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr499);
                                                                                                         }
                                                                                                         §§goto(addr500);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr489);
                                                                                                }
                                                                                                addr499:
                                                                                                if(§8e§.mouseEnabled)
                                                                                                {
                                                                                                   addr500:
                                                                                                   break;
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr495);
                                                                                          }
                                                                                          §§goto(addr472);
                                                                                       }
                                                                                       §§goto(addr489);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr495);
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc10_ = §4!-§[_loc9_];
                                                                                 (_loc13_ = §%!3§.getCamera().getCameraLimits()).y = -0.15;
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    _loc13_.height += §^7§.§;l§;
                                                                                 }
                                                                                 §§push((_loc14_ = §%!3§.getOriginalTransformForObject(_loc10_)).position);
                                                                                 if(!(_loc20_ && param3))
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(!(_loc20_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                if(_loc21_)
                                                                                                {
                                                                                                   addr244:
                                                                                                   §§push(_loc14_.position.y);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      addr247:
                                                                                                      addr248:
                                                                                                      §§push(§§pop() + param2);
                                                                                                      if(_loc21_ || param3)
                                                                                                      {
                                                                                                      }
                                                                                                      addr257:
                                                                                                      _loc12_ = §§pop();
                                                                                                      _loc15_ = _loc10_.§]!5§();
                                                                                                      if(_loc21_ || this)
                                                                                                      {
                                                                                                         _loc13_.width -= _loc15_.width;
                                                                                                         _loc13_.height += _loc15_.height;
                                                                                                         _loc13_.x += _loc15_.width / 2;
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            addr294:
                                                                                                            _loc13_.y -= _loc15_.height / 2;
                                                                                                            §§push(_loc10_.isTexture());
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  _loc13_.y += _loc15_.height;
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr327:
                                                                                                                     §§push(_loc10_.§%P§());
                                                                                                                     if(!(_loc20_ && param2))
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           addr337:
                                                                                                                           _loc13_.left = 10;
                                                                                                                           if(_loc21_ || this)
                                                                                                                           {
                                                                                                                              addr347:
                                                                                                                              §§push(_loc10_.§;L§());
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 addr351:
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    _loc13_.y += 0.5;
                                                                                                                                    _loc13_.right = 15;
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       addr363:
                                                                                                                                       addr365:
                                                                                                                                       if(_loc10_.§<P§())
                                                                                                                                       {
                                                                                                                                          if(!(_loc20_ && param1))
                                                                                                                                          {
                                                                                                                                             _loc13_.y -= 5;
                                                                                                                                             addr379:
                                                                                                                                             _loc13_.right = 0;
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                _loc13_.left = 0;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§push(Number(Math.max(_loc13_.x,Math.min(_loc13_.x + _loc13_.width,_loc11_))));
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                          §§push(Number(Math.min(_loc13_.y,Math.max(_loc13_.height + _loc13_.y,_loc12_))));
                                                                                                                                       }
                                                                                                                                       _loc12_ = §§pop();
                                                                                                                                       _loc10_.setPosition(new b2Vec2(_loc11_,_loc12_));
                                                                                                                                       §&m§.§3i§(_loc10_.getObject() as §<!3§,§%!3§.getLevelMain().objects);
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          addr434:
                                                                                                                                          _loc9_++;
                                                                                                                                       }
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§goto(addr379);
                                                                                                                                 }
                                                                                                                                 §§goto(addr363);
                                                                                                                              }
                                                                                                                              §§goto(addr365);
                                                                                                                           }
                                                                                                                           §§goto(addr363);
                                                                                                                        }
                                                                                                                        §§goto(addr347);
                                                                                                                     }
                                                                                                                     §§goto(addr351);
                                                                                                                  }
                                                                                                                  §§goto(addr434);
                                                                                                               }
                                                                                                               §§goto(addr327);
                                                                                                            }
                                                                                                            §§goto(addr351);
                                                                                                         }
                                                                                                         §§goto(addr337);
                                                                                                      }
                                                                                                      §§goto(addr294);
                                                                                                   }
                                                                                                   §§goto(addr257);
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          §§goto(addr247);
                                                                                       }
                                                                                       §§goto(addr248);
                                                                                    }
                                                                                    §§goto(addr247);
                                                                                 }
                                                                                 §§goto(addr244);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        _loc16_ = §§pop();
                                                                        _loc17_ = §>!p§();
                                                                        _loc18_ = §%!3§.getCamera().getCurrentBorders();
                                                                        _loc19_ = new Point(_loc18_.x + _loc18_.width / 2,_loc18_.y + _loc18_.height / 2);
                                                                        §§push(_loc17_.x);
                                                                        if(_loc21_)
                                                                        {
                                                                           §§push(_loc18_.x + _loc18_.width - _loc16_);
                                                                           if(!_loc20_)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    _loc19_.x = _loc17_.x - _loc18_.width / 2 + _loc16_;
                                                                                    if(_loc21_ || param2)
                                                                                    {
                                                                                       addr586:
                                                                                       §§push(_loc17_.y);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr597:
                                                                                          if(§§pop() > _loc18_.y + _loc18_.height - _loc16_)
                                                                                          {
                                                                                             if(_loc21_ || this)
                                                                                             {
                                                                                                _loc19_.y = _loc17_.y - _loc18_.height / 2 + _loc16_;
                                                                                                addr616:
                                                                                             }
                                                                                             §§goto(addr616);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr629:
                                                                                             if(_loc17_.y < _loc18_.y + _loc16_)
                                                                                             {
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr636:
                                                                                                   _loc19_.y = _loc17_.y + _loc18_.height / 2 - _loc16_;
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      addr649:
                                                                                                      §%!3§.getCamera().dragTo(_loc19_.x,_loc19_.y);
                                                                                                   }
                                                                                                   §§goto(addr495);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr649);
                                                                                       }
                                                                                       §§goto(addr629);
                                                                                    }
                                                                                    §§goto(addr636);
                                                                                 }
                                                                                 §§goto(addr616);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc17_.x);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr568:
                                                                                    if(§§pop() < _loc18_.x + _loc16_)
                                                                                    {
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          _loc19_.x = _loc17_.x + _loc18_.width / 2 - _loc16_;
                                                                                          §§goto(addr586);
                                                                                       }
                                                                                       §§goto(addr649);
                                                                                    }
                                                                                    §§goto(addr586);
                                                                                 }
                                                                              }
                                                                              §§goto(addr629);
                                                                           }
                                                                           §§goto(addr597);
                                                                        }
                                                                        §§goto(addr568);
                                                                     }
                                                                     §§goto(addr184);
                                                                  }
                                                                  §§goto(addr489);
                                                               }
                                                               §§goto(addr184);
                                                            }
                                                         }
                                                         §§goto(addr166);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr154);
                                             }
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr95);
                        }
                     }
                  }
                  §§goto(addr89);
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §=!Y§() : Boolean
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc3_:§;5§ = null;
         var _loc4_:b2Shape = null;
         var _loc5_:b2Transform = null;
         var _loc6_:Rectangle = null;
         var _loc7_:* = 0;
         var _loc8_:§;5§ = null;
         var _loc9_:b2Shape = null;
         var _loc10_:b2Transform = null;
         var _loc11_:Rectangle = null;
         var _loc12_:§ set§ = null;
         var _loc13_:b2Vec2 = null;
         var _loc14_:§;5§ = null;
         var _loc15_:b2Vec2 = null;
         var _loc1_:§ set§ = null;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc18_)
            {
               if(§§pop() >= §4!-§.length)
               {
                  if(!_loc19_)
                  {
                     §§push(_loc1_ == null);
                     if(!_loc19_)
                     {
                        §§push(!§§pop());
                        §§push(!§§pop());
                        if(_loc18_)
                        {
                           if(§§pop())
                           {
                              if(_loc18_ || this)
                              {
                                 §§pop();
                                 if(!_loc19_)
                                 {
                                    §§push(!isNaN(_loc1_.§^Y§.x));
                                    if(_loc18_ || _loc1_)
                                    {
                                       addr410:
                                       if(§§pop())
                                       {
                                          if(!(_loc19_ && _loc3_))
                                          {
                                             addr419:
                                             §§pop();
                                             if(_loc18_ || _loc1_)
                                             {
                                                §§goto(addr433);
                                             }
                                             break;
                                          }
                                       }
                                    }
                                    §§goto(addr433);
                                 }
                                 addr433:
                                 if(!isNaN(_loc1_.§^Y§.y))
                                 {
                                    if(_loc19_ && this)
                                    {
                                    }
                                    §§goto(addr464);
                                 }
                                 §§goto(addr520);
                              }
                              §§goto(addr419);
                           }
                        }
                        §§goto(addr410);
                     }
                     addr520:
                     return false;
                  }
                  §§goto(addr464);
               }
               else
               {
                  _loc3_ = §4!-§[_loc2_];
                  _loc4_ = null;
                  _loc5_ = null;
                  _loc6_ = null;
                  if(!_loc19_)
                  {
                     §§push(Boolean(_loc3_));
                     §§push(Boolean(_loc3_));
                     if(!(_loc19_ && _loc1_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc19_ && _loc3_))
                           {
                              §§pop();
                              if(_loc18_)
                              {
                                 addr98:
                                 §§push(_loc3_.§;!Z§());
                                 if(!_loc19_)
                                 {
                                    addr104:
                                    §§push(Boolean(§§pop()));
                                    if(!Boolean(§§pop()))
                                    {
                                       addr105:
                                       §§pop();
                                       if(_loc19_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc3_.§%P§());
                                       if(_loc19_ && _loc2_)
                                       {
                                       }
                                       addr118:
                                       if(§§pop())
                                       {
                                          if(_loc19_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          addr126:
                                          _loc4_ = _loc3_.getBody().§7!Y§().GetShape().Copy();
                                          _loc5_ = _loc3_.getBody().§>!H§();
                                          _loc6_ = §"^§.§3Q§(_loc4_,_loc5_,§"^§.§]z§);
                                          if(!_loc19_)
                                          {
                                             §§push(0);
                                             if(_loc18_)
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc18_ || _loc3_)
                                                {
                                                   addr161:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                   }
                                                   addr362:
                                                }
                                                addr368:
                                                _loc2_++;
                                                continue;
                                             }
                                             for(; §§pop() < §%!3§.getLevelMain().objects.getObjectCount(); §§goto(addr362))
                                             {
                                                _loc9_ = (_loc8_ = §;5§.§9!6§(§%!3§.getLevelMain().objects.getObject(_loc7_))).getBody().§7!Y§().GetShape().Copy();
                                                _loc10_ = _loc8_.getBody().§>!H§();
                                                _loc11_ = §"^§.§3Q§(_loc9_,_loc10_,§"^§.§]z§);
                                                if(!(_loc19_ && _loc3_))
                                                {
                                                   §§push(_loc8_ == _loc3_);
                                                   §§push(_loc8_ == _loc3_);
                                                   if(!_loc19_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§pop();
                                                         if(!_loc19_)
                                                         {
                                                            §§push(§4!-§.indexOf(_loc8_) == -1);
                                                            if(_loc18_)
                                                            {
                                                               addr217:
                                                               addr218:
                                                               §§push(!§§pop());
                                                               if(!!§§pop())
                                                               {
                                                                  §§pop();
                                                                  if(_loc19_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(Boolean(_loc8_.isGround()));
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc18_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr228:
                                                               }
                                                               else if(!_loc6_.intersects(_loc11_))
                                                               {
                                                                  if(_loc19_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  addr240:
                                                               }
                                                               else if((_loc12_ = §"^§.§ each§(_loc4_,_loc5_,_loc9_,_loc10_)) != null)
                                                               {
                                                                  §§push((_loc13_ = _loc12_.§4!<§).§#!^§());
                                                                  if(_loc18_ || _loc1_)
                                                                  {
                                                                     §§push(§"^§.§]z§);
                                                                     if(!(_loc19_ && _loc3_))
                                                                     {
                                                                        if(§§pop() > §§pop())
                                                                        {
                                                                           if(_loc18_)
                                                                           {
                                                                              addr361:
                                                                              _loc7_++;
                                                                              continue;
                                                                           }
                                                                           addr320:
                                                                           _loc1_ = _loc12_;
                                                                           §§goto(addr361);
                                                                           §§goto(addr361);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc12_.rotation);
                                                                           if(_loc18_ || this)
                                                                           {
                                                                              §§push(§"^§.§]_§);
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr301:
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    if(_loc18_ || this)
                                                                                    {
                                                                                       §§goto(addr361);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr348:
                                                                                       _loc1_ = _loc12_;
                                                                                    }
                                                                                    §§goto(addr361);
                                                                                 }
                                                                                 else if(_loc1_ == null)
                                                                                 {
                                                                                    if(!(_loc19_ && _loc3_))
                                                                                    {
                                                                                       §§goto(addr320);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr348);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(_loc1_.§0J§);
                                                                                    if(!(_loc19_ && _loc2_))
                                                                                    {
                                                                                       if(§§pop() != _loc12_.§0J§)
                                                                                       {
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             addr340:
                                                                                             if(_loc12_.§0J§)
                                                                                             {
                                                                                                if(_loc19_ && this)
                                                                                                {
                                                                                                   addr358:
                                                                                                   _loc1_ = _loc12_;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr361);
                                                                                          }
                                                                                          §§goto(addr348);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr357:
                                                                                          if(_loc13_.§#!^§() < _loc1_.§4!<§.§#!^§())
                                                                                          {
                                                                                             §§goto(addr358);
                                                                                          }
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr340);
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                           }
                                                                           §§goto(addr357);
                                                                        }
                                                                     }
                                                                     §§goto(addr301);
                                                                  }
                                                                  §§goto(addr357);
                                                               }
                                                               §§goto(addr361);
                                                            }
                                                            §§goto(addr217);
                                                         }
                                                         §§goto(addr240);
                                                      }
                                                      §§goto(addr217);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr228);
                                             }
                                             §§goto(addr368);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr368);
                                    }
                                 }
                                 §§goto(addr118);
                                 §§push(Boolean(§§pop()));
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr98);
               }
            }
            break;
         }
         var _loc16_:* = §§pop();
         if(_loc18_ || _loc3_)
         {
            for each(_loc14_ in §4!-§)
            {
            }
         }
         addr464:
         _loc15_ = _loc14_.getPosition().Copy();
         §§push(_loc15_);
         §§push(_loc15_.x);
         if(_loc18_ || _loc1_)
         {
            §§push(§§pop() + _loc1_.§^Y§.x);
         }
         §§pop().x = §§pop();
         if(_loc18_ || this)
         {
            §§push(_loc15_);
            §§push(_loc15_.y);
            if(_loc18_)
            {
               §§push(§§pop() + _loc1_.§^Y§.y);
            }
            §§pop().y = §§pop();
            if(!_loc19_)
            {
               _loc14_.setPosition(_loc15_);
            }
         }
         return true;
      }
      
      protected function startAreaSelection() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§&!@§ = new Point();
            if(_loc1_ || _loc1_)
            {
               addr54:
               this.§&!@§.x = §%!3§.mMousePositionB2.x;
               if(!(_loc2_ && _loc1_))
               {
                  this.§&!@§.y = §%!3§.mMousePositionB2.y;
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      public function §2!W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§&!@§ = null;
            if(!(_loc1_ && _loc1_))
            {
               addr29:
               this.§'!§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §4_§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§&!@§ == null);
         if(!_loc1_)
         {
            §§push(!§§pop());
         }
         return §§pop();
      }
      
      public function §'!§() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!(_loc12_ && _loc1_))
         {
            if(this.§&!@§ == null)
            {
               if(!(_loc12_ && _loc3_))
               {
                  §%!3§.mEditorUI.updateSelectionArea(null);
                  return;
               }
               addr80:
               _loc2_ = Number(this.§&!@§.y);
               addr85:
               if(this.§&!@§.x <= §%!3§.mMousePositionB2.x)
               {
                  addr92:
                  §§push(Number(this.§&!@§.x));
                  if(!(_loc12_ && _loc2_))
                  {
                     _loc3_ = §§pop();
                     §§push(Number(§%!3§.mMousePositionB2.x));
                     if(_loc12_)
                     {
                     }
                     addr127:
                     _loc4_ = §§pop();
                     addr128:
                     var _loc5_:Point = new Point(_loc3_,_loc1_);
                     var _loc6_:Point = new Point(_loc4_,_loc2_);
                     var _loc7_:Array = (_loc7_ = §%!3§.getLevelMain().objects.getObjectsWithinBoundingBox(_loc5_,_loc6_)).concat(§%!3§.getLevelMain().slingshot.getObjectsWithinBoundingBox(_loc5_,_loc6_));
                     var _loc8_:* = Number(0);
                     if(!(_loc12_ && this))
                     {
                        _loc8_ = Number(0);
                     }
                     loop0:
                     while(true)
                     {
                        §§push(_loc8_);
                        if(_loc13_ || _loc2_)
                        {
                           if(§§pop() >= §4!-§.length)
                           {
                              if(_loc13_ || this)
                              {
                                 §§push(Number(0));
                                 if(_loc13_)
                                 {
                                    _loc8_ = §§pop();
                                    if(_loc12_ && this)
                                    {
                                    }
                                    while(_loc8_ < _loc7_.length)
                                    {
                                       if(§4!-§.indexOf(§;5§.§9!6§(_loc7_[_loc8_])) == -1)
                                       {
                                          §;;§(§;5§.§9!6§(_loc7_[_loc8_]),true);
                                          if(_loc12_ && _loc1_)
                                          {
                                             continue;
                                          }
                                       }
                                       §§push(_loc8_ + 1);
                                       if(_loc13_ || _loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             break loop0;
                                          }
                                          addr269:
                                       }
                                       break loop0;
                                    }
                                    addr273:
                                 }
                                 break;
                              }
                              §§goto(addr277);
                           }
                           if(_loc7_.indexOf(§4!-§[_loc8_].getObject()) == -1)
                           {
                              §!!K§(§;5§.§9!6§(§4!-§[_loc8_]));
                           }
                           §§push(_loc8_);
                           if(_loc13_)
                           {
                              continue;
                           }
                           §§goto(addr269);
                        }
                        break;
                     }
                     while(true)
                     {
                        _loc8_ = §§pop();
                        if(_loc13_)
                        {
                           §§goto(addr273);
                        }
                        addr277:
                        var _loc9_:Point = §%!3§.getLevelMain().box2DToScreen(_loc5_.x,_loc5_.y);
                        var _loc10_:Point = §%!3§.getLevelMain().box2DToScreen(_loc6_.x,_loc6_.y);
                        var _loc11_:Rectangle = new Rectangle(_loc9_.x,_loc9_.y,_loc10_.x - _loc9_.x,_loc10_.y - _loc9_.y);
                        if(!_loc12_)
                        {
                           §%!3§.mEditorUI.updateSelectionArea(_loc11_);
                        }
                        return;
                     }
                  }
                  _loc4_ = §§pop();
                  if(!_loc13_)
                  {
                     addr123:
                     §§goto(addr127);
                     §§push(Number(this.§&!@§.x));
                  }
                  §§goto(addr128);
               }
               else
               {
                  §§push(Number(§%!3§.mMousePositionB2.x));
                  if(_loc13_)
                  {
                     _loc3_ = §§pop();
                     if(_loc13_)
                     {
                        §§goto(addr123);
                     }
                     §§goto(addr127);
                  }
               }
               §§goto(addr127);
            }
            else if(this.§&!@§.y <= §%!3§.mMousePositionB2.y)
            {
               §§push(Number(this.§&!@§.y));
               if(_loc13_)
               {
                  _loc1_ = §§pop();
                  §§push(Number(§%!3§.mMousePositionB2.y));
               }
               _loc2_ = §§pop();
               §§goto(addr85);
            }
            else
            {
               _loc1_ = Number(§%!3§.mMousePositionB2.y);
               if(_loc13_ || _loc3_)
               {
                  §§goto(addr80);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr92);
      }
   }
}
