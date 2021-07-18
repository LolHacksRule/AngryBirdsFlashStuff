package §7t§
{
   import §"_§.§!"8§;
   import §&!P§.§^!!§;
   import §+!-§.Sprite;
   import §,!g§.§"!P§;
   import §,P§.§'_§;
   import §-&§.GhostObject;
   import §1" §.§!!2§;
   import §1" §.§#!j§;
   import §;" §.§7!9§;
   import §<!a§.b2Vec2;
   import §@y§.§0"4§;
   import §^!k§.§;!T§;
   import §^!k§.§return§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<^§
   {
      
      private static const §9s§:int = 15;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §9s§ = 15;
         }
      }
      
      private var §2s§;
      
      private var §,E§;
      
      private var §==§:BitmapData;
      
      public function §<^§(param1:*)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§return§ = null;
         if(_loc4_ || _loc3_)
         {
            super();
            if(!_loc3_)
            {
               if(param1 is String)
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     _loc2_ = §#!j§.§[E§.§<!_§.§"p§();
                     if(_loc4_ || _loc2_)
                     {
                        this.setObject(_loc2_.getItemByName(param1));
                        loop0:
                        while(true)
                        {
                           loop1:
                           while(this.§,E§ == null)
                           {
                              loop2:
                              while(true)
                              {
                                 this.setObject(_loc2_.§+!m§().§9"=§(param1));
                                 while(true)
                                 {
                                    if(!this.§,E§)
                                    {
                                       break loop1;
                                    }
                                    if(!(_loc3_ && param1))
                                    {
                                       (this.§,E§ as §;!T§).addEventListener(§!"8§.§9!`§,this.§;!S§);
                                    }
                                    if(_loc4_ || param1)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             if(true)
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                           §§goto(addr136);
                        }
                     }
                     §§goto(addr109);
                  }
               }
               else
               {
                  this.setObject(param1);
               }
            }
         }
         addr136:
      }
      
      public function get visible() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,E§ is §;!T§);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  while(this.§,E§.hasOwnProperty("visible"))
                  {
                     if(_loc2_ || _loc1_)
                     {
                        if(!(_loc1_ && this))
                        {
                           return this.§,E§.visible;
                        }
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr122:
                        while(true)
                        {
                           §§push(§#!j§.§[E§.§<!_§.§"p§().§+!m§().isOpen());
                           addr85:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              §§goto(addr86);
                           }
                        }
                     }
                     else
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           break;
                        }
                        addr115:
                        §§goto(addr119);
                        §§push(Boolean(this.§,E§.visible));
                     }
                     §§goto(addr119);
                  }
                  §§push(true);
                  if(!_loc1_)
                  {
                     if(_loc2_ || _loc1_)
                     {
                        if(_loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr85);
                  }
                  addr86:
                  loop3:
                  while(!(_loc2_ || _loc2_))
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           break loop3;
                        }
                        while(true)
                        {
                           §§pop();
                           continue loop5;
                        }
                     }
                  }
                  return §§pop();
               }
               §§goto(addr115);
            }
            §§goto(addr119);
         }
         §§goto(addr122);
      }
      
      public function setObject(param1:*) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != this.§,E§)
            {
               do
               {
                  this.§,E§ = param1;
                  do
                  {
                     this.§==§ = null;
                  }
                  while(!_loc3_);
                  
               }
               while(!(_loc3_ || _loc2_));
               
               addr62:
            }
            return;
         }
         §§goto(addr62);
      }
      
      public function get object() : *
      {
         return this.§,E§;
      }
      
      private function §;!S§(param1:§!"8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2s§ = this.§,E§;
         }
         do
         {
            this.§2s§.removeEventListener(§!"8§.§9!`§,this.§;!S§);
            do
            {
               this.setObject(§#!j§.§[E§.§3d§.§3!^§()[0]);
            }
            while(!(_loc3_ || _loc2_));
            
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      public function get position() : Point
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc1_:Point = null;
         var _loc2_:§7a§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§^!!§ = null;
         var _loc5_:int = 0;
         var _loc6_:§7a§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§0"4§ = null;
         var _loc10_:§;!T§ = null;
         if(_loc11_ || _loc2_)
         {
            §§push(this.§,E§ is §7a§);
            if(_loc11_ || this)
            {
               if(§§pop())
               {
                  if(!_loc12_)
                  {
                     §§push(§!!2§.§[E§.§'%§(this.§,E§));
                     if(!(_loc12_ && _loc2_))
                     {
                        §§push(!§§pop());
                        if(!(_loc12_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(!(_loc12_ && this))
                              {
                                 addr95:
                                 §§pop();
                                 if(!(_loc12_ && _loc2_))
                                 {
                                    addr103:
                                    §§push((this.§,E§ as §7a§).§0"&§());
                                    if(!_loc11_)
                                    {
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr112);
                              }
                              §§push(!§§pop());
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr112);
               }
               else
               {
                  §§push(this.§,E§ is GhostObject);
                  if(!_loc12_)
                  {
                     if(§§pop())
                     {
                        if(!_loc12_)
                        {
                           _loc7_ = this.§,E§ as GhostObject;
                           _loc8_ = new Point(_loc7_.§4U§,_loc7_.§5!Y§);
                           _loc1_ = §'_§.§=M§.§4!5§(_loc8_.x,_loc8_.y);
                        }
                        else
                        {
                           addr365:
                           _loc1_ = (_loc10_ = this.§,E§ as §;!T§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
                        }
                        §§goto(addr111);
                     }
                     else
                     {
                        §§push(this.§,E§ is §0"4§);
                        if(_loc11_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc12_ && _loc2_))
                              {
                                 _loc1_ = (_loc9_ = this.§,E§ as §0"4§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
                                 §§goto(addr111);
                              }
                              else
                              {
                                 §§goto(addr365);
                              }
                           }
                           else
                           {
                              §§push(this.§,E§ is §;!T§);
                              if(!_loc12_)
                              {
                                 addr362:
                                 if(§§pop())
                                 {
                                    if(_loc11_)
                                    {
                                       §§goto(addr365);
                                    }
                                    else
                                    {
                                       _loc1_ = §'_§.§=M§.§4!5§(this.§,E§.objectPosition.x,this.§,E§.objectPosition.y);
                                       addr440:
                                       §§goto(addr111);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§,E§ is DisplayObject);
                                    if(_loc11_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc11_)
                                          {
                                             _loc1_ = this.§,E§.parent.localToGlobal(new Point(this.§,E§.x,this.§,E§.y));
                                             §§goto(addr111);
                                          }
                                          else
                                          {
                                             §§goto(addr440);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§,E§ is Point);
                                          if(!(_loc12_ && this))
                                          {
                                             addr418:
                                             if(§§pop())
                                             {
                                                if(_loc11_)
                                                {
                                                   §§push(§'_§.§=M§);
                                                   if(!_loc12_)
                                                   {
                                                      _loc1_ = §§pop().§4!5§(this.§,E§.x,this.§,E§.y);
                                                   }
                                                   §§goto(addr111);
                                                }
                                                else
                                                {
                                                   §§goto(addr440);
                                                }
                                             }
                                             else
                                             {
                                                §§push(this.§,E§ is §7!9§);
                                             }
                                             §§goto(addr111);
                                          }
                                       }
                                       §§goto(addr111);
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr440);
                                    }
                                    §§goto(addr111);
                                 }
                                 §§goto(addr111);
                              }
                              §§goto(addr418);
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr111);
                  }
                  §§goto(addr362);
               }
               if(!_loc12_)
               {
                  if(_loc3_ == null)
                  {
                     while(true)
                     {
                        this.setObject(this.§2s§);
                        this.§2s§.addEventListener(§!"8§.§9!`§,this.§;!S§);
                        §§goto(addr251);
                     }
                  }
               }
               else if(false)
               {
                  addr251:
                  while(true)
                  {
                     this.§2s§ = null;
                     if(!_loc12_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return this.position;
               }
               return §'_§.§=M§.§4!5§(_loc3_.x,_loc3_.y);
            }
            §§goto(addr95);
         }
         §§goto(addr103);
      }
      
      public function get x() : Number
      {
         return this.position.x;
      }
      
      public function get y() : Number
      {
         return this.position.y;
      }
      
      public function §'!#§() : BitmapData
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:§7a§ = null;
         var _loc3_:* = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:* = NaN;
         var _loc9_:Matrix = null;
         if(!(_loc10_ && this))
         {
            _loc1_ = 5;
            if(_loc11_)
            {
               if(this.§,E§ is §7a§)
               {
                  if(_loc11_)
                  {
                     addr60:
                     _loc2_ = this.§,E§ as §7a§;
                     if(!_loc10_)
                     {
                        §§push(_loc2_.getName());
                        if(!_loc10_)
                        {
                           §§push(§§pop());
                        }
                        _loc3_ = §§pop();
                     }
                     _loc4_ = §'_§.§=M§.§8=§.§`d§(_loc3_);
                     _loc5_ = new Bitmap(_loc4_,"auto",true);
                     _loc6_ = _loc2_.§#!Q§();
                     _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
                     if(_loc11_)
                     {
                        §§push(§"!P§.§#X§);
                        if(_loc11_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc8_ = §§pop();
                     }
                     (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
                     if(_loc11_)
                     {
                        _loc9_.rotate(_loc6_.rotation);
                        loop0:
                        while(true)
                        {
                           _loc9_.scale(_loc8_,_loc8_);
                           while(true)
                           {
                              _loc5_.transform.matrix = _loc9_;
                              loop2:
                              while(true)
                              {
                                 _loc5_.x += _loc5_.width / 2;
                                 while(true)
                                 {
                                    _loc5_.y += _loc5_.height / 2;
                                    addr273:
                                    while(_loc11_)
                                    {
                                       this.§==§ = new BitmapData(_loc5_.width + _loc1_,_loc5_.height + _loc1_,true,0);
                                       continue loop2;
                                    }
                                 }
                              }
                              if(!(_loc11_ || this))
                              {
                                 continue;
                              }
                              loop10:
                              while(true)
                              {
                                 _loc5_.filters = [];
                                 while(!_loc10_)
                                 {
                                    this.§==§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
                                    if(_loc11_)
                                    {
                                       if(_loc11_)
                                       {
                                          addr144:
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             if(_loc11_)
                                             {
                                                while(false)
                                                {
                                                   continue loop10;
                                                }
                                                addr321:
                                                return this.§==§;
                                                addr163:
                                             }
                                             §§goto(addr255);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§==§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
                                                break loop10;
                                                §§goto(addr144);
                                             }
                                             addr208:
                                          }
                                       }
                                       break loop10;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr184);
                           }
                        }
                     }
                     §§goto(addr163);
                  }
               }
               else
               {
                  this.§==§ = new BitmapData(1,1);
               }
               §§goto(addr321);
            }
         }
         §§goto(addr60);
      }
      
      public function get size() : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Point = new Point();
         var _loc2_:* = Number(1);
         if(_loc4_)
         {
            §§push(this.§,E§ is §7a§);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     _loc1_ = new Point((this.§,E§ as §7a§).§;,§(),(this.§,E§ as §7a§).§=7§());
                     if(_loc4_ || _loc3_)
                     {
                        §§push(§"!P§.§#X§);
                        if(_loc4_ || this)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        if(!(_loc3_ && _loc1_))
                        {
                           addr182:
                           _loc1_.x *= _loc2_;
                           if(_loc4_)
                           {
                              _loc1_.y *= _loc2_;
                           }
                           addr79:
                        }
                        return _loc1_;
                     }
                     §§goto(addr79);
                  }
                  else
                  {
                     addr143:
                     _loc1_ = new Point((this.§,E§ as §0"4§).width,(this.§,E§ as §0"4§).height);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§"!P§.§#X§);
                        if(_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                     }
                  }
               }
               else
               {
                  §§push(this.§,E§ is GhostObject);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           _loc1_ = new Point((this.§,E§ as GhostObject).sprite.width,(this.§,E§ as GhostObject).sprite.height);
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(§"!P§.§#X§);
                              if(_loc4_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                           }
                        }
                        else
                        {
                           addr176:
                           _loc1_ = new Point(§9s§,§9s§);
                        }
                     }
                     else
                     {
                        §§push(this.§,E§ is §0"4§);
                        if(_loc4_ || _loc3_)
                        {
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§goto(addr143);
                              }
                              else
                              {
                                 §§goto(addr176);
                              }
                           }
                           else
                           {
                              addr175:
                              if(this.§,E§ is §;!T§)
                              {
                                 §§goto(addr176);
                              }
                           }
                        }
                        §§goto(addr175);
                     }
                  }
                  §§goto(addr175);
               }
               §§goto(addr182);
            }
            §§goto(addr175);
         }
         §§goto(addr176);
      }
      
      public function get width() : Number
      {
         return this.size.x;
      }
      
      public function get height() : Number
      {
         return this.size.y;
      }
   }
}
