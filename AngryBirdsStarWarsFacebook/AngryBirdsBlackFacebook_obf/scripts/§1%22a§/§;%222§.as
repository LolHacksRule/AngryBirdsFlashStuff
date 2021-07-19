package §1"a§
{
   import §"k§.§]"V§;
   import §1!i§.§6"#§;
   import §7"a§.§@4§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;"2§ extends Sprite
   {
      
      public static var §4"G§:Object;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4"G§ = {};
         }
      }
      
      protected var §%4§:§]"V§;
      
      protected var § !&§:§@4§;
      
      protected var §5!-§:MovieClip;
      
      protected var §1"I§:§^#G§;
      
      public function §;"2§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         do
         {
            if(this.§ #K§.numChildren <= 0)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               this.§ #K§.tabEnabled = this.§ #K§.tabChildren = false;
               addr94:
               return;
               addr73:
            }
            this.§ #K§.removeChildAt(0);
         }
         while(_loc2_ || _loc3_);
         
         this.§ #K§.mouseEnabled = this.§ #K§.mouseChildren = false;
         if(_loc2_ || this)
         {
            §§goto(addr73);
         }
         §§goto(addr94);
      }
      
      protected static function §@#F§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
         if(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1)
         {
            §§push(_loc7_);
            if(_loc13_ || param2)
            {
               §§push(int(§§pop().length));
               if(!(_loc14_ && param3))
               {
                  addr76:
                  §§push(int(§§pop()));
               }
            }
            else
            {
               addr66:
               §§push(int(§§pop().indexOf(".")));
               if(!(_loc14_ && param1))
               {
                  §§goto(addr76);
               }
            }
            var _loc9_:* = §§pop();
            if(_loc13_ || param1)
            {
               §§push(_loc8_);
               if(_loc13_ || §;"2§)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc14_)
                  {
                     addr96:
                     if(§§pop())
                     {
                        if(_loc13_)
                        {
                           §§pop();
                           if(_loc13_ || §;"2§)
                           {
                              §§push(param3);
                              if(!(_loc14_ && §;"2§))
                              {
                                 §§push(!§§pop());
                                 if(_loc13_)
                                 {
                                    addr119:
                                    if(§§pop())
                                    {
                                       var _loc10_:* = (!!_loc13_ ? "" : ",") + _loc7_.substr(_loc9_ + 1);
                                       addr132:
                                       if(!_loc14_)
                                       {
                                          if(param3)
                                          {
                                             if(!(_loc14_ && param3))
                                             {
                                                _loc11_ = 0;
                                                addr187:
                                                loop1:
                                                while(true)
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc11_);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(param2);
                                                         if(_loc13_ || param1)
                                                         {
                                                            if(§§pop() > §§pop() - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
                                                            {
                                                               if(!(_loc14_ && param3))
                                                               {
                                                                  addr219:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     break loop2;
                                                                  }
                                                                  addr290:
                                                                  return §§pop().substr(0,_loc9_ - _loc5_) + _loc10_;
                                                                  addr258:
                                                               }
                                                               addr289:
                                                               §§push(_loc7_);
                                                            }
                                                            else
                                                            {
                                                               §§push(_loc10_);
                                                               if(!_loc14_)
                                                               {
                                                                  _loc10_ = §§pop() + "0";
                                                                  while(true)
                                                                  {
                                                                     _loc11_++;
                                                                     if(_loc14_ && param2)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc14_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(".");
                                                                     addr235:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_);
                                                                        if(!_loc14_)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           if(_loc13_)
                                                                           {
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr289);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr230:
                                                               }
                                                            }
                                                            §§goto(addr290);
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc14_)
                                                            {
                                                               if(_loc7_.substr(0,1) == "-")
                                                               {
                                                                  addr270:
                                                                  if(_loc9_ >= (!!_loc13_ ? §§pop() - 1 : §§pop()))
                                                                  {
                                                                     §§goto(addr289);
                                                                  }
                                                                  else
                                                                  {
                                                                     if(param4)
                                                                     {
                                                                        if(_loc13_ || param1)
                                                                        {
                                                                           §§goto(addr230);
                                                                        }
                                                                        §§goto(addr290);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(",");
                                                                     }
                                                                     §§goto(addr235);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc9_);
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            §§goto(addr270);
                                                         }
                                                         addr260:
                                                      }
                                                      break;
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr260);
                                                      §§goto(addr290);
                                                   }
                                                }
                                             }
                                             §§goto(addr187);
                                          }
                                          §§goto(addr219);
                                       }
                                       §§goto(addr187);
                                    }
                                    else
                                    {
                                       §§push(param4);
                                    }
                                    §§goto(addr127);
                                 }
                                 if(§§pop())
                                 {
                                    §§goto(addr127);
                                 }
                                 else
                                 {
                                    §§push(".");
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr122);
                        }
                     }
                  }
                  §§goto(addr119);
               }
               §§goto(addr96);
            }
            §§goto(addr127);
         }
         else
         {
            §§push(_loc7_);
         }
         §§goto(addr66);
      }
      
      protected function §^"d§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§5!-§.txtName.text = param1;
            do
            {
               §6"#§.§7s§(this.§5!-§.txtName,int(this.§5!-§.txtName.getTextFormat().size),this.§5!-§.txtName.width,this.§5!-§.txtName.height);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      public function §[#A§(param1:§^#G§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1"I§ = param1;
         }
      }
      
      public function set data(param1:§]"V§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%4§ = param1;
            do
            {
               this.update();
            }
            while(_loc3_);
            
         }
      }
      
      public function get data() : §]"V§
      {
         return this.§%4§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §?r§() : Boolean
      {
         return this.§6!1§.userId == §^#G§.§-8§;
      }
      
      public function get §6!1§() : §]"V§
      {
         return §]"V§(this.data);
      }
      
      protected function §<"9§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§ !&§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr207:
                           loop16:
                           while(true)
                           {
                              §§push(this.§ !&§);
                              while(true)
                              {
                                 §§push(§§pop().parent == this.§ #K§);
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc2_ && _loc2_)
                                       {
                                          continue loop1;
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop5:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         return;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(this.§ !&§);
                                                      loop10:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         addr80:
                                                         while(true)
                                                         {
                                                            if(_loc2_ && this)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop());
                                                            if(!(_loc3_ || _loc1_))
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(_loc2_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            if(§§pop())
                                                            {
                                                               addr98:
                                                               while(!(_loc2_ && this))
                                                               {
                                                                  §§pop();
                                                                  while(true)
                                                                  {
                                                                     continue loop10;
                                                                     addr26:
                                                                     if(!(_loc3_ || _loc1_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop10;
                                                                     }
                                                                     addr208:
                                                                     if(§4"G§[this.§6!1§.userId])
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           this.§ #K§.addChild(this.§ !&§ = §4"G§[this.§6!1§.userId]);
                                                                           if(!(_loc2_ && _loc1_))
                                                                           {
                                                                              addr237:
                                                                              break loop9;
                                                                              addr237:
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§ !&§ = new §@4§(this.§6!1§.userId);
                                                                        §4"G§[this.§6!1§.userId] = this.§ !&§;
                                                                        this.§ #K§.addChild(this.§ !&§);
                                                                        addr285:
                                                                        if(!(_loc2_ && _loc3_))
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §§goto(addr285);
                                                                           }
                                                                           addr257:
                                                                           break loop9;
                                                                        }
                                                                        addr266:
                                                                        §§goto(addr266);
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                               }
                                                               while(!(_loc2_ && _loc2_))
                                                               {
                                                                  continue loop9;
                                                                  §§goto(addr98);
                                                               }
                                                               addr98:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(!(_loc3_ || _loc3_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     §§push(this.§ !&§);
                                                                     continue loop0;
                                                                  }
                                                                  continue loop16;
                                                               }
                                                               addr184:
                                                               addr123:
                                                            }
                                                            else
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     this.§ #K§.removeChild(this.§ !&§);
                                                                     if(_loc3_)
                                                                     {
                                                                        this.§ !&§ = null;
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§goto(addr26);
                                                                        }
                                                                     }
                                                                     §§goto(addr237);
                                                                  }
                                                                  §§goto(addr285);
                                                               }
                                                               §§goto(addr208);
                                                               addr64:
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         continue loop16;
                                                      }
                                                   }
                                                   §§goto(addr237);
                                                }
                                                return;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr184);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr181);
                  }
               }
            }
         }
         §§goto(addr207);
      }
      
      protected function get § #K§() : DisplayObjectContainer
      {
         return this.§5!-§.profilePicture;
      }
   }
}
