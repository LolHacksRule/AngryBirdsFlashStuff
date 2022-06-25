package §%r§
{
   import §#!,§.§6!Y§;
   import §#!,§.Sprite;
   import §,!7§.TextureManager;
   import §7!>§.Starling;
   import §?!Y§.§`S§;
   
   public class CutScene
   {
      
      public static const §2]§:String = "CutScene_Type_Intro";
      
      public static const §&M§:String = "CutScene_Type_Outro";
      
      public static const §[V§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §2]§ = "CutScene_Type_Intro";
         }
         while(true)
         {
            §&M§ = "CutScene_Type_Outro";
            while(!(_loc1_ && _loc1_))
            {
               §[V§ = "CutScene_Type_Final_Outro";
               if(_loc2_ || CutScene)
               {
                  return;
               }
            }
         }
      }
      
      private var §7!`§:TextureManager;
      
      private var §"o§:String;
      
      private var §5!h§:Vector.<§,!b§>;
      
      private var §28§:Number;
      
      private var §<N§:Number;
      
      private var §,<§:Number;
      
      private var §5,§:Number;
      
      private var §"!,§:Sprite;
      
      private var §>![§:Boolean = true;
      
      private var §&@§:uint;
      
      private var § set§:Boolean;
      
      private var §+!§:§6!Y§;
      
      private var §%!S§:§6!Y§;
      
      public function CutScene(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§,!b§ = null;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            this.§5!h§ = new Vector.<§,!b§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§28§ = 0;
                  addr71:
                  if(!(_loc8_ || this))
                  {
                     continue;
                  }
                  §§push(param2);
                  loop4:
                  while(true)
                  {
                     §§push("intro");
                     loop5:
                     while(true)
                     {
                        if(§§pop().search(§§pop()) == -1)
                        {
                           §§push(param2);
                           if(!_loc7_)
                           {
                              §§push("complete");
                              if(_loc8_ || param2)
                              {
                                 if(§§pop().search(§§pop()) != -1)
                                 {
                                    if(_loc8_)
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          this.§"o§ = §&M§;
                                          addr56:
                                          if(!_loc7_)
                                          {
                                             if(false)
                                             {
                                                §§goto(addr60);
                                             }
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr101);
                                    }
                                    §§goto(addr56);
                                 }
                                 break;
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        if(!(_loc7_ && param1))
                        {
                           addr90:
                           if(_loc8_ || this)
                           {
                              this.§"o§ = §2]§;
                           }
                           else
                           {
                              while(true)
                              {
                                 addr60:
                                 addr294:
                                 while(param1)
                                 {
                                    if(_loc7_ && param2)
                                    {
                                       addr101:
                                       break loop5;
                                       addr101:
                                    }
                                    §§goto(addr71);
                                 }
                                 return;
                                 §§goto(addr90);
                              }
                              addr106:
                           }
                        }
                        §§goto(addr101);
                        §§goto(addr60);
                     }
                     var _loc5_:int = 0;
                     var _loc6_:* = param1;
                     addr159:
                     §§push(§§hasnext(_loc6_,_loc5_));
                     if(!_loc7_)
                     {
                        if(§§pop())
                        {
                           _loc4_ = §§nextvalue(_loc5_,_loc6_);
                           _loc3_ = this.§4!k§(_loc4_);
                           if(!_loc7_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc8_)
                                 {
                                    addr154:
                                    this.§5!h§.push(_loc3_);
                                 }
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr154);
                        }
                        if(_loc8_ || this)
                        {
                           if(_loc8_ || this)
                           {
                              if(!_loc7_)
                              {
                                 _loc5_ = 0;
                                 if(!_loc7_)
                                 {
                                    _loc6_ = this.§5!h§;
                                    addr290:
                                    for each(_loc3_ in _loc6_)
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          addr278:
                                          if(_loc3_ is §8h§)
                                          {
                                             addr279:
                                             (_loc3_ as §8h§).setSize(this.§,<§,this.§5,§);
                                             (_loc3_ as §8h§).§'R§ = this.§>![§;
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                addr223:
                                                §§goto(addr290);
                                             }
                                             §§goto(addr279);
                                             addr289:
                                          }
                                          §§push(_loc3_ is §`!Q§);
                                          if(!_loc7_)
                                          {
                                             if(§§pop())
                                             {
                                                addr233:
                                                (_loc3_ as §`!Q§).setSize(this.§,<§,this.§5,§);
                                                if(!_loc7_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      (_loc3_ as §`!Q§).§@!g§ = this.§>![§;
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr223);
                                                            }
                                                            §§goto(addr290);
                                                         }
                                                      }
                                                      §§goto(addr233);
                                                   }
                                                   §§goto(addr289);
                                                }
                                                §§goto(addr279);
                                             }
                                             §§goto(addr290);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr279);
                                    }
                                    addr293:
                                    addr292:
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr294);
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr292);
                     }
                     §§goto(addr290);
                  }
               }
            }
         }
         §§goto(addr106);
      }
      
      public function get sprite() : Sprite
      {
         return this.§"!,§;
      }
      
      private function §4!k§(param1:Object) : §,!b§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc5_ || this)
         {
            §§push(§,!b§.§,!#§);
            if(!_loc6_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc6_ && _loc3_)
                     {
                        addr341:
                     }
                  }
                  else
                  {
                     addr451:
                     §§push(8);
                     if(_loc5_ || _loc2_)
                     {
                        addr459:
                     }
                     else
                     {
                        addr465:
                     }
                  }
               }
               else
               {
                  §§push(§,!b§.§,+§);
                  if(_loc5_ || _loc2_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(!_loc6_)
                        {
                           §§push(1);
                           if(!_loc5_)
                           {
                              addr313:
                           }
                        }
                        else
                        {
                           addr384:
                           §§push(5);
                           if(!_loc5_)
                           {
                              addr410:
                           }
                        }
                        §§goto(addr467);
                     }
                     else
                     {
                        §§push(§,!b§.§10§);
                        if(!(_loc6_ && this))
                        {
                           addr301:
                           if(§§pop() === _loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§push(2);
                                 if(!(_loc6_ && this))
                                 {
                                    §§goto(addr313);
                                 }
                                 else
                                 {
                                    §§goto(addr410);
                                 }
                              }
                              else
                              {
                                 addr333:
                                 §§push(3);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§goto(addr341);
                                 }
                                 else
                                 {
                                    addr428:
                                    §§goto(addr467);
                                 }
                              }
                              §§goto(addr467);
                           }
                           else
                           {
                              §§push(§,!b§.§-J§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr324:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc6_ && this))
                                    {
                                       §§goto(addr333);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§,!b§.§1d§);
                                    if(_loc5_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             §§push(4);
                                             if(_loc5_ || _loc2_)
                                             {
                                                §§goto(addr467);
                                             }
                                             else
                                             {
                                                §§goto(addr428);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr384);
                                          }
                                          §§goto(addr467);
                                       }
                                       else
                                       {
                                          §§push(§,!b§.§;P§);
                                          if(_loc5_ || this)
                                          {
                                             addr375:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§goto(addr384);
                                                }
                                                else
                                                {
                                                   §§goto(addr402);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§,!b§.§#!&§);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         addr402:
                                                         §§push(6);
                                                         if(_loc6_ && this)
                                                         {
                                                            §§goto(addr459);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr462:
                                                         §§push(9);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr465);
                                                         }
                                                      }
                                                      §§goto(addr467);
                                                   }
                                                   else
                                                   {
                                                      §§push(§,!b§.§]K§);
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr416);
                                                      }
                                                   }
                                                   §§goto(addr462);
                                                }
                                                addr416:
                                                if(§§pop() === _loc4_)
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      §§push(7);
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr428);
                                                      }
                                                      §§goto(addr467);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr451);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§,!b§.§6b§);
                                                }
                                                §§goto(addr467);
                                             }
                                             §§goto(addr467);
                                          }
                                       }
                                       §§goto(addr467);
                                    }
                                    if(§§pop() === _loc4_)
                                    {
                                       if(_loc5_ || this)
                                       {
                                          §§goto(addr451);
                                       }
                                    }
                                    else if(true)
                                    {
                                       addr467:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             return new §`!Q§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                          case 1:
                                             _loc2_ = param1.scroll_target;
                                             if(_loc5_)
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
                                             return new §8h§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                          case 2:
                                             _loc3_ = param1.zoom_target;
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc3_.type != "sprite")
                                                {
                                                   addr188:
                                                   break;
                                                }
                                                return new §^u§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                addr214:
                                             }
                                             else
                                             {
                                                addr209:
                                             }
                                             break;
                                          case 6:
                                             this.§>![§ = false;
                                             addr158:
                                             if(_loc5_ || _loc3_)
                                             {
                                                addr127:
                                                break;
                                             }
                                             if(!_loc6_)
                                             {
                                                §§goto(addr209);
                                             }
                                             else
                                             {
                                                §§goto(addr188);
                                             }
                                             break;
                                          case 7:
                                             this.§>![§ = true;
                                             addr133:
                                             if(_loc5_)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      addr187:
                                                      break;
                                                      addr187:
                                                   }
                                                   else
                                                   {
                                                      this.§5,§ = param1.height;
                                                      addr179:
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr158);
                                             §§goto(addr187);
                                          case 8:
                                             this.§&@§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                             if(!_loc6_)
                                             {
                                                if(!(_loc6_ && this))
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr214);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr133);
                                             }
                                             §§goto(addr127);
                                          case 4:
                                             this.§<N§ = param1.time * 1000;
                                             §§goto(addr187);
                                          case 3:
                                             return new §[!H§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                          case 5:
                                             this.§,<§ = param1.width;
                                             §§goto(addr179);
                                       }
                                       return null;
                                       §§push(9);
                                    }
                                 }
                                 §§goto(addr467);
                              }
                              §§goto(addr416);
                           }
                        }
                        §§goto(addr324);
                     }
                  }
                  §§goto(addr301);
               }
               §§goto(addr467);
            }
            §§goto(addr375);
         }
         §§goto(addr451);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§"!,§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§"!,§);
                     addr72:
                     while(true)
                     {
                        §§pop().dispose();
                        addr74:
                        while(true)
                        {
                           this.§"!,§ = null;
                           addr63:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr70:
               }
               while(true)
               {
                  this.§5!h§ = null;
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(_loc1_ || this)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr74);
               }
               return;
            }
            §§goto(addr72);
         }
         §§goto(addr74);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§"!,§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§"!,§ = new Sprite();
                  if(_loc4_)
                  {
                     addr36:
                     §§push(this);
                     §§push(this.§28§);
                     if(_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§28§ = §§pop();
                  }
                  var _loc2_:* = int(this.§5!h§.length - 1);
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || param1)
                     {
                        if(!_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              loop1:
                              while(true)
                              {
                                 this.§,!A§();
                                 loop2:
                                 while(true)
                                 {
                                    this.§27§();
                                    while(!_loc3_)
                                    {
                                       this.§-u§();
                                       if(!_loc4_)
                                       {
                                          continue;
                                       }
                                       if(_loc3_ && param1)
                                       {
                                          continue loop2;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop0;
                                       }
                                       if(!_loc3_)
                                       {
                                          §§push(this.§28§ < this.§<N§);
                                          if(!_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          addr149:
                                          if(§§pop())
                                          {
                                             break;
                                          }
                                          addr127:
                                          §§push(_loc2_);
                                          if(_loc4_)
                                          {
                                             addr132:
                                             §§push(int(§§pop() - 1));
                                          }
                                          _loc2_ = §§pop();
                                          continue loop0;
                                       }
                                       addr156:
                                       §§goto(addr127);
                                    }
                                    this.§5!h§.splice(_loc2_,1);
                                    §§goto(addr156);
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr149);
                              §§push(!this.§5!h§[_loc2_].update(this.§28§,this.§"!,§,this.§7!`§));
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr149);
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      private function §-u§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = Starling.§7!+§.§#L§.height;
         §§push(§`S§.§`!A§);
         if(_loc5_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§`S§.§4+§);
         if(_loc5_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc6_)
         {
            §§push(this.§5,§);
            if(_loc5_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§"!,§);
            §§push(_loc4_);
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §,!A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            Starling.§7!+§.color = this.§&@§;
         }
      }
      
      private function §27§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§ set§)
            {
               if(!_loc3_)
               {
                  §§goto(addr43);
               }
            }
            var _loc1_:Sprite = this.§"!,§.getChildByName(§`!Q§.§;#§) as Sprite;
            if(!_loc3_)
            {
               if(_loc1_)
               {
                  if(_loc2_ || this)
                  {
                     addr67:
                     this.§ set§ = true;
                  }
                  return;
               }
            }
            §§goto(addr67);
         }
         addr43:
      }
      
      public function clone(param1:TextureManager) : CutScene
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§,!b§ = null;
         var _loc2_:CutScene = new CutScene(null,null);
         for each(_loc3_ in this.§5!h§)
         {
            if(_loc6_)
            {
               _loc2_.§5!h§.push(_loc3_.clone());
            }
         }
         if(_loc6_)
         {
            _loc2_.§28§ = this.§28§;
            while(true)
            {
               _loc2_.§<N§ = this.§<N§;
               while(true)
               {
                  _loc2_.§,<§ = this.§,<§;
                  while(!_loc7_)
                  {
                     _loc2_.§5,§ = this.§5,§;
                     loop4:
                     while(true)
                     {
                        _loc2_.§>![§ = this.§>![§;
                        addr127:
                        while(true)
                        {
                           _loc2_.§&@§ = this.§&@§;
                           continue loop4;
                        }
                     }
                  }
               }
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
               §§goto(addr98);
            }
         }
         §§goto(addr98);
      }
      
      public function get §]p§() : String
      {
         return this.§"o§;
      }
      
      public function set §]p§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§"o§ = param1;
         }
      }
   }
}
