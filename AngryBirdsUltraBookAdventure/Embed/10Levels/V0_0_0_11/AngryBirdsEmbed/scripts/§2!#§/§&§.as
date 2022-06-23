package §2!#§
{
   import §"!5§.§,!!§;
   import §&p§.§'_§;
   import §-!0§.§'!3§;
   import §?^§.§?C§;
   import §?^§.Sprite;
   
   public class §&§
   {
      
      public static const §[Z§:String = "CutScene_Type_Intro";
      
      public static const §<!G§:String = "CutScene_Type_Outro";
      
      public static const §#v§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §[Z§ = "CutScene_Type_Intro";
            if(!_loc1_)
            {
               addr39:
               §<!G§ = "CutScene_Type_Outro";
               if(!_loc1_)
               {
                  §#v§ = "CutScene_Type_Final_Outro";
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      private var § 7§:§'!3§;
      
      private var §]R§:String;
      
      private var §'Y§:Vector.<§,1§>;
      
      private var §=,§:Number;
      
      private var §8!F§:Number;
      
      private var §9p§:Number;
      
      private var §9`§:Number;
      
      private var §0W§:Sprite;
      
      private var §0Z§:Boolean = true;
      
      private var §6!$§:uint;
      
      private var §?F§:Boolean;
      
      private var §1m§:§?C§;
      
      private var §36§:§?C§;
      
      public function §&§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§,1§ = null;
         var _loc4_:Object = null;
         if(!_loc7_)
         {
            this.§'Y§ = new Vector.<§,1§>();
            super();
            this.§=,§ = 0;
         }
         if(param1)
         {
            if(_loc8_ || _loc3_)
            {
               §§push(param2);
               if(!(_loc7_ && param1))
               {
                  §§push("intro");
                  if(_loc8_)
                  {
                     if(§§pop().search(§§pop()) != -1)
                     {
                        this.§]R§ = §[Z§;
                        if(_loc7_)
                        {
                        }
                     }
                     else
                     {
                        addr67:
                        if(param2.search("complete") != -1)
                        {
                           if(!_loc7_)
                           {
                              addr72:
                              this.§]R§ = §<!G§;
                           }
                        }
                     }
                     var _loc5_:int = 0;
                     var _loc6_:* = param1;
                     loop0:
                     while(true)
                     {
                        §§push(§§hasnext(_loc6_,_loc5_));
                        if(_loc8_)
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                              _loc3_ = this.native(_loc4_);
                              if(_loc8_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc8_ || this)
                                    {
                                       this.§'Y§.push(_loc3_);
                                    }
                                 }
                              }
                              continue;
                           }
                           if(_loc8_ || param2)
                           {
                              if(!_loc7_)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    _loc5_ = 0;
                                    if(_loc8_)
                                    {
                                       addr148:
                                       _loc6_ = this.§'Y§;
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc6_,_loc5_));
                                          break loop0;
                                       }
                                       addr227:
                                    }
                                 }
                                 §§goto(addr231);
                              }
                           }
                           §§goto(addr148);
                        }
                        break;
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc3_ = §§nextvalue(_loc5_,_loc6_);
                           §§push(_loc3_ is §`5§);
                           if(!(_loc7_ && param2))
                           {
                              if(§§pop())
                              {
                                 (_loc3_ as §`5§).setSize(this.§9p§,this.§9`§);
                                 (_loc3_ as §`5§).§1!2§ = this.§0Z§;
                                 continue;
                              }
                              §§push(_loc3_ is §>R§);
                           }
                           if(§§pop())
                           {
                              if(_loc8_ || param1)
                              {
                                 (_loc3_ as §>R§).setSize(this.§9p§,this.§9`§);
                                 if(_loc7_ && this)
                                 {
                                    continue;
                                 }
                              }
                              (_loc3_ as §>R§).override = this.§0Z§;
                           }
                           continue;
                        }
                        §§goto(addr148);
                     }
                  }
               }
               §§goto(addr67);
            }
            §§goto(addr72);
         }
         addr231:
      }
      
      public function get sprite() : Sprite
      {
         return this.§0W§;
      }
      
      private function native(param1:Object) : §,1§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc6_ || _loc2_)
         {
            if(§,1§.§@8§ === _loc4_)
            {
               if(!(_loc5_ && this))
               {
                  §§push(0);
               }
               else
               {
                  addr311:
                  §§push(6);
                  if(!_loc6_)
                  {
                     addr345:
                  }
               }
            }
            else
            {
               §§push(§,1§.§3M§);
               if(_loc6_)
               {
                  if(§§pop() === _loc4_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§goto(addr350);
                     }
                     else
                     {
                        addr278:
                        addr350:
                        switch(1)
                        {
                           case 0:
                              return new §>R§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                           case 1:
                              _loc2_ = param1.scroll_target;
                              if(_loc6_)
                              {
                                 if(_loc2_.type == "sprite")
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       §§goto(addr68);
                                    }
                                 }
                                 break;
                              }
                              addr68:
                              return new §`5§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                           case 2:
                              _loc3_ = param1.zoom_target;
                              if(_loc3_.type == "sprite")
                              {
                                 return new §!k§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                              }
                              break;
                           case 3:
                              return new §3!"§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                           case 4:
                              this.§8!F§ = param1.time * 1000;
                              break;
                           case 5:
                              this.§9p§ = param1.width;
                              if(!(_loc5_ && _loc3_))
                              {
                                 this.§9`§ = param1.height;
                                 if(_loc6_ || _loc2_)
                                 {
                                    break;
                                 }
                                 addr185:
                                 break;
                              }
                              addr178:
                              break;
                           case 6:
                              this.§0Z§ = false;
                              §§goto(addr178);
                           case 7:
                              this.§0Z§ = true;
                              if(_loc5_)
                              {
                                 addr205:
                                 break;
                              }
                              §§goto(addr185);
                              break;
                           case 8:
                              this.§6!$§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                              §§goto(addr205);
                        }
                        return null;
                        §§push(4);
                     }
                     §§goto(addr350);
                  }
                  else
                  {
                     §§push(§,1§.§2Y§);
                     if(!(_loc5_ && this))
                     {
                        if(§§pop() === _loc4_)
                        {
                           §§goto(addr350);
                           §§push(2);
                        }
                        else
                        {
                           if(§,1§.§&!3§ === _loc4_)
                           {
                              §§push(3);
                              if(_loc5_ && _loc3_)
                              {
                                 addr292:
                              }
                              §§goto(addr350);
                           }
                           else
                           {
                              §§push(§,1§.END);
                              if(_loc6_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    §§goto(addr278);
                                 }
                                 else
                                 {
                                    §§push(§,1§.§>L§);
                                    if(_loc6_ || param1)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          §§goto(addr292);
                                          §§push(5);
                                       }
                                       else
                                       {
                                          §§push(§,1§.§]-§);
                                          if(!(_loc5_ && _loc3_))
                                          {
                                             addr302:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§goto(addr311);
                                                }
                                                else
                                                {
                                                   addr344:
                                                   §§push(8);
                                                }
                                                §§goto(addr345);
                                             }
                                             else
                                             {
                                                §§push(§,1§.§&>§);
                                                if(_loc6_)
                                                {
                                                   addr329:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      §§push(7);
                                                      if(_loc5_ && _loc2_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr342:
                                                      if(§,1§.§1§ !== _loc4_)
                                                      {
                                                         §§goto(addr350);
                                                         §§push(9);
                                                      }
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr342);
                                             }
                                          }
                                          §§goto(addr342);
                                       }
                                       §§goto(addr350);
                                    }
                                 }
                                 §§goto(addr350);
                              }
                           }
                           §§goto(addr350);
                        }
                        §§goto(addr350);
                     }
                     §§goto(addr302);
                  }
               }
               §§goto(addr329);
            }
            §§goto(addr350);
         }
         §§goto(addr311);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§0W§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_)
                  {
                     §§goto(addr37);
                  }
                  §§goto(addr40);
               }
               §§goto(addr45);
            }
            addr37:
            this.§0W§.dispose();
            if(!_loc2_)
            {
               addr40:
               this.§0W§ = null;
               if(_loc1_)
               {
                  addr45:
                  this.§'Y§ = null;
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            if(!this.§0W§)
            {
               if(_loc3_)
               {
                  this.§0W§ = new Sprite();
                  if(_loc3_ || param1)
                  {
                     addr39:
                     §§push(this);
                     §§push(this.§=,§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§=,§ = §§pop();
                  }
                  var _loc2_:* = int(this.§'Y§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     while(§§pop() >= 0)
                     {
                        if(!this.§'Y§[_loc2_].update(this.§=,§,this.§0W§,this.§ 7§))
                        {
                           if(_loc4_ && _loc2_)
                           {
                              break;
                           }
                           this.§'Y§.splice(_loc2_,1);
                        }
                        §§push(_loc2_);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop() - 1);
                           if(_loc4_)
                           {
                              continue;
                           }
                        }
                        _loc2_ = §§pop();
                        if(_loc4_)
                        {
                           this.§4e§();
                           this.§?%§();
                           return this.§=,§ < this.§8!F§;
                        }
                        §§goto(addr125);
                     }
                     this.§^U§();
                     if(_loc3_ || param1)
                     {
                        §§goto(addr125);
                     }
                     addr125:
                     continue;
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §?%§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §'_§.§17§.§^w§.height;
         §§push(§,!!§.§0!3§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§,!!§.§,`§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!(_loc6_ && this))
         {
            §§push(this.§9`§);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc6_ && _loc3_))
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§0W§);
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §^U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §'_§.§17§.color = this.§6!$§;
         }
      }
      
      private function §4e§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§?F§)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr49);
               }
            }
            var _loc1_:Sprite = this.§0W§.getChildByName(§>R§.§1S§) as Sprite;
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_)
               {
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr78);
               }
               this.§?F§ = true;
            }
            addr78:
            return;
         }
         addr49:
      }
      
      public function clone(param1:§'!3§) : §&§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§,1§ = null;
         var _loc2_:§&§ = new §&§(null,null);
         for each(_loc3_ in this.§'Y§)
         {
            if(!(_loc6_ && param1))
            {
               _loc2_.§'Y§.push(_loc3_.clone());
            }
         }
         if(!(_loc6_ && this))
         {
            _loc2_.§=,§ = this.§=,§;
            _loc2_.§8!F§ = this.§8!F§;
            if(!(_loc6_ && this))
            {
               _loc2_.§9p§ = this.§9p§;
            }
            _loc2_.§9`§ = this.§9`§;
            if(!(_loc6_ && _loc2_))
            {
               §§goto(addr112);
            }
            §§goto(addr123);
         }
         addr112:
         _loc2_.§0Z§ = this.§0Z§;
         if(_loc7_ || this)
         {
            addr123:
            _loc2_.§6!$§ = this.§6!$§;
            _loc2_.§]R§ = this.§]R§;
            _loc2_.§ 7§ = param1;
         }
         return _loc2_;
      }
      
      public function get §>!+§() : String
      {
         return this.§]R§;
      }
      
      public function set §>!+§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§]R§ = param1;
         }
      }
   }
}
