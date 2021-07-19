package §3">§
{
   import §!=§.§`b§;
   import §"a§.§!"J§;
   import §"a§.§0!B§;
   import §"a§.§>w§;
   import §'!6§.DisplayObject;
   import §+"Y§.§]g§;
   import §<5§.Texture;
   import §`#§.§#f§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §4"1§ extends DisplayObject implements §]g§
   {
       
      
      private var §,b§:Texture;
      
      private var §["V§:Vector.<§!!k§>;
      
      private var §2!§:Number;
      
      private var §7!J§:Vector.<Number>;
      
      private var §<!"§:Vector.<Number>;
      
      private var §^!S§:§`b§;
      
      private var §+c§:VertexBuffer3D;
      
      private var §[!'§:VertexBuffer3D;
      
      private var §1!2§:VertexBuffer3D;
      
      private var §!"#§:Vector.<uint>;
      
      private var §8C§:IndexBuffer3D;
      
      private var §[!6§:int;
      
      private var §>"8§:int;
      
      private var §-!1§:Number;
      
      protected var §&!H§:Number;
      
      private var §?y§:Number = 0.0;
      
      private var §0!4§:Number;
      
      protected var §8!f§:Number;
      
      protected var §@!J§:Number;
      
      protected var §8$§:Boolean;
      
      protected var §!!]§:String;
      
      protected var §9S§:String;
      
      protected var §%J§:String;
      
      private var §8g§:int = -1;
      
      private var §;3§:Boolean = false;
      
      private var §7!u§:Number = 0.0;
      
      public function §4"1§(param1:Texture, param2:Number, param3:int = 128, param4:String = null, param5:String = null)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super();
            loop0:
            while(true)
            {
               if(param1 == null)
               {
                  §§goto(addr165);
               }
               this.§,b§ = param1;
               loop1:
               while(true)
               {
                  this.§8$§ = param1.premultipliedAlpha;
                  loop2:
                  while(true)
                  {
                     this.§["V§ = new Vector.<§!!k§>(0,false);
                     while(true)
                     {
                        this.§7!J§ = new Vector.<Number>();
                        if(_loc7_ && param1)
                        {
                           break;
                           addr105:
                        }
                        this.§<!"§ = new Vector.<Number>();
                        while(true)
                        {
                           if(_loc8_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                        continue loop0;
                        addr72:
                        if(_loc7_ && param1)
                        {
                           continue;
                        }
                        if(_loc7_)
                        {
                           continue loop2;
                        }
                        this.§-!1§ = param2;
                        if(_loc8_)
                        {
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 this.§0!4§ = 0;
                                 if(!_loc7_)
                                 {
                                    addr39:
                                    if(!(_loc8_ || this))
                                    {
                                       while(true)
                                       {
                                          if(!(_loc7_ && param2))
                                          {
                                             this.§!"#§ = new Vector.<uint>(0);
                                             if(_loc8_ || param3)
                                             {
                                                §§goto(addr72);
                                             }
                                             break;
                                          }
                                          addr165:
                                          throw new ArgumentError("texture must not be null");
                                          §§goto(addr39);
                                       }
                                    }
                                    else
                                    {
                                       addr197:
                                       addr219:
                                       addr90:
                                    }
                                    continue;
                                    return;
                                 }
                                 break;
                              }
                              addr214:
                              this.§70§(param3);
                              if(!_loc8_)
                              {
                                 loop8:
                                 while(param3 > 0)
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       if(_loc8_)
                                       {
                                          §§goto(addr214);
                                       }
                                       else
                                       {
                                          addr314:
                                          while(true)
                                          {
                                             §§push(this);
                                             if(_loc8_ || param3)
                                             {
                                                §§push(param4);
                                                if(_loc8_ || this)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr254:
                                                            §§pop();
                                                            if(_loc8_ || param2)
                                                            {
                                                               addr262:
                                                               if(!this.§8$§)
                                                               {
                                                                  addr289:
                                                                  §§pop().§!!]§ = Context3DBlendFactor.SOURCE_ALPHA;
                                                                  continue loop8;
                                                               }
                                                               §§goto(addr289);
                                                            }
                                                            §§push(Context3DBlendFactor.ONE);
                                                            if(_loc8_ || param1)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr289);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                §§goto(addr289);
                                             }
                                             §§goto(addr262);
                                          }
                                          addr314:
                                       }
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr219);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr314);
                     }
                     §§push(this);
                     if(!_loc7_)
                     {
                        §§push(param5);
                        if(_loc8_)
                        {
                           §§push(§§pop());
                           if(_loc8_ || this)
                           {
                              if(!§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    addr309:
                                    §§pop();
                                    §§push(Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);
                                 }
                              }
                           }
                           §§pop().§9S§ = §§pop();
                           §§goto(addr314);
                        }
                     }
                     §§goto(addr309);
                  }
               }
            }
         }
         §§goto(addr314);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§+c§)
            {
               loop0:
               while(true)
               {
                  this.§+c§.dispose();
                  addr127:
                  addr103:
                  while(true)
                  {
                  }
                  loop2:
                  while(true)
                  {
                     if(!(_loc1_ || _loc1_))
                     {
                        continue loop0;
                     }
                     this.§[!'§.dispose();
                     loop3:
                     for(; !(_loc2_ && _loc2_); while(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr49);
                     })
                     {
                        while(true)
                        {
                           if(!this.§1!2§)
                           {
                              while(true)
                              {
                                 if(this.§8C§)
                                 {
                                    while(true)
                                    {
                                       this.§8C§.dispose();
                                       addr66:
                                       while(true)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                    }
                                    addr63:
                                 }
                                 while(true)
                                 {
                                    this.§7!J§ = null;
                                    loop11:
                                    while(true)
                                    {
                                       this.§<!"§ = null;
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop11;
                                          }
                                          if(_loc2_)
                                          {
                                             break;
                                          }
                                          if(_loc1_)
                                          {
                                             continue;
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                              }
                              addr49:
                           }
                           while(true)
                           {
                              this.§1!2§.dispose();
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr127);
                  }
               }
            }
            while(true)
            {
               if(this.§[!'§)
               {
                  §§goto(addr103);
               }
               §§goto(addr74);
               §§goto(addr127);
            }
         }
         §§goto(addr127);
      }
      
      protected function createParticle() : §!!k§
      {
         return new §!!k§();
      }
      
      protected function initParticle(param1:§!!k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            param1.x = this.§8!f§;
            while(true)
            {
               param1.y = this.§@!J§;
               loop1:
               while(true)
               {
                  param1.§42§ = 0;
                  loop2:
                  while(true)
                  {
                     param1.§4!3§ = 1;
                     while(true)
                     {
                        param1.red = Math.random();
                        while(!_loc3_)
                        {
                           if(_loc2_)
                           {
                              param1.green = Math.random();
                              while(_loc2_)
                              {
                                 continue loop2;
                              }
                              continue;
                              addr55:
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            addr105:
         }
         loop6:
         while(true)
         {
            param1.blue = Math.random();
            while(_loc2_)
            {
               param1.alpha = 0;
               if(_loc3_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break loop6;
               }
               §§goto(addr105);
            }
            §§goto(addr55);
         }
      }
      
      protected function advanceParticle(param1:§!!k§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            §§push(param1);
            §§push(param1.y);
            if(_loc4_)
            {
               §§push(param2);
               if(_loc4_ || this)
               {
                  §§push(§§pop() * 250);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            while(true)
            {
               §§push(param1);
               §§push(1);
               §§push(param1.§42§);
               if(_loc4_)
               {
                  §§push(§§pop() / param1.§4!3§);
               }
               §§pop().alpha = §§pop() - §§pop();
               addr105:
               while(true)
               {
                  param1.scaleX = 1 - param1.alpha;
               }
               addr47:
               if(!_loc4_)
               {
                  continue;
               }
               return;
               addr59:
            }
         }
         while(true)
         {
            param1.scaleY = 1 - param1.alpha;
            while(!(_loc3_ && _loc3_))
            {
               §§push(param1);
               §§push(param1.§42§);
               if(_loc4_)
               {
                  §§push(§§pop() + param2);
               }
               §§pop().§42§ = §§pop();
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(_loc4_)
               {
                  §§goto(addr47);
               }
               §§goto(addr105);
            }
         }
         §§goto(addr59);
      }
      
      private function §70§(param1:int) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         §§push(this.§85§);
         if(!_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§85§);
         if(_loc8_ || this)
         {
            §§push(int(§§pop() + param1));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§`b§;
         (_loc4_ = new §`b§(4)).setTexCoords(0,0,0);
         if(_loc8_)
         {
            _loc4_.setTexCoords(1,1,0);
            while(true)
            {
               _loc4_.setTexCoords(2,0,1);
               while(true)
               {
                  _loc4_.setTexCoords(3,1,1);
                  while(_loc8_ || param1)
                  {
                     this.§,b§.adjustVertexData(_loc4_,0,4);
                     while(true)
                     {
                        §§goto(addr75);
                     }
                  }
               }
               if(_loc8_ || _loc2_)
               {
                  if(false)
                  {
                     addr75:
                     §§goto(addr123);
                  }
                  addr123:
                  while(true)
                  {
                     this.§["V§.fixed = false;
                     continue loop3;
                  }
                  §§push(_loc2_);
                  if(!_loc9_)
                  {
                     §§push(int(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  loop6:
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc8_)
                     {
                        if(!(_loc9_ && _loc2_))
                        {
                           §§push(_loc3_);
                           if(_loc8_ || this)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop7:
                                 while(_loc8_ || _loc2_)
                                 {
                                    this.§["V§.fixed = true;
                                    loop8:
                                    while(!(_loc9_ && _loc2_))
                                    {
                                       this.§!"#§.fixed = true;
                                       for(; !(_loc9_ && param1); this.§;3§ = true,if(!(_loc9_ && _loc2_))
                                       {
                                          continue loop8;
                                       })
                                       {
                                          if(_loc8_)
                                          {
                                             if(!(_loc9_ && _loc2_))
                                             {
                                                continue;
                                             }
                                             loop15:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr258:
                                                      loop23:
                                                      while(true)
                                                      {
                                                         if(_loc8_ || this)
                                                         {
                                                            §§push(3);
                                                            while(true)
                                                            {
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  if(§§pop() >= §§pop())
                                                                  {
                                                                     if(_loc8_ || this)
                                                                     {
                                                                        this.§^!S§.append(_loc4_);
                                                                     }
                                                                     while(_loc9_ && param1)
                                                                     {
                                                                        loop11:
                                                                        while(true)
                                                                        {
                                                                           this.§["V§.push(this.createParticle());
                                                                           addr341:
                                                                           addr348:
                                                                           while(true)
                                                                           {
                                                                              §§push(0);
                                                                              addr324:
                                                                              loop13:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc8_ || _loc2_)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    continue loop15;
                                                                                 }
                                                                                 addr345:
                                                                                 while(true)
                                                                                 {
                                                                                    break loop13;
                                                                                 }
                                                                                 continue loop23;
                                                                              }
                                                                           }
                                                                           addr348:
                                                                           while(true)
                                                                           {
                                                                              _loc6_ = §§pop();
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                     }
                                                                     this.§!"#§.push(_loc6_,_loc6_ + 1,_loc6_ + 2,_loc6_ + 1,_loc6_ + 3,_loc6_ + 2);
                                                                     break loop8;
                                                                     addr285:
                                                                  }
                                                                  else
                                                                  {
                                                                     addr321:
                                                                  }
                                                                  this.§7!J§.push(0);
                                                                  while(true)
                                                                  {
                                                                     this.§<!"§.push(0);
                                                                     addr303:
                                                                     while(true)
                                                                     {
                                                                        _loc7_++;
                                                                        break loop7;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr348);
                                                               }
                                                            }
                                                            addr266:
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                      addr297:
                                                   }
                                                }
                                                §§goto(addr341);
                                             }
                                          }
                                          §§goto(addr303);
                                       }
                                       continue loop6;
                                       if(_loc9_ && _loc2_)
                                       {
                                          continue;
                                       }
                                       if(!_loc8_)
                                       {
                                          continue loop7;
                                       }
                                       if(_loc8_ || _loc2_)
                                       {
                                          break loop6;
                                       }
                                       §§goto(addr285);
                                    }
                                    _loc5_++;
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    if(!_loc9_)
                                    {
                                       §§goto(addr297);
                                    }
                                    §§goto(addr321);
                                 }
                              }
                              else
                              {
                                 §§push(_loc5_);
                              }
                              §§goto(addr345);
                           }
                           §§goto(addr266);
                        }
                        §§goto(addr348);
                     }
                     §§goto(addr258);
                  }
                  return;
               }
            }
         }
         §§goto(addr95);
      }
      
      private function §#!T§(param1:Context3D) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§;3§);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc4_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr42);
                  }
               }
               else
               {
                  if(param1 == null)
                  {
                     if(!_loc4_)
                     {
                        throw new §#f§();
                     }
                     §§goto(addr42);
                  }
                  §§goto(addr42);
               }
               §§goto(addr42);
            }
            return §§pop();
         }
         addr42:
         §§push(this.§^!S§.§2"M§);
         if(_loc3_)
         {
            §§push(int(§§pop() / 4));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            if(this.§+c§)
            {
               if(!(_loc4_ && this))
               {
                  this.§+c§.dispose();
               }
               while(true)
               {
               }
               addr264:
            }
            loop1:
            while(true)
            {
               if(this.§[!'§)
               {
                  while(true)
                  {
                     this.§[!'§.dispose();
                     addr250:
                     while(true)
                     {
                     }
                     addr185:
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     this.§[!'§.uploadFromVector(this.§^!S§.§,e§,0,_loc2_ * 4);
                     loop14:
                     for(; _loc3_; if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     },if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                           §§goto(addr105);
                        }
                        §§goto(addr250);
                     },§§goto(addr242))
                     {
                        if(!_loc4_)
                        {
                           addr156:
                           if(_loc3_ || this)
                           {
                              if(_loc4_)
                              {
                                 continue loop1;
                              }
                              this.§1!2§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§1!-§);
                              loop15:
                              while(true)
                              {
                                 this.§1!2§.uploadFromVector(this.§^!S§.§['§,0,_loc2_ * 4);
                                 loop16:
                                 do
                                 {
                                    if(_loc3_)
                                    {
                                       this.§8C§ = param1.createIndexBuffer(_loc2_ * 6);
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue loop14;
                                          }
                                          continue loop15;
                                          addr105:
                                          this.§8C§.uploadFromVector(this.§!"#§,0,_loc2_ * 6);
                                          if(!_loc4_)
                                          {
                                             continue loop16;
                                          }
                                       }
                                       continue loop14;
                                    }
                                    loop13:
                                    while(_loc3_)
                                    {
                                       addr178:
                                       if(!(_loc4_ && param1))
                                       {
                                          §§goto(addr185);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             this.§+c§.uploadFromByteArray(this.§^!S§.§@T§,0,0,_loc2_ * 4);
                                             break loop13;
                                             §§goto(addr178);
                                          }
                                          addr216:
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§[!'§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§""U§);
                                       §§goto(addr176);
                                    }
                                    addr176:
                                 }
                                 while(_loc4_ && param1);
                                 
                                 §§goto(addr78);
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§1!2§.dispose();
                                 addr242:
                                 loop6:
                                 while(true)
                                 {
                                    addr217:
                                    while(true)
                                    {
                                       if(this.§8C§)
                                       {
                                          while(true)
                                          {
                                             this.§8C§.dispose();
                                             break loop14;
                                          }
                                          addr221:
                                       }
                                       addr206:
                                       while(true)
                                       {
                                          this.§+c§ = param1.createVertexBuffer(_loc2_ * 4,§`b§.§5!O§);
                                          break loop14;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              addr239:
                           }
                           §§goto(addr216);
                        }
                        §§goto(addr221);
                     }
                     while(true)
                     {
                        §§goto(addr206);
                     }
                  }
               }
               while(true)
               {
                  if(this.§1!2§)
                  {
                     §§goto(addr239);
                  }
                  §§goto(addr217);
                  §§goto(addr250);
               }
            }
         }
         addr78:
         return true;
      }
      
      public function start(param1:Number = 1.7976931348623157E308) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            if(this.§-!1§ != 0)
            {
               if(_loc2_ || _loc3_)
               {
                  this.§0!4§ = param1;
               }
            }
         }
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§0!4§ = 0;
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Matrix = §'!D§(param1);
         var _loc4_:Point = _loc3_.transformPoint(new Point(x,y));
         if(_loc6_)
         {
            if(param2 != null)
            {
               loop0:
               while(true)
               {
                  param2.x = _loc4_.x;
                  while(true)
                  {
                     param2.y = _loc4_.y;
                     loop2:
                     for(; !(_loc5_ && _loc3_); for(; !(_loc5_ && this); param2.height = 0,if(!(_loc5_ && this))
                     {
                        return param2;
                     })
                     {
                        if(_loc6_)
                        {
                           continue;
                        }
                     })
                     {
                        if(!(_loc6_ || this))
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           param2.width = 0;
                           continue loop2;
                        }
                     }
                  }
               }
            }
            return new Rectangle(_loc4_.x,_loc4_.y);
         }
         §§goto(addr103);
      }
      
      public function § "@§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.advanceTime(param1);
         }
         do
         {
            this.§ !B§(null);
         }
         while(_loc2_);
         
      }
      
      public function advanceTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§7!u§ = param1;
         }
      }
      
      private function § !B§(param1:Matrix3D) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function § ![§(param1:Matrix3D) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§!!k§ = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < this.§[!6§)
         {
            _loc3_ = this.§["V§[_loc2_];
            if(_loc5_)
            {
               this.§7!J§[_loc2_ * 3] = _loc3_.x;
            }
            loop1:
            while(true)
            {
               while(true)
               {
                  this.§7!J§[_loc2_ * 3 + 1] = _loc3_.y;
                  do
                  {
                     _loc2_++;
                  }
                  while(!(_loc5_ || _loc3_));
                  
                  if(_loc5_)
                  {
                     if(true)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
               continue loop0;
            }
         }
         if(!(_loc4_ && _loc2_))
         {
            param1.transformVectors(this.§7!J§,this.§<!"§);
         }
      }
      
      override public function render(param1:§>w§, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            this.§ !B§(param1.§=n§);
            loop0:
            while(true)
            {
               loop1:
               while(this.§>"8§ != 0)
               {
                  while(true)
                  {
                     §§push(param2);
                     if(!_loc7_)
                     {
                        §§push(§§pop() * this.alpha);
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     param2 = §§pop();
                     if(_loc6_)
                     {
                        break;
                     }
                     if(_loc6_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
                  if(!_loc6_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  §§push(§0!B§);
                  §§push(param2 == 1);
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(!§§pop());
                  }
                  §§push(§§pop().§[!P§(§§pop(),this.§,b§.mipMapping,false,this.§%J§,true));
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop());
                  }
                  var _loc3_:* = §§pop();
                  var _loc4_:Context3D;
                  if((_loc4_ = param1.§;"-§) == null)
                  {
                     if(_loc6_ || this)
                     {
                        return;
                     }
                  }
                  else
                  {
                     var _loc5_:Vector.<Number> = !!this.§8$§ ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
                     if(_loc6_ || _loc3_)
                     {
                        if(param1.§extends§ != this.§8g§)
                        {
                           loop4:
                           while(true)
                           {
                              this.§70§(0);
                              loop5:
                              while(true)
                              {
                                 this.§8g§ = param1.§extends§;
                                 addr410:
                                 while(true)
                                 {
                                    addr281:
                                    if(_loc7_ && param2)
                                    {
                                       continue;
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop4;
                                    }
                                    _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
                                    loop20:
                                    while(true)
                                    {
                                       if(_loc6_ || param2)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr250:
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   _loc4_.drawTriangles(this.§8C§,0,this.§>"8§ * 2);
                                                   continue;
                                                }
                                                addr404:
                                                while(true)
                                                {
                                                   this.§1!2§.uploadFromVector(this.§^!S§.§['§,0,this.§>"8§ * 4);
                                                   addr377:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      addr357:
                                                      while(true)
                                                      {
                                                         _loc4_.setBlendFactors(this.§!!]§,this.§9S§);
                                                         while(true)
                                                         {
                                                            _loc4_.setProgram(§!"J§.§1&§.§ z§(_loc3_));
                                                            addr356:
                                                            while(true)
                                                            {
                                                               _loc4_.setTextureAt(0,this.§,b§.getBase(_loc4_));
                                                               addr348:
                                                               while(true)
                                                               {
                                                                  _loc4_.setVertexBufferAt(0,this.§1!2§,§`b§.§%!V§,Context3DVertexBufferFormat.FLOAT_3);
                                                                  break loop20;
                                                               }
                                                            }
                                                            addr274:
                                                            while(!(_loc7_ && _loc3_))
                                                            {
                                                               §§goto(addr281);
                                                               continue loop20;
                                                            }
                                                         }
                                                         continue loop10;
                                                      }
                                                   }
                                                }
                                             }
                                             break;
                                          }
                                          while(!(_loc7_ && this))
                                          {
                                             _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§=n§,true);
                                          }
                                          continue loop5;
                                          addr301:
                                       }
                                       §§goto(addr274);
                                    }
                                    while(true)
                                    {
                                       if(!_loc7_)
                                       {
                                          while(true)
                                          {
                                             _loc4_.setVertexBufferAt(1,this.§+c§,§`b§.§&"I§,Context3DVertexBufferFormat.FLOAT_2);
                                             §§goto(addr319);
                                          }
                                          addr339:
                                       }
                                       break;
                                       §§goto(addr250);
                                    }
                                    §§goto(addr356);
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(!this.§#!T§(_loc4_))
                           {
                              §§goto(addr393);
                           }
                           §§goto(addr357);
                           §§goto(addr410);
                        }
                     }
                     §§goto(addr339);
                  }
                  §§goto(addr104);
               }
               return;
            }
         }
         §§goto(addr39);
      }
      
      public function get §[9§() : Boolean
      {
         return false;
      }
      
      public function get §85§() : int
      {
         return this.§^!S§.§2"M§ / 4;
      }
      
      public function get §'t§() : int
      {
         return this.§[!6§;
      }
      
      public function get §6w§() : Number
      {
         return this.§-!1§;
      }
      
      public function set §6w§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§-!1§ = param1;
         }
      }
      
      public function get §4!=§() : Number
      {
         return this.§8!f§;
      }
      
      public function set §4!=§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8!f§ = param1;
         }
      }
      
      public function get §,!h§() : Number
      {
         return this.§@!J§;
      }
      
      public function set §,!h§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§@!J§ = param1;
         }
      }
      
      public function get texture() : Texture
      {
         return this.§,b§;
      }
   }
}
