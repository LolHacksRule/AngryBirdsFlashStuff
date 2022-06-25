package §4u§
{
   import § D§.§]!B§;
   import §,!_§.TextureManager;
   import §0P§.Starling;
   import §6!7§.§3x§;
   import §6!7§.Sprite;
   
   public class CutScene
   {
      
      public static const §3@§:String = "CutScene_Type_Intro";
      
      public static const §@e§:String = "CutScene_Type_Outro";
      
      public static const §5!_§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §3@§ = "CutScene_Type_Intro";
            while(true)
            {
               §@e§ = "CutScene_Type_Outro";
               loop1:
               while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     §5!_§ = "CutScene_Type_Final_Outro";
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private var §6! §:TextureManager;
      
      private var §&!W§:String;
      
      private var § !7§:Vector.<§^!I§>;
      
      private var §2+§:Number;
      
      private var §-! §:Number;
      
      private var §[v§:Number;
      
      private var §5%§:Number;
      
      private var §'6§:Sprite;
      
      private var §6m§:Boolean = true;
      
      private var §[!P§:uint;
      
      private var §2!j§:Boolean;
      
      private var §1%§:§3x§;
      
      private var §>i§:§3x§;
      
      public function CutScene(param1:Object, param2:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:§^!I§ = null;
         var _loc4_:Object = null;
         if(!(_loc8_ && _loc3_))
         {
            this.§ !7§ = new Vector.<§^!I§>();
            loop0:
            while(true)
            {
               super();
               addr104:
               while(true)
               {
                  this.§2+§ = 0;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            loop4:
            while(param1)
            {
               loop5:
               while(true)
               {
                  §§push(param2);
                  loop6:
                  while(true)
                  {
                     §§push("intro");
                     while(§§pop().search(§§pop()) == -1)
                     {
                        §§push(param2);
                        if(_loc8_ && _loc3_)
                        {
                           continue loop6;
                        }
                        §§push("complete");
                        if(_loc8_)
                        {
                           continue;
                        }
                        if(§§pop().search(§§pop()) != -1)
                        {
                           if(_loc7_ || param1)
                           {
                              if(_loc8_)
                              {
                                 break;
                              }
                              this.§&!W§ = §@e§;
                           }
                           if(_loc7_)
                           {
                              if(_loc7_ || param1)
                              {
                                 break loop5;
                              }
                              continue loop5;
                           }
                           addr86:
                           if(_loc8_)
                           {
                              §§goto(addr93);
                           }
                        }
                        var _loc5_:int = 0;
                        var _loc6_:* = param1;
                        addr158:
                        §§push(§§hasnext(_loc6_,_loc5_));
                        if(!(_loc8_ && this))
                        {
                           if(§§pop())
                           {
                              _loc4_ = §§nextvalue(_loc5_,_loc6_);
                              _loc3_ = this.§4!f§(_loc4_);
                              if(_loc7_)
                              {
                                 if(_loc3_)
                                 {
                                    if(!(_loc8_ && param1))
                                    {
                                       addr153:
                                       this.§ !7§.push(_loc3_);
                                    }
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr153);
                           }
                           if(!(_loc8_ && _loc3_))
                           {
                              if(_loc7_)
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    _loc5_ = 0;
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr194:
                                       _loc6_ = this.§ !7§;
                                       addr289:
                                       for each(_loc3_ in _loc6_)
                                       {
                                          if(!_loc8_)
                                          {
                                             addr277:
                                             if(_loc3_ is §6!G§)
                                             {
                                                addr278:
                                                (_loc3_ as §6!G§).setSize(this.§[v§,this.§5%§);
                                                (_loc3_ as §6!G§).§=k§ = this.§6m§;
                                                addr220:
                                                §§goto(addr289);
                                                addr272:
                                                addr288:
                                             }
                                             §§push(_loc3_ is §8!E§);
                                             if(_loc7_ || _loc3_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc7_)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         (_loc3_ as §8!E§).setSize(this.§[v§,this.§5%§);
                                                         addr249:
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               (_loc3_ as §8!E§).§;!§ = this.§6m§;
                                                               if(_loc7_)
                                                               {
                                                                  addr218:
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr220);
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                               §§goto(addr249);
                                                            }
                                                            §§goto(addr278);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr288);
                                                   }
                                                   §§goto(addr249);
                                                }
                                                §§goto(addr289);
                                             }
                                             §§goto(addr277);
                                          }
                                          §§goto(addr218);
                                       }
                                    }
                                    break loop4;
                                 }
                                 break loop4;
                              }
                           }
                           §§goto(addr194);
                        }
                        §§goto(addr289);
                     }
                     if(!_loc8_)
                     {
                        this.§&!W§ = §3@§;
                        §§goto(addr86);
                     }
                     §§goto(addr104);
                  }
               }
               if(false)
               {
                  continue;
               }
               §§goto(addr114);
            }
            return;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      private function §4!f§(param1:Object) : §^!I§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc6_)
         {
            §§push(§^!I§.§ W§);
            if(_loc5_ || _loc2_)
            {
               if(§§pop() === _loc4_)
               {
                  if(!_loc6_)
                  {
                     addr269:
                     §§push(0);
                     if(!_loc5_)
                     {
                        addr300:
                     }
                  }
                  else
                  {
                     addr315:
                     §§push(2);
                     if(!_loc5_)
                     {
                     }
                  }
               }
               else
               {
                  §§push(§^!I§.§[!h§);
                  if(_loc5_ || param1)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§push(1);
                           if(_loc5_ || this)
                           {
                              §§goto(addr300);
                           }
                           else
                           {
                              addr390:
                           }
                        }
                        else
                        {
                           §§goto(addr315);
                        }
                     }
                     else
                     {
                        §§push(§^!I§.§-X§);
                        if(!(_loc6_ && _loc2_))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(_loc5_)
                              {
                                 §§goto(addr315);
                              }
                              else
                              {
                                 addr387:
                                 §§push(6);
                                 if(_loc5_)
                                 {
                                    §§goto(addr390);
                                 }
                                 else
                                 {
                                    addr447:
                                    loop3:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          return new §8!E§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                       case 1:
                                          _loc2_ = param1.scroll_target;
                                          if(_loc5_ || _loc3_)
                                          {
                                             if(_loc2_.type == "sprite")
                                             {
                                                if(_loc5_ || _loc2_)
                                                {
                                                   return new §6!G§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                }
                                             }
                                          }
                                          break;
                                       case 2:
                                          _loc3_ = param1.zoom_target;
                                          if(!_loc5_)
                                          {
                                             loop0:
                                             while(true)
                                             {
                                                this.§5%§ = param1.height;
                                                addr155:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc5_ || param1)
                                                      {
                                                         break loop3;
                                                      }
                                                      addr229:
                                                   }
                                                   continue loop0;
                                                   return new §?#§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                }
                                             }
                                             break;
                                          }
                                          if(_loc3_.type == "sprite")
                                          {
                                             §§goto(addr229);
                                          }
                                          break;
                                       case 3:
                                          return new §8!!§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                       case 6:
                                          this.§6m§ = false;
                                          addr147:
                                          if(!_loc6_)
                                          {
                                             addr132:
                                             break;
                                          }
                                          break;
                                       case 8:
                                          this.§[!P§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                          if(!_loc6_)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr147);
                                             }
                                             §§goto(addr132);
                                          }
                                          else
                                          {
                                             addr138:
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             §§goto(addr155);
                                          }
                                          §§goto(addr187);
                                       case 4:
                                          this.§-! § = param1.time * 1000;
                                          §§goto(addr187);
                                       case 5:
                                          this.§[v§ = param1.width;
                                          §§goto(addr172);
                                       case 7:
                                          this.§6m§ = true;
                                          §§goto(addr138);
                                    }
                                    return null;
                                    addr408:
                                 }
                                 §§goto(addr447);
                              }
                           }
                           else
                           {
                              §§push(§^!I§.§;e§);
                              if(!_loc6_)
                              {
                                 addr324:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(3);
                                       if(_loc6_ && _loc2_)
                                       {
                                          addr445:
                                       }
                                       §§goto(addr447);
                                    }
                                    else
                                    {
                                       addr351:
                                       §§push(4);
                                       if(_loc5_ || _loc3_)
                                       {
                                          §§goto(addr447);
                                       }
                                       else
                                       {
                                          §§goto(addr408);
                                       }
                                    }
                                    §§goto(addr447);
                                 }
                                 else
                                 {
                                    §§push(§^!I§.§-2§);
                                    if(!_loc6_)
                                    {
                                       addr342:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!(_loc6_ && _loc2_))
                                          {
                                             §§goto(addr351);
                                          }
                                          else
                                          {
                                             addr405:
                                             §§push(7);
                                             if(_loc6_)
                                             {
                                                §§goto(addr445);
                                             }
                                             §§goto(addr447);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§^!I§.§const§);
                                          if(_loc5_ || param1)
                                          {
                                             addr370:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(5);
                                                   if(_loc6_)
                                                   {
                                                   }
                                                   §§goto(addr447);
                                                }
                                                else
                                                {
                                                   §§goto(addr405);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§^!I§.§2!C§);
                                                if(!_loc6_)
                                                {
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr387);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr405);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§^!I§.§^S§);
                                                      if(_loc5_)
                                                      {
                                                         addr396:
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§goto(addr405);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            addr422:
                                                            if(§^!I§.§"V§ === _loc4_)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  §§push(8);
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            else if(true)
                                                            {
                                                               §§goto(addr447);
                                                               §§push(9);
                                                            }
                                                         }
                                                         §§goto(addr447);
                                                         §§goto(addr447);
                                                      }
                                                   }
                                                   §§goto(addr447);
                                                }
                                             }
                                             §§goto(addr447);
                                          }
                                          §§goto(addr422);
                                       }
                                       §§goto(addr447);
                                    }
                                    §§goto(addr370);
                                 }
                              }
                              §§goto(addr396);
                           }
                           §§goto(addr447);
                        }
                        §§goto(addr342);
                     }
                  }
                  §§goto(addr324);
               }
               §§goto(addr447);
            }
            §§goto(addr324);
         }
         §§goto(addr269);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§'6§);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§'6§);
                     addr83:
                     while(true)
                     {
                        §§pop().dispose();
                        loop4:
                        while(true)
                        {
                           this.§'6§ = null;
                           addr67:
                           addr69:
                           while(!_loc2_)
                           {
                              continue loop4;
                           }
                        }
                     }
                  }
                  addr81:
               }
               while(true)
               {
                  this.§ !7§ = null;
                  if(_loc2_ || this)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr67);
                  §§goto(addr69);
               }
               return;
               addr62:
            }
            §§goto(addr83);
         }
         §§goto(addr62);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§'6§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  this.§'6§ = new Sprite();
                  if(_loc3_)
                  {
                     addr35:
                     §§push(this);
                     §§push(this.§2+§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§2+§ = §§pop();
                  }
                  var _loc2_:* = int(this.§ !7§.length - 1);
                  loop0:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc3_ || param1)
                     {
                        if(§§pop() < 0)
                        {
                           loop1:
                           for(; _loc3_ || param1; if(!(_loc3_ || this))
                           {
                              continue;
                           },if(_loc3_)
                           {
                              §§goto(addr99);
                           },§§goto(addr175))
                           {
                              this.§8!8§();
                              loop2:
                              while(_loc3_ || _loc3_)
                              {
                                 this.§[!0§();
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       continue loop1;
                                    }
                                    continue loop2;
                                    addr99:
                                    this.§]H§();
                                    if(!_loc4_)
                                    {
                                       §§push(this.§2+§ < this.§-! §);
                                       if(_loc3_ || _loc3_)
                                       {
                                          break loop0;
                                       }
                                       addr168:
                                       if(§§pop())
                                       {
                                          break loop2;
                                       }
                                       addr129:
                                       §§push(_loc2_);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(§§pop() - 1);
                                          if(!_loc4_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                       }
                                       _loc2_ = §§pop();
                                       break loop1;
                                    }
                                 }
                                 §§goto(addr129);
                              }
                              this.§ !7§.splice(_loc2_,1);
                              §§goto(addr175);
                           }
                           continue;
                        }
                        §§push(!this.§ !7§[_loc2_].update(this.§2+§,this.§'6§,this.§6! §));
                     }
                     §§goto(addr168);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr35);
      }
      
      private function §]H§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = Starling.§!!F§.§8l§.height;
         §§push(§]!B§.§^F§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§]!B§.§9$§);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc6_)
         {
            §§push(this.§5%§);
            if(_loc5_ || _loc3_)
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
         if(_loc5_ || this)
         {
            §§push(this.§'6§);
            §§push(_loc4_);
            if(_loc5_ || this)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §8!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            Starling.§!!F§.color = this.§[!P§;
         }
      }
      
      private function §[!0§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(this.§2!j§)
            {
               if(_loc3_)
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§'6§.getChildByName(§8!E§.§?!^§) as Sprite;
         if(!(_loc2_ && _loc2_))
         {
            if(_loc1_)
            {
               if(_loc2_)
               {
               }
               §§goto(addr76);
            }
            this.§2!j§ = true;
         }
         addr76:
      }
      
      public function clone(param1:TextureManager) : CutScene
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§^!I§ = null;
         var _loc2_:CutScene = new CutScene(null,null);
         for each(_loc3_ in this.§ !7§)
         {
            if(_loc7_)
            {
               _loc2_.§ !7§.push(_loc3_.clone());
            }
         }
         if(_loc7_)
         {
            _loc2_.§2+§ = this.§2+§;
         }
         loop1:
         while(true)
         {
            _loc2_.§-! § = this.§-! §;
            loop2:
            while(true)
            {
               _loc2_.§[v§ = this.§[v§;
               while(!_loc6_)
               {
                  _loc2_.§5%§ = this.§5%§;
                  loop4:
                  while(!_loc6_)
                  {
                     _loc2_.§6m§ = this.§6m§;
                     do
                     {
                        _loc2_.§[!P§ = this.§[!P§;
                        loop6:
                        while(_loc7_ || this)
                        {
                           _loc2_.§&!W§ = this.§&!W§;
                           while(true)
                           {
                              if(!(_loc6_ && _loc2_))
                              {
                                 continue loop2;
                              }
                              continue loop6;
                              addr102:
                              _loc2_.§6! § = param1;
                              if(_loc6_)
                              {
                                 continue;
                              }
                              §§goto(addr75);
                           }
                           continue loop2;
                        }
                        continue loop4;
                     }
                     while(_loc6_ && _loc3_);
                     
                     return _loc2_;
                  }
               }
               continue loop1;
            }
         }
      }
      
      public function get §^!"§() : String
      {
         return this.§&!W§;
      }
      
      public function set §^!"§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§&!W§ = param1;
         }
      }
   }
}
