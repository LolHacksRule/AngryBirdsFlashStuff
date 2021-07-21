package §7&§
{
   import §"_§.§!"8§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §+!-§.§7"#§;
   import §,P§.§'_§;
   import §-&§.GhostObject;
   import §0!%§.Texture;
   import §7t§.§-!7§;
   import com.rovio.assets.§69§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §6!4§
   {
       
      
      private var §]"5§:§7"#§;
      
      private var §-!-§:§=!r§;
      
      private var §"V§:Point;
      
      private var §]!N§:Dictionary;
      
      private var §]!;§:MovieClip;
      
      public function §6!4§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]!N§ = new Dictionary();
         }
         do
         {
            super();
         }
         while(_loc2_ && _loc1_);
         
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§=k§();
            do
            {
               this.§]"5§.dispose();
            }
            while(!(_loc1_ || this));
            
         }
      }
      
      public function clear() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = null;
         if(!(_loc4_ && _loc2_))
         {
            this.§=k§();
         }
         for(_loc1_ in this.§]!N§)
         {
            if(_loc5_)
            {
               if(!(_loc1_ as GhostObject).§%i§)
               {
                  continue;
               }
               if(_loc5_)
               {
                  §§push((_loc1_ as GhostObject).object);
                  if(_loc5_)
                  {
                     §§push(§§pop().§#!Q§());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ && this)
                           {
                              continue;
                           }
                           addr83:
                           (_loc1_ as GhostObject).object.§#!Q§().visible = true;
                           if(!_loc5_)
                           {
                              continue;
                           }
                        }
                        §'_§.§=M§.objects.§[!l§.removeChild(this.§]!N§[_loc1_]);
                        continue;
                     }
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr83);
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!M§(param1);
            do
            {
               this.§>C§(param1);
            }
            while(!(_loc3_ || this));
            
         }
      }
      
      private function §6!M§(param1:Vector.<GhostObject>) : void
      {
         var _loc21_:Boolean = true;
         var _loc22_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:GhostObject = null;
         var _loc6_:Bitmap = null;
         var _loc7_:Number = NaN;
         var _loc8_:Class = null;
         var _loc9_:Bitmap = null;
         var _loc10_:Matrix = null;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Bitmap = null;
         var _loc14_:Texture = null;
         var _loc15_:Bitmap = null;
         var _loc16_:Bitmap = null;
         var _loc17_:Point = null;
         var _loc18_:Matrix = null;
         _loc2_ = new Rectangle(param1[0].x,param1[0].y,0,0);
         var _loc4_:int = 10;
         var _loc5_:int = 50;
         loop0:
         for each(_loc3_ in param1)
         {
            if(_loc21_)
            {
               _loc2_.left = Math.min(_loc2_.left,_loc3_.x - _loc3_.sprite.width / 2 - _loc4_ / 2 - _loc5_);
            }
            loop1:
            while(true)
            {
               _loc2_.top = Math.min(_loc2_.top,_loc3_.y - _loc3_.sprite.height / 2 - _loc4_ / 2 - _loc5_);
               loop2:
               while(true)
               {
                  loop3:
                  while(true)
                  {
                     _loc2_.right = Math.max(_loc2_.right,_loc3_.x + _loc3_.sprite.width / 2 + _loc4_ / 2 + _loc5_);
                     while(!_loc22_)
                     {
                        _loc2_.bottom = Math.max(_loc2_.bottom,_loc3_.y + _loc3_.sprite.height / 2 + _loc4_ / 2 + _loc5_);
                        if(_loc21_ || this)
                        {
                           if(!_loc22_)
                           {
                              if(true)
                              {
                                 break loop3;
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
         _loc6_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         if(_loc21_ || this)
         {
            _loc7_ = Math.max(_loc2_.width / _loc6_.width,_loc2_.height / _loc6_.height);
         }
         _loc8_ = §69§.§ 0§("BluePrint");
         if(_loc21_ || _loc2_)
         {
            this.§]!;§ = new _loc8_();
         }
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         if(_loc21_)
         {
            §§push(this.§]!;§.width / _loc2_.width);
            loop5:
            while(true)
            {
               §§push(Number(§§pop()));
               while(true)
               {
                  _loc11_ = §§pop();
                  addr331:
                  while(true)
                  {
                     §§push(this.§]!;§.height / _loc2_.height);
                     if(_loc21_ || param1)
                     {
                        if(_loc22_ && param1)
                        {
                           break;
                        }
                        §§push(Number(§§pop()));
                     }
                     continue loop5;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr275);
         }
      }
      
      private function §>C§(param1:Vector.<GhostObject>) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§7"#§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(!_loc10_)
            {
               continue;
            }
            if(this.§]!N§[_loc2_] == undefined)
            {
               if(!(_loc10_ || _loc3_))
               {
                  continue;
               }
               _loc3_ = §'_§.§=M§.§8=§.§`d§(_loc2_.name);
               _loc4_ = §'_§.§=M§.§8=§.§%N§(_loc3_);
               (_loc5_ = new §7"#§(_loc4_)).name = _loc2_.name;
               if(!(_loc9_ && this))
               {
                  _loc5_.rotation = _loc2_.rotation;
                  loop1:
                  while(true)
                  {
                     _loc5_.x = _loc2_.x;
                     while(true)
                     {
                        _loc5_.y = _loc2_.y;
                        while(_loc10_)
                        {
                           _loc5_.alpha = 0.5;
                           continue loop1;
                           addr201:
                           if(_loc9_ && _loc2_)
                           {
                              continue;
                           }
                           §§push(_loc2_.sprite);
                           loop7:
                           for(; !(_loc9_ && param1); while(true)
                           {
                              §§push(_loc2_.sprite);
                              if(!(_loc10_ || _loc2_))
                              {
                                 break;
                              }
                              §§pop().rotation = _loc6_;
                              §§goto(addr129);
                           })
                           {
                              §§pop().rotation = 0;
                              loop8:
                              while(true)
                              {
                                 §§push(_loc5_);
                                 §§push(-_loc2_.sprite.width);
                                 if(!_loc9_)
                                 {
                                    §§push(§§pop() / 2);
                                 }
                                 §§pop().pivotX = §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    §§push(-_loc2_.sprite.height);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §§push(§§pop() / 2);
                                    }
                                    §§pop().pivotY = §§pop();
                                    loop10:
                                    while(!(_loc9_ && param1))
                                    {
                                       continue loop7;
                                       while(true)
                                       {
                                          if(_loc10_ || _loc3_)
                                          {
                                             continue loop8;
                                          }
                                          continue loop10;
                                          addr143:
                                          this.§]!N§[_loc2_] = _loc5_;
                                          if(_loc10_)
                                          {
                                             continue loop9;
                                          }
                                       }
                                       continue loop8;
                                    }
                                    addr199:
                                    while(_loc10_)
                                    {
                                       §§goto(addr201);
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           while(true)
                           {
                              _loc6_ = §§pop().rotation;
                              §§goto(addr199);
                              §§goto(addr183);
                           }
                           addr183:
                        }
                     }
                  }
               }
               §§goto(addr192);
            }
            §§goto(addr240);
         }
      }
      
      private function §3!'§(param1:§!"8§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc4_)
         {
            if(_loc2_.§%i§)
            {
               if(_loc4_ || param1)
               {
                  §'_§.§=M§.objects.§[!l§.addChildAt(this.§]!N§[_loc2_],1);
                  addr64:
               }
               do
               {
                  _loc2_.object.§#!Q§().visible = false;
               }
               while(!(_loc4_ || _loc3_));
               
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §[&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§]"5§);
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §'_§.§=M§.objects.§[!l§.addChildAt(this.§]"5§,0);
                  addr95:
                  while(true)
                  {
                     §§push(this.§]"5§);
                     addr67:
                     loop3:
                     while(true)
                     {
                        §§pop().x = this.§"V§.x;
                        addr71:
                        while(!_loc2_)
                        {
                           continue loop3;
                        }
                        continue loop1;
                     }
                  }
               }
               if(!_loc1_)
               {
                  continue;
               }
               §§pop().y = this.§"V§.y;
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     §§goto(addr95);
                  }
                  addr63:
                  break;
               }
               §§goto(addr71);
            }
            return;
         }
         while(true)
         {
            §§push(this.§]"5§);
            if(!(_loc2_ && this))
            {
               §§goto(addr38);
            }
            §§goto(addr67);
         }
         §§goto(addr63);
      }
      
      public function §?7§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§]"5§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop2:
                           while(_loc2_ || _loc2_)
                           {
                              §§push(this.§-!-§);
                              loop3:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    this.§=k§();
                                    if(_loc2_ || this)
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§goto(addr25);
                                          }
                                          continue loop2;
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          §§push(this.§-!-§);
                                          addr117:
                                          while(true)
                                          {
                                             this.§-!-§ = §7I§.§[E§.§ ";§(this.§]"5§,{"y":this.§]"5§.height},{"y":this.§]"5§.y},0.8,§7I§.§%"'§);
                                             continue loop4;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                break;
                                             }
                                             §§goto(addr117);
                                          }
                                          addr85:
                                          while(true)
                                          {
                                             §§push(this.§-!-§);
                                             if(_loc2_)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       addr25:
                                       return;
                                       addr64:
                                    }
                                    while(true)
                                    {
                                       §§pop().onComplete = this.§=k§;
                                       §§goto(addr85);
                                    }
                                 }
                                 §§goto(addr117);
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr25);
                        addr96:
                        §§push(Boolean(§§pop().parent));
                        if(_loc2_ || _loc1_)
                        {
                           continue;
                        }
                        addr155:
                        while(true)
                        {
                           §§pop();
                           continue loop0;
                        }
                        addr155:
                     }
                     addr105:
                  }
               }
               §§goto(addr155);
            }
            addr150:
         }
         while(true)
         {
            §§push(this.§]"5§);
            if(!(_loc1_ && this))
            {
               §§goto(addr96);
            }
            else
            {
               §§goto(addr150);
            }
            §§goto(addr155);
         }
      }
      
      private function §=k§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'_§.§=M§.objects.§[!l§.removeChild(this.§]"5§);
         }
      }
   }
}
