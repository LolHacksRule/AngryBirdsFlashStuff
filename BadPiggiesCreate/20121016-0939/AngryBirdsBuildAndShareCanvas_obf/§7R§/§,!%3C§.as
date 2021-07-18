package §7r§
{
   import §%c§.§=!X§;
   import §'!A§.§-!2§;
   import §'i§.§'!;§;
   import §'i§.§,!1§;
   import §+!o§.§?"-§;
   import §2"=§.b2Vec2;
   import §62§.§0!t§;
   import §8" §.§7z§;
   import §=!#§.§`"=§;
   import §[!_§.GhostObject;
   import §^[§.§!$§;
   import §^[§.§'!K§;
   import §default§.Sprite;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §,!<§
   {
      
      private static const §6"<§:int = 15;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §,!<§))
         {
            §6"<§ = 15;
         }
      }
      
      private var §3";§;
      
      private var §;6§;
      
      private var §]!4§:BitmapData;
      
      public function §,!<§(param1:*)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§'!K§ = null;
         if(!(_loc3_ && _loc3_))
         {
            super();
            if(!(_loc3_ && _loc3_))
            {
               addr36:
               if(param1 is String)
               {
                  if(_loc4_)
                  {
                     _loc2_ = §'!;§.§2=§.§+"2§.§9B§();
                     if(_loc4_ || _loc3_)
                     {
                        this.setObject(_loc2_.getItemByName(param1));
                        while(true)
                        {
                           §§goto(addr97);
                        }
                     }
                     while(true)
                     {
                        if(this.§;6§)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(_loc4_)
                              {
                                 if(_loc4_ || _loc3_)
                                 {
                                    (this.§;6§ as §!$§).addEventListener(§0!t§.§]!x§,this.§;B§);
                                    §§goto(addr95);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr108);
                           }
                           addr95:
                           if(false)
                           {
                              addr97:
                           }
                        }
                        §§goto(addr132);
                     }
                  }
               }
               else
               {
                  this.setObject(param1);
               }
            }
            addr132:
            while(this.§;6§ == null)
            {
               while(true)
               {
                  this.setObject(_loc2_.§'!Q§().§+!I§(param1));
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function get visible() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;6§ is §!$§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(this.§;6§.hasOwnProperty("visible"))
                  {
                     if(_loc1_ && _loc2_)
                     {
                        break;
                     }
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(!(_loc1_ && this))
                           {
                              return this.§;6§.visible;
                           }
                           addr131:
                           §§push(Boolean(this.§;6§.visible));
                           if(_loc2_)
                           {
                              if(!§§pop())
                              {
                                 §§goto(addr105);
                              }
                           }
                           while(true)
                           {
                              §§pop();
                           }
                        }
                        while(true)
                        {
                           §§push(§'!;§.§2=§.§+"2§.§9B§().§'!Q§().isOpen());
                           continue loop0;
                        }
                        addr132:
                     }
                     else
                     {
                        while(true)
                        {
                           continue loop1;
                        }
                        addr107:
                     }
                  }
                  §§push(true);
                  if(_loc1_)
                  {
                     addr98:
                     while(_loc1_ && _loc2_)
                     {
                        §§goto(addr131);
                     }
                  }
                  if(_loc2_ || _loc1_)
                  {
                     break;
                  }
                  continue;
                  addr105:
                  return §§pop();
               }
               §§goto(addr131);
            }
            return §§pop();
         }
         §§goto(addr107);
      }
      
      public function setObject(param1:*) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 != this.§;6§)
            {
               if(!_loc3_)
               {
                  addr61:
                  this.§;6§ = param1;
               }
               do
               {
                  this.§]!4§ = null;
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function get object() : *
      {
         return this.§;6§;
      }
      
      private function §;B§(param1:§0!t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§3";§ = this.§;6§;
            do
            {
               this.§3";§.removeEventListener(§0!t§.§]!x§,this.§;B§);
               do
               {
                  this.setObject(§'!;§.§2=§.§`!]§.§#_§()[0]);
               }
               while(_loc2_);
               
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      public function get position() : Point
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc1_:Point = null;
         var _loc2_:§=q§ = null;
         var _loc3_:b2Vec2 = null;
         var _loc4_:§?"-§ = null;
         var _loc5_:int = 0;
         var _loc6_:§=q§ = null;
         var _loc7_:GhostObject = null;
         var _loc8_:Point = null;
         var _loc9_:§-!2§ = null;
         var _loc10_:§!$§ = null;
         if(!_loc12_)
         {
            §§push(this.§;6§ is §=q§);
            if(!_loc12_)
            {
               if(§§pop())
               {
                  if(!(_loc12_ && this))
                  {
                     §§push(§,!1§.§2=§.§>L§(this.§;6§));
                     if(!_loc12_)
                     {
                        §§push(!§§pop());
                        if(!(_loc12_ && _loc1_))
                        {
                           if(§§pop())
                           {
                              if(_loc11_)
                              {
                                 addr80:
                                 §§pop();
                                 if(_loc11_)
                                 {
                                    addr83:
                                    §§push((this.§;6§ as §=q§).§8!w§());
                                    if(!_loc11_)
                                    {
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr92);
                              }
                              addr91:
                              if(§§pop())
                              {
                                 addr92:
                                 _loc4_ = §'!;§.§2=§.§8#§.§4+§.objects;
                                 if(!_loc12_)
                                 {
                                    _loc5_ = 0;
                                 }
                                 loop0:
                                 while(_loc5_ < _loc4_.getObjectCount())
                                 {
                                    §§push((_loc6_ = §=q§.§0"§(_loc4_.getObject(_loc5_))) == this.§;6§.getObject());
                                    if(!_loc12_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc11_)
                                       {
                                          §§push(§§pop());
                                          if(_loc11_ || this)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc11_ || this)
                                                {
                                                   §§pop();
                                                   if(_loc11_ || _loc3_)
                                                   {
                                                      §§push(_loc6_.getName() == this.§;6§.getName());
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr199:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     _loc5_++;
                                                                     if(_loc11_)
                                                                     {
                                                                        if(!_loc12_)
                                                                        {
                                                                           if(!(_loc12_ && _loc1_))
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              loop4:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§,!1§.§2=§.§>L§(_loc6_));
                                                                                 if(_loc12_ && _loc3_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       break loop4;
                                                                                    }
                                                                                    addr178:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr200:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr200:
                                                                                 }
                                                                              }
                                                                              continue;
                                                                              addr164:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr164);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr188:
                                                                           this.setObject(_loc6_);
                                                                        }
                                                                     }
                                                                     break loop0;
                                                                  }
                                                               }
                                                               continue loop0;
                                                               addr186:
                                                            }
                                                            §§goto(addr200);
                                                            continue loop1;
                                                         }
                                                      }
                                                      addr198:
                                                   }
                                                   §§goto(addr188);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr198);
                                          }
                                          §§goto(addr199);
                                       }
                                       §§goto(addr178);
                                    }
                                    §§goto(addr200);
                                 }
                              }
                              _loc2_ = this.§;6§ as §=q§;
                              _loc3_ = _loc2_.§9!l§();
                              if(!(_loc12_ && _loc3_))
                              {
                                 if(_loc3_ == null)
                                 {
                                    do
                                    {
                                       this.setObject(this.§3";§);
                                       this.§3";§.addEventListener(§0!t§.§]!x§,this.§;B§);
                                       this.§3";§ = null;
                                    }
                                    while(!_loc11_);
                                    
                                 }
                                 else
                                 {
                                    _loc1_ = §=!X§.§!'§.§&g§(_loc3_.x,_loc3_.y);
                                    §§goto(addr478);
                                 }
                              }
                              return this.position;
                              §§push(!§§pop());
                           }
                           §§goto(addr91);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr91);
                  }
                  §§goto(addr92);
               }
               else
               {
                  §§push(this.§;6§ is GhostObject);
                  if(!_loc12_)
                  {
                     if(§§pop())
                     {
                        if(!_loc12_)
                        {
                           _loc7_ = this.§;6§ as GhostObject;
                           _loc8_ = new Point(_loc7_.§6!j§,_loc7_.§8i§);
                           _loc1_ = §=!X§.§!'§.§&g§(_loc8_.x,_loc8_.y);
                        }
                        else
                        {
                           addr370:
                           _loc1_ = (_loc10_ = this.§;6§ as §!$§).parent.localToGlobal(new Point(_loc10_.x,_loc10_.y));
                        }
                        §§goto(addr478);
                     }
                     else
                     {
                        §§push(this.§;6§ is §-!2§);
                        if(!_loc12_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc12_ && _loc3_))
                              {
                                 _loc1_ = (_loc9_ = this.§;6§ as §-!2§).mClip.parent.localToGlobal(new Point(_loc9_.x,_loc9_.y));
                              }
                              else
                              {
                                 addr436:
                                 §§push(§=!X§.§!'§);
                                 if(_loc11_)
                                 {
                                    _loc1_ = §§pop().§&g§(this.§;6§.x,this.§;6§.y);
                                 }
                                 else
                                 {
                                    _loc1_ = §§pop().§&g§(this.§;6§.objectPosition.x,this.§;6§.objectPosition.y);
                                    addr457:
                                 }
                              }
                              §§goto(addr478);
                           }
                           else
                           {
                              §§push(this.§;6§ is §!$§);
                              if(!_loc12_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc12_)
                                    {
                                       §§goto(addr370);
                                    }
                                    else
                                    {
                                       addr407:
                                       _loc1_ = this.§;6§.parent.localToGlobal(new Point(this.§;6§.x,this.§;6§.y));
                                       §§goto(addr478);
                                    }
                                 }
                                 else
                                 {
                                    §§push(this.§;6§ is DisplayObject);
                                    if(!(_loc12_ && _loc3_))
                                    {
                                       addr399:
                                       if(§§pop())
                                       {
                                          if(_loc11_ || this)
                                          {
                                             §§goto(addr407);
                                          }
                                          else
                                          {
                                             §§goto(addr436);
                                          }
                                       }
                                       else
                                       {
                                          §§push(this.§;6§ is Point);
                                          if(!_loc12_)
                                          {
                                             addr428:
                                             if(§§pop())
                                             {
                                                if(_loc11_ || _loc2_)
                                                {
                                                   §§goto(addr436);
                                                }
                                                else
                                                {
                                                   addr455:
                                                   §§push(§=!X§.§!'§);
                                                }
                                                §§goto(addr457);
                                             }
                                             else
                                             {
                                                §§push(this.§;6§ is §7z§);
                                             }
                                             §§goto(addr478);
                                          }
                                          if(§§pop())
                                          {
                                             §§goto(addr455);
                                          }
                                          §§goto(addr478);
                                       }
                                       §§goto(addr478);
                                    }
                                    §§goto(addr428);
                                 }
                                 §§goto(addr478);
                              }
                           }
                           §§goto(addr478);
                        }
                     }
                     §§goto(addr478);
                  }
                  §§goto(addr399);
               }
               return _loc1_;
            }
            §§goto(addr91);
         }
         §§goto(addr83);
      }
      
      public function get x() : Number
      {
         return this.position.x;
      }
      
      public function get y() : Number
      {
         return this.position.y;
      }
      
      public function §'!]§() : BitmapData
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:§=q§ = null;
         var _loc3_:* = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Bitmap = null;
         var _loc6_:Sprite = null;
         var _loc7_:Point = null;
         var _loc8_:* = NaN;
         var _loc9_:Matrix = null;
         if(!_loc11_)
         {
            _loc1_ = 5;
            if(_loc10_)
            {
               if(this.§;6§ is §=q§)
               {
                  if(_loc10_)
                  {
                     addr54:
                     _loc2_ = this.§;6§ as §=q§;
                     if(_loc10_ || this)
                     {
                        §§push(_loc2_.getName());
                        if(!(_loc11_ && _loc1_))
                        {
                           §§push(§§pop());
                        }
                        _loc3_ = §§pop();
                     }
                     _loc4_ = §=!X§.§!'§.§7!J§.§"k§(_loc3_);
                     _loc5_ = new Bitmap(_loc4_,"auto",true);
                     _loc6_ = _loc2_.§7M§();
                     _loc7_ = new Point(_loc5_.width / 2,_loc5_.height / 2);
                     if(!_loc11_)
                     {
                        §§push(§`"=§.§;!0§);
                        if(_loc10_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc8_ = §§pop();
                     }
                     (_loc9_ = new Matrix()).translate(-_loc7_.x,-_loc7_.y);
                     if(!_loc11_)
                     {
                        _loc9_.rotate(_loc6_.rotation);
                        loop0:
                        while(true)
                        {
                           _loc9_.scale(_loc8_,_loc8_);
                           loop1:
                           while(true)
                           {
                              _loc5_.transform.matrix = _loc9_;
                              loop2:
                              for(; !_loc11_; if(!(_loc10_ || this))
                              {
                                 continue;
                              },_loc5_.y += _loc1_ / 2,§§goto(addr220))
                              {
                                 _loc5_.x += _loc5_.width / 2;
                                 while(true)
                                 {
                                    _loc5_.y += _loc5_.height / 2;
                                    addr282:
                                    while(true)
                                    {
                                       this.§]!4§ = new BitmapData(_loc5_.width + _loc1_,_loc5_.height + _loc1_,true,0);
                                       addr269:
                                       while(!_loc11_)
                                       {
                                       }
                                       continue loop1;
                                    }
                                    loop12:
                                    while(!(_loc11_ && this))
                                    {
                                       this.§]!4§.draw(_loc5_,_loc5_.transform.matrix,null,BlendMode.ERASE,null,true);
                                       if(!_loc10_)
                                       {
                                          continue;
                                       }
                                       addr151:
                                       if(_loc10_ || this)
                                       {
                                          addr168:
                                          if(_loc10_ || _loc3_)
                                          {
                                             if(_loc10_)
                                             {
                                                if(true)
                                                {
                                                   return this.§]!4§;
                                                }
                                                addr330:
                                                addr203:
                                                while(true)
                                                {
                                                   _loc5_.filters = [];
                                                   continue loop12;
                                                }
                                                while(!(_loc11_ && this))
                                                {
                                                   §§goto(addr179);
                                                   §§goto(addr151);
                                                }
                                                addr179:
                                                loop8:
                                                while(true)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   addr251:
                                                   while(_loc10_)
                                                   {
                                                      _loc5_.x += _loc1_ / 2;
                                                      continue loop8;
                                                   }
                                                   §§goto(addr282);
                                                }
                                                addr203:
                                                continue loop2;
                                             }
                                             §§goto(addr269);
                                             while(true)
                                             {
                                                _loc5_.filters = [new GlowFilter(16777215,1,_loc1_,_loc1_,_loc1_)];
                                                §§goto(addr251);
                                             }
                                             addr271:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§]!4§.draw(_loc5_,_loc5_.transform.matrix,null,null,null,true);
                                                §§goto(addr168);
                                             }
                                             addr220:
                                          }
                                       }
                                       §§goto(addr203);
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr271);
                  }
               }
               else
               {
                  this.§]!4§ = new BitmapData(1,1);
               }
               §§goto(addr330);
            }
         }
         §§goto(addr54);
      }
      
      public function get size() : Point
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Point = new Point();
         var _loc2_:* = Number(1);
         if(_loc4_)
         {
            §§push(this.§;6§ is §=q§);
            if(_loc4_ || _loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     _loc1_ = new Point((this.§;6§ as §=q§).§=y§(),(this.§;6§ as §=q§).§-p§());
                     if(_loc4_ || this)
                     {
                        §§push(§`"=§.§;!0§);
                        if(!_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        if(!_loc3_)
                        {
                           addr172:
                           _loc1_.x *= _loc2_;
                           if(_loc4_ || _loc2_)
                           {
                              addr195:
                              _loc1_.y *= _loc2_;
                           }
                           return _loc1_;
                           addr69:
                        }
                        §§goto(addr195);
                     }
                     §§goto(addr69);
                  }
                  else
                  {
                     _loc1_ = new Point((this.§;6§ as GhostObject).sprite.width,(this.§;6§ as GhostObject).sprite.height);
                     addr79:
                     if(_loc4_)
                     {
                        §§push(§`"=§.§;!0§);
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
                  §§push(this.§;6§ is GhostObject);
                  if(!_loc3_)
                  {
                     addr76:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr79);
                        }
                        else
                        {
                           addr133:
                           _loc1_ = new Point((this.§;6§ as §-!2§).width,(this.§;6§ as §-!2§).height);
                           if(_loc4_ || this)
                           {
                              §§push(§`"=§.§;!0§);
                              if(!_loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                           }
                           §§goto(addr172);
                        }
                     }
                     else
                     {
                        §§push(this.§;6§ is §-!2§);
                        if(!(_loc3_ && _loc1_))
                        {
                           addr125:
                           if(§§pop())
                           {
                              if(!(_loc3_ && this))
                              {
                                 §§goto(addr133);
                              }
                              else
                              {
                                 addr166:
                                 _loc1_ = new Point(§6"<§,§6"<§);
                                 §§goto(addr172);
                              }
                           }
                           else
                           {
                              §§push(this.§;6§ is §!$§);
                           }
                           §§goto(addr172);
                        }
                        if(§§pop())
                        {
                           §§goto(addr166);
                        }
                        §§goto(addr172);
                     }
                     §§goto(addr172);
                  }
                  §§goto(addr125);
               }
               §§goto(addr172);
            }
            §§goto(addr76);
         }
         §§goto(addr166);
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
