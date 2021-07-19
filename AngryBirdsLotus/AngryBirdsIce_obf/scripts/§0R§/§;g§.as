package §0R§
{
   import §!Y§.§[o§;
   import §-Z§.§?h§;
   import §1n§.§5#§;
   import §^V§.§09§;
   import §^V§.Sprite;
   
   public class §;g§
   {
      
      public static const § ! §:String = "CutScene_Type_Intro";
      
      public static const §=s§:String = "CutScene_Type_Outro";
      
      public static const §%Z§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            § ! § = "CutScene_Type_Intro";
         }
         while(true)
         {
            §=s§ = "CutScene_Type_Outro";
            while(_loc2_)
            {
               §%Z§ = "CutScene_Type_Final_Outro";
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private var §1y§:§5#§;
      
      private var §2!;§:String;
      
      private var §'I§:Vector.<§6! §>;
      
      private var § !A§:Number;
      
      private var §,!6§:Number;
      
      private var §?!#§:Number;
      
      private var §26§:Number;
      
      private var §1-§:Sprite;
      
      private var §7!,§:Boolean = true;
      
      private var §=K§:uint;
      
      private var §null§:Boolean;
      
      private var §0v§:§09§;
      
      private var §?!-§:§09§;
      
      public function §;g§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§6! § = null;
         var _loc4_:Object = null;
         this.§'I§ = new Vector.<§6! §>();
         super();
         this.§ !A§ = 0;
         loop0:
         while(true)
         {
            loop1:
            while(param1)
            {
               §§push(param2);
               loop2:
               while(true)
               {
                  §§push("intro");
                  while(§§pop().search(§§pop()) == -1)
                  {
                     §§push(param2);
                     if(_loc7_)
                     {
                        continue loop2;
                     }
                     §§push("complete");
                     if(!_loc8_)
                     {
                        continue;
                     }
                     if(§§pop().search(§§pop()) != -1)
                     {
                        this.§2!;§ = §=s§;
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                        if(_loc7_ && param2)
                        {
                           break;
                        }
                        if(false)
                        {
                           continue loop1;
                        }
                     }
                     var _loc5_:int = 0;
                     var _loc6_:* = param1;
                     addr127:
                     §§push(§§hasnext(_loc6_,_loc5_));
                     if(_loc8_ || this)
                     {
                        if(§§pop())
                        {
                           _loc4_ = §§nextvalue(_loc5_,_loc6_);
                           _loc3_ = this.§+M§(_loc4_);
                           if(!_loc7_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc8_ || param1)
                                 {
                                    this.§'I§.push(_loc3_);
                                 }
                              }
                           }
                           §§goto(addr127);
                        }
                        if(!(_loc7_ && _loc3_))
                        {
                           if(_loc8_ || _loc3_)
                           {
                              if(!_loc7_)
                              {
                                 _loc5_ = 0;
                                 if(!_loc7_)
                                 {
                                    _loc6_ = this.§'I§;
                                    addr244:
                                    for each(_loc3_ in _loc6_)
                                    {
                                       if(_loc8_ || param2)
                                       {
                                          addr234:
                                          if(_loc3_ is §-g§)
                                          {
                                             (_loc3_ as §-g§).setSize(this.§?!#§,this.§26§);
                                             (_loc3_ as §-g§).§0%§ = this.§7!,§;
                                             addr188:
                                             §§goto(addr244);
                                             addr230:
                                          }
                                          §§push(_loc3_ is §1d§);
                                          if(!_loc7_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   (_loc3_ as §1d§).setSize(this.§?!#§,this.§26§);
                                                   (_loc3_ as §1d§).§1c§ = this.§7!,§;
                                                   if(_loc8_)
                                                   {
                                                      if(false)
                                                      {
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr244);
                                                   }
                                                   addr222:
                                                   §§goto(addr222);
                                                   addr204:
                                                }
                                                §§goto(addr230);
                                             }
                                             §§goto(addr244);
                                          }
                                          §§goto(addr234);
                                       }
                                       §§goto(addr204);
                                    }
                                    addr246:
                                 }
                              }
                              break loop1;
                           }
                           break loop1;
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr244);
                  }
                  this.§2!;§ = § ! §;
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§1-§;
      }
      
      private function §+M§(param1:Object) : §6! §
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         §§push(§6! §.§>r§);
         if(_loc5_ || _loc3_)
         {
            if(§§pop() === _loc4_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  addr301:
               }
            }
            else if(§6! §.§1E§ === _loc4_)
            {
               if(_loc5_)
               {
                  §§push(1);
                  if(_loc6_ && this)
                  {
                  }
               }
               else
               {
                  addr293:
                  §§push(5);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§goto(addr301);
                  }
                  else
                  {
                     addr347:
                  }
               }
            }
            else
            {
               §§push(§6! §.§;!"§);
               if(!_loc6_)
               {
                  if(§§pop() === _loc4_)
                  {
                     §§push(2);
                     if(_loc6_)
                     {
                        addr309:
                     }
                  }
                  else
                  {
                     §§push(§6! §.§>?§);
                     if(_loc5_)
                     {
                        if(§§pop() !== _loc4_)
                        {
                           addr278:
                           if(§6! §.END === _loc4_)
                           {
                              addr352:
                              switch(3)
                              {
                                 case 0:
                                    return new §1d§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                 case 1:
                                    _loc2_ = param1.scroll_target;
                                    if(_loc5_ || _loc2_)
                                    {
                                       if(_loc2_.type == "sprite")
                                       {
                                          if(!(_loc6_ && this))
                                          {
                                             return new §-g§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                          }
                                       }
                                    }
                                    break;
                                 case 2:
                                    _loc3_ = param1.zoom_target;
                                    if(_loc3_.type == "sprite")
                                    {
                                       return new §2[§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                    }
                                    break;
                                 case 3:
                                    return new §9u§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                 case 4:
                                    this.§,!6§ = param1.time * 1000;
                                    break;
                                    addr177:
                                 case 5:
                                    this.§?!#§ = param1.width;
                                    loop0:
                                    while(true)
                                    {
                                       this.§26§ = param1.height;
                                       addr149:
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             break loop0;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    break;
                                 case 6:
                                    this.§7!,§ = false;
                                    addr121:
                                    break;
                                 case 7:
                                    this.§7!,§ = true;
                                    if(_loc5_)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          break;
                                       }
                                       §§goto(addr177);
                                    }
                                    else
                                    {
                                       §§goto(addr149);
                                    }
                                    break;
                                 case 8:
                                    this.§=K§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr121);
                              }
                              return null;
                              §§push(4);
                           }
                           else
                           {
                              if(§6! §.§=-§ === _loc4_)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    §§goto(addr293);
                                 }
                              }
                              else
                              {
                                 addr304:
                                 if(§6! §.§-B§ === _loc4_)
                                 {
                                    §§push(6);
                                    if(!_loc6_)
                                    {
                                       §§goto(addr309);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§6! §.§44§);
                                    if(_loc5_ || this)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          §§push(7);
                                          if(_loc5_ || _loc3_)
                                          {
                                          }
                                          §§goto(addr352);
                                       }
                                       else
                                       {
                                          §§push(§6! §.§2B§);
                                       }
                                       §§goto(addr352);
                                    }
                                    if(§§pop() !== _loc4_)
                                    {
                                       §§goto(addr352);
                                       §§push(9);
                                    }
                                 }
                              }
                              §§goto(addr352);
                              §§goto(addr352);
                           }
                        }
                        §§goto(addr352);
                     }
                     §§goto(addr304);
                  }
               }
               §§goto(addr278);
            }
            §§goto(addr352);
         }
         §§goto(addr278);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§1-§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§1-§);
                     addr81:
                     while(true)
                     {
                        §§pop().dispose();
                        addr82:
                        while(true)
                        {
                           this.§1-§ = null;
                           addr73:
                           while(true)
                           {
                           }
                        }
                     }
                     addr61:
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     return;
                     addr68:
                  }
               }
               while(true)
               {
                  this.§'I§ = null;
                  if(!_loc1_)
                  {
                     continue;
                  }
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr82);
               }
               §§goto(addr68);
            }
            §§goto(addr81);
         }
         §§goto(addr82);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(!this.§1-§)
            {
               if(_loc3_)
               {
                  this.§1-§ = new Sprite();
                  if(_loc4_ && _loc2_)
                  {
                  }
                  addr52:
                  var _loc2_:int = this.§'I§.length - 1;
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc3_ || _loc3_)
                     {
                        if(§§pop() < 0)
                        {
                           if(!(_loc4_ && _loc3_))
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 this.§8A§();
                                 this.§^!G§();
                                 while(!_loc4_)
                                 {
                                    this.§4!B§();
                                    if(_loc3_)
                                    {
                                       return this.§ !A§ < this.§,!6§;
                                    }
                                 }
                                 addr149:
                                 this.§'I§.splice(_loc2_,1);
                                 addr129:
                              }
                              addr130:
                              §§push(_loc2_ - 1);
                              continue;
                           }
                           §§goto(addr129);
                        }
                        else if(!this.§'I§[_loc2_].update(this.§ !A§,this.§1-§,this.§1y§))
                        {
                           §§goto(addr149);
                        }
                     }
                     §§goto(addr130);
                  }
               }
            }
            §§push(this);
            §§push(this.§ !A§);
            if(!(_loc4_ && param1))
            {
               §§push(§§pop() + param1);
            }
            §§pop().§ !A§ = §§pop();
         }
         §§goto(addr52);
      }
      
      private function §4!B§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = §?h§.§ n§.§"C§.height;
         §§push(§[o§.§<T§);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§[o§.§>k§);
         if(_loc6_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§26§);
            if(_loc6_ || _loc1_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc6_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc6_ || _loc1_)
         {
            §§push(this.§1-§);
            §§push(_loc4_);
            if(_loc6_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §8A§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?h§.§ n§.color = this.§=K§;
         }
      }
      
      private function §^!G§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§null§)
            {
               if(_loc3_)
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§1-§.getChildByName(§1d§.§0k§) as Sprite;
         if(_loc3_ || _loc3_)
         {
            if(_loc1_)
            {
               if(_loc2_ && _loc2_)
               {
               }
               §§goto(addr73);
            }
            this.§null§ = true;
         }
         addr73:
      }
      
      public function clone(param1:§5#§) : §;g§
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§6! § = null;
         var _loc2_:§;g§ = new §;g§(null,null);
         for each(_loc3_ in this.§'I§)
         {
            if(!_loc7_)
            {
               _loc2_.§'I§.push(_loc3_.clone());
            }
         }
         _loc2_.§ !A§ = this.§ !A§;
         _loc2_.§,!6§ = this.§,!6§;
         loop1:
         while(true)
         {
            _loc2_.§?!#§ = this.§?!#§;
            _loc2_.§26§ = this.§26§;
            while(true)
            {
               _loc2_.§7!,§ = this.§7!,§;
               while(true)
               {
                  _loc2_.§=K§ = this.§=K§;
                  if(_loc7_)
                  {
                     break;
                  }
                  continue loop1;
                  addr114:
                  _loc2_.§2!;§ = this.§2!;§;
                  do
                  {
                     _loc2_.§1y§ = param1;
                  }
                  while(_loc7_ && _loc2_);
                  
                  if(_loc6_ || param1)
                  {
                     return _loc2_;
                  }
               }
            }
         }
      }
      
      public function get §?g§() : String
      {
         return this.§2!;§;
      }
      
      public function set §?g§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§2!;§ = param1;
         }
      }
   }
}
