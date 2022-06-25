package §`!i§
{
   import §'!9§.§%!g§;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   import §<&§.§^b§;
   import §true§.§ _§;
   
   public class §,S§
   {
      
      public static const §03§:String = "CutScene_Type_Intro";
      
      public static const §+!Z§:String = "CutScene_Type_Outro";
      
      public static const §,-§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §03§ = "CutScene_Type_Intro";
         }
         do
         {
            §+!Z§ = "CutScene_Type_Outro";
            do
            {
               §,-§ = "CutScene_Type_Final_Outro";
            }
            while(!_loc2_);
            
         }
         while(!_loc2_);
         
      }
      
      private var §;!t§:§,Q§;
      
      private var §#r§:String;
      
      private var §0!G§:Vector.<§8d§>;
      
      private var §=U§:Number;
      
      private var §[1§:Number;
      
      private var §'O§:Number;
      
      private var §!!A§:Number;
      
      private var §8X§:Sprite;
      
      private var §&!Y§:Boolean = true;
      
      private var §,y§:uint;
      
      private var §]0§:Boolean;
      
      private var §!_§:§%!g§;
      
      private var §4!<§:§%!g§;
      
      public function §,S§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§8d§ = null;
         var _loc4_:Object = null;
         if(_loc8_)
         {
            this.§0!G§ = new Vector.<§8d§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§=U§ = 0;
                  loop2:
                  for(; _loc8_ || _loc3_; if(!(_loc8_ || param2))
                  {
                     continue;
                  },this.§#r§ = §+!Z§,§§goto(addr62))
                  {
                     loop3:
                     while(param1)
                     {
                        loop4:
                        while(true)
                        {
                           §§push(param2);
                           loop5:
                           while(true)
                           {
                              §§push("intro");
                              while(§§pop().search(§§pop()) == -1)
                              {
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    continue loop5;
                                 }
                                 §§push("complete");
                                 if(_loc7_)
                                 {
                                    continue;
                                 }
                                 if(§§pop().search(§§pop()) != -1)
                                 {
                                    if(_loc8_ || _loc3_)
                                    {
                                       if(!(_loc7_ && this))
                                       {
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                    addr62:
                                    if(!(_loc8_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(_loc7_ && param2)
                                    {
                                       continue loop4;
                                    }
                                    if(false)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 var _loc5_:int = 0;
                                 var _loc6_:* = param1;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    if(!_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                          _loc3_ = this.§5o§(_loc4_);
                                          if(_loc8_ || param1)
                                          {
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             if(!(_loc8_ || this))
                                             {
                                                continue;
                                             }
                                          }
                                          this.§0!G§.push(_loc3_);
                                          continue;
                                       }
                                       if(_loc8_)
                                       {
                                          if(_loc8_ || this)
                                          {
                                             if(_loc8_ || this)
                                             {
                                                _loc5_ = 0;
                                                if(!(_loc7_ && param2))
                                                {
                                                   _loc6_ = this.§0!G§;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc6_,_loc5_));
                                                      break loop7;
                                                   }
                                                   addr292:
                                                   addr290:
                                                }
                                             }
                                             break loop3;
                                          }
                                          break loop3;
                                       }
                                       §§goto(addr292);
                                    }
                                    break;
                                 }
                                 loop12:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§goto(addr292);
                                    }
                                    else
                                    {
                                       _loc3_ = §§nextvalue(_loc5_,_loc6_);
                                       if(!_loc7_)
                                       {
                                          §§push(_loc3_ is §9`§);
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(_loc3_ is §;!@§);
                                                if(!_loc7_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      do
                                                      {
                                                         (_loc3_ as §;!@§).setSize(this.§'O§,this.§!!A§);
                                                         do
                                                         {
                                                            (_loc3_ as §;!@§).§@!?§ = this.§&!Y§;
                                                         }
                                                         while(!(_loc8_ || this));
                                                         
                                                      }
                                                      while(!_loc8_);
                                                      
                                                      if(!(_loc7_ && this))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            if(false)
                                                            {
                                                               addr239:
                                                            }
                                                            continue loop12;
                                                         }
                                                         (_loc3_ as §9`§).§1!P§ = this.§&!Y§;
                                                         break;
                                                         addr289:
                                                      }
                                                      break;
                                                   }
                                                   continue loop12;
                                                }
                                                continue;
                                             }
                                             if(_loc8_)
                                             {
                                                addr281:
                                                (_loc3_ as §9`§).setSize(this.§'O§,this.§!!A§);
                                             }
                                             §§goto(addr289);
                                          }
                                          §§goto(addr239);
                                       }
                                       §§goto(addr281);
                                    }
                                 }
                              }
                              this.§#r§ = §03§;
                              continue loop0;
                           }
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function get sprite() : Sprite
      {
         return this.§8X§;
      }
      
      private function §5o§(param1:Object) : §8d§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc6_)
         {
            §§push(§8d§.§>!Y§);
            if(!(_loc6_ && this))
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc6_ && this)
                     {
                        addr298:
                     }
                  }
                  else
                  {
                     addr363:
                     §§push(5);
                     if(!(_loc6_ && _loc2_))
                     {
                        addr371:
                     }
                  }
               }
               else
               {
                  §§push(§8d§.§4'§);
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc5_ || param1)
                        {
                           §§push(1);
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr298);
                           }
                           else
                           {
                              addr383:
                           }
                        }
                        else
                        {
                           addr324:
                           §§push(3);
                           if(!_loc5_)
                           {
                              addr344:
                           }
                        }
                     }
                     else
                     {
                        §§push(§8d§.§!n§);
                        if(_loc5_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§push(2);
                                 if(_loc5_ || _loc3_)
                                 {
                                    §§goto(addr433);
                                 }
                                 else
                                 {
                                    §§goto(addr371);
                                 }
                              }
                              else
                              {
                                 addr341:
                                 §§push(4);
                                 if(_loc5_)
                                 {
                                    §§goto(addr344);
                                 }
                                 else
                                 {
                                    §§goto(addr383);
                                 }
                              }
                              §§goto(addr433);
                           }
                           else
                           {
                              §§push(§8d§.§`!F§);
                              if(!_loc6_)
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr324);
                                    }
                                    else
                                    {
                                       §§goto(addr363);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§8d§.END);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(_loc5_)
                                          {
                                             §§goto(addr341);
                                          }
                                          else
                                          {
                                             addr380:
                                             §§push(6);
                                             if(!_loc5_)
                                             {
                                                addr420:
                                             }
                                             §§goto(addr433);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§8d§.§^!$§);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr354:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§goto(addr363);
                                                }
                                                else
                                                {
                                                   addr412:
                                                   §§push(7);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr420);
                                                   }
                                                   else
                                                   {
                                                      addr428:
                                                      §§goto(addr433);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(§8d§.§>%§);
                                                if(!_loc5_)
                                                {
                                                }
                                                addr423:
                                                if(§§pop() === _loc4_)
                                                {
                                                   addr425:
                                                   §§push(8);
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr428);
                                                   }
                                                   §§goto(addr433);
                                                }
                                                else
                                                {
                                                   addr433:
                                                   loop2:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         return new §;!@§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                      case 1:
                                                         _loc2_ = param1.scroll_target;
                                                         if(_loc5_)
                                                         {
                                                            if(_loc2_.type == "sprite")
                                                            {
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§goto(addr62);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         addr62:
                                                         return new §9`§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                      case 2:
                                                         _loc3_ = param1.zoom_target;
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            if(_loc3_.type != "sprite")
                                                            {
                                                               addr188:
                                                               break;
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         else
                                                         {
                                                            addr120:
                                                            break;
                                                            addr156:
                                                         }
                                                         break;
                                                      case 3:
                                                         return new §=y§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                      case 7:
                                                         this.§&!Y§ = true;
                                                         addr126:
                                                         if(_loc5_ || _loc2_)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr188);
                                                               }
                                                               else
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr224:
                                                                     return new §'B§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                                  }
                                                                  addr180:
                                                                  this.§[1§ = param1.time * 1000;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               loop1:
                                                               while(true)
                                                               {
                                                                  if(_loc5_ || _loc2_)
                                                                  {
                                                                     break loop2;
                                                                  }
                                                                  addr177:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.§!!A§ = param1.height;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                                  break loop2;
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr156);
                                                         break;
                                                      case 8:
                                                         this.§,y§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                         if(!_loc6_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr126);
                                                         }
                                                         §§goto(addr120);
                                                      case 4:
                                                         §§goto(addr180);
                                                      case 5:
                                                         this.§'O§ = param1.width;
                                                         §§goto(addr177);
                                                      case 6:
                                                         this.§&!Y§ = false;
                                                         §§goto(addr120);
                                                   }
                                                   return null;
                                                   §§push(9);
                                                }
                                             }
                                             §§goto(addr433);
                                          }
                                          if(§§pop() === _loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                §§goto(addr380);
                                             }
                                             §§goto(addr433);
                                          }
                                          else
                                          {
                                             §§push(§8d§.§else §);
                                             if(!(_loc6_ && this))
                                             {
                                                if(§§pop() === _loc4_)
                                                {
                                                   if(!(_loc6_ && _loc3_))
                                                   {
                                                      §§goto(addr412);
                                                   }
                                                   §§goto(addr433);
                                                }
                                                else
                                                {
                                                   §§goto(addr423);
                                                   §§push(§8d§.§`J§);
                                                }
                                             }
                                             §§goto(addr423);
                                          }
                                       }
                                       §§goto(addr433);
                                    }
                                    §§goto(addr354);
                                 }
                                 §§goto(addr433);
                              }
                              §§goto(addr354);
                           }
                        }
                        §§goto(addr423);
                     }
                  }
                  §§goto(addr354);
               }
               §§goto(addr433);
            }
            §§goto(addr354);
         }
         §§goto(addr324);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§8X§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     addr87:
                     this.§8X§.dispose();
                  }
                  while(true)
                  {
                     this.§8X§ = null;
                     while(true)
                     {
                        §§goto(addr39);
                     }
                  }
               }
               addr39:
               while(true)
               {
                  this.§0!G§ = null;
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
         }
         §§goto(addr87);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!this.§8X§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.§8X§ = new Sprite();
                  if(!(_loc4_ && this))
                  {
                     addr39:
                     §§push(this);
                     §§push(this.§=U§);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§=U§ = §§pop();
                  }
                  var _loc2_:* = int(this.§0!G§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              while(_loc3_ || _loc2_)
                              {
                                 if(_loc3_)
                                 {
                                    this.§,D§();
                                    loop2:
                                    while(true)
                                    {
                                       this.§?Z§();
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc4_ && param1)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr153:
                                    this.§0!G§.splice(_loc2_,1);
                                 }
                              }
                              continue;
                           }
                           if(!this.§0!G§[_loc2_].update(this.§=U§,this.§8X§,this.§;!t§))
                           {
                              §§goto(addr153);
                           }
                           §§push(_loc2_);
                        }
                        §§push(§§pop() - 1);
                     }
                     _loc2_ = §§pop();
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      private function §@!t§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §^b§.§9E§.§5t§.height;
         §§push(§ _§.§0!2§);
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§ _§.§[!Y§);
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc6_)
         {
            §§push(this.§!!A§);
            if(_loc5_)
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
         if(_loc5_ || _loc1_)
         {
            §§push(this.§8X§);
            §§push(_loc4_);
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §,D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §^b§.§9E§.color = this.§,y§;
         }
      }
      
      private function §?Z§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§]0§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§goto(addr39);
               }
            }
            var _loc1_:Sprite = this.§8X§.getChildByName(§;!@§.§ 1§) as Sprite;
            if(_loc3_)
            {
               if(_loc1_)
               {
                  if(!_loc3_)
                  {
                  }
                  §§goto(addr58);
               }
               this.§]0§ = true;
            }
            addr58:
            return;
         }
         addr39:
      }
      
      public function clone(param1:§,Q§) : §,S§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§8d§ = null;
         var _loc2_:§,S§ = new §,S§(null,null);
         for each(_loc3_ in this.§0!G§)
         {
            if(!_loc7_)
            {
               _loc2_.§0!G§.push(_loc3_.clone());
            }
         }
         if(_loc6_)
         {
            _loc2_.§=U§ = this.§=U§;
            loop1:
            while(true)
            {
               _loc2_.§[1§ = this.§[1§;
               while(true)
               {
                  _loc2_.§'O§ = this.§'O§;
                  continue loop1;
                  addr104:
                  if(!_loc7_)
                  {
                     _loc2_.§,y§ = this.§,y§;
                     loop6:
                     while(!_loc7_)
                     {
                        _loc2_.§#r§ = this.§#r§;
                        while(true)
                        {
                           if(!_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 break;
                              }
                              continue;
                           }
                           continue loop6;
                        }
                        while(true)
                        {
                           _loc2_.§&!Y§ = this.§&!Y§;
                           break loop6;
                        }
                     }
                     while(!(_loc7_ && param1))
                     {
                        §§goto(addr104);
                     }
                     continue loop1;
                     addr97:
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public function get §+!'§() : String
      {
         return this.§#r§;
      }
      
      public function set §+!'§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§#r§ = param1;
         }
      }
   }
}
