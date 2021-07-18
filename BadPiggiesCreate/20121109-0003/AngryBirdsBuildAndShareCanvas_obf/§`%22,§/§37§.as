package §`",§
{
   import §%!j§.§%K§;
   import §+!-§.§4!O§;
   import §+!-§.Sprite;
   import §,P§.§'_§;
   import §;"7§.§="<§;
   
   public class §37§
   {
      
      public static const §8k§:String = "CutScene_Type_Intro";
      
      public static const § !#§:String = "CutScene_Type_Outro";
      
      public static const §"!a§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §8k§ = "CutScene_Type_Intro";
            do
            {
               § !#§ = "CutScene_Type_Outro";
               do
               {
                  §"!a§ = "CutScene_Type_Final_Outro";
               }
               while(_loc1_ && _loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private var §7k§:§="<§;
      
      private var §^h§:String;
      
      private var §7x§:Vector.<§7!s§>;
      
      private var §9R§:Number;
      
      private var §;"4§:Number;
      
      private var §",§:Number;
      
      private var §%"0§:Number;
      
      private var § D§:Sprite;
      
      private var §^"+§:Boolean = true;
      
      private var §%!u§:uint;
      
      private var §@O§:Boolean;
      
      private var §[8§:§4!O§;
      
      private var §>!_§:§4!O§;
      
      public function §37§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§7!s§ = null;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            this.§7x§ = new Vector.<§7!s§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§9R§ = 0;
                  continue loop0;
                  addr72:
                  if(!(_loc8_ || param1))
                  {
                     continue;
                  }
                  var _loc5_:int = 0;
                  var _loc6_:* = param1;
                  addr150:
                  §§push(§§hasnext(_loc6_,_loc5_));
                  if(!(_loc7_ && this))
                  {
                     if(§§pop())
                     {
                        _loc4_ = §§nextvalue(_loc5_,_loc6_);
                        _loc3_ = this.§,!`§(_loc4_);
                        if(_loc8_ || _loc3_)
                        {
                           if(_loc3_)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 addr146:
                                 this.§7x§.push(_loc3_);
                              }
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr146);
                     }
                     if(!(_loc7_ && _loc3_))
                     {
                        if(_loc8_)
                        {
                           if(!_loc7_)
                           {
                              _loc5_ = 0;
                              if(!(_loc7_ && this))
                              {
                                 _loc6_ = this.§7x§;
                                 addr278:
                                 for each(_loc3_ in _loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       addr258:
                                       if(_loc3_ is §8y§)
                                       {
                                          (_loc3_ as §8y§).setSize(this.§",§,this.§%"0§);
                                          (_loc3_ as §8y§).§1V§ = this.§^"+§;
                                          addr247:
                                          if(!(_loc7_ && param2))
                                          {
                                             addr220:
                                             §§goto(addr278);
                                             addr254:
                                          }
                                          addr277:
                                          §§goto(addr277);
                                          addr259:
                                       }
                                       §§push(_loc3_ is §%!!§);
                                       if(_loc8_)
                                       {
                                          if(§§pop())
                                          {
                                             addr229:
                                             if(_loc8_)
                                             {
                                                (_loc3_ as §%!!§).setSize(this.§",§,this.§%"0§);
                                                (_loc3_ as §%!!§).§use § = this.§^"+§;
                                                if(_loc8_ || param2)
                                                {
                                                   if(_loc8_ || param1)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr220);
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr229);
                                                }
                                                addr239:
                                                §§goto(addr239);
                                             }
                                             §§goto(addr259);
                                          }
                                          §§goto(addr278);
                                       }
                                       §§goto(addr258);
                                    }
                                    §§goto(addr254);
                                 }
                                 addr281:
                                 addr280:
                              }
                              §§goto(addr281);
                           }
                           addr282:
                           return;
                        }
                        §§goto(addr281);
                     }
                     §§goto(addr280);
                  }
                  §§goto(addr278);
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get sprite() : Sprite
      {
         return this.§ D§;
      }
      
      private function §,!`§(param1:Object) : §7!s§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc6_ || this)
         {
            §§push(§7!s§.§"B§);
            if(_loc6_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        addr323:
                     }
                  }
                  else
                  {
                     addr386:
                     §§push(6);
                     if(!_loc5_)
                     {
                        addr389:
                     }
                     else
                     {
                        addr429:
                     }
                  }
               }
               else
               {
                  §§push(§7!s§.§+";§);
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_)
                        {
                           §§push(1);
                           if(!_loc6_)
                           {
                              addr350:
                           }
                        }
                        else
                        {
                           addr342:
                           §§push(4);
                           if(!(_loc5_ && _loc3_))
                           {
                              §§goto(addr350);
                           }
                        }
                        §§goto(addr434);
                     }
                     else
                     {
                        §§push(§7!s§.§5@§);
                        if(_loc6_)
                        {
                           addr284:
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                 }
                                 §§goto(addr434);
                              }
                              else
                              {
                                 addr315:
                                 §§push(3);
                                 if(!(_loc5_ && param1))
                                 {
                                    §§goto(addr323);
                                 }
                                 else
                                 {
                                    §§goto(addr429);
                                 }
                              }
                              §§goto(addr434);
                           }
                           else
                           {
                              §§push(§7!s§.§4!S§);
                              if(_loc6_ || _loc3_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §§goto(addr315);
                                    }
                                    else
                                    {
                                       addr403:
                                       §§push(7);
                                       if(!_loc6_)
                                       {
                                       }
                                       §§goto(addr434);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§7!s§.END);
                                    if(_loc6_ || _loc3_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             §§goto(addr342);
                                          }
                                          else
                                          {
                                             addr364:
                                             §§push(5);
                                             if(!(_loc5_ && this))
                                             {
                                                §§goto(addr434);
                                             }
                                             else
                                             {
                                                §§goto(addr389);
                                             }
                                          }
                                          §§goto(addr434);
                                       }
                                       else
                                       {
                                          §§push(§7!s§.§>=§);
                                          if(_loc6_ || param1)
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§goto(addr364);
                                                }
                                                else
                                                {
                                                   §§goto(addr386);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§7!s§.§`"7§);
                                                if(_loc6_ || _loc3_)
                                                {
                                                }
                                                addr409:
                                                if(§§pop() === _loc4_)
                                                {
                                                   addr411:
                                                   §§push(8);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§goto(addr429);
                                                   }
                                                   §§goto(addr434);
                                                }
                                                else
                                                {
                                                   addr434:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         return new §%!!§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                      case 1:
                                                         _loc2_ = param1.scroll_target;
                                                         if(!_loc5_)
                                                         {
                                                            if(_loc2_.type == "sprite")
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  return new §8y§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      case 2:
                                                         _loc3_ = param1.zoom_target;
                                                         if(!(_loc5_ && _loc3_))
                                                         {
                                                            if(_loc3_.type == "sprite")
                                                            {
                                                               return new §+0§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                               addr210:
                                                            }
                                                         }
                                                         else
                                                         {
                                                            this.§%"0§ = param1.height;
                                                            addr153:
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               break;
                                                            }
                                                            addr178:
                                                            if(!(_loc5_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            addr170:
                                                         }
                                                         break;
                                                      case 3:
                                                         return new §7=§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                      case 6:
                                                         this.§^"+§ = false;
                                                         addr145:
                                                         if(_loc6_)
                                                         {
                                                            addr116:
                                                            break;
                                                         }
                                                         break;
                                                      case 7:
                                                         this.§^"+§ = true;
                                                         addr122:
                                                         if(_loc6_ || param1)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               addr168:
                                                               if(!_loc5_)
                                                               {
                                                                  §§goto(addr170);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr210);
                                                               }
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr145);
                                                         }
                                                      case 8:
                                                         this.§%!u§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                         if(_loc6_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr122);
                                                         }
                                                         §§goto(addr116);
                                                      case 4:
                                                         this.§;"4§ = param1.time * 1000;
                                                         §§goto(addr178);
                                                      case 5:
                                                         this.§",§ = param1.width;
                                                         §§goto(addr168);
                                                   }
                                                   return null;
                                                   §§push(9);
                                                }
                                                §§goto(addr434);
                                             }
                                             §§goto(addr434);
                                          }
                                       }
                                       §§goto(addr434);
                                    }
                                    addr399:
                                    if(§§pop() === _loc4_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr403);
                                       }
                                       else
                                       {
                                          §§goto(addr411);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr409);
                                       §§push(§7!s§.§=$§);
                                    }
                                    §§goto(addr411);
                                 }
                                 §§goto(addr434);
                              }
                              if(§§pop() === _loc4_)
                              {
                                 if(_loc6_)
                                 {
                                    §§goto(addr386);
                                 }
                                 else
                                 {
                                    §§goto(addr411);
                                 }
                              }
                              else
                              {
                                 §§push(§7!s§.§<a§);
                                 if(!(_loc5_ && this))
                                 {
                                    §§goto(addr399);
                                 }
                              }
                              §§goto(addr411);
                           }
                        }
                        §§goto(addr409);
                     }
                  }
                  §§goto(addr284);
               }
               §§goto(addr434);
            }
            §§goto(addr399);
         }
         §§goto(addr411);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§ D§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§ D§);
                     addr92:
                     while(true)
                     {
                        §§pop().dispose();
                        loop3:
                        while(true)
                        {
                           this.§ D§ = null;
                           addr55:
                           addr69:
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    break;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr90:
               }
               while(true)
               {
                  this.§7x§ = null;
                  if(!(_loc1_ && _loc1_))
                  {
                     break;
                  }
                  §§goto(addr55);
                  §§goto(addr69);
               }
               return;
            }
            §§goto(addr92);
         }
         §§goto(addr90);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!this.§ D§)
            {
               if(!(_loc3_ && this))
               {
                  this.§ D§ = new Sprite();
                  if(_loc4_)
                  {
                     addr35:
                     §§push(this);
                     §§push(this.§9R§);
                     if(!(_loc3_ && this))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§9R§ = §§pop();
                  }
                  var _loc2_:* = int(this.§7x§.length - 1);
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc3_)
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           while(!(_loc3_ && param1))
                           {
                              this.§1c§();
                              do
                              {
                                 this.§+]§();
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             this.§7x§.splice(_loc2_,1);
                                          }
                                          else
                                          {
                                             addr149:
                                          }
                                          continue;
                                          break loop1;
                                       }
                                       break;
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                              while(!_loc4_);
                              
                              return this.§9R§ < this.§;"4§;
                           }
                        }
                        else if(!this.§7x§[_loc2_].update(this.§9R§,this.§ D§,this.§7k§))
                        {
                           §§goto(addr149);
                        }
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      private function §11§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §%K§.§`9§.§<!J§.height;
         §§push(§'_§.§=!c§);
         if(_loc5_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§'_§.§<e§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(this.§%"0§);
            if(!_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!_loc6_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && _loc3_))
         {
            §§push(this.§ D§);
            §§push(_loc4_);
            if(_loc5_ || _loc2_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §1c§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §%K§.§`9§.color = this.§%!u§;
         }
      }
      
      private function §+]§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§@O§)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§ D§.getChildByName(§%!!§.§=[§) as Sprite;
         if(!(_loc2_ && _loc1_))
         {
            if(_loc1_)
            {
               if(_loc3_)
               {
                  addr70:
                  this.§@O§ = true;
               }
               return;
            }
         }
         §§goto(addr70);
      }
      
      public function clone(param1:§="<§) : §37§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§7!s§ = null;
         var _loc2_:§37§ = new §37§(null,null);
         for each(_loc3_ in this.§7x§)
         {
            if(_loc6_)
            {
               _loc2_.§7x§.push(_loc3_.clone());
            }
         }
         if(!_loc7_)
         {
            _loc2_.§9R§ = this.§9R§;
            loop1:
            while(true)
            {
               _loc2_.§;"4§ = this.§;"4§;
               while(true)
               {
                  _loc2_.§",§ = this.§",§;
                  addr130:
                  while(true)
                  {
                     _loc2_.§%"0§ = this.§%"0§;
                     addr124:
                     while(true)
                     {
                        _loc2_.§^"+§ = this.§^"+§;
                     }
                  }
                  addr90:
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  if(!_loc6_)
                  {
                     continue loop1;
                  }
                  _loc2_.§7k§ = param1;
                  addr99:
                  if(!_loc7_)
                  {
                     addr63:
                     if(_loc7_ && _loc2_)
                     {
                        loop6:
                        while(true)
                        {
                           if(_loc6_ || param1)
                           {
                              _loc2_.§^h§ = this.§^h§;
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       §§goto(addr90);
                                    }
                                    else
                                    {
                                       §§goto(addr130);
                                    }
                                 }
                                 break;
                                 §§goto(addr99);
                              }
                              §§goto(addr124);
                              addr86:
                           }
                           addr118:
                           while(true)
                           {
                              _loc2_.§%!u§ = this.§%!u§;
                              continue loop6;
                           }
                        }
                     }
                     return _loc2_;
                  }
                  §§goto(addr86);
               }
            }
         }
         §§goto(addr118);
      }
      
      public function get §6! §() : String
      {
         return this.§^h§;
      }
      
      public function set §6! §(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^h§ = param1;
         }
      }
   }
}
