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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3@§ = "CutScene_Type_Intro";
            do
            {
               §@e§ = "CutScene_Type_Outro";
               do
               {
                  §5!_§ = "CutScene_Type_Final_Outro";
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§^!I§ = null;
         var _loc4_:Object = null;
         if(!(_loc7_ && _loc3_))
         {
            this.§ !7§ = new Vector.<§^!I§>();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§2+§ = 0;
                  loop2:
                  while(true)
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
                                 if(!_loc8_)
                                 {
                                    continue;
                                 }
                                 if(§§pop().search(§§pop()) != -1)
                                 {
                                    if(!(_loc7_ && param1))
                                    {
                                       if(_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       if(_loc7_ && _loc3_)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          this.§&!W§ = §@e§;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc8_ || this)
                                       {
                                          break loop4;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 var _loc5_:int = 0;
                                 var _loc6_:* = param1;
                                 addr159:
                                 §§push(§§hasnext(_loc6_,_loc5_));
                                 if(_loc8_)
                                 {
                                    if(§§pop())
                                    {
                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                       _loc3_ = this.§4!f§(_loc4_);
                                       if(_loc8_ || this)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc8_)
                                             {
                                                addr154:
                                                this.§ !7§.push(_loc3_);
                                             }
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr154);
                                    }
                                    if(!(_loc7_ && param1))
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && this))
                                          {
                                             _loc5_ = 0;
                                             if(_loc8_)
                                             {
                                                addr185:
                                                _loc6_ = this.§ !7§;
                                                addr295:
                                                for each(_loc3_ in _loc6_)
                                                {
                                                   if(!(_loc7_ && this))
                                                   {
                                                      addr283:
                                                      if(_loc3_ is §6!G§)
                                                      {
                                                         addr284:
                                                         (_loc3_ as §6!G§).setSize(this.§[v§,this.§5%§);
                                                         (_loc3_ as §6!G§).§=k§ = this.§6m§;
                                                         addr225:
                                                         §§goto(addr295);
                                                         addr278:
                                                         addr294:
                                                      }
                                                      §§push(_loc3_ is §8!E§);
                                                      if(!(_loc7_ && _loc3_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr240:
                                                            if(_loc8_ || param1)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  (_loc3_ as §8!E§).setSize(this.§[v§,this.§5%§);
                                                                  (_loc3_ as §8!E§).§;!§ = this.§6m§;
                                                                  addr259:
                                                                  if(_loc8_ || param1)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(false)
                                                                           {
                                                                              §§goto(addr225);
                                                                           }
                                                                           §§goto(addr295);
                                                                        }
                                                                        §§goto(addr278);
                                                                     }
                                                                     §§goto(addr240);
                                                                  }
                                                                  addr259:
                                                                  §§goto(addr259);
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            §§goto(addr294);
                                                         }
                                                         §§goto(addr295);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr259);
                                                }
                                             }
                                             break loop3;
                                          }
                                          break loop3;
                                       }
                                    }
                                    §§goto(addr185);
                                 }
                                 §§goto(addr295);
                              }
                              if(_loc8_)
                              {
                                 this.§&!W§ = §3@§;
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                        if(false)
                        {
                           continue;
                        }
                        §§goto(addr115);
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function get sprite() : Sprite
      {
         return this.§'6§;
      }
      
      private function §4!f§(param1:Object) : §^!I§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(!_loc5_)
         {
            §§push(§^!I§.§ W§);
            if(_loc6_ || this)
            {
               if(§§pop() === _loc4_)
               {
                  if(_loc6_ || _loc2_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                     }
                  }
                  else
                  {
                     addr349:
                     §§push(3);
                     if(!_loc6_)
                     {
                     }
                  }
                  §§goto(addr463);
               }
               else
               {
                  §§push(§^!I§.§[!h§);
                  if(!_loc5_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc6_)
                        {
                           §§push(1);
                           if(!(_loc6_ || _loc2_))
                           {
                              addr370:
                           }
                        }
                        §§goto(addr463);
                     }
                     else
                     {
                        §§push(§^!I§.§-X§);
                        if(!(_loc5_ && _loc3_))
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 addr321:
                                 §§push(2);
                                 if(!(_loc6_ || _loc2_))
                                 {
                                    addr450:
                                 }
                                 §§goto(addr463);
                              }
                              else
                              {
                                 addr367:
                                 §§push(4);
                                 if(_loc6_)
                                 {
                                    §§goto(addr370);
                                 }
                                 else
                                 {
                                    addr461:
                                    §§goto(addr463);
                                 }
                              }
                           }
                           else
                           {
                              §§push(§^!I§.§;e§);
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr340:
                                 if(§§pop() === _loc4_)
                                 {
                                    if(!(_loc5_ && this))
                                    {
                                       §§goto(addr349);
                                    }
                                    else
                                    {
                                       addr385:
                                       §§push(5);
                                       if(_loc6_)
                                       {
                                          §§goto(addr463);
                                       }
                                       else
                                       {
                                          §§goto(addr461);
                                       }
                                    }
                                    §§goto(addr463);
                                 }
                                 else
                                 {
                                    §§push(§^!I§.§-2§);
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr367);
                                          }
                                          else
                                          {
                                             addr442:
                                             §§push(8);
                                             if(!(_loc5_ && param1))
                                             {
                                                §§goto(addr450);
                                             }
                                             §§goto(addr463);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§^!I§.§const§);
                                          if(_loc6_ || param1)
                                          {
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr385);
                                                }
                                                else
                                                {
                                                   addr416:
                                                   §§push(7);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§goto(addr424);
                                                   }
                                                   §§goto(addr463);
                                                }
                                             }
                                             else
                                             {
                                                §§push(§^!I§.§2!C§);
                                                if(!_loc5_)
                                                {
                                                   addr394:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(6);
                                                         if(_loc6_ || this)
                                                         {
                                                            §§goto(addr463);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr424);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr442);
                                                      }
                                                      §§goto(addr463);
                                                   }
                                                   else
                                                   {
                                                      §§push(§^!I§.§^S§);
                                                      if(!_loc6_)
                                                      {
                                                      }
                                                      addr438:
                                                      if(§§pop() === _loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr442);
                                                         }
                                                         else
                                                         {
                                                            addr453:
                                                            §§push(9);
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               §§goto(addr461);
                                                            }
                                                            §§goto(addr463);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr453);
                                                         }
                                                         else
                                                         {
                                                            addr463:
                                                            switch(§§pop())
                                                            {
                                                               case 0:
                                                                  return new §8!E§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                               case 1:
                                                                  _loc2_ = param1.scroll_target;
                                                                  if(_loc6_)
                                                                  {
                                                                     if(_loc2_.type == "sprite")
                                                                     {
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§goto(addr63);
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr63:
                                                                  return new §6!G§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                               case 2:
                                                                  _loc3_ = param1.zoom_target;
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     if(_loc3_.type == "sprite")
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           §§goto(addr235);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr252:
                                                                        }
                                                                     }
                                                                     break;
                                                                  }
                                                                  addr235:
                                                                  return new §?#§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                               case 3:
                                                                  return new §8!!§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                               case 6:
                                                                  this.§6m§ = false;
                                                                  addr160:
                                                                  if(_loc6_)
                                                                  {
                                                                     addr133:
                                                                     break;
                                                                  }
                                                                  break;
                                                               case 7:
                                                                  this.§6m§ = true;
                                                                  addr139:
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     break;
                                                                     addr168:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr160);
                                                                  }
                                                                  break;
                                                               case 8:
                                                                  this.§[!P§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(!(_loc5_ && _loc2_))
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr133);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr176:
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           this.§5%§ = param1.height;
                                                                           §§goto(addr168);
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr139);
                                                                  }
                                                                  addr191:
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr252);
                                                               case 4:
                                                                  this.§-! § = param1.time * 1000;
                                                                  §§goto(addr191);
                                                               case 5:
                                                                  this.§[v§ = param1.width;
                                                                  §§goto(addr176);
                                                            }
                                                            return null;
                                                            §§push(9);
                                                         }
                                                         §§goto(addr463);
                                                      }
                                                      §§goto(addr453);
                                                   }
                                                }
                                             }
                                             §§goto(addr463);
                                          }
                                          §§goto(addr438);
                                       }
                                       §§goto(addr463);
                                    }
                                    §§goto(addr394);
                                 }
                              }
                              if(§§pop() === _loc4_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr416);
                                 }
                                 else
                                 {
                                    §§goto(addr442);
                                 }
                              }
                              else
                              {
                                 §§goto(addr438);
                                 §§push(§^!I§.§"V§);
                              }
                           }
                           §§goto(addr463);
                        }
                        §§goto(addr340);
                     }
                  }
                  §§goto(addr394);
               }
            }
            §§goto(addr438);
         }
         §§goto(addr321);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§'6§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr57:
                     this.§'6§.dispose();
                     loop2:
                     while(true)
                     {
                        this.§'6§ = null;
                        addr44:
                        addr46:
                        while(_loc2_)
                        {
                           continue loop2;
                        }
                     }
                     addr59:
                  }
                  §§goto(addr59);
               }
               while(true)
               {
                  this.§ !7§ = null;
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr44);
                  §§goto(addr46);
               }
               return;
            }
         }
         §§goto(addr57);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            if(!this.§'6§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr35:
                  this.§'6§ = new Sprite();
                  if(_loc4_)
                  {
                     addr41:
                     §§push(this);
                     §§push(this.§2+§);
                     if(_loc4_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§2+§ = §§pop();
                  }
               }
               var _loc2_:int = this.§ !7§.length - 1;
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc3_ && _loc3_))
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           if(§§pop() < 0)
                           {
                              loop1:
                              while(true)
                              {
                                 this.§8!8§();
                                 addr129:
                                 while(_loc4_)
                                 {
                                    this.§[!0§();
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§push(!this.§ !7§[_loc2_].update(this.§2+§,this.§'6§,this.§6! §));
                           }
                        }
                     }
                  }
                  §§goto(addr162);
               }
               return §§pop();
            }
            §§goto(addr41);
         }
         §§goto(addr35);
      }
      
      private function §]H§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:int = Starling.§!!F§.§8l§.height;
         §§push(§]!B§.§^F§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§]!B§.§9$§);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(_loc6_)
         {
            §§push(this.§5%§);
            if(!_loc5_)
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
         if(!(_loc5_ && _loc3_))
         {
            §§push(this.§'6§);
            §§push(_loc4_);
            if(!(_loc5_ && _loc2_))
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
         if(_loc2_ || _loc2_)
         {
            Starling.§!!F§.color = this.§[!P§;
         }
      }
      
      private function §[!0§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
         if(_loc3_)
         {
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  addr53:
                  this.§2!j§ = true;
               }
               return;
            }
         }
         §§goto(addr53);
      }
      
      public function clone(param1:TextureManager) : CutScene
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§^!I§ = null;
         var _loc2_:CutScene = new CutScene(null,null);
         for each(_loc3_ in this.§ !7§)
         {
            if(!(_loc7_ && this))
            {
               _loc2_.§ !7§.push(_loc3_.clone());
            }
         }
         if(!_loc7_)
         {
            _loc2_.§2+§ = this.§2+§;
         }
         while(true)
         {
            _loc2_.§-! § = this.§-! §;
            loop2:
            while(_loc6_ || _loc3_)
            {
               _loc2_.§[v§ = this.§[v§;
               loop3:
               while(true)
               {
                  _loc2_.§5%§ = this.§5%§;
                  loop4:
                  while(!_loc7_)
                  {
                     _loc2_.§6m§ = this.§6m§;
                     do
                     {
                        _loc2_.§[!P§ = this.§[!P§;
                        do
                        {
                           _loc2_.§&!W§ = this.§&!W§;
                           while(_loc6_ || _loc3_)
                           {
                              continue loop3;
                              _loc2_.§6! § = param1;
                              if(!(_loc6_ || this))
                              {
                                 continue;
                              }
                              §§goto(addr84);
                           }
                           continue loop4;
                        }
                        while(_loc7_);
                        
                     }
                     while(!_loc6_);
                     
                     return _loc2_;
                  }
                  continue loop2;
               }
            }
         }
      }
      
      public function get §^!"§() : String
      {
         return this.§&!W§;
      }
      
      public function set §^!"§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!W§ = param1;
         }
      }
   }
}
