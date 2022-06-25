package §_-n§
{
   import §_-0Ea§.§_-AY§;
   import §_-8d§.§_-0FF§;
   import §_-qO§.§ in§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-2p§;
   
   public class §_-0BF§
   {
      
      public static const native:String = "CutScene_Type_Intro";
      
      public static const §_-k5§:String = "CutScene_Type_Outro";
      
      public static const §_-rm§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            native = "CutScene_Type_Intro";
            do
            {
               §_-k5§ = "CutScene_Type_Outro";
               do
               {
                  §_-rm§ = "CutScene_Type_Final_Outro";
               }
               while(_loc1_ && §_-0BF§);
               
            }
            while(_loc1_);
            
         }
      }
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-uA§:String;
      
      private var §_-jv§:Vector.<§_-tC§>;
      
      private var §_-063§:Number;
      
      private var §_-R8§:Number;
      
      private var §_-ux§:Number;
      
      private var §_-09f§:Number;
      
      private var §_-FQ§:Sprite;
      
      private var §_-0EB§:Boolean = true;
      
      private var § null§:uint;
      
      private var §_-Xf§:Boolean;
      
      private var §_-dw§:§_-2p§;
      
      private var §_-01z§:§_-2p§;
      
      public function §_-0BF§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§_-tC§ = null;
         var _loc4_:Object = null;
         if(_loc8_ || param1)
         {
            this.§_-jv§ = new Vector.<§_-tC§>();
            while(true)
            {
               super();
            }
            addr109:
         }
         loop1:
         while(true)
         {
            this.§_-063§ = 0;
            loop2:
            while(true)
            {
               loop3:
               while(param1)
               {
                  if(_loc7_ && this)
                  {
                     continue loop2;
                  }
                  §§push(param2);
                  loop4:
                  while(true)
                  {
                     §§push("intro");
                     while(true)
                     {
                        if(§§pop().search(§§pop()) == -1)
                        {
                           §§push(param2);
                           if(!_loc7_)
                           {
                              §§push("complete");
                              if(!_loc7_)
                              {
                                 if(§§pop().search(§§pop()) == -1)
                                 {
                                    break;
                                 }
                                 if(_loc8_)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 addr62:
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        if(!_loc8_)
                        {
                           continue loop2;
                        }
                        if(_loc8_)
                        {
                           this.§_-uA§ = native;
                           continue loop2;
                        }
                        §§goto(addr109);
                     }
                     addr110:
                     var _loc5_:int = 0;
                     var _loc6_:* = param1;
                     addr147:
                     §§push(§§hasnext(_loc6_,_loc5_));
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           _loc4_ = §§nextvalue(_loc5_,_loc6_);
                           _loc3_ = this.§_-2G§(_loc4_);
                           if(!_loc7_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc8_)
                                 {
                                    addr143:
                                    this.§_-jv§.push(_loc3_);
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr143);
                        }
                        if(_loc8_ || _loc3_)
                        {
                           if(!_loc7_)
                           {
                              if(_loc8_)
                              {
                                 _loc5_ = 0;
                                 if(!(_loc7_ && param1))
                                 {
                                    addr173:
                                    _loc6_ = this.§_-jv§;
                                    addr275:
                                    for each(_loc3_ in _loc6_)
                                    {
                                       if(!(_loc7_ && param2))
                                       {
                                          addr265:
                                          if(_loc3_ is §_-O4§)
                                          {
                                             addr266:
                                             (_loc3_ as §_-O4§).setSize(this.§_-ux§,this.§_-09f§);
                                             (_loc3_ as §_-O4§).§_-RR§ = this.§_-0EB§;
                                             addr205:
                                             §§goto(addr275);
                                             addr274:
                                             addr261:
                                          }
                                          §§push(_loc3_ is §_-fn§);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             if(§§pop())
                                             {
                                                addr219:
                                                if(_loc8_)
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      (_loc3_ as §_-fn§).setSize(this.§_-ux§,this.§_-09f§);
                                                      addr236:
                                                      if(!(_loc7_ && this))
                                                      {
                                                         (_loc3_ as §_-fn§).§_-pm§ = this.§_-0EB§;
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(false)
                                                               {
                                                                  §§goto(addr205);
                                                               }
                                                               §§goto(addr275);
                                                            }
                                                            §§goto(addr219);
                                                         }
                                                         §§goto(addr236);
                                                         addr253:
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr261);
                                             }
                                             §§goto(addr275);
                                          }
                                          §§goto(addr265);
                                       }
                                       §§goto(addr253);
                                    }
                                 }
                                 break loop3;
                              }
                              break loop3;
                           }
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr275);
                  }
               }
               return;
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      private function §_-2G§(param1:Object) : §_-tC§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc6_ || this)
         {
            §§push(§_-tC§.§_-031§);
            if(!_loc5_)
            {
               if(§§pop() === _loc4_)
               {
                  if(!(_loc5_ && param1))
                  {
                     addr269:
                     §§push(0);
                     if(!(_loc6_ || this))
                     {
                        addr326:
                     }
                  }
                  else
                  {
                     addr369:
                     §§push(5);
                     if(!(_loc6_ || _loc3_))
                     {
                        addr399:
                     }
                  }
               }
               else
               {
                  §§push(§_-tC§.§_-DX§);
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_ || this)
                        {
                           §§push(1);
                           if(_loc6_ || param1)
                           {
                              §§goto(addr449);
                           }
                           else
                           {
                              §§goto(addr399);
                           }
                        }
                        §§goto(addr449);
                     }
                     else
                     {
                        §§push(§_-tC§.§_-Cg§);
                        if(_loc6_ || _loc3_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(2);
                                 if(!(_loc5_ && this))
                                 {
                                    §§goto(addr326);
                                 }
                                 else
                                 {
                                    addr360:
                                    §§goto(addr449);
                                 }
                              }
                              else
                              {
                                 addr428:
                                 §§push(7);
                                 if(!_loc6_)
                                 {
                                    addr444:
                                 }
                                 §§goto(addr449);
                              }
                              §§goto(addr449);
                           }
                           else
                           {
                              §§push(§_-tC§.§_-Rs§);
                              if(_loc6_ || this)
                              {
                                 addr336:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§push(3);
                                       if(_loc6_ || _loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr436:
                                       §§push(8);
                                       if(!(_loc5_ && this))
                                       {
                                          §§goto(addr444);
                                       }
                                    }
                                    §§goto(addr449);
                                 }
                                 else
                                 {
                                    §§push(§_-tC§.END);
                                    if(_loc6_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(4);
                                             if(_loc6_)
                                             {
                                                §§goto(addr360);
                                             }
                                             §§goto(addr449);
                                          }
                                          else
                                          {
                                             §§goto(addr428);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§_-tC§.§_-Bj§);
                                          if(!_loc5_)
                                          {
                                             addr365:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr369);
                                                }
                                                else
                                                {
                                                   §§goto(addr436);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§_-tC§.§_-6q§);
                                                if(!_loc5_)
                                                {
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(_loc6_ || _loc2_)
                                                      {
                                                         §§push(6);
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            §§goto(addr399);
                                                         }
                                                         §§goto(addr449);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr436);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§_-tC§.§_-05G§);
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                      }
                                                      addr434:
                                                      if(§§pop() === _loc4_)
                                                      {
                                                         §§goto(addr436);
                                                      }
                                                      else
                                                      {
                                                         addr449:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               return new §_-fn§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                            case 1:
                                                               _loc2_ = param1.scroll_target;
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  if(_loc2_.type == "sprite")
                                                                  {
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        §§goto(addr73);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               addr73:
                                                               return new §_-O4§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                            case 2:
                                                               _loc3_ = param1.zoom_target;
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc3_.type != "sprite")
                                                                  {
                                                                     addr191:
                                                                     break;
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               else
                                                               {
                                                                  break;
                                                                  addr190:
                                                               }
                                                               break;
                                                            case 3:
                                                               return new §_-9l§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                            case 8:
                                                               this.§ null§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc5_ && _loc3_))
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 addr149:
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr191);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr183:
                                                                           this.§_-R8§ = param1.time * 1000;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr170:
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                     }
                                                                     §§goto(addr190);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr162:
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr149);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr180:
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr225:
                                                                           return new §_-MA§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                        }
                                                                        this.§_-09f§ = param1.height;
                                                                     }
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               else
                                                               {
                                                                  break;
                                                                  addr155:
                                                               }
                                                            case 4:
                                                               §§goto(addr183);
                                                            case 5:
                                                               this.§_-ux§ = param1.width;
                                                               §§goto(addr180);
                                                            case 6:
                                                               this.§_-0EB§ = false;
                                                               §§goto(addr162);
                                                            case 7:
                                                               this.§_-0EB§ = true;
                                                               §§goto(addr155);
                                                         }
                                                         return null;
                                                         §§push(9);
                                                      }
                                                      §§goto(addr449);
                                                   }
                                                   §§goto(addr436);
                                                }
                                             }
                                             §§goto(addr436);
                                          }
                                          if(§§pop() === _loc4_)
                                          {
                                             if(!(_loc5_ && param1))
                                             {
                                                §§goto(addr428);
                                             }
                                             else
                                             {
                                                §§goto(addr436);
                                             }
                                          }
                                          else
                                          {
                                             §§push(§_-tC§.§_-Cz§);
                                          }
                                          §§goto(addr436);
                                       }
                                       §§goto(addr449);
                                    }
                                 }
                                 §§goto(addr436);
                              }
                              §§goto(addr365);
                           }
                        }
                        §§goto(addr434);
                     }
                  }
                  §§goto(addr365);
               }
               §§goto(addr449);
            }
            §§goto(addr336);
         }
         §§goto(addr269);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-FQ§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§_-FQ§);
                     addr76:
                     while(true)
                     {
                        §§pop().dispose();
                        addr77:
                        while(true)
                        {
                           this.§_-FQ§ = null;
                           addr68:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr74:
               }
               while(true)
               {
                  this.§_-jv§ = null;
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  if(_loc1_ || _loc1_)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr77);
               }
               return;
            }
            §§goto(addr76);
         }
         §§goto(addr68);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!this.§_-FQ§)
            {
               if(_loc4_ || param1)
               {
                  this.§_-FQ§ = new Sprite();
                  if(_loc3_ && _loc2_)
                  {
                  }
                  addr53:
                  var _loc2_:* = int(this.§_-jv§.length - 1);
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(§§pop() < 0)
                           {
                              loop3:
                              while(true)
                              {
                                 this.§_-f6§();
                                 while(true)
                                 {
                                    this.§_-Vd§();
                                    while(_loc4_)
                                    {
                                       continue loop3;
                                       this.§_-kN§();
                                       if(_loc3_ && this)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          return this.§_-063§ < this.§_-R8§;
                                       }
                                       addr125:
                                       if(!_loc3_)
                                       {
                                          addr137:
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             continue loop0;
                                          }
                                          addr159:
                                          while(true)
                                          {
                                             this.§_-jv§.splice(_loc2_,1);
                                             §§goto(addr137);
                                          }
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          addr121:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             addr123:
                                             while(true)
                                             {
                                                §§push(§§pop() - 1);
                                                addr124:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   §§goto(addr125);
                                                }
                                                continue loop0;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           else if(!this.§_-jv§[_loc2_].update(this.§_-063§,this.§_-FQ§,this.§_-00g§))
                           {
                              §§goto(addr159);
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr124);
                  }
               }
            }
            §§push(this);
            §§push(this.§_-063§);
            if(_loc4_ || this)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-063§ = §§pop();
         }
         §§goto(addr53);
      }
      
      private function §_-kN§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §_-AY§.§_-un§.§_-Lj§.height;
         §§push(§ in§.§_-57§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§ in§.§_-Sr§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc6_ || _loc3_)
         {
            §§push(this.§_-09f§);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc6_ || _loc3_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc5_)
         {
            §§push(this.§_-FQ§);
            §§push(_loc4_);
            if(_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §_-f6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §_-AY§.§_-un§.color = this.§ null§;
         }
      }
      
      private function §_-Vd§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§_-Xf§)
            {
               if(!(_loc2_ && this))
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§_-FQ§.getChildByName(§_-fn§.§_-a9§) as Sprite;
         if(_loc3_)
         {
            if(_loc1_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr70:
                  this.§_-Xf§ = true;
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function clone(param1:§_-0FF§) : §_-0BF§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-tC§ = null;
         var _loc2_:§_-0BF§ = new §_-0BF§(null,null);
         for each(_loc3_ in this.§_-jv§)
         {
            if(_loc6_)
            {
               _loc2_.§_-jv§.push(_loc3_.clone());
            }
         }
         if(_loc6_)
         {
            _loc2_.§_-063§ = this.§_-063§;
         }
         while(true)
         {
            _loc2_.§_-R8§ = this.§_-R8§;
            while(true)
            {
               _loc2_.§_-ux§ = this.§_-ux§;
               loop3:
               while(true)
               {
                  _loc2_.§_-09f§ = this.§_-09f§;
                  addr139:
                  while(true)
                  {
                     _loc2_.§_-0EB§ = this.§_-0EB§;
                     continue loop3;
                  }
               }
               addr88:
               if(_loc7_ && this)
               {
                  continue;
               }
               _loc2_.§_-00g§ = param1;
               addr95:
               if(!(_loc6_ || _loc2_))
               {
                  while(true)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr88);
                     }
                     else
                     {
                        §§goto(addr101);
                     }
                  }
                  continue;
                  addr86:
               }
               if(!_loc7_)
               {
                  return _loc2_;
               }
               §§goto(addr126);
            }
            if(_loc7_ && param1)
            {
               continue;
            }
            _loc2_.§_-uA§ = this.§_-uA§;
            §§goto(addr86);
         }
      }
      
      public function get §_-01k§() : String
      {
         return this.§_-uA§;
      }
      
      public function set §_-01k§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§_-uA§ = param1;
         }
      }
   }
}
