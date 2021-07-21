package §3§
{
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §62§.§0!t§;
   import §7R§.Texture;
   import §7r§.§3`§;
   import §[!_§.GhostObject;
   import com.rovio.assets.§>!]§;
   import §default§.§=!Z§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.MovieClip;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §^!E§
   {
       
      
      private var §!!M§:§=!Z§;
      
      private var §<Z§:§3^§;
      
      private var §1M§:Point;
      
      private var §`"6§:Dictionary;
      
      private var §+@§:MovieClip;
      
      public function §^!E§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§`"6§ = new Dictionary();
            do
            {
               super();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§4Q§();
            do
            {
               this.§!!M§.dispose();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function clear() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = null;
         if(!(_loc4_ && _loc3_))
         {
            this.§4Q§();
         }
         var _loc2_:int = 0;
         var _loc3_:* = this.§`"6§;
         for(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc2_)
            {
               if(!(_loc1_ as GhostObject).§!6§)
               {
                  continue;
               }
               if(_loc5_ || this)
               {
                  §§push((_loc1_ as GhostObject).object);
                  if(!_loc4_)
                  {
                     §§push(§§pop().§7M§());
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_ && _loc2_)
                           {
                              continue;
                           }
                           addr92:
                           §§push((_loc1_ as GhostObject).object.§7M§());
                        }
                        §=!X§.§!'§.objects.§9!X§.removeChild(this.§`"6§[_loc1_]);
                        addr102:
                        continue;
                     }
                     §§pop().visible = true;
                     if(_loc4_ && _loc3_)
                     {
                        continue;
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr92);
               }
            }
            §§goto(addr102);
         }
      }
      
      public function init(param1:Vector.<GhostObject>) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§5!B§(param1);
            do
            {
               this.§%6§(param1);
            }
            while(!_loc3_);
            
         }
      }
      
      private function §5!B§(param1:Vector.<GhostObject>) : void
      {
         var _loc21_:Boolean = false;
         var _loc22_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc3_:GhostObject = null;
         var _loc6_:Bitmap = null;
         var _loc7_:Number = NaN;
         var _loc8_:Class = null;
         var _loc9_:Bitmap = null;
         var _loc10_:Matrix = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
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
            if(!(_loc21_ && this))
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
                  addr136:
                  while(true)
                  {
                     _loc2_.right = Math.max(_loc2_.right,_loc3_.x + _loc3_.sprite.width / 2 + _loc4_ / 2 + _loc5_);
                     do
                     {
                        _loc2_.bottom = Math.max(_loc2_.bottom,_loc3_.y + _loc3_.sprite.height / 2 + _loc4_ / 2 + _loc5_);
                     }
                     while(_loc21_ && param1);
                     
                     if(!_loc21_)
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
         _loc6_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         if(_loc22_)
         {
            _loc7_ = Math.max(_loc2_.width / _loc6_.width,_loc2_.height / _loc6_.height);
         }
         _loc8_ = §>!]§.§1!8§("BluePrint");
         if(_loc22_ || _loc2_)
         {
            this.§+@§ = new _loc8_();
         }
         _loc9_ = new Bitmap(new BitmapData(_loc2_.width,_loc2_.height,true,0));
         _loc10_ = new Matrix();
         if(_loc22_ || _loc2_)
         {
            §§push(this.§+@§.width / _loc2_.width);
            loop5:
            while(true)
            {
               §§push(Number(§§pop()));
               while(true)
               {
                  _loc11_ = §§pop();
                  while(true)
                  {
                     §§push(this.§+@§.height / _loc2_.height);
                     if(!(_loc21_ && _loc2_))
                     {
                        continue loop5;
                     }
                     addr328:
                     if(!_loc22_)
                     {
                        break;
                     }
                     _loc12_ = §§pop();
                     while(_loc22_ || _loc2_)
                     {
                        loop11:
                        while(_loc22_ || this)
                        {
                           _loc6_.bitmapData.draw(this.§+@§,_loc10_);
                           if(_loc21_ && param1)
                           {
                              continue;
                           }
                           addr287:
                           if(false)
                           {
                              while(true)
                              {
                                 _loc10_.scale(1 / _loc11_,1 / _loc12_);
                                 continue loop11;
                                 §§goto(addr287);
                              }
                              addr358:
                              _loc13_ = new Bitmap(new BitmapData(_loc2_.width / _loc7_,_loc2_.height / _loc7_,true,0));
                              §§push(_loc22_ || _loc3_);
                              addr289:
                           }
                           else
                           {
                              §§goto(addr358);
                           }
                           if(§§pop())
                           {
                              var _loc19_:int = 0;
                              if(_loc22_)
                              {
                                 loop12:
                                 for each(_loc3_ in param1)
                                 {
                                    (_loc15_ = new Bitmap(§=!X§.§!'§.§7!J§.§"k§(_loc3_.name),"auto",true)).filters = [new GlowFilter(_loc3_.borderColor,1,_loc4_,_loc4_,10)];
                                    _loc16_ = new Bitmap(new BitmapData(_loc15_.width + _loc4_,_loc15_.height + _loc4_,true,0));
                                    if(_loc22_)
                                    {
                                       _loc15_.x = _loc4_ / 2;
                                       while(true)
                                       {
                                          _loc15_.y = _loc4_ / 2;
                                          while(_loc22_ || param1)
                                          {
                                             _loc16_.bitmapData.draw(_loc15_,_loc15_.transform.matrix);
                                             loop15:
                                             for(; _loc22_; while(_loc22_ || param1)
                                             {
                                                _loc16_.bitmapData.draw(_loc15_,_loc15_.transform.matrix,null,BlendMode.ERASE);
                                                if(_loc21_ && this)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr455);
                                             })
                                             {
                                                while(true)
                                                {
                                                   do
                                                   {
                                                      _loc15_.filters = [];
                                                      continue loop15;
                                                   }
                                                   while(false);
                                                   
                                                   _loc17_ = new Point(_loc16_.width / 2,_loc16_.height / 2);
                                                   (_loc18_ = new Matrix()).translate(-_loc17_.x,-_loc17_.y);
                                                   if(_loc22_)
                                                   {
                                                      _loc18_.rotate(_loc3_.rotation);
                                                   }
                                                   while(true)
                                                   {
                                                      _loc18_.translate(_loc3_.x - _loc2_.left,_loc3_.y - _loc2_.top);
                                                      loop20:
                                                      while(!(_loc21_ && this))
                                                      {
                                                         loop21:
                                                         do
                                                         {
                                                            _loc18_.scale(1 / _loc7_,1 / _loc7_);
                                                            while(!_loc21_)
                                                            {
                                                               _loc13_.bitmapData.draw(_loc16_,_loc18_);
                                                               if(!(_loc21_ && _loc2_))
                                                               {
                                                                  continue loop21;
                                                               }
                                                            }
                                                            continue loop20;
                                                         }
                                                         while(false);
                                                         
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr479);
                                 }
                              }
                              if(_loc22_)
                              {
                                 §3`§.§ !`§(_loc13_.bitmapData,§3`§.§>K§.bitmapData);
                                 if(!_loc21_)
                                 {
                                    _loc6_.bitmapData.draw(_loc13_);
                                 }
                              }
                           }
                           _loc14_ = §=!X§.§!'§.§7!J§.§&#§(_loc6_.bitmapData);
                           if(!_loc21_)
                           {
                              this.§!!M§ = new §=!Z§(_loc14_);
                           }
                           loop23:
                           while(true)
                           {
                              §§push(this.§!!M§);
                              loop24:
                              while(true)
                              {
                                 §§pop().x = _loc2_.x;
                                 loop25:
                                 while(true)
                                 {
                                    §§push(this.§!!M§);
                                    continue loop24;
                                    addr644:
                                    if(!(_loc22_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(!_loc22_)
                                    {
                                       continue loop23;
                                    }
                                    this.§1M§ = new Point(_loc2_.x,_loc2_.y);
                                    addr653:
                                    if(!_loc21_)
                                    {
                                       if(_loc22_)
                                       {
                                          return;
                                          addr657:
                                       }
                                       loop30:
                                       while(true)
                                       {
                                          §§push(this.§!!M§);
                                          if(!(_loc21_ && _loc3_))
                                          {
                                             §§push(_loc7_);
                                             if(!_loc21_)
                                             {
                                                §§pop().scaleY = §§pop();
                                                while(true)
                                                {
                                                   if(_loc22_)
                                                   {
                                                      §§goto(addr644);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(this.§!!M§);
                                                         break loop30;
                                                      }
                                                      addr680:
                                                   }
                                                   §§goto(addr653);
                                                }
                                                continue loop25;
                                                addr642:
                                             }
                                             while(true)
                                             {
                                                §§pop().scaleX = §§pop();
                                                continue loop30;
                                             }
                                             addr665:
                                          }
                                          break;
                                       }
                                       while(_loc22_ || this)
                                       {
                                          §§goto(addr665);
                                          §§push(_loc7_);
                                          §§goto(addr666);
                                       }
                                       addr666:
                                       continue loop24;
                                    }
                                    §§goto(addr642);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr289);
         }
      }
      
      private function §%6§(param1:Vector.<GhostObject>) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc2_:GhostObject = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Texture = null;
         var _loc5_:§=!Z§ = null;
         var _loc6_:Number = NaN;
         for each(_loc2_ in param1)
         {
            if(_loc9_ && _loc2_)
            {
               continue;
            }
            if(this.§`"6§[_loc2_] == undefined)
            {
               if(_loc9_ && param1)
               {
                  continue;
               }
               _loc3_ = §=!X§.§!'§.§7!J§.§"k§(_loc2_.name);
               _loc4_ = §=!X§.§!'§.§7!J§.§&#§(_loc3_);
               (_loc5_ = new §=!Z§(_loc4_)).name = _loc2_.name;
               if(_loc10_ || _loc2_)
               {
                  _loc5_.rotation = _loc2_.rotation;
                  loop1:
                  while(true)
                  {
                     _loc5_.x = _loc2_.x;
                     while(true)
                     {
                        _loc5_.y = _loc2_.y;
                        while(!_loc9_)
                        {
                           _loc5_.alpha = 0.5;
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.sprite);
                              loop5:
                              while(true)
                              {
                                 _loc6_ = §§pop().rotation;
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc2_.sprite);
                                    while(true)
                                    {
                                       §§pop().rotation = 0;
                                       addr197:
                                       while(!_loc9_)
                                       {
                                          if(_loc9_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc9_)
                                          {
                                             continue loop1;
                                          }
                                       }
                                       continue loop6;
                                       addr134:
                                       while(true)
                                       {
                                          §§push(_loc2_.sprite);
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             break;
                                          }
                                          continue loop5;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§push(_loc5_);
                  §§push(-_loc2_.sprite.width);
                  if(_loc10_ || param1)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().pivotX = §§pop();
                  §§goto(addr191);
               }
            }
            §§goto(addr235);
         }
      }
      
      private function §5!3§(param1:§0!t§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:GhostObject = param1.target as GhostObject;
         if(_loc4_ || _loc2_)
         {
            if(_loc2_.§!6§)
            {
               loop0:
               while(true)
               {
                  §=!X§.§!'§.objects.§9!X§.addChildAt(this.§`"6§[_loc2_],1);
                  addr89:
                  while(true)
                  {
                     _loc2_.object.§7M§().visible = false;
                     if(!(_loc3_ && param1))
                     {
                        if(_loc4_ || param1)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr31);
               }
            }
            addr31:
            return;
         }
         §§goto(addr89);
      }
      
      public function §;!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§!!M§);
            loop0:
            for(; §§pop(); if(!(_loc2_ || _loc1_))
            {
               continue;
            },§§pop().y = this.§1M§.y,if(!(_loc1_ && _loc1_))
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr69);
               }
               §§goto(addr106);
            })
            {
               while(true)
               {
                  §=!X§.§!'§.objects.§9!X§.addChildAt(this.§!!M§,0);
                  addr106:
                  while(true)
                  {
                     §§push(this.§!!M§);
                     loop3:
                     while(true)
                     {
                        §§pop().x = this.§1M§.x;
                        addr84:
                        while(true)
                        {
                           §§push(this.§!!M§);
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           continue loop3;
                        }
                        addr76:
                        break loop0;
                     }
                  }
                  addr69:
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  §§goto(addr76);
               }
            }
            return;
         }
         §§goto(addr84);
      }
      
      public function §'k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§!!M§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!_loc1_)
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(§§pop())
                     {
                        if(!(_loc1_ && this))
                        {
                           §§push(this.§<Z§);
                           loop2:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 this.§4Q§();
                                 if(!_loc1_)
                                 {
                                    if(_loc1_ && _loc1_)
                                    {
                                       while(!(_loc1_ && _loc1_))
                                       {
                                          §§push(this.§<Z§);
                                          if(!_loc1_)
                                          {
                                             §§pop().play();
                                             break loop2;
                                          }
                                          continue loop2;
                                          §§pop().onComplete = this.§4Q§;
                                       }
                                       continue loop0;
                                    }
                                    if(_loc2_ || this)
                                    {
                                       if(_loc2_)
                                       {
                                          addr52:
                                          break loop1;
                                       }
                                       addr137:
                                       addr117:
                                       this.§<Z§ = §7!E§.§2=§.§<!C§(this.§!!M§,{"y":this.§!!M§.height},{"y":this.§!!M§.y},0.8,§7!E§.§#r§);
                                       while(true)
                                       {
                                          §§push(this.§<Z§);
                                          continue loop2;
                                       }
                                       addr137:
                                    }
                                    §§goto(addr137);
                                 }
                                 break;
                              }
                              §§goto(addr117);
                           }
                           break;
                        }
                        §§goto(addr137);
                     }
                     return;
                     addr105:
                  }
               }
               addr155:
               while(true)
               {
                  §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §4Q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §=!X§.§!'§.objects.§9!X§.removeChild(this.§!!M§);
         }
      }
   }
}
