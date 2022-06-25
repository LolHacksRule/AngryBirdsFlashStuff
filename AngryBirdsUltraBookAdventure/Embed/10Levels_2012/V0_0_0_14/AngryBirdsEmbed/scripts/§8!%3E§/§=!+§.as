package §8!>§
{
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §5H§.§[k§;
   import §9W§.§3g§;
   import §9W§.Sprite;
   
   public class §=!+§
   {
      
      public static const §7d§:String = "CutScene_Type_Intro";
      
      public static const §8!,§:String = "CutScene_Type_Outro";
      
      public static const §5_§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §7d§ = "CutScene_Type_Intro";
            if(!_loc1_)
            {
               addr39:
               §8!,§ = "CutScene_Type_Outro";
               if(!_loc1_)
               {
                  §5_§ = "CutScene_Type_Final_Outro";
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      private var §`!8§:§ >§;
      
      private var §<!D§:String;
      
      private var §#5§:Vector.<§1^§>;
      
      private var §3j§:Number;
      
      private var §>!F§:Number;
      
      private var § l§:Number;
      
      private var §4N§:Number;
      
      private var §[0§:Sprite;
      
      private var §+Y§:Boolean = true;
      
      private var §,C§:uint;
      
      private var §>x§:Boolean;
      
      private var §2t§:§3g§;
      
      private var §`!;§:§3g§;
      
      public function §=!+§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§1^§ = null;
         var _loc4_:Object = null;
         if(!_loc7_)
         {
            this.§#5§ = new Vector.<§1^§>();
            super();
            this.§3j§ = 0;
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
                        this.§<!D§ = §7d§;
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
                              this.§<!D§ = §8!,§;
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
                              _loc3_ = this.§[Z§(_loc4_);
                              if(_loc8_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc8_ || this)
                                    {
                                       this.§#5§.push(_loc3_);
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
                                       _loc6_ = this.§#5§;
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
                           §§push(_loc3_ is § D§);
                           if(!(_loc7_ && param2))
                           {
                              if(§§pop())
                              {
                                 (_loc3_ as § D§).setSize(this.§ l§,this.§4N§);
                                 (_loc3_ as § D§).§^! § = this.§+Y§;
                                 continue;
                              }
                              §§push(_loc3_ is §>T§);
                           }
                           if(§§pop())
                           {
                              if(_loc8_ || param1)
                              {
                                 (_loc3_ as §>T§).setSize(this.§ l§,this.§4N§);
                                 if(_loc7_ && this)
                                 {
                                    continue;
                                 }
                              }
                              (_loc3_ as §>T§).§9!$§ = this.§+Y§;
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
         return this.§[0§;
      }
      
      private function §[Z§(param1:Object) : §1^§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc6_ || _loc2_)
         {
            if(§1^§.§!1§ === _loc4_)
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
               §§push(§1^§.§?I§);
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
                              return new §>T§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
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
                              return new § D§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                           case 2:
                              _loc3_ = param1.zoom_target;
                              if(_loc3_.type == "sprite")
                              {
                                 return new §%N§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                              }
                              break;
                           case 3:
                              return new §]t§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                           case 4:
                              this.§>!F§ = param1.time * 1000;
                              break;
                           case 5:
                              this.§ l§ = param1.width;
                              if(!(_loc5_ && _loc3_))
                              {
                                 this.§4N§ = param1.height;
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
                              this.§+Y§ = false;
                              §§goto(addr178);
                           case 7:
                              this.§+Y§ = true;
                              if(_loc5_)
                              {
                                 addr205:
                                 break;
                              }
                              §§goto(addr185);
                              break;
                           case 8:
                              this.§,C§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                              §§goto(addr205);
                        }
                        return null;
                        §§push(4);
                     }
                     §§goto(addr350);
                  }
                  else
                  {
                     §§push(§1^§.§;u§);
                     if(!(_loc5_ && this))
                     {
                        if(§§pop() === _loc4_)
                        {
                           §§goto(addr350);
                           §§push(2);
                        }
                        else
                        {
                           if(§1^§.§]!D§ === _loc4_)
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
                              §§push(§1^§.END);
                              if(_loc6_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    §§goto(addr278);
                                 }
                                 else
                                 {
                                    §§push(§1^§.§2=§);
                                    if(_loc6_ || param1)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          §§goto(addr292);
                                          §§push(5);
                                       }
                                       else
                                       {
                                          §§push(§1^§.§'e§);
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
                                                §§push(§1^§.§@!;§);
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
                                                      if(§1^§.§6!E§ !== _loc4_)
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
            §§push(this.§[0§);
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
            this.§[0§.dispose();
            if(!_loc2_)
            {
               addr40:
               this.§[0§ = null;
               if(_loc1_)
               {
                  addr45:
                  this.§#5§ = null;
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
            if(!this.§[0§)
            {
               if(_loc3_)
               {
                  this.§[0§ = new Sprite();
                  if(_loc3_ || param1)
                  {
                     addr39:
                     §§push(this);
                     §§push(this.§3j§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§3j§ = §§pop();
                  }
                  var _loc2_:* = int(this.§#5§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     while(§§pop() >= 0)
                     {
                        if(!this.§#5§[_loc2_].update(this.§3j§,this.§[0§,this.§`!8§))
                        {
                           if(_loc4_ && _loc2_)
                           {
                              break;
                           }
                           this.§#5§.splice(_loc2_,1);
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
                           this.§7!7§();
                           this.§#]§();
                           return this.§3j§ < this.§>!F§;
                        }
                        §§goto(addr125);
                     }
                     this.§!!'§();
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
      
      private function §#]§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §;T§.§,H§.§2!&§.height;
         §§push(§[k§.§3!5§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§[k§.§@$§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!(_loc6_ && this))
         {
            §§push(this.§4N§);
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
            §§push(this.§[0§);
            §§push(_loc4_);
            if(!_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §!!'§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §;T§.§,H§.color = this.§,C§;
         }
      }
      
      private function §7!7§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§>x§)
            {
               if(_loc3_ || _loc3_)
               {
                  §§goto(addr49);
               }
            }
            var _loc1_:Sprite = this.§[0§.getChildByName(§>T§.§9Y§) as Sprite;
            if(!(_loc2_ && _loc1_))
            {
               if(_loc1_)
               {
                  if(_loc2_ && this)
                  {
                  }
                  §§goto(addr78);
               }
               this.§>x§ = true;
            }
            addr78:
            return;
         }
         addr49:
      }
      
      public function clone(param1:§ >§) : §=!+§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§1^§ = null;
         var _loc2_:§=!+§ = new §=!+§(null,null);
         for each(_loc3_ in this.§#5§)
         {
            if(!(_loc6_ && param1))
            {
               _loc2_.§#5§.push(_loc3_.clone());
            }
         }
         if(!(_loc6_ && this))
         {
            _loc2_.§3j§ = this.§3j§;
            _loc2_.§>!F§ = this.§>!F§;
            if(!(_loc6_ && this))
            {
               _loc2_.§ l§ = this.§ l§;
            }
            _loc2_.§4N§ = this.§4N§;
            if(!(_loc6_ && _loc2_))
            {
               §§goto(addr112);
            }
            §§goto(addr123);
         }
         addr112:
         _loc2_.§+Y§ = this.§+Y§;
         if(_loc7_ || this)
         {
            addr123:
            _loc2_.§,C§ = this.§,C§;
            _loc2_.§<!D§ = this.§<!D§;
            _loc2_.§`!8§ = param1;
         }
         return _loc2_;
      }
      
      public function get §!K§() : String
      {
         return this.§<!D§;
      }
      
      public function set §!K§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§<!D§ = param1;
         }
      }
   }
}
