package §`!]§
{
   import §'6§.§"]§;
   import §1!$§.§!"?§;
   import §1!$§.Sprite;
   import §6!D§.§0Y§;
   import §]!A§.;
   
   public class §="A§
   {
      
      public static const §9&§:String = "CutScene_Type_Intro";
      
      public static const §6[§:String = "CutScene_Type_Outro";
      
      public static const §72§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9&§ = "CutScene_Type_Intro";
            while(true)
            {
               §6[§ = "CutScene_Type_Outro";
               while(!(_loc2_ && _loc2_))
               {
                  §72§ = "CutScene_Type_Final_Outro";
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      private var § !@§:§0Y§;
      
      private var §='§:String;
      
      private var §"Q§:Vector.<§>!D§>;
      
      private var §?!x§:Number;
      
      private var §[0§:Number;
      
      private var §`w§:Number;
      
      private var §%m§:Number;
      
      private var §3^§:Sprite;
      
      private var §"!B§:Boolean = true;
      
      private var §!!I§:uint;
      
      private var §[6§:Boolean;
      
      private var §?!l§:§!"?§;
      
      private var §="C§:§!"?§;
      
      public function §="A§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§>!D§ = null;
         var _loc4_:Object = null;
         if(!(_loc8_ && _loc3_))
         {
            this.§"Q§ = new Vector.<§>!D§>();
         }
         loop0:
         while(true)
         {
            super();
            while(true)
            {
               this.§?!x§ = 0;
               loop2:
               while(_loc7_)
               {
                  loop3:
                  while(param1)
                  {
                     if(!_loc8_)
                     {
                        if(!_loc7_)
                        {
                           continue loop2;
                        }
                        §§push(param2);
                        loop4:
                        while(true)
                        {
                           §§push("intro");
                           addr70:
                           addr104:
                           while(true)
                           {
                              if(§§pop().search(§§pop()) == -1)
                              {
                                 continue loop4;
                              }
                              if(!(_loc8_ && param2))
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 this.§='§ = §9&§;
                              }
                           }
                           var _loc5_:int = 0;
                           var _loc6_:* = param1;
                           addr141:
                           §§push(§§hasnext(_loc6_,_loc5_));
                           if(!_loc8_)
                           {
                              if(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                 _loc3_ = this.§0!8§(_loc4_);
                                 if(!_loc8_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(!_loc8_)
                                       {
                                          this.§"Q§.push(_loc3_);
                                       }
                                    }
                                 }
                                 §§goto(addr141);
                              }
                              if(_loc7_ || param2)
                              {
                                 if(!_loc8_)
                                 {
                                    if(!(_loc8_ && param1))
                                    {
                                       _loc5_ = 0;
                                       if(_loc7_)
                                       {
                                          _loc6_ = this.§"Q§;
                                          addr274:
                                          for each(_loc3_ in _loc6_)
                                          {
                                             if(_loc7_ || param2)
                                             {
                                                addr264:
                                                if(_loc3_ is §9"-§)
                                                {
                                                   addr265:
                                                   (_loc3_ as §9"-§).setSize(this.§`w§,this.§%m§);
                                                   (_loc3_ as §9"-§).§!!0§ = this.§"!B§;
                                                   if(!_loc8_)
                                                   {
                                                      addr211:
                                                      §§goto(addr274);
                                                   }
                                                   addr273:
                                                   §§goto(addr273);
                                                }
                                                §§push(_loc3_ is §>!H§);
                                                if(_loc7_ || param2)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr225:
                                                      (_loc3_ as §>!H§).setSize(this.§`w§,this.§%m§);
                                                      if(_loc7_ || param2)
                                                      {
                                                         (_loc3_ as §>!H§).§9!M§ = this.§"!B§;
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_ || this)
                                                            {
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§goto(addr274);
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                         }
                                                         §§goto(addr225);
                                                         addr250:
                                                      }
                                                      §§goto(addr265);
                                                   }
                                                   §§goto(addr274);
                                                }
                                                §§goto(addr264);
                                             }
                                             §§goto(addr250);
                                          }
                                          addr276:
                                       }
                                    }
                                    break loop3;
                                 }
                                 break loop3;
                              }
                              §§goto(addr276);
                           }
                           §§goto(addr274);
                        }
                     }
                     §§goto(addr85);
                  }
                  return;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§3^§;
      }
      
      private function §0!8§(param1:Object) : §>!D§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc6_)
         {
            §§push(§>!D§.§?";§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() === _loc4_)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        addr406:
                     }
                  }
                  else
                  {
                     addr310:
                     §§push(1);
                     if(_loc6_ && _loc3_)
                     {
                        addr428:
                     }
                  }
               }
               else
               {
                  §§push(§>!D§.§ !A§);
                  if(!(_loc6_ && _loc3_))
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           §§goto(addr310);
                        }
                        else
                        {
                           addr354:
                           §§push(3);
                           if(_loc5_ || _loc2_)
                           {
                           }
                           §§goto(addr468);
                        }
                     }
                     else
                     {
                        §§push(§>!D§.§;"6§);
                        if(!(_loc6_ && this))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§push(2);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§goto(addr468);
                                 }
                                 else
                                 {
                                    §§goto(addr406);
                                 }
                              }
                              else
                              {
                                 addr376:
                                 §§push(4);
                                 if(_loc6_ && param1)
                                 {
                                    addr463:
                                 }
                                 §§goto(addr468);
                              }
                              §§goto(addr468);
                           }
                           else
                           {
                              §§push(§>!D§.§1d§);
                              if(_loc5_ || param1)
                              {
                                 addr350:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr354);
                                    }
                                    else
                                    {
                                       §§goto(addr376);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§>!D§.END);
                                    if(_loc5_ || param1)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr376);
                                          }
                                          else
                                          {
                                             addr425:
                                             §§push(6);
                                             if(_loc5_)
                                             {
                                                §§goto(addr428);
                                             }
                                             §§goto(addr468);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§>!D§.§]">§);
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(5);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr406);
                                                   }
                                                   else
                                                   {
                                                      addr455:
                                                      §§goto(addr468);
                                                   }
                                                }
                                                §§goto(addr468);
                                             }
                                             else
                                             {
                                                §§push(§>!D§.§,_§);
                                                if(!(_loc6_ && _loc3_))
                                                {
                                                   addr416:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!(_loc6_ && this))
                                                      {
                                                         §§goto(addr425);
                                                      }
                                                      §§goto(addr468);
                                                   }
                                                   else
                                                   {
                                                      §§push(§>!D§.§9"F§);
                                                      if(!_loc6_)
                                                      {
                                                         addr443:
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               §§push(7);
                                                               if(_loc5_ || _loc3_)
                                                               {
                                                                  §§goto(addr455);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr463);
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr458:
                                                            if(§>!D§.§]R§ !== _loc4_)
                                                            {
                                                               addr468:
                                                               switch(§§pop())
                                                               {
                                                                  case 0:
                                                                     return new §>!H§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                                  case 1:
                                                                     _loc2_ = param1.scroll_target;
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(_loc2_.type == "sprite")
                                                                        {
                                                                           if(_loc5_ || param1)
                                                                           {
                                                                              return new §9"-§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                                           }
                                                                        }
                                                                     }
                                                                     break;
                                                                  case 2:
                                                                     _loc3_ = param1.zoom_target;
                                                                     if(_loc5_)
                                                                     {
                                                                        if(_loc3_.type != "sprite")
                                                                        {
                                                                           addr210:
                                                                           break;
                                                                        }
                                                                        §§goto(addr244);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr239:
                                                                     }
                                                                     break;
                                                                  case 8:
                                                                     this.§!!I§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                                     if(_loc5_ || _loc2_)
                                                                     {
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(_loc5_ || param1)
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
                                                                                 §§goto(addr239);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr186:
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr180:
                                                                        }
                                                                        break;
                                                                     }
                                                                     addr152:
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr244:
                                                                           return new §`!G§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                        }
                                                                        break;
                                                                        addr209:
                                                                     }
                                                                     else
                                                                     {
                                                                        this.§%m§ = param1.height;
                                                                        addr201:
                                                                     }
                                                                     §§goto(addr186);
                                                                  case 4:
                                                                     this.§[0§ = param1.time * 1000;
                                                                     §§goto(addr209);
                                                                  case 3:
                                                                     return new §2"!§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                                  case 5:
                                                                     this.§`w§ = param1.width;
                                                                     §§goto(addr201);
                                                                  case 6:
                                                                     this.§"!B§ = false;
                                                                     §§goto(addr180);
                                                                  case 7:
                                                                     this.§"!B§ = true;
                                                                     §§goto(addr152);
                                                               }
                                                               return null;
                                                               §§push(9);
                                                            }
                                                         }
                                                         §§goto(addr468);
                                                      }
                                                      §§goto(addr458);
                                                   }
                                                }
                                                §§goto(addr458);
                                             }
                                             §§goto(addr468);
                                          }
                                          §§goto(addr458);
                                       }
                                       §§goto(addr468);
                                    }
                                    §§goto(addr443);
                                 }
                                 §§goto(addr468);
                              }
                           }
                           §§goto(addr468);
                        }
                        §§goto(addr416);
                     }
                     §§goto(addr468);
                  }
                  §§goto(addr350);
               }
               §§goto(addr468);
            }
            §§goto(addr458);
         }
         §§goto(addr425);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§3^§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§3^§);
                     addr82:
                     while(true)
                     {
                        §§pop().dispose();
                        loop4:
                        while(true)
                        {
                           this.§3^§ = null;
                           addr60:
                           addr69:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           addr69:
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§"Q§ = null;
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr60);
                  §§goto(addr69);
               }
               return;
               addr55:
            }
            §§goto(addr82);
         }
         §§goto(addr55);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!this.§3^§)
            {
               if(_loc4_ || _loc3_)
               {
                  this.§3^§ = new Sprite();
                  if(_loc3_)
                  {
                  }
                  §§goto(addr48);
               }
            }
            §§push(this);
            §§push(this.§?!x§);
            if(!(_loc3_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§?!x§ = §§pop();
         }
         addr48:
         var _loc2_:* = int(this.§"Q§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() < 0)
               {
                  if(_loc4_ || param1)
                  {
                     this.§,!W§();
                  }
                  loop1:
                  while(true)
                  {
                     this.§+! §();
                     while(_loc4_ || param1)
                     {
                        this.§]^§();
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
               }
               else if(!this.§"Q§[_loc2_].update(this.§?!x§,this.§3^§,this.§ !@§))
               {
                  if(!_loc3_)
                  {
                     this.§"Q§.splice(_loc2_,1);
                  }
                  §§goto(addr159);
               }
               §§push(_loc2_);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc2_ = §§pop();
         }
         return this.§?!x§ < this.§[0§;
      }
      
      private function §]^§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §"]§.§!X§.§?!;§.height;
         §§push(§#6§.§>!F§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§#6§.§"e§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(this.§%m§);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && this))
         {
            §§push(this.§3^§);
            §§push(_loc4_);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §,!W§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §"]§.§!X§.color = this.§!!I§;
         }
      }
      
      private function §+! §() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§[6§)
            {
               if(!_loc2_)
               {
                  §§goto(addr34);
               }
            }
            var _loc1_:Sprite = this.§3^§.getChildByName(§>!H§.§>J§) as Sprite;
            if(!(_loc2_ && _loc3_))
            {
               if(_loc1_)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr70:
                     this.§[6§ = true;
                  }
                  return;
               }
            }
            §§goto(addr70);
         }
         addr34:
      }
      
      public function clone(param1:§0Y§) : §="A§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§>!D§ = null;
         var _loc2_:§="A§ = new §="A§(null,null);
         for each(_loc3_ in this.§"Q§)
         {
            if(_loc7_ || param1)
            {
               _loc2_.§"Q§.push(_loc3_.clone());
            }
         }
         if(!_loc6_)
         {
            _loc2_.§?!x§ = this.§?!x§;
            loop1:
            while(true)
            {
               _loc2_.§[0§ = this.§[0§;
               while(true)
               {
                  _loc2_.§`w§ = this.§`w§;
                  addr120:
                  if(!_loc7_)
                  {
                     continue;
                  }
                  _loc2_.§!!I§ = this.§!!I§;
                  loop6:
                  while(true)
                  {
                     _loc2_.§='§ = this.§='§;
                     while(true)
                     {
                        if(_loc7_)
                        {
                           addr94:
                           if(!(_loc7_ || param1))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop6;
                     }
                     addr113:
                     while(!(_loc6_ && this))
                     {
                        §§goto(addr120);
                        §§goto(addr94);
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr151);
      }
      
      public function get §]"+§() : String
      {
         return this.§='§;
      }
      
      public function set §]"+§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§='§ = param1;
         }
      }
   }
}
