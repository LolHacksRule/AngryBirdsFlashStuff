package §`!i§
{
   import §'!9§.§%!g§;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   import §<&§.§^b§;
   import §true§.§ _§;
   
   public class §,S§
   {
      
      public static const §03§:String = "CutScene_Type_Intro";
      
      public static const §+!Z§:String = "CutScene_Type_Outro";
      
      public static const §,-§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §03§ = "CutScene_Type_Intro";
         }
         do
         {
            §+!Z§ = "CutScene_Type_Outro";
            do
            {
               §,-§ = "CutScene_Type_Final_Outro";
            }
            while(_loc2_ && _loc1_);
            
         }
         while(!_loc1_);
         
      }
      
      private var §;!t§:§,Q§;
      
      private var §#r§:String;
      
      private var §0!G§:Vector.<§8d§>;
      
      private var §=U§:Number;
      
      private var §[1§:Number;
      
      private var §'O§:Number;
      
      private var §!!A§:Number;
      
      private var §8X§:Sprite;
      
      private var §&!Y§:Boolean = true;
      
      private var §,y§:uint;
      
      private var §]0§:Boolean;
      
      private var §!_§:§%!g§;
      
      private var §4!<§:§%!g§;
      
      public function §,S§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§8d§ = null;
         var _loc4_:Object = null;
         if(!(_loc7_ && param2))
         {
            this.§0!G§ = new Vector.<§8d§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§=U§ = 0;
                  loop2:
                  while(!_loc7_)
                  {
                     loop3:
                     while(param1)
                     {
                        if(!(_loc7_ && this))
                        {
                           §§push(param2);
                           loop4:
                           while(true)
                           {
                              §§push("intro");
                              loop5:
                              while(§§pop().search(§§pop()) == -1)
                              {
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    continue loop4;
                                 }
                                 §§push("complete");
                                 if(_loc7_ && param2)
                                 {
                                    continue;
                                 }
                                 if(§§pop().search(§§pop()) != -1)
                                 {
                                    if(_loc8_ || this)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                       continue loop2;
                                    }
                                    addr72:
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!(_loc8_ || param1))
                                          {
                                             break loop5;
                                          }
                                          if(false)
                                          {
                                             continue loop3;
                                          }
                                       }
                                       addr101:
                                    }
                                 }
                                 var _loc5_:int = 0;
                                 var _loc6_:* = param1;
                                 addr162:
                                 §§push(§§hasnext(_loc6_,_loc5_));
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                       _loc3_ = this.§5o§(_loc4_);
                                       if(!_loc7_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(!(_loc7_ && param2))
                                             {
                                                this.§0!G§.push(_loc3_);
                                             }
                                          }
                                       }
                                       §§goto(addr162);
                                    }
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          if(!(_loc7_ && param1))
                                          {
                                             _loc5_ = 0;
                                             if(!(_loc7_ && param2))
                                             {
                                                _loc6_ = this.§0!G§;
                                                addr285:
                                                for each(_loc3_ in _loc6_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      addr268:
                                                      if(_loc3_ is §9`§)
                                                      {
                                                         if(!(_loc7_ && this))
                                                         {
                                                            (_loc3_ as §9`§).setSize(this.§'O§,this.§!!A§);
                                                         }
                                                         (_loc3_ as §9`§).§1!P§ = this.§&!Y§;
                                                         addr227:
                                                         §§goto(addr285);
                                                         addr264:
                                                         addr284:
                                                      }
                                                      §§push(_loc3_ is §;!@§);
                                                      if(_loc8_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr236:
                                                            if(!_loc7_)
                                                            {
                                                               (_loc3_ as §;!@§).setSize(this.§'O§,this.§!!A§);
                                                               (_loc3_ as §;!@§).§@!?§ = this.§&!Y§;
                                                               addr246:
                                                               if(_loc8_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr227);
                                                                        }
                                                                        §§goto(addr285);
                                                                     }
                                                                     §§goto(addr264);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               addr246:
                                                               §§goto(addr246);
                                                            }
                                                            §§goto(addr284);
                                                         }
                                                         §§goto(addr285);
                                                      }
                                                      §§goto(addr268);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                addr287:
                                             }
                                          }
                                          break loop3;
                                       }
                                       break loop3;
                                    }
                                    §§goto(addr287);
                                 }
                                 §§goto(addr285);
                              }
                              this.§#r§ = §03§;
                           }
                        }
                        §§goto(addr101);
                     }
                     return;
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§#r§ = §+!Z§;
            §§goto(addr72);
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      private function §5o§(param1:Object) : §8d§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!(_loc5_ && _loc2_))
         {
            §§push(§8d§.§>!Y§);
            if(_loc6_)
            {
               if(§§pop() === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(!(_loc6_ || _loc3_))
                     {
                        addr424:
                     }
                  }
                  else
                  {
                     addr303:
                     §§push(2);
                     if(_loc5_ && _loc3_)
                     {
                        addr389:
                     }
                  }
               }
               else
               {
                  §§push(§8d§.§4'§);
                  if(!_loc5_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(1);
                           if(_loc6_ || this)
                           {
                              §§goto(addr429);
                           }
                           else
                           {
                              §§goto(addr389);
                           }
                        }
                        else
                        {
                           addr408:
                           §§push(7);
                           if(!_loc5_)
                           {
                              addr411:
                           }
                           §§goto(addr429);
                        }
                        §§goto(addr429);
                     }
                     else
                     {
                        §§push(§8d§.§!n§);
                        if(!(_loc5_ && param1))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr303);
                              }
                              else
                              {
                                 §§goto(addr408);
                              }
                           }
                           else
                           {
                              §§push(§8d§.§`!F§);
                              if(!_loc5_)
                              {
                                 addr316:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(3);
                                       if(_loc5_)
                                       {
                                       }
                                       §§goto(addr429);
                                    }
                                    else
                                    {
                                       addr337:
                                       §§push(4);
                                       if(_loc6_)
                                       {
                                          §§goto(addr429);
                                       }
                                       else
                                       {
                                          §§goto(addr389);
                                       }
                                    }
                                    §§goto(addr429);
                                 }
                                 else
                                 {
                                    §§push(§8d§.END);
                                    if(_loc6_)
                                    {
                                       addr328:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§goto(addr337);
                                          }
                                          else
                                          {
                                             §§goto(addr354);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§8d§.§^!$§);
                                          if(!_loc5_)
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc6_ || _loc2_)
                                                {
                                                   addr354:
                                                   §§push(5);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                   }
                                                   §§goto(addr429);
                                                }
                                                else
                                                {
                                                   §§goto(addr408);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§8d§.§>%§);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   addr372:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         addr381:
                                                         §§push(6);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§goto(addr389);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr411);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr408);
                                                      }
                                                      §§goto(addr429);
                                                   }
                                                   else
                                                   {
                                                      §§push(§8d§.§else §);
                                                      if(!_loc5_)
                                                      {
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr408);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr414:
                                                            if(§8d§.§`J§ !== _loc4_)
                                                            {
                                                               addr429:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     return new §;!@§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                                  case 1:
                                                                     _loc2_ = param1.scroll_target;
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc2_.type == "sprite")
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              return new §9`§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  case 2:
                                                                     _loc3_ = param1.zoom_target;
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc3_.type != "sprite")
                                                                        {
                                                                           addr186:
                                                                           break;
                                                                        }
                                                                     }
                                                                     §§goto(addr220);
                                                                  case 3:
                                                                     return new §=y§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                                  case 5:
                                                                     this.§'O§ = param1.width;
                                                                     this.§!!A§ = param1.height;
                                                                     addr162:
                                                                     if(!(_loc5_ && this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     break;
                                                                     addr177:
                                                                  case 6:
                                                                     this.§&!Y§ = false;
                                                                     addr149:
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        addr121:
                                                                        break;
                                                                     }
                                                                     §§goto(addr177);
                                                                     break;
                                                                  case 7:
                                                                     this.§&!Y§ = true;
                                                                     addr127:
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 addr220:
                                                                                 return new §'B§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                              }
                                                                              §§goto(addr186);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr162);
                                                                        }
                                                                        break;
                                                                        addr185:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr149);
                                                                     }
                                                                     §§goto(addr162);
                                                                  case 8:
                                                                     this.§,y§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr127);
                                                                     }
                                                                     §§goto(addr121);
                                                                  case 4:
                                                                     this.§[1§ = param1.time * 1000;
                                                                     §§goto(addr185);
                                                               }
                                                               return null;
                                                               §§push(9);
                                                            }
                                                         }
                                                         §§goto(addr429);
                                                         §§goto(addr429);
                                                      }
                                                   }
                                                   §§goto(addr429);
                                                }
                                             }
                                             §§goto(addr429);
                                          }
                                       }
                                       §§goto(addr429);
                                    }
                                    §§goto(addr372);
                                 }
                              }
                              §§goto(addr414);
                           }
                           §§goto(addr429);
                        }
                        §§goto(addr328);
                     }
                  }
                  §§goto(addr372);
               }
               §§goto(addr429);
            }
            §§goto(addr316);
         }
         §§goto(addr381);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8X§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§8X§);
                     addr81:
                     while(true)
                     {
                        §§pop().dispose();
                        addr82:
                        while(true)
                        {
                           this.§8X§ = null;
                           addr73:
                           while(true)
                           {
                           }
                        }
                     }
                     addr61:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     return;
                     addr68:
                  }
               }
               while(true)
               {
                  this.§0!G§ = null;
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr82);
               }
               §§goto(addr68);
            }
            §§goto(addr81);
         }
         §§goto(addr82);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§8X§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr29:
                  this.§8X§ = new Sprite();
                  if(!(_loc3_ && this))
                  {
                     addr40:
                     §§push(this);
                     §§push(this.§=U§);
                     if(_loc4_ || param1)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§=U§ = §§pop();
                  }
                  var _loc2_:* = int(this.§0!G§.length - 1);
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc3_ && _loc2_))
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           while(true)
                           {
                              this.§,D§();
                              loop2:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    this.§0!G§.splice(_loc2_,1);
                                    break;
                                 }
                                 addr159:
                                 this.§?Z§();
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!(_loc4_ || _loc2_))
                                       {
                                          break;
                                       }
                                       if(!(_loc4_ || this))
                                       {
                                          break loop2;
                                       }
                                       continue;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        else if(!this.§0!G§[_loc2_].update(this.§=U§,this.§8X§,this.§;!t§))
                        {
                           §§goto(addr159);
                        }
                        §§push(_loc2_);
                        if(_loc4_)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
            §§goto(addr40);
         }
         §§goto(addr29);
      }
      
      private function §@!t§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §^b§.§9E§.§5t§.height;
         §§push(§ _§.§0!2§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§ _§.§[!Y§);
         if(!(_loc6_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!(_loc6_ && this))
         {
            §§push(this.§!!A§);
            if(_loc5_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            §§push(this.§8X§);
            §§push(_loc4_);
            if(_loc5_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §,D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^b§.§9E§.color = this.§,y§;
         }
      }
      
      private function §?Z§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§]0§)
            {
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§8X§.getChildByName(§;!@§.§ 1§) as Sprite;
         if(_loc2_)
         {
            if(_loc1_)
            {
               if(_loc3_)
               {
               }
               §§goto(addr72);
            }
            this.§]0§ = true;
         }
         addr72:
      }
      
      public function clone(param1:§,Q§) : §,S§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§8d§ = null;
         var _loc2_:§,S§ = new §,S§(null,null);
         for each(_loc3_ in this.§0!G§)
         {
            if(_loc7_)
            {
               _loc2_.§0!G§.push(_loc3_.clone());
            }
         }
         if(_loc7_ || param1)
         {
            _loc2_.§=U§ = this.§=U§;
         }
         while(true)
         {
            _loc2_.§[1§ = this.§[1§;
            loop2:
            while(true)
            {
               _loc2_.§'O§ = this.§'O§;
               loop3:
               while(true)
               {
                  _loc2_.§!!A§ = this.§!!A§;
                  while(true)
                  {
                     _loc2_.§&!Y§ = this.§&!Y§;
                     while(true)
                     {
                        _loc2_.§,y§ = this.§,y§;
                        while(_loc7_)
                        {
                           continue loop2;
                           if(!(_loc6_ && param1))
                           {
                              return _loc2_;
                           }
                        }
                     }
                     addr97:
                     while(!(_loc6_ && _loc3_))
                     {
                        continue loop3;
                        _loc2_.§;!t§ = param1;
                        if(!(_loc7_ || this))
                        {
                           continue;
                        }
                        §§goto(addr84);
                     }
                  }
               }
            }
         }
      }
      
      public function get §+!'§() : String
      {
         return this.§#r§;
      }
      
      public function set §+!'§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#r§ = param1;
         }
      }
   }
}
