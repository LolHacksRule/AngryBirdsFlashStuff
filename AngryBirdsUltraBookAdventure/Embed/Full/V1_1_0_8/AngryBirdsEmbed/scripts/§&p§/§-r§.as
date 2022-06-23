package §&p§
{
   import §&o§.§<3§;
   import §&o§.Sprite;
   import §5!L§.§=w§;
   import §9K§.§5!H§;
   import §=!0§.§>I§;
   
   public class §-r§
   {
      
      public static const §[Z§:String = "CutScene_Type_Intro";
      
      public static const §02§:String = "CutScene_Type_Outro";
      
      public static const §>A§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[Z§ = "CutScene_Type_Intro";
            if(_loc2_ || §-r§)
            {
               §02§ = "CutScene_Type_Outro";
               if(!_loc2_)
               {
               }
               §§goto(addr47);
            }
            §>A§ = "CutScene_Type_Final_Outro";
         }
         addr47:
      }
      
      private var §-M§:§5!H§;
      
      private var §@j§:String;
      
      private var §0§:Vector.<§,K§>;
      
      private var §^f§:Number;
      
      private var §67§:Number;
      
      private var §[s§:Number;
      
      private var §8!&§:Number;
      
      private var §,!7§:Sprite;
      
      private var §;!#§:Boolean = true;
      
      private var §>i§:uint;
      
      private var §2<§:Boolean;
      
      private var §5Z§:§<3§;
      
      private var §5@§:§<3§;
      
      public function §-r§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§,K§ = null;
         var _loc4_:Object = null;
         this.§0§ = new Vector.<§,K§>();
         if(!(_loc7_ && this))
         {
            super();
            if(!_loc7_)
            {
               this.§^f§ = 0;
               if(!(_loc7_ && _loc3_))
               {
                  §§goto(addr50);
               }
            }
            §§goto(addr84);
         }
         addr50:
         if(param1)
         {
            if(_loc8_)
            {
               §§push(param2);
               if(!_loc7_)
               {
                  §§push("intro");
                  if(!_loc7_)
                  {
                     if(§§pop().search(§§pop()) != -1)
                     {
                        this.§@j§ = §[Z§;
                        if(!_loc7_)
                        {
                           addr84:
                           var _loc5_:int = 0;
                           var _loc6_:* = param1;
                           loop0:
                           while(true)
                           {
                              §§push(§§hasnext(_loc6_,_loc5_));
                              if(!(_loc7_ && this))
                              {
                                 if(§§pop())
                                 {
                                    _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                    _loc3_ = this.§1!;§(_loc4_);
                                    if(!_loc7_)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             this.§0§.push(_loc3_);
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 if(!(_loc7_ && this))
                                 {
                                    if(!_loc7_)
                                    {
                                       if(!_loc7_)
                                       {
                                          _loc5_ = 0;
                                          if(_loc8_ || _loc3_)
                                          {
                                             _loc6_ = this.§0§;
                                             while(true)
                                             {
                                                §§push(§§hasnext(_loc6_,_loc5_));
                                                break loop0;
                                             }
                                             addr235:
                                             addr233:
                                          }
                                       }
                                    }
                                    §§goto(addr237);
                                 }
                                 §§goto(addr235);
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr235);
                              }
                              else
                              {
                                 _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                 §§push(_loc3_ is §8>§);
                                 if(!_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc7_)
                                       {
                                          (_loc3_ as §8>§).setSize(this.§[s§,this.§8!&§);
                                          if(_loc7_ && param2)
                                          {
                                             addr227:
                                             (_loc3_ as §=?§).§8o§ = this.§;!#§;
                                             continue;
                                          }
                                       }
                                       (_loc3_ as §8>§).§5?§ = this.§;!#§;
                                       if(_loc8_ || param1)
                                       {
                                       }
                                       continue;
                                    }
                                    addr218:
                                    if(!(_loc3_ is §=?§))
                                    {
                                       continue;
                                    }
                                    (_loc3_ as §=?§).setSize(this.§[s§,this.§8!&§);
                                    §§goto(addr227);
                                 }
                                 §§goto(addr218);
                              }
                           }
                           addr68:
                        }
                        else
                        {
                           addr81:
                           this.§@j§ = §02§;
                           §§goto(addr84);
                        }
                        §§goto(addr84);
                     }
                     else
                     {
                        addr70:
                        §§push(param2);
                        §§push("complete");
                     }
                     §§goto(addr84);
                  }
                  if(§§pop().search(§§pop()) != -1)
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        §§goto(addr81);
                     }
                  }
                  §§goto(addr84);
               }
               §§goto(addr70);
            }
            §§goto(addr68);
         }
         addr237:
      }
      
      public function get sprite() : Sprite
      {
         return this.§,!7§;
      }
      
      private function §1!;§(param1:Object) : §,K§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         §§push(§,K§.§<!,§);
         if(!_loc5_)
         {
            if(§§pop() === _loc4_)
            {
               §§push(0);
               if(_loc5_ && _loc2_)
               {
                  addr322:
               }
            }
            else
            {
               §§push(§,K§.§%!0§);
               if(_loc6_ || _loc3_)
               {
                  if(§§pop() === _loc4_)
                  {
                     if(_loc6_ || param1)
                     {
                        §§push(1);
                        if(_loc5_)
                        {
                           addr330:
                        }
                     }
                     else
                     {
                        addr365:
                        §§push(7);
                        if(_loc6_)
                        {
                           addr368:
                        }
                        else
                        {
                           addr381:
                        }
                     }
                     §§goto(addr386);
                  }
                  else
                  {
                     §§push(§,K§.§package§);
                     if(_loc6_ || param1)
                     {
                        if(§§pop() === _loc4_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§push(2);
                              if(!(_loc6_ || this))
                              {
                                 addr343:
                              }
                           }
                           §§goto(addr386);
                        }
                        else
                        {
                           §§push(§,K§.§`g§);
                           if(!(_loc5_ && this))
                           {
                              addr304:
                              if(§§pop() === _loc4_)
                              {
                                 §§push(3);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    §§goto(addr386);
                                 }
                                 else
                                 {
                                    §§goto(addr368);
                                 }
                              }
                              else
                              {
                                 addr317:
                                 if(§,K§.END === _loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr322);
                                       §§push(4);
                                    }
                                    §§goto(addr386);
                                 }
                                 else
                                 {
                                    §§push(§,K§.§;r§);
                                    if(!_loc5_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          §§goto(addr330);
                                          §§push(5);
                                       }
                                       else
                                       {
                                          §§push(§,K§.§[U§);
                                          if(_loc6_ || _loc2_)
                                          {
                                             addr340:
                                             if(§§pop() !== _loc4_)
                                             {
                                                §§push(§,K§.§ L§);
                                                if(!(_loc5_ && this))
                                                {
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      §§goto(addr365);
                                                   }
                                                   else
                                                   {
                                                      addr371:
                                                      if(§,K§.§;&§ === _loc4_)
                                                      {
                                                         addr373:
                                                         §§push(8);
                                                         if(_loc6_ || param1)
                                                         {
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr386);
                                                      }
                                                      else
                                                      {
                                                         addr386:
                                                         switch(§§pop())
                                                         {
                                                            case 0:
                                                               return new §=?§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                            case 1:
                                                               _loc2_ = param1.scroll_target;
                                                               if(!_loc5_)
                                                               {
                                                                  if(_loc2_.type == "sprite")
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        return new §8>§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                                     }
                                                                  }
                                                               }
                                                               break;
                                                            case 2:
                                                               _loc3_ = param1.zoom_target;
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  if(_loc3_.type == "sprite")
                                                                  {
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        return new §%!#§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                     }
                                                                     addr157:
                                                                     break;
                                                                  }
                                                                  break;
                                                               }
                                                               addr225:
                                                               break;
                                                            case 3:
                                                               return new §0>§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                            case 4:
                                                               this.§67§ = param1.time * 1000;
                                                               §§goto(addr157);
                                                            case 5:
                                                               this.§[s§ = param1.width;
                                                               if(!_loc6_)
                                                               {
                                                                  addr205:
                                                                  break;
                                                               }
                                                               this.§8!&§ = param1.height;
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr225);
                                                               break;
                                                            case 6:
                                                               this.§;!#§ = false;
                                                               if(_loc6_ || param1)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr225);
                                                               break;
                                                            case 7:
                                                               this.§;!#§ = true;
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§goto(addr205);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr225);
                                                               }
                                                            case 8:
                                                               this.§>i§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                               §§goto(addr225);
                                                         }
                                                         return null;
                                                         §§push(9);
                                                      }
                                                      §§goto(addr386);
                                                   }
                                                }
                                                §§goto(addr371);
                                             }
                                             §§goto(addr386);
                                          }
                                          §§goto(addr371);
                                       }
                                       §§goto(addr386);
                                    }
                                    §§goto(addr340);
                                 }
                                 §§push(6);
                              }
                              §§goto(addr386);
                           }
                           §§goto(addr340);
                        }
                     }
                     §§goto(addr371);
                  }
               }
               §§goto(addr304);
            }
            §§goto(addr386);
         }
         §§goto(addr317);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§,!7§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr57:
                     this.§,!7§.dispose();
                     if(!(_loc2_ && this))
                     {
                        this.§,!7§ = null;
                        if(_loc2_ && this)
                        {
                        }
                     }
                  }
                  §§goto(addr78);
               }
               this.§0§ = null;
               §§goto(addr78);
            }
            §§goto(addr57);
         }
         addr78:
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§,!7§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§,!7§ = new Sprite();
                  if(_loc3_ || _loc3_)
                  {
                     addr39:
                     §§push(this);
                     §§push(this.§^f§);
                     if(_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§^f§ = §§pop();
                  }
               }
               var _loc2_:* = int(this.§0§.length - 1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  while(true)
                  {
                     if(§§pop() < 0)
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr130:
                           this.§@!%§();
                           if(!(_loc4_ && this))
                           {
                              break;
                           }
                        }
                        §§goto(addr141);
                     }
                     if(!this.§0§[_loc2_].update(this.§^f§,this.§,!7§,this.§-M§))
                     {
                        if(_loc3_ || this)
                        {
                           this.§0§.splice(_loc2_,1);
                           if(_loc4_ && _loc3_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           §§goto(addr130);
                        }
                     }
                     §§push(_loc2_);
                     if(!(_loc4_ && this))
                     {
                        §§push(§§pop() - 1);
                        if(!_loc3_)
                        {
                           continue;
                        }
                     }
                     _loc2_ = §§pop();
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop0;
                     §§goto(addr130);
                  }
                  this.§2#§();
                  addr141:
                  return this.§^f§ < this.§67§;
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §2#§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §>I§.§+2§.height;
         §§push(§=w§.§continue§);
         if(_loc5_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§=w§.§'c§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc5_)
         {
            §§push(this.§8!&§);
            if(!_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_ || _loc1_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || _loc2_)
         {
            §§push(this.§,!7§);
            §§push(_loc4_);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §@!%§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §>I§.§`S§.color = this.§>i§;
         }
      }
      
      public function clone(param1:§5!H§) : §-r§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§,K§ = null;
         var _loc2_:§-r§ = new §-r§(null,null);
         for each(_loc3_ in this.§0§)
         {
            if(!(_loc7_ && this))
            {
               _loc2_.§0§.push(_loc3_.clone());
            }
         }
         if(_loc6_)
         {
            _loc2_.§^f§ = this.§^f§;
            if(!_loc7_)
            {
               _loc2_.§67§ = this.§67§;
               _loc2_.§[s§ = this.§[s§;
               addr80:
               _loc2_.§8!&§ = this.§8!&§;
               if(!(_loc7_ && _loc3_))
               {
                  _loc2_.§;!#§ = this.§;!#§;
                  §§goto(addr91);
               }
               §§goto(addr118);
            }
            addr91:
            if(_loc6_ || param1)
            {
               _loc2_.§>i§ = this.§>i§;
               if(!_loc7_)
               {
                  addr118:
                  _loc2_.§@j§ = this.§@j§;
                  if(_loc6_ || this)
                  {
                  }
                  §§goto(addr132);
               }
               _loc2_.§-M§ = param1;
            }
            addr132:
            return _loc2_;
         }
         §§goto(addr80);
      }
      
      public function get §"Z§() : String
      {
         return this.§@j§;
      }
      
      public function set §"Z§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§@j§ = param1;
         }
      }
   }
}
