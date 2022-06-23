package §9!7§
{
   import §+!?§.§"h§;
   import §,_§.§-!!§;
   import §,_§.Sprite;
   import §5`§.§?y§;
   import §catch§.§4@§;
   
   public class § !A§
   {
      
      public static const §"!?§:String = "CutScene_Type_Intro";
      
      public static const §!x§:String = "CutScene_Type_Outro";
      
      public static const §!1§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §"!?§ = "CutScene_Type_Intro";
            if(!_loc1_)
            {
               addr39:
               §!x§ = "CutScene_Type_Outro";
               if(!_loc1_)
               {
                  §!1§ = "CutScene_Type_Final_Outro";
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      private var §^S§:§?y§;
      
      private var §3y§:String;
      
      private var §4!"§:Vector.<§`E§>;
      
      private var §9!8§:Number;
      
      private var §@z§:Number;
      
      private var §5;§:Number;
      
      private var §>!'§:Number;
      
      private var §62§:Sprite;
      
      private var §%J§:Boolean = true;
      
      private var §^!"§:uint;
      
      private var §!Z§:Boolean;
      
      private var §,q§:§-!!§;
      
      private var §?H§:§-!!§;
      
      public function § !A§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§`E§ = null;
         var _loc4_:Object = null;
         if(!_loc7_)
         {
            this.§4!"§ = new Vector.<§`E§>();
            super();
            this.§9!8§ = 0;
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
                        this.§3y§ = §"!?§;
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
                              this.§3y§ = §!x§;
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
                              _loc3_ = this.§^D§(_loc4_);
                              if(_loc8_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc8_ || this)
                                    {
                                       this.§4!"§.push(_loc3_);
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
                                       _loc6_ = this.§4!"§;
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
                           §§push(_loc3_ is §,8§);
                           if(!(_loc7_ && param2))
                           {
                              if(§§pop())
                              {
                                 (_loc3_ as §,8§).setSize(this.§5;§,this.§>!'§);
                                 (_loc3_ as §,8§).§>!;§ = this.§%J§;
                                 continue;
                              }
                              §§push(_loc3_ is §9v§);
                           }
                           if(§§pop())
                           {
                              if(_loc8_ || param1)
                              {
                                 (_loc3_ as §9v§).setSize(this.§5;§,this.§>!'§);
                                 if(_loc7_ && this)
                                 {
                                    continue;
                                 }
                              }
                              (_loc3_ as §9v§).§ T§ = this.§%J§;
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
         return this.§62§;
      }
      
      private function §^D§(param1:Object) : §`E§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc6_ || _loc2_)
         {
            if(§`E§.§#r§ === _loc4_)
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
               §§push(§`E§.§#p§);
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
                              return new §9v§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
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
                              return new §,8§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                           case 2:
                              _loc3_ = param1.zoom_target;
                              if(_loc3_.type == "sprite")
                              {
                                 return new §3j§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                              }
                              break;
                           case 3:
                              return new § y§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                           case 4:
                              this.§@z§ = param1.time * 1000;
                              break;
                           case 5:
                              this.§5;§ = param1.width;
                              if(!(_loc5_ && _loc3_))
                              {
                                 this.§>!'§ = param1.height;
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
                              this.§%J§ = false;
                              §§goto(addr178);
                           case 7:
                              this.§%J§ = true;
                              if(_loc5_)
                              {
                                 addr205:
                                 break;
                              }
                              §§goto(addr185);
                              break;
                           case 8:
                              this.§^!"§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                              §§goto(addr205);
                        }
                        return null;
                        §§push(4);
                     }
                     §§goto(addr350);
                  }
                  else
                  {
                     §§push(§`E§.§8,§);
                     if(!(_loc5_ && this))
                     {
                        if(§§pop() === _loc4_)
                        {
                           §§goto(addr350);
                           §§push(2);
                        }
                        else
                        {
                           if(§`E§.§'V§ === _loc4_)
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
                              §§push(§`E§.END);
                              if(_loc6_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    §§goto(addr278);
                                 }
                                 else
                                 {
                                    §§push(§`E§.§'l§);
                                    if(_loc6_ || param1)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          §§goto(addr292);
                                          §§push(5);
                                       }
                                       else
                                       {
                                          §§push(§`E§.§-!&§);
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
                                                §§push(§`E§.§[t§);
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
                                                      if(§`E§.§&J§ !== _loc4_)
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
            §§push(this.§62§);
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
            this.§62§.dispose();
            if(!_loc2_)
            {
               addr40:
               this.§62§ = null;
               if(_loc1_)
               {
                  addr45:
                  this.§4!"§ = null;
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
            if(!this.§62§)
            {
               if(_loc3_)
               {
                  this.§62§ = new Sprite();
                  if(_loc3_ || param1)
                  {
                     addr39:
                     §§push(this);
                     §§push(this.§9!8§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§9!8§ = §§pop();
                  }
                  var _loc2_:* = int(this.§4!"§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     while(§§pop() >= 0)
                     {
                        if(!this.§4!"§[_loc2_].update(this.§9!8§,this.§62§,this.§^S§))
                        {
                           if(_loc4_ && _loc2_)
                           {
                              break;
                           }
                           this.§4!"§.splice(_loc2_,1);
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
                           this.§,m§();
                           this.§0U§();
                           return this.§9!8§ < this.§@z§;
                        }
                        §§goto(addr125);
                     }
                     this.§<0§();
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
      
      private function §0U§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §4@§.§0W§.§5B§.height;
         §§push(§"h§.§'!I§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§"h§.§for§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!(_loc6_ && this))
         {
            §§push(this.§>!'§);
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
            §§push(this.§62§);
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §<0§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §4@§.§0W§.color = this.§^!"§;
         }
      }
      
      private function §,m§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§!Z§)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr49);
               }
            }
            var _loc1_:Sprite = this.§62§.getChildByName(§9v§.§6!-§) as Sprite;
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_)
               {
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr78);
               }
               this.§!Z§ = true;
            }
            addr78:
            return;
         }
         addr49:
      }
      
      public function clone(param1:§?y§) : § !A§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§`E§ = null;
         var _loc2_:§ !A§ = new § !A§(null,null);
         for each(_loc3_ in this.§4!"§)
         {
            if(!(_loc6_ && param1))
            {
               _loc2_.§4!"§.push(_loc3_.clone());
            }
         }
         if(!(_loc6_ && this))
         {
            _loc2_.§9!8§ = this.§9!8§;
            _loc2_.§@z§ = this.§@z§;
            if(!(_loc6_ && this))
            {
               _loc2_.§5;§ = this.§5;§;
            }
            _loc2_.§>!'§ = this.§>!'§;
            if(!(_loc6_ && _loc2_))
            {
               §§goto(addr112);
            }
            §§goto(addr123);
         }
         addr112:
         _loc2_.§%J§ = this.§%J§;
         if(_loc7_ || this)
         {
            addr123:
            _loc2_.§^!"§ = this.§^!"§;
            _loc2_.§3y§ = this.§3y§;
            _loc2_.§^S§ = param1;
         }
         return _loc2_;
      }
      
      public function get §+g§() : String
      {
         return this.§3y§;
      }
      
      public function set §+g§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§3y§ = param1;
         }
      }
   }
}
