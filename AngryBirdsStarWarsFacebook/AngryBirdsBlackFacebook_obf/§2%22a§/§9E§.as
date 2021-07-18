package §2"a§
{
   import §!!U§.§2"D§;
   import §!!U§.Sprite;
   import §&#H§.§3#J§;
   import §7!F§.§7§;
   import com.angrybirds.§,!q§;
   
   public class §9E§
   {
      
      public static const §9b§:String = "CutScene_Type_Intro";
      
      public static const §#'§:String = "CutScene_Type_Outro";
      
      public static const §2!T§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §9b§ = "CutScene_Type_Intro";
         }
         while(true)
         {
            §#'§ = "CutScene_Type_Outro";
            while(!(_loc1_ && §9E§))
            {
               §2!T§ = "CutScene_Type_Final_Outro";
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §6V§:§7#5§;
      
      private var §`#A§:String;
      
      private var §9!S§:Vector.<§,^§>;
      
      private var §#T§:Number;
      
      private var §1!]§:Number;
      
      private var §6"?§:Number;
      
      private var §[!4§:Number;
      
      private var §%G§:Sprite;
      
      private var §5#E§:Boolean = true;
      
      private var §2c§:uint;
      
      private var §8§:Boolean;
      
      private var § I§:§2"D§;
      
      private var §3#F§:§2"D§;
      
      public function §9E§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§,^§ = null;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            this.§9!S§ = new Vector.<§,^§>();
         }
         while(true)
         {
            super();
            while(!(_loc7_ && param2))
            {
               this.§#T§ = 0;
               loop2:
               while(_loc8_ || param2)
               {
                  loop3:
                  while(param1)
                  {
                     if(!_loc7_)
                     {
                        §§push(param2);
                        while(true)
                        {
                           if(§§pop().search("intro") == -1)
                           {
                              §§push(param2);
                              if(!_loc7_)
                              {
                                 if(§§pop().search("complete") == -1)
                                 {
                                    break;
                                 }
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    this.§`#A§ = §#'§;
                                 }
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 addr72:
                                 addr72:
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                              continue;
                           }
                           if(_loc8_)
                           {
                              if(!(_loc8_ || this))
                              {
                                 continue loop2;
                              }
                              this.§`#A§ = §9b§;
                              §§goto(addr72);
                              continue loop2;
                           }
                        }
                        var _loc5_:int = 0;
                        var _loc6_:* = param1;
                        loop5:
                        while(true)
                        {
                           §§push(§§hasnext(_loc6_,_loc5_));
                           if(_loc8_ || _loc3_)
                           {
                              if(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                 _loc3_ = this.§%A§(_loc4_);
                                 if(_loc8_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          this.§9!S§.push(_loc3_);
                                       }
                                    }
                                 }
                                 continue;
                              }
                              if(_loc8_)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       _loc5_ = 0;
                                       if(_loc8_)
                                       {
                                          _loc6_ = this.§9!S§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc6_,_loc5_));
                                             break loop5;
                                          }
                                          addr280:
                                          addr278:
                                       }
                                    }
                                    break loop3;
                                 }
                                 break loop3;
                              }
                              §§goto(addr280);
                           }
                           break;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              §§goto(addr280);
                           }
                           else
                           {
                              _loc3_ = §§nextvalue(_loc5_,_loc6_);
                              if(_loc8_ || param1)
                              {
                                 §§push(_loc3_ is §<!f§);
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       (_loc3_ as §<!f§).setSize(this.§6"?§,this.§[!4§);
                                    }
                                 }
                                 §§goto(addr213);
                              }
                              §§goto(addr277);
                           }
                        }
                     }
                     §§goto(addr72);
                  }
                  return;
               }
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§%G§;
      }
      
      private function §%A§(param1:Object) : §,^§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc6_ || this)
         {
            §§push(§,^§.§7!d§);
            if(!_loc5_)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_)
                  {
                     §§push(0);
                     if(!(_loc6_ || _loc3_))
                     {
                        addr355:
                     }
                  }
                  else
                  {
                     addr421:
                     §§push(8);
                     if(_loc6_ || _loc2_)
                     {
                        addr439:
                     }
                  }
                  §§goto(addr444);
               }
               else
               {
                  §§push(§,^§.§ if§);
                  if(!(_loc5_ && _loc2_))
                  {
                     addr282:
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_)
                        {
                           addr286:
                           §§push(1);
                           if(_loc5_ && _loc2_)
                           {
                           }
                        }
                        else
                        {
                           addr352:
                           §§push(4);
                           if(!_loc5_)
                           {
                              §§goto(addr355);
                           }
                           else
                           {
                              addr404:
                           }
                        }
                     }
                     else
                     {
                        §§push(§,^§.§6!C§);
                        if(_loc6_ || _loc2_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    addr377:
                                 }
                              }
                              else
                              {
                                 addr330:
                                 §§push(3);
                                 if(!(_loc6_ || _loc3_))
                                 {
                                    addr416:
                                 }
                              }
                              §§goto(addr444);
                           }
                           else
                           {
                              §§push(§,^§.§""%§);
                              if(_loc6_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§goto(addr330);
                                    }
                                    else
                                    {
                                       addr369:
                                       §§push(5);
                                       if(_loc6_ || this)
                                       {
                                          §§goto(addr377);
                                       }
                                       §§goto(addr444);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§,^§.END);
                                    if(!_loc5_)
                                    {
                                       addr343:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr352);
                                          }
                                          else
                                          {
                                             addr396:
                                             §§push(6);
                                             if(_loc6_ || param1)
                                             {
                                                §§goto(addr404);
                                             }
                                             §§goto(addr444);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§,^§.§6"X§);
                                          if(_loc6_)
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!(_loc5_ && _loc2_))
                                                {
                                                   §§goto(addr369);
                                                }
                                                else
                                                {
                                                   §§goto(addr396);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§,^§.§<"V§);
                                                if(_loc6_ || this)
                                                {
                                                   addr387:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§goto(addr396);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr421);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§,^§.§4#K§);
                                                      if(!_loc5_)
                                                      {
                                                         addr409:
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(7);
                                                               if(_loc6_)
                                                               {
                                                                  §§goto(addr416);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr439);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr421);
                                                            }
                                                            §§goto(addr444);
                                                         }
                                                         else
                                                         {
                                                            §§push(§,^§.§3#N§);
                                                         }
                                                         §§goto(addr421);
                                                      }
                                                   }
                                                   §§goto(addr421);
                                                }
                                                if(§§pop() === _loc4_)
                                                {
                                                   §§goto(addr421);
                                                }
                                                else
                                                {
                                                   addr444:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         return new §%#`§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                      case 1:
                                                         _loc2_ = param1.scroll_target;
                                                         if(_loc6_ || this)
                                                         {
                                                            if(_loc2_.type == "sprite")
                                                            {
                                                               if(!(_loc5_ && _loc2_))
                                                               {
                                                                  §§goto(addr73);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         addr73:
                                                         return new §<!f§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                      case 2:
                                                         _loc3_ = param1.zoom_target;
                                                         if(_loc6_)
                                                         {
                                                            if(_loc3_.type != "sprite")
                                                            {
                                                               addr184:
                                                               break;
                                                            }
                                                            return new §3"E§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                            addr215:
                                                         }
                                                         else
                                                         {
                                                            break;
                                                            addr167:
                                                         }
                                                         break;
                                                      case 3:
                                                         return new §["8§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                      case 6:
                                                         this.§5#E§ = false;
                                                         addr150:
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            addr135:
                                                            break;
                                                         }
                                                         if(_loc5_ && _loc2_)
                                                         {
                                                            §§goto(addr184);
                                                         }
                                                         break;
                                                      case 7:
                                                         this.§5#E§ = true;
                                                         addr141:
                                                         if(_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr150);
                                                         break;
                                                      case 8:
                                                         this.§2c§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                         if(_loc6_)
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(true)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr135);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr215);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§[!4§ = param1.height;
                                                                        continue loop1;
                                                                     }
                                                                     addr175:
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     §§goto(addr167);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr141);
                                                         }
                                                         break;
                                                         addr183:
                                                      case 4:
                                                         this.§1!]§ = param1.time * 1000;
                                                         §§goto(addr183);
                                                      case 5:
                                                         this.§6"?§ = param1.width;
                                                         §§goto(addr175);
                                                   }
                                                   return null;
                                                   §§push(9);
                                                }
                                                §§goto(addr444);
                                             }
                                             §§goto(addr444);
                                          }
                                          §§goto(addr409);
                                       }
                                       §§goto(addr444);
                                    }
                                    §§goto(addr387);
                                 }
                                 §§goto(addr444);
                              }
                           }
                           §§goto(addr444);
                        }
                        §§goto(addr409);
                     }
                     §§goto(addr444);
                  }
                  §§goto(addr343);
               }
            }
            §§goto(addr282);
         }
         §§goto(addr286);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§%G§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%G§);
                     addr82:
                     while(true)
                     {
                        §§pop().dispose();
                        addr83:
                        loop4:
                        while(true)
                        {
                           this.§%G§ = null;
                           addr50:
                           addr64:
                           while(true)
                           {
                              if(_loc2_ || _loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop4;
                           }
                           addr64:
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§9!S§ = null;
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr50);
                  §§goto(addr64);
               }
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr83);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(!this.§%G§)
            {
               if(!_loc4_)
               {
                  this.§%G§ = new Sprite();
                  if(!(_loc4_ && _loc2_))
                  {
                     addr39:
                     §§push(this);
                     §§push(this.§#T§);
                     if(_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§#T§ = §§pop();
                  }
                  var _loc2_:* = int(this.§9!S§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              loop2:
                              while(_loc3_ || _loc2_)
                              {
                                 this.§5# §();
                                 loop3:
                                 while(!_loc4_)
                                 {
                                    this.§`s§();
                                    while(_loc3_)
                                    {
                                       this.§]#6§();
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                             return this.§#T§ < this.§1!]§;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 this.§9!S§.splice(_loc2_,1);
                                 while(true)
                                 {
                                    addr112:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       addr114:
                                       while(true)
                                       {
                                          §§push(§§pop() - 1);
                                          addr115:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             break loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(!_loc3_)
                              {
                                 §§goto(addr148);
                              }
                              continue;
                           }
                           if(!this.§9!S§[_loc2_].update(this.§#T§,this.§%G§,this.§6V§))
                           {
                              §§goto(addr143);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr115);
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §]#6§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §3#J§.§=#_§.height;
         §§push(§,!q§.§6G§);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§,!q§.§!"N§);
         if(!(_loc5_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc6_ || _loc2_)
         {
            §§push(this.§[!4§);
            if(!_loc5_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!_loc5_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_)
         {
            §§push(this.§%G§);
            §§push(_loc4_);
            if(_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §5# §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3#J§.§2!C§.color = this.§2c§;
         }
      }
      
      private function §`s§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§8§)
            {
               if(_loc3_)
               {
                  §§goto(addr24);
               }
            }
            var _loc1_:Sprite = this.§%G§.getChildByName(§%#`§.§1R§) as Sprite;
            if(!(_loc2_ && _loc3_))
            {
               if(_loc1_)
               {
                  if(_loc2_ && _loc1_)
                  {
                  }
                  §§goto(addr73);
               }
               this.§8§ = true;
            }
            addr73:
            return;
         }
         addr24:
      }
      
      public function clone(param1:§7#5§) : §9E§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§,^§ = null;
         var _loc2_:§9E§ = new §9E§(null,null);
         for each(_loc3_ in this.§9!S§)
         {
            if(!_loc6_)
            {
               _loc2_.§9!S§.push(_loc3_.clone());
            }
         }
         if(_loc7_)
         {
            _loc2_.§#T§ = this.§#T§;
            loop1:
            while(true)
            {
               _loc2_.§1!]§ = this.§1!]§;
               loop2:
               while(true)
               {
                  _loc2_.§6"?§ = this.§6"?§;
                  while(true)
                  {
                     _loc2_.§[!4§ = this.§[!4§;
                     addr113:
                     while(_loc7_)
                     {
                     }
                     addr100:
                     continue loop2;
                     while(_loc7_ || this)
                     {
                        _loc2_.§2c§ = this.§2c§;
                        loop7:
                        while(_loc7_)
                        {
                           _loc2_.§`#A§ = this.§`#A§;
                           while(_loc7_)
                           {
                              _loc2_.§6V§ = param1;
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       return _loc2_;
                                       addr78:
                                    }
                                    continue loop1;
                                 }
                                 continue loop7;
                              }
                           }
                           §§goto(addr113);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            _loc2_.§5#E§ = this.§5#E§;
            §§goto(addr100);
         }
         §§goto(addr78);
      }
      
      public function get §""Y§() : String
      {
         return this.§`#A§;
      }
      
      public function set §""Y§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§`#A§ = param1;
         }
      }
   }
}
