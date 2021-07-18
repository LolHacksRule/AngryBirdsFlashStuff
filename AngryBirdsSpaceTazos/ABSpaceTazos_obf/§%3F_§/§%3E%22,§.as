package §?_§
{
   import §,"&§.§9q§;
   import §4&§.§,C§;
   import §5Q§.§^!e§;
   import §7!8§.§&!D§;
   import §7!8§.Sprite;
   
   public class §>",§
   {
      
      public static const §=!5§:String = "CutScene_Type_Intro";
      
      public static const §6!Z§:String = "CutScene_Type_Outro";
      
      public static const §]!W§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §=!5§ = "CutScene_Type_Intro";
         }
         while(true)
         {
            §6!Z§ = "CutScene_Type_Outro";
            while(!(_loc1_ && §>",§))
            {
               §]!W§ = "CutScene_Type_Final_Outro";
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §7!T§:§,C§;
      
      private var §2?§:String;
      
      private var §`!Y§:Vector.<§3'§>;
      
      private var §;"!§:Number;
      
      private var §<^§:Number;
      
      private var §<!f§:Number;
      
      private var §8>§:Number;
      
      private var §]!$§:Sprite;
      
      private var §=w§:Boolean = true;
      
      private var §#Z§:uint;
      
      private var §0!G§:Boolean;
      
      private var §'!m§:§&!D§;
      
      private var §#"H§:§&!D§;
      
      public function §>",§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§3'§ = null;
         var _loc4_:Object = null;
         if(_loc7_ || param1)
         {
            this.§`!Y§ = new Vector.<§3'§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§;"!§ = 0;
                  loop2:
                  while(true)
                  {
                     addr75:
                     loop3:
                     while(param1)
                     {
                        loop4:
                        while(_loc7_)
                        {
                           §§push(param2);
                           while(§§pop().search("intro") == -1)
                           {
                              §§push(param2);
                              if(_loc8_)
                              {
                                 continue;
                              }
                              if(§§pop().search("complete") != -1)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    if(_loc7_ || _loc3_)
                                    {
                                       this.§2?§ = §6!Z§;
                                       addr57:
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       if(_loc7_ || this)
                                       {
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    addr107:
                                    var _loc5_:int = 0;
                                    var _loc6_:* = param1;
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc6_,_loc5_));
                                       if(_loc7_ || param2)
                                       {
                                          if(§§pop())
                                          {
                                             _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                             _loc3_ = this.§;!9§(_loc4_);
                                             if(!(_loc8_ && param1))
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      this.§`!Y§.push(_loc3_);
                                                   }
                                                }
                                             }
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   _loc5_ = 0;
                                                   if(_loc7_)
                                                   {
                                                      _loc6_ = this.§`!Y§;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc6_,_loc5_));
                                                         break loop6;
                                                      }
                                                      addr279:
                                                      addr277:
                                                   }
                                                }
                                                break loop3;
                                             }
                                             break loop3;
                                          }
                                          §§goto(addr279);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                          if(_loc7_ || param1)
                                          {
                                             §§push(_loc3_ is §?!'§);
                                             loop8:
                                             while(!§§pop())
                                             {
                                                §§push(_loc3_ is §5"!§);
                                                if(_loc8_)
                                                {
                                                   continue;
                                                }
                                                if(§§pop())
                                                {
                                                   do
                                                   {
                                                      (_loc3_ as §5"!§).setSize(this.§<!f§,this.§8>§);
                                                      do
                                                      {
                                                         (_loc3_ as §5"!§).§"n§ = this.§=w§;
                                                      }
                                                      while(!_loc7_);
                                                      
                                                   }
                                                   while(_loc8_);
                                                   
                                                   if(_loc7_ || param2)
                                                   {
                                                      if(false)
                                                      {
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                   else
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            addr251:
                                                            if(_loc8_)
                                                            {
                                                               break loop8;
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         addr276:
                                                         while(true)
                                                         {
                                                            (_loc3_ as §?!'§).§?!!§ = this.§=w§;
                                                            continue loop13;
                                                         }
                                                         §§goto(addr251);
                                                      }
                                                   }
                                                   §§goto(addr219);
                                                   addr228:
                                                }
                                                §§goto(addr279);
                                             }
                                             while(true)
                                             {
                                                (_loc3_ as §?!'§).setSize(this.§<!f§,this.§8>§);
                                                §§goto(addr276);
                                                §§goto(addr251);
                                             }
                                             §§goto(addr253);
                                          }
                                          §§goto(addr228);
                                       }
                                       §§goto(addr279);
                                    }
                                    addr90:
                                 }
                                 §§goto(addr57);
                              }
                              §§goto(addr107);
                           }
                           if(!_loc7_)
                           {
                              continue loop2;
                           }
                           this.§2?§ = §=!5§;
                           §§goto(addr90);
                        }
                        continue loop0;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      private function §;!9§(param1:Object) : §3'§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc5_ || _loc2_)
         {
            §§push(§3'§.§4!$§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr375:
                     §§push(6);
                     if(!(_loc6_ && this))
                     {
                        addr383:
                     }
                     else
                     {
                        addr433:
                     }
                  }
               }
               else
               {
                  §§push(§3'§.§7!p§);
                  if(!_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc5_)
                        {
                           §§push(1);
                           if(!(_loc6_ && this))
                           {
                              §§goto(addr438);
                           }
                           else
                           {
                              §§goto(addr383);
                           }
                        }
                        else
                        {
                           addr341:
                           §§push(4);
                           if(!_loc6_)
                           {
                              addr344:
                           }
                           else
                           {
                              addr366:
                           }
                           §§goto(addr438);
                        }
                        §§goto(addr438);
                     }
                     else
                     {
                        §§push(§3'§.§-""§);
                        if(_loc5_ || param1)
                        {
                           addr293:
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(2);
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr438);
                              }
                              else
                              {
                                 §§goto(addr341);
                              }
                           }
                           else
                           {
                              §§push(§3'§.§7"2§);
                              if(_loc5_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       §§push(3);
                                       if(_loc6_ && _loc2_)
                                       {
                                       }
                                       §§goto(addr438);
                                    }
                                    else
                                    {
                                       addr402:
                                       §§push(7);
                                       if(_loc5_ || param1)
                                       {
                                          §§goto(addr438);
                                       }
                                       else
                                       {
                                          §§goto(addr433);
                                       }
                                    }
                                    §§goto(addr438);
                                 }
                                 else
                                 {
                                    §§push(§3'§.§ "F§);
                                    if(_loc5_)
                                    {
                                       addr332:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             §§goto(addr341);
                                          }
                                          else
                                          {
                                             addr358:
                                             §§push(5);
                                             if(_loc5_ || _loc3_)
                                             {
                                                §§goto(addr366);
                                             }
                                             §§goto(addr438);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§3'§.§>^§);
                                          if(_loc5_ || this)
                                          {
                                             addr354:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§goto(addr358);
                                                }
                                                else
                                                {
                                                   §§goto(addr375);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§3'§.§ 9§);
                                                if(!_loc6_)
                                                {
                                                   addr371:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr438);
                                                   }
                                                   else
                                                   {
                                                      §§push(§3'§.§#!4§);
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               §§goto(addr402);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr413:
                                                            if(§3'§.§1!U§ !== _loc4_)
                                                            {
                                                               addr438:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     return new §5"!§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                                  case 1:
                                                                     _loc2_ = param1.scroll_target;
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        if(_loc2_.type == "sprite")
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr62);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr62:
                                                                     return new §?!'§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                                  case 2:
                                                                     _loc3_ = param1.zoom_target;
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(_loc3_.type != "sprite")
                                                                        {
                                                                           addr183:
                                                                           break;
                                                                        }
                                                                        return new §#"G§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                        addr209:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr204:
                                                                     }
                                                                     break;
                                                                  case 5:
                                                                     this.§<!f§ = param1.width;
                                                                     addr167:
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        this.§8>§ = param1.height;
                                                                        addr155:
                                                                        if(_loc5_)
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§goto(addr204);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr209);
                                                                           }
                                                                        }
                                                                        break;
                                                                        addr182:
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr183);
                                                                     }
                                                                     break;
                                                                  case 8:
                                                                     this.§#Z§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        if(_loc5_ || param1)
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              if(false)
                                                                              {
                                                                                 addr134:
                                                                                 break;
                                                                              }
                                                                              break;
                                                                           }
                                                                           §§goto(addr167);
                                                                        }
                                                                        §§goto(addr155);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr140:
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr149:
                                                                     }
                                                                     §§goto(addr134);
                                                                  case 4:
                                                                     this.§<^§ = param1.time * 1000;
                                                                     §§goto(addr182);
                                                                  case 3:
                                                                     return new §%J§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                                  case 6:
                                                                     this.§=w§ = false;
                                                                     §§goto(addr149);
                                                                  case 7:
                                                                     this.§=w§ = true;
                                                                     §§goto(addr140);
                                                               }
                                                               return null;
                                                               §§push(9);
                                                            }
                                                         }
                                                         §§goto(addr438);
                                                      }
                                                      §§goto(addr413);
                                                   }
                                                   §§goto(addr438);
                                                }
                                             }
                                             §§goto(addr438);
                                          }
                                          §§goto(addr413);
                                       }
                                       §§goto(addr438);
                                    }
                                    §§goto(addr354);
                                 }
                              }
                              §§goto(addr371);
                           }
                           §§goto(addr438);
                        }
                     }
                     §§goto(addr438);
                  }
                  §§goto(addr332);
               }
               §§goto(addr438);
            }
            §§goto(addr293);
         }
         §§goto(addr375);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§]!$§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§]!$§);
                     addr81:
                     while(true)
                     {
                        §§pop().dispose();
                        addr82:
                        while(true)
                        {
                           this.§]!$§ = null;
                           addr63:
                           while(true)
                           {
                           }
                        }
                     }
                     addr51:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     return;
                     addr58:
                  }
               }
               while(true)
               {
                  this.§`!Y§ = null;
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr51);
                  }
                  §§goto(addr82);
               }
               §§goto(addr58);
            }
            §§goto(addr81);
         }
         §§goto(addr82);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§]!$§)
            {
               if(_loc3_)
               {
                  this.§]!$§ = new Sprite();
                  if(_loc3_)
                  {
                     addr29:
                     §§push(this);
                     §§push(this.§;"!§);
                     if(_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§;"!§ = §§pop();
                  }
               }
               var _loc2_:* = int(this.§`!Y§.length - 1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc4_)
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc3_ || param1)
                        {
                           this.§4!@§();
                        }
                        loop2:
                        while(_loc3_ || this)
                        {
                           this.§3H§();
                           while(!_loc4_)
                           {
                              this.§7!#§();
                              if(_loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    break loop0;
                                 }
                                 addr106:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§`!Y§.splice(_loc2_,1);
                                       break loop2;
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     else if(!this.§`!Y§[_loc2_].update(this.§;"!§,this.§]!$§,this.§7!T§))
                     {
                        §§goto(addr133);
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr106);
                  }
               }
               return this.§;"!§ < this.§<^§;
            }
         }
         §§goto(addr29);
      }
      
      private function §7!#§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §^!e§.§;b§.height;
         §§push(§9q§.§9!$§);
         if(!(_loc6_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§9q§.§+w§);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(this.§8>§);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || this)
         {
            §§push(this.§]!$§);
            §§push(_loc4_);
            if(_loc5_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §4!@§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!e§.§`?§.color = this.§#Z§;
         }
      }
      
      private function §3H§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§0!G§)
            {
               if(!(_loc2_ && this))
               {
                  §§goto(addr29);
               }
            }
            var _loc1_:Sprite = this.§]!$§.getChildByName(§5"!§.§!#§) as Sprite;
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_)
               {
                  if(_loc2_ && _loc1_)
                  {
                  }
                  §§goto(addr78);
               }
               this.§0!G§ = true;
            }
            addr78:
            return;
         }
         addr29:
      }
      
      public function clone(param1:§,C§) : §>",§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§3'§ = null;
         var _loc2_:§>",§ = new §>",§(null,null);
         for each(_loc3_ in this.§`!Y§)
         {
            if(_loc6_ || _loc2_)
            {
               _loc2_.§`!Y§.push(_loc3_.clone());
            }
         }
         if(_loc6_ || _loc3_)
         {
            _loc2_.§;"!§ = this.§;"!§;
            while(true)
            {
               _loc2_.§<^§ = this.§<^§;
               loop3:
               while(_loc6_ || param1)
               {
                  _loc2_.§8>§ = this.§8>§;
                  loop4:
                  while(true)
                  {
                     _loc2_.§=w§ = this.§=w§;
                     do
                     {
                        _loc2_.§#Z§ = this.§#Z§;
                        while(true)
                        {
                           if(_loc6_)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              _loc2_.§2?§ = this.§2?§;
                              continue;
                           }
                           continue loop4;
                        }
                        continue loop3;
                     }
                     while(!_loc6_);
                     
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr156);
      }
      
      public function get §5"-§() : String
      {
         return this.§2?§;
      }
      
      public function set §5"-§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§2?§ = param1;
         }
      }
   }
}
