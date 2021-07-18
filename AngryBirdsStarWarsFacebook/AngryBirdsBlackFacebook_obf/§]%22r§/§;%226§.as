package §]"r§
{
   import §`^§.DropDownEvent;
   import com.furusystems.dconsole2.core.style.§6!x§;
   import com.furusystems.dconsole2.core.style.§?#O§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   
   public class §;"6§ extends Sprite
   {
       
      
      private var §#!V§:TextField;
      
      private var §##H§:Sprite;
      
      private var §,#%§:int = 18;
      
      private var § ""§:int;
      
      private var §""L§:Sprite;
      
      private var §#"M§:Vector.<§2!H§>;
      
      private var §!!d§:Number;
      
      private var selection:§2!H§;
      
      public function §;"6§(param1:String = "Dropdown")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§##H§ = new Sprite();
            loop0:
            while(true)
            {
               this.§""L§ = new Sprite();
               loop1:
               while(true)
               {
                  this.§#"M§ = new Vector.<§2!H§>();
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        addChild(this.§""L§);
                        loop4:
                        while(true)
                        {
                           addChild(this.§##H§);
                           loop5:
                           while(true)
                           {
                              buttonMode = true;
                              loop6:
                              while(true)
                              {
                                 this.§#!V§ = new TextField();
                                 loop7:
                                 while(true)
                                 {
                                    this.§#!V§.autoSize = TextFieldAutoSize.LEFT;
                                    loop8:
                                    while(true)
                                    {
                                       this.§#!V§.defaultTextFormat = §6!x§.§'#N§;
                                       loop9:
                                       while(true)
                                       {
                                          this.§#!V§.embedFonts = this.§#!V§.defaultTextFormat.font.charAt(0) != "_";
                                          loop10:
                                          while(true)
                                          {
                                             this.§#!V§.selectable = false;
                                             loop11:
                                             for(; !_loc3_; if(_loc2_ || this)
                                             {
                                                if(_loc2_)
                                                {
                                                   this.§""L§.visible = false;
                                                   addr72:
                                                   while(_loc2_ || param1)
                                                   {
                                                      this.§""L§.y = this.§,#%§;
                                                      continue loop10;
                                                   }
                                                   continue loop8;
                                                   addr72:
                                                }
                                                continue loop6;
                                             })
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                this.§#!V§.mouseEnabled = false;
                                                while(true)
                                                {
                                                   this.§#!V§.y = 1;
                                                   addr213:
                                                   addr86:
                                                   while(true)
                                                   {
                                                      this.§>"x§(param1,false);
                                                      while(_loc2_)
                                                      {
                                                         continue loop3;
                                                         while(_loc2_ || param1)
                                                         {
                                                            continue loop7;
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               continue loop4;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr86:
                                                   while(_loc2_ || param1)
                                                   {
                                                      continue loop11;
                                                   }
                                                }
                                             }
                                             continue loop9;
                                             while(_loc2_ || _loc2_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   addEventListener(MouseEvent.MOUSE_DOWN,this.§[!&§);
                                                   if(_loc3_)
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         addr41:
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§##H§.graphics.beginFill(§?#O§.§8#W§);
                                                                     }
                                                                     return;
                                                                     addr50:
                                                                     addr171:
                                                                  }
                                                                  §§goto(addr112);
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§##H§.graphics.drawRect(0,0,this.§ ""§,this.§,#%§);
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr41);
                                                            }
                                                            §§goto(addr178);
                                                            addr108:
                                                         }
                                                         §§goto(addr50);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr86);
                                                      }
                                                   }
                                                   §§goto(addr72);
                                                   continue;
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr171);
      }
      
      private function §[!&§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§""L§.visible = true;
            while(true)
            {
               stage.addEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
               while(_loc2_ || param1)
               {
                  stage.addEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
                  while(!(_loc3_ && _loc3_))
                  {
                     filters = [new DropShadowFilter(4,45,0,0.1,8,8)];
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     return;
                     addr57:
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §[#8§(param1:MouseEvent) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:int = Math.floor(this.§""L§.mouseY / this.§!!d§);
         if(_loc5_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() >= 0);
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        §§pop();
                        addr62:
                        addr61:
                        §§push(_loc2_ < this.§#"M§.length);
                        if(!_loc5_)
                        {
                        }
                        addr69:
                        var _loc3_:* = §§pop();
                        if(_loc5_ || param1)
                        {
                           if(!_loc3_)
                           {
                              this.selection = null;
                              if(!(_loc5_ || _loc2_))
                              {
                                 addr116:
                              }
                              return;
                           }
                           if(!_loc4_)
                           {
                              addr110:
                              this.selection = this.§#"M§[_loc2_];
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr110);
                     }
                  }
                  §§push(Boolean(§§pop()));
               }
               §§goto(addr69);
            }
            §§goto(addr62);
         }
         §§goto(addr61);
      }
      
      public function §>"x§(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§#!V§.text = param1;
         }
         loop0:
         while(true)
         {
            this.§ ""§ = this.§#!V§.textWidth + 4;
            while(param2)
            {
               if(_loc3_ && param2)
               {
                  break;
               }
               addr55:
               if(_loc3_ && param2)
               {
                  continue;
               }
               if(_loc3_)
               {
                  continue loop0;
               }
               this.draw();
               §§goto(addr55);
            }
            return;
         }
      }
      
      private function §@#H§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            filters = [];
            loop0:
            while(true)
            {
               if(this.selection)
               {
                  loop1:
                  while(true)
                  {
                     dispatchEvent(new DropDownEvent(DropDownEvent.§0F§,this.selection));
                     while(_loc3_)
                     {
                        while(true)
                        {
                           this.§>"x§(this.selection.title,true);
                           addr93:
                           while(true)
                           {
                           }
                        }
                        if(_loc3_ || this)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               while(true)
               {
                  this.§""L§.visible = false;
                  while(!(_loc2_ && _loc3_))
                  {
                     stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.§[#8§);
                     do
                     {
                        stage.removeEventListener(MouseEvent.MOUSE_UP,this.§@#H§);
                     }
                     while(_loc2_);
                     
                     if(!(_loc3_ || param1))
                     {
                        continue;
                     }
                     §§goto(addr40);
                  }
                  §§goto(addr93);
               }
               §§goto(addr64);
            }
         }
         §§goto(addr118);
      }
      
      public function §8#§(param1:§2!H§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#"M§.push(param1);
            loop0:
            while(true)
            {
               param1.index = this.§#"M§.length - 1;
               while(true)
               {
                  this.§""L§.addChild(param1);
                  loop4:
                  while(!(_loc3_ && param1))
                  {
                     addr23:
                     addr40:
                     while(true)
                     {
                        this.draw();
                        if(_loc3_ && _loc2_)
                        {
                           continue loop4;
                        }
                        addr33:
                        if(_loc2_ || _loc3_)
                        {
                           break;
                        }
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              this.§>"x§(param1.title);
                              continue loop4;
                           }
                           continue loop0;
                           §§goto(addr33);
                        }
                     }
                     if(_loc3_ && param1)
                     {
                        while(true)
                        {
                           if(!param1.§+w§)
                           {
                              §§goto(addr23);
                           }
                           §§goto(addr62);
                           §§goto(addr40);
                        }
                        addr81:
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function §<!P§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§2!H§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§#"M§)
         {
            if(_loc4_)
            {
               _loc1_.§<!P§();
            }
         }
         if(_loc4_ || _loc2_)
         {
            this.draw();
         }
      }
      
      public function §[!N§(param1:String) : void
      {
      }
      
      public function §##4§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§>"x§(param1,true);
         }
      }
      
      private function draw() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:* = NaN;
         var _loc4_:§2!H§ = null;
         var _loc1_:* = Number(0);
         if(!(_loc8_ && _loc2_))
         {
            _loc2_ = Number(this.§#!V§.textWidth + 6);
         }
         var _loc3_:int = 0;
         while(true)
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               if(§§pop() >= this.§#"M§.length)
               {
                  if(!_loc8_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§#"M§[_loc3_].y = _loc1_;
                  if(_loc7_)
                  {
                     this.§!!d§ = this.§#"M§[_loc3_].height;
                     if(!(_loc8_ && _loc2_))
                     {
                        addr296:
                        §§push(_loc1_);
                        if(_loc7_ || this)
                        {
                           §§push(Number(§§pop() + this.§#"M§[_loc3_].height));
                        }
                        loop1:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           if(_loc7_)
                           {
                              while(true)
                              {
                                 if(this.§#"M§[_loc3_].width <= _loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc7_)
                                 {
                                    §§push(Number(this.§#"M§[_loc3_].width));
                                    if(_loc8_)
                                    {
                                       continue loop1;
                                    }
                                    _loc2_ = §§pop();
                                    if(!_loc8_)
                                    {
                                       continue;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§##H§.graphics.clear();
                                    addr265:
                                    if(!(_loc7_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    this.§##H§.graphics.drawRect(0,0,this.§ ""§,this.§,#%§);
                                    loop7:
                                    while(true)
                                    {
                                       this.§##H§.graphics.endFill();
                                       while(true)
                                       {
                                          this.§#!V§.textColor = §?#O§.§?"7§;
                                          loop9:
                                          while(_loc7_)
                                          {
                                             this.§#!V§.backgroundColor = §?#O§.§3# §;
                                             while(true)
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   if(_loc8_ && _loc2_)
                                                   {
                                                      break loop1;
                                                   }
                                                   if(_loc8_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                continue loop9;
                                             }
                                             while(true)
                                             {
                                                this.§""L§.graphics.beginFill(§?#O§.§3# §);
                                                break loop1;
                                             }
                                          }
                                          continue loop7;
                                          if(_loc8_ && _loc1_)
                                          {
                                             continue;
                                          }
                                          addr191:
                                          if(_loc7_ || _loc3_)
                                          {
                                             if(!_loc8_)
                                             {
                                                return;
                                             }
                                             addr316:
                                             while(true)
                                             {
                                                this.§""L§.graphics.clear();
                                                §§goto(addr312);
                                             }
                                          }
                                          else
                                          {
                                             while(!(_loc8_ && _loc1_))
                                             {
                                                §§goto(addr265);
                                                §§goto(addr191);
                                             }
                                             while(true)
                                             {
                                                this.§##H§.graphics.beginFill(§?#O§.§8#W§);
                                                §§goto(addr258);
                                             }
                                             addr258:
                                             addr278:
                                          }
                                       }
                                    }
                                 }
                              }
                              this.§ ""§ = _loc2_;
                              §§goto(addr316);
                              addr169:
                           }
                           break;
                        }
                        while(true)
                        {
                           this.§""L§.graphics.drawRect(0,0,_loc2_,_loc1_);
                           §§goto(addr288);
                        }
                        addr296:
                     }
                     §§goto(addr278);
                  }
               }
               §§goto(addr296);
            }
            break;
         }
         var _loc5_:* = §§pop();
         if(!(_loc8_ && _loc3_))
         {
            for each(_loc4_ in this.§#"M§)
            {
               _loc4_.setWidth(_loc2_);
            }
         }
         if(!_loc8_)
         {
            §§goto(addr169);
         }
         §§goto(addr296);
      }
      
      private function §`n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§##H§.graphics.clear();
            while(true)
            {
               this.§##H§.graphics.beginFill(§?#O§.§3# §);
               loop1:
               while(true)
               {
                  this.§##H§.graphics.lineStyle(0,§?#O§.§8"E§);
                  while(true)
                  {
                     this.§##H§.graphics.drawRect(0,0,this.§ ""§,this.§,#%§);
                     while(!_loc1_)
                     {
                        continue loop1;
                        this.§##H§.graphics.endFill();
                        if(_loc2_)
                        {
                           return;
                           addr36:
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr36);
      }
   }
}
