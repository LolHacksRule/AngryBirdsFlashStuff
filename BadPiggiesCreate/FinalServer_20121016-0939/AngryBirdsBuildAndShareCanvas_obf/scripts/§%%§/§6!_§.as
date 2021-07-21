package §%%§
{
   import §%c§.§=!X§;
   import §&"5§.§7!P§;
   import §6p§.§?%§;
   import §default§.Sprite;
   import §default§.§^$§;
   
   public class §6!_§
   {
      
      public static const §61§:String = "CutScene_Type_Intro";
      
      public static const §7_§:String = "CutScene_Type_Outro";
      
      public static const §0!Q§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §61§ = "CutScene_Type_Intro";
            do
            {
               §7_§ = "CutScene_Type_Outro";
               do
               {
                  §0!Q§ = "CutScene_Type_Final_Outro";
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private var §2"!§:§7!P§;
      
      private var §1t§:String;
      
      private var §]!7§:Vector.<§#K§>;
      
      private var §7A§:Number;
      
      private var §7X§:Number;
      
      private var §7!T§:Number;
      
      private var §>w§:Number;
      
      private var §!&§:Sprite;
      
      private var §2!6§:Boolean = true;
      
      private var §<5§:uint;
      
      private var §&+§:Boolean;
      
      private var §7V§:§^$§;
      
      private var §!-§:§^$§;
      
      public function §6!_§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§#K§ = null;
         var _loc4_:Object = null;
         if(!(_loc7_ && _loc3_))
         {
            this.§]!7§ = new Vector.<§#K§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§7A§ = 0;
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(param1)
                     {
                        if(_loc8_ || _loc3_)
                        {
                           if(_loc7_)
                           {
                              continue loop2;
                           }
                           if(!_loc8_)
                           {
                              continue loop1;
                           }
                           while(true)
                           {
                              §§push(param2);
                              while(§§pop().search("intro") == -1)
                              {
                                 §§push(param2);
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 if(§§pop().search("complete") != -1)
                                 {
                                    if(_loc8_ || this)
                                    {
                                       this.§1t§ = §7_§;
                                    }
                                    if(_loc8_ || this)
                                    {
                                       if(_loc7_ && param1)
                                       {
                                          break;
                                       }
                                       if(false)
                                       {
                                          continue loop3;
                                       }
                                       addr113:
                                       var _loc5_:int = 0;
                                       var _loc6_:* = param1;
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc6_,_loc5_));
                                          if(!(_loc7_ && param2))
                                          {
                                             if(§§pop())
                                             {
                                                _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                                _loc3_ = this.§'_§(_loc4_);
                                                if(!(_loc7_ && param2))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         this.§]!7§.push(_loc3_);
                                                      }
                                                   }
                                                }
                                                continue;
                                             }
                                             if(_loc8_)
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      _loc5_ = 0;
                                                      if(!_loc7_)
                                                      {
                                                         addr181:
                                                         _loc6_ = this.§]!7§;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc6_,_loc5_));
                                                            break loop6;
                                                         }
                                                         addr278:
                                                      }
                                                      break loop3;
                                                   }
                                                   break loop3;
                                                }
                                             }
                                             §§goto(addr181);
                                          }
                                          break;
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr181);
                                          }
                                          else
                                          {
                                             _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                §§push(_loc3_ is §,g§);
                                                while(!§§pop())
                                                {
                                                   §§push(_loc3_ is §^d§);
                                                   if(!(_loc8_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   if(!§§pop())
                                                   {
                                                      continue loop10;
                                                   }
                                                   if(_loc8_ || param1)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               break;
                                                            }
                                                            (_loc3_ as §^d§).setSize(this.§7!T§,this.§>w§);
                                                            do
                                                            {
                                                               (_loc3_ as §^d§).§1S§ = this.§2!6§;
                                                            }
                                                            while(_loc7_);
                                                            
                                                            addr209:
                                                            if(false)
                                                            {
                                                               addr211:
                                                            }
                                                            continue loop10;
                                                            addr246:
                                                         }
                                                         (_loc3_ as §,g§).§<A§ = this.§2!6§;
                                                         addr277:
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr246);
                                                }
                                                (_loc3_ as §,g§).setSize(this.§7!T§,this.§>w§);
                                                §§goto(addr277);
                                             }
                                             §§goto(addr209);
                                          }
                                       }
                                    }
                                    addr96:
                                 }
                                 §§goto(addr113);
                              }
                              if(_loc7_)
                              {
                                 continue loop0;
                              }
                              this.§1t§ = §61§;
                           }
                        }
                        §§goto(addr96);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
      }
      
      private function §'_§(param1:Object) : §#K§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc6_)
         {
            §§push(§#K§.§5L§);
            if(!_loc5_)
            {
               if(§§pop() === _loc4_)
               {
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                     }
                  }
                  else
                  {
                     addr339:
                     §§push(5);
                     if(_loc5_ && _loc3_)
                     {
                     }
                  }
                  §§goto(addr404);
               }
               else
               {
                  §§push(§#K§.§;!W§);
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_)
                        {
                           §§push(1);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr404);
                        }
                        else
                        {
                           §§goto(addr278);
                        }
                     }
                     else
                     {
                        §§push(§#K§.§-!i§);
                        if(!(_loc5_ && this))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!_loc5_)
                              {
                                 addr278:
                                 §§push(2);
                                 if(_loc5_)
                                 {
                                    addr303:
                                 }
                              }
                              else
                              {
                                 addr386:
                                 §§push(8);
                                 if(_loc5_)
                                 {
                                 }
                              }
                              §§goto(addr404);
                           }
                           else
                           {
                              §§push(§#K§.§-v§);
                              if(_loc6_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       §§push(3);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§goto(addr303);
                                       }
                                       else
                                       {
                                          addr325:
                                          §§goto(addr404);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr386);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§#K§.END);
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       addr313:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(4);
                                             if(_loc6_ || _loc2_)
                                             {
                                                §§goto(addr325);
                                             }
                                             else
                                             {
                                                addr381:
                                                §§goto(addr404);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr339);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§#K§.§@"9§);
                                          if(_loc5_ && _loc2_)
                                          {
                                          }
                                          addr352:
                                          if(§§pop() === _loc4_)
                                          {
                                             if(_loc6_)
                                             {
                                                §§push(6);
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§goto(addr364);
                                                }
                                             }
                                             else
                                             {
                                                addr378:
                                                §§push(7);
                                                if(_loc6_)
                                                {
                                                   §§goto(addr381);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(§#K§.§5X§);
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(§§pop() === _loc4_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr378);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr386);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(§#K§.§`i§);
                                                }
                                                §§goto(addr386);
                                             }
                                             addr384:
                                             if(§§pop() === _loc4_)
                                             {
                                                §§goto(addr386);
                                             }
                                             else
                                             {
                                                addr404:
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      return new §^d§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                   case 1:
                                                      _loc2_ = param1.scroll_target;
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(_loc2_.type == "sprite")
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr63);
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      addr63:
                                                      return new §,g§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                   case 2:
                                                      _loc3_ = param1.zoom_target;
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(_loc3_.type != "sprite")
                                                         {
                                                            addr181:
                                                            break;
                                                         }
                                                         §§goto(addr215);
                                                      }
                                                      else
                                                      {
                                                         break;
                                                         addr155:
                                                      }
                                                      break;
                                                   case 3:
                                                      return new §1;§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                   case 6:
                                                      this.§2!6§ = false;
                                                      addr145:
                                                      if(_loc6_)
                                                      {
                                                         addr128:
                                                         break;
                                                      }
                                                      break;
                                                   case 8:
                                                      this.§<5§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr145);
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      else
                                                      {
                                                         addr134:
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            addr163:
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               this.§>w§ = param1.height;
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr181);
                                                            }
                                                         }
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr155);
                                                         }
                                                      }
                                                      addr178:
                                                      if(!_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      addr215:
                                                      return new §+!5§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                   case 4:
                                                      this.§7X§ = param1.time * 1000;
                                                      §§goto(addr178);
                                                   case 5:
                                                      this.§7!T§ = param1.width;
                                                      §§goto(addr163);
                                                   case 7:
                                                      this.§2!6§ = true;
                                                      §§goto(addr134);
                                                }
                                                return null;
                                                §§push(9);
                                             }
                                          }
                                       }
                                       §§goto(addr404);
                                    }
                                    if(§§pop() === _loc4_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr339);
                                       }
                                       else
                                       {
                                          §§goto(addr378);
                                       }
                                    }
                                    else
                                    {
                                       §§push(§#K§.§9b§);
                                       if(_loc6_)
                                       {
                                          §§goto(addr352);
                                       }
                                       §§goto(addr384);
                                    }
                                 }
                                 §§goto(addr404);
                              }
                              §§goto(addr313);
                           }
                        }
                        §§goto(addr352);
                     }
                  }
                  §§goto(addr313);
               }
            }
            §§goto(addr313);
         }
         §§goto(addr386);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§!&§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  addr79:
                  while(true)
                  {
                     §§push(this.§!&§);
                     addr81:
                     while(true)
                     {
                        §§pop().dispose();
                        loop3:
                        while(true)
                        {
                           this.§!&§ = null;
                           addr56:
                           addr58:
                           while(!_loc1_)
                           {
                              continue loop3;
                           }
                        }
                     }
                  }
                  addr79:
               }
               while(true)
               {
                  this.§]!7§ = null;
                  if(!(_loc2_ && _loc1_))
                  {
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr56);
                  §§goto(addr58);
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr79);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§!&§)
            {
               if(!_loc4_)
               {
                  addr23:
                  this.§!&§ = new Sprite();
                  if(!(_loc4_ && this))
                  {
                     addr34:
                     §§push(this);
                     §§push(this.§7A§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§7A§ = §§pop();
                  }
                  var _loc2_:* = int(this.§]!7§.length - 1);
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!_loc4_)
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           while(true)
                           {
                              this.§2§();
                              loop2:
                              while(_loc3_ || _loc3_)
                              {
                                 if(!_loc4_)
                                 {
                                    this.§1Q§();
                                    for(; _loc3_; this.§][§(),if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          return this.§7A§ < this.§7X§;
                                       }
                                       continue loop2;
                                    })
                                    {
                                       if(_loc3_)
                                       {
                                          continue;
                                       }
                                       addr138:
                                       this.§]!7§.splice(_loc2_,1);
                                    }
                                    continue loop1;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        else if(!this.§]!7§[_loc2_].update(this.§7A§,this.§!&§,this.§2"!§))
                        {
                           §§goto(addr138);
                        }
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(§§pop() - 1);
                        }
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
            §§goto(addr34);
         }
         §§goto(addr23);
      }
      
      private function §][§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §?%§.§%b§.§[A§.height;
         §§push(§=!X§.§@"6§);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§=!X§.§ !4§);
         if(!(_loc6_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc6_)
         {
            §§push(this.§>w§);
            if(_loc5_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            §§push(this.§!&§);
            §§push(_loc4_);
            if(!(_loc6_ && this))
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §?%§.§%b§.color = this.§<5§;
         }
      }
      
      private function §1Q§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§&+§)
            {
               if(!(_loc2_ && this))
               {
                  §§goto(addr39);
               }
            }
            var _loc1_:Sprite = this.§!&§.getChildByName(§^d§.§8Z§) as Sprite;
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  if(_loc3_ || this)
                  {
                  }
                  §§goto(addr73);
               }
               this.§&+§ = true;
            }
            addr73:
            return;
         }
         addr39:
      }
      
      public function clone(param1:§7!P§) : §6!_§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§#K§ = null;
         var _loc2_:§6!_§ = new §6!_§(null,null);
         for each(_loc3_ in this.§]!7§)
         {
            if(!_loc7_)
            {
               _loc2_.§]!7§.push(_loc3_.clone());
            }
         }
         if(_loc6_ || this)
         {
            _loc2_.§7A§ = this.§7A§;
            loop1:
            while(true)
            {
               _loc2_.§7X§ = this.§7X§;
               loop2:
               while(true)
               {
                  _loc2_.§7!T§ = this.§7!T§;
                  while(!_loc7_)
                  {
                     _loc2_.§>w§ = this.§>w§;
                     while(!(_loc7_ && _loc2_))
                     {
                        _loc2_.§2!6§ = this.§2!6§;
                        loop5:
                        while(true)
                        {
                           _loc2_.§<5§ = this.§<5§;
                           loop6:
                           while(_loc6_)
                           {
                              _loc2_.§1t§ = this.§1t§;
                              while(true)
                              {
                                 if(_loc6_ || _loc2_)
                                 {
                                    continue loop5;
                                 }
                                 continue loop6;
                                 addr105:
                                 _loc2_.§2"!§ = param1;
                                 if(!_loc7_)
                                 {
                                    return _loc2_;
                                 }
                              }
                              continue loop5;
                           }
                           continue loop2;
                        }
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr105);
                     }
                  }
                  continue loop1;
               }
            }
         }
         §§goto(addr119);
      }
      
      public function get §^v§() : String
      {
         return this.§1t§;
      }
      
      public function set §^v§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§1t§ = param1;
         }
      }
   }
}
