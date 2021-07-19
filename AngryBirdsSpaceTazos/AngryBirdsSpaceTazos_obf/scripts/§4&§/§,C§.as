package §4&§
{
   import §5Q§.§^!e§;
   import §;&§.§8" §;
   import §`!#§.Texture;
   import §`!#§.§`!X§;
   import §`",§.§1!v§;
   import §`",§.§?" §;
   import §`",§.§`!W§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   
   public class §,C§ extends EventDispatcher
   {
      
      private static const §@"!§:int = 2;
      
      private static const §+!p§:int = 2048;
      
      private static var § t§:§,C§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@"!§ = 2;
            do
            {
               §+!p§ = 2048;
            }
            while(_loc2_);
            
         }
      }
      
      private var §"""§:Dictionary;
      
      private var §'2§:Vector.<§`!W§>;
      
      private var §5!X§:Dictionary;
      
      private var §^d§:Boolean;
      
      private var §[!o§:String;
      
      private var §-!l§:Texture;
      
      private var §4E§:int;
      
      private var §5O§:int;
      
      private var §`Q§:§8" §;
      
      public function §,C§(param1:String = null)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§'2§ = new Vector.<§`!W§>();
               while(true)
               {
                  this.§"""§ = new Dictionary();
                  continue loop0;
                  addr58:
                  if(_loc3_ || _loc3_)
                  {
                     this.§[!o§ = param1;
                     while(!_loc2_)
                     {
                        this.§`Q§ = new §8" §(§+!p§,§+!p§);
                        if(!_loc2_)
                        {
                           return;
                        }
                     }
                     while(!_loc2_)
                     {
                        §§goto(addr58);
                     }
                     continue loop0;
                     addr56:
                  }
               }
            }
         }
         while(true)
         {
            this.§5!X§ = new Dictionary();
            §§goto(addr56);
         }
      }
      
      public static function get §[!1§() : §,C§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§ t§);
            if(!(_loc1_ && §,C§))
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr55:
                     § t§ = new §,C§();
                  }
               }
               return § t§;
            }
         }
         §§goto(addr55);
      }
      
      public function get §<!b§() : int
      {
         return this.§4E§;
      }
      
      public function get §5"C§() : int
      {
         return this.§5O§;
      }
      
      public function get id() : String
      {
         return this.§[!o§;
      }
      
      public function dispose() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§'!"§ = null;
         var _loc2_:§`!W§ = null;
         if(!_loc5_)
         {
            if(this.§"""§)
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§"""§;
               loop14:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_)
                        {
                           this.unregisterBitmapDataTexture(_loc1_.texture.parent);
                           if(_loc6_ || this)
                           {
                              _loc1_.dispose();
                           }
                        }
                        continue;
                     }
                     if(!(_loc5_ && _loc1_))
                     {
                        if(_loc6_ || _loc3_)
                        {
                           if(!_loc5_)
                           {
                              this.§"""§ = null;
                              if(!_loc5_)
                              {
                                 addr84:
                                 if(this.§'2§)
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       _loc3_ = 0;
                                       if(_loc6_)
                                       {
                                          addr98:
                                          _loc4_ = this.§'2§;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc4_,_loc3_));
                                             break loop14;
                                          }
                                          addr128:
                                       }
                                       if(_loc6_ || _loc2_)
                                       {
                                          this.§'2§ = null;
                                          while(true)
                                          {
                                          }
                                          addr246:
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          §§push(this.§-!l§);
                                          loop3:
                                          while(true)
                                          {
                                             §§pop().dispose();
                                             loop4:
                                             while(true)
                                             {
                                                this.§-!l§ = null;
                                                loop5:
                                                while(true)
                                                {
                                                   loop6:
                                                   while(true)
                                                   {
                                                      this.§'2§ = new Vector.<§`!W§>();
                                                      addr191:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            this.§"""§ = new Dictionary();
                                                            continue loop5;
                                                         }
                                                         continue loop4;
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(_loc6_ || this)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         addr239:
                                                         while(true)
                                                         {
                                                            this.§5!X§ = null;
                                                            addr242:
                                                            while(true)
                                                            {
                                                               addr201:
                                                               while(true)
                                                               {
                                                                  §§push(this.§-!l§);
                                                                  if(!(_loc6_ || _loc1_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       addr221:
                                    }
                                    §§goto(addr163);
                                 }
                                 while(true)
                                 {
                                    if(this.§5!X§)
                                    {
                                       §§goto(addr239);
                                    }
                                    §§goto(addr201);
                                 }
                              }
                              §§goto(addr221);
                           }
                           §§goto(addr163);
                        }
                     }
                     §§goto(addr98);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc5_ && _loc2_))
                     {
                        _loc2_.dispose();
                     }
                     continue;
                  }
                  §§goto(addr98);
               }
            }
            §§goto(addr84);
         }
         §§goto(addr28);
      }
      
      protected function §9!F§(param1:String) : §`!W§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§`!W§ = null;
         for each(_loc2_ in this.§'2§)
         {
            if(!_loc6_)
            {
               if(_loc2_.name == param1)
               {
                  if(!_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §?";§(param1:§?" §, param2:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && _loc3_))
         {
            if(this.§^d§)
            {
               if(_loc6_ || param2)
               {
                  return;
               }
            }
         }
         var _loc3_:String = param2.toString();
         var _loc4_:§`!W§;
         if(!(_loc4_ = this.§9!F§(_loc3_)))
         {
            if(_loc6_)
            {
               _loc4_ = new §`!W§(_loc3_);
               if(_loc6_ || _loc3_)
               {
                  this.§'2§.push(_loc4_);
                  addr84:
                  _loc4_.§>!B§(param1);
               }
               §§goto(addr84);
            }
            return;
         }
         §§goto(addr84);
      }
      
      private function §5A§(param1:Vector.<§?" §>) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§?" § = null;
         var _loc5_:BitmapData = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc2_:* = Number(1);
         if(!_loc8_)
         {
            this.§`Q§.reset(§+!p§,§+!p§);
         }
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            if(_loc9_ || _loc3_)
            {
               if(_loc3_ == 0)
               {
                  if(_loc9_ || this)
                  {
                     §§push(_loc4_.scale);
                     if(_loc9_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc8_)
                        {
                           _loc2_ = §§pop();
                           if(!_loc9_)
                           {
                              addr95:
                              break;
                           }
                           addr83:
                        }
                        else
                        {
                           addr86:
                           if(§§pop() != _loc2_)
                           {
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§goto(addr95);
                              }
                              return new Rectangle(0,0,this.§`Q§.§-!D§,this.§`Q§.§%!M§);
                              addr142:
                           }
                        }
                        §§push(int((_loc5_ = _loc4_.bitmapData).width));
                        if(!_loc8_)
                        {
                           _loc6_ = §§pop();
                           if(_loc9_)
                           {
                              addr133:
                              _loc7_ = _loc5_.height;
                           }
                           loop1:
                           while(true)
                           {
                              while(true)
                              {
                                 this.§`Q§.§@!L§(_loc6_,_loc7_,_loc3_);
                                 do
                                 {
                                    _loc3_++;
                                 }
                                 while(_loc8_);
                                 
                                 if(_loc9_ || _loc2_)
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
                        §§goto(addr133);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr83);
               }
               else
               {
                  §§push(_loc4_.scale);
               }
               §§goto(addr86);
            }
            §§goto(addr95);
         }
         this.§`Q§.§8^§();
         §§goto(addr142);
      }
      
      private function §4!J§(param1:Vector.<§?" §>, param2:BitmapData) : Vector.<§]!s§>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            while(true)
            {
               §§pop().§§slot[7] = §§pop();
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     addr868:
                     while(true)
                     {
                        §§pop().§§slot[8] = §§pop();
                        addr869:
                        while(true)
                        {
                           §§push(§§newactivation());
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §;!j§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§`!W§ = null;
         if(_loc4_ || _loc2_)
         {
            §§push(§^!e§.§>c§());
            if(_loc4_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr38:
                     §§push(false);
                     if(!(_loc5_ && _loc1_))
                     {
                        return §§pop();
                     }
                     §§goto(addr67);
                  }
                  §§goto(addr67);
               }
               §§push(this.§^d§);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr67:
                        return §§pop();
                        §§push(true);
                     }
                  }
                  var _loc2_:int = 0;
                  for each(_loc1_ in this.§'2§)
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        this.§!m§(_loc1_);
                        if(_loc4_)
                        {
                           _loc1_.dispose();
                        }
                     }
                  }
                  if(!(_loc5_ && this))
                  {
                     this.§'2§ = new Vector.<§`!W§>();
                     do
                     {
                        this.§^d§ = true;
                     }
                     while(!_loc4_);
                     
                  }
                  return true;
               }
            }
            §§goto(addr67);
         }
         §§goto(addr38);
      }
      
      private function §!m§(param1:§`!W§) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc2_:§?" § = null;
         var _loc5_:Rectangle = null;
         var _loc6_:BitmapData = null;
         var _loc7_:Vector.<§]!s§> = null;
         var _loc8_:Texture = null;
         var _loc9_:* = 0;
         var _loc10_:§]!s§ = null;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:§1!v§ = null;
         var _loc3_:Vector.<§?" §> = new Vector.<§?" §>();
         var _loc4_:int = 0;
         while(_loc4_ < param1.§4T§)
         {
            _loc2_ = param1.§5!v§(_loc4_);
            if(!(_loc14_ && _loc3_))
            {
               if(_loc2_.§,"6§ > 0)
               {
                  if(_loc14_ && this)
                  {
                     continue;
                  }
                  addr77:
                  _loc3_.push(_loc2_);
                  if(!(_loc15_ || this))
                  {
                     continue;
                  }
               }
               _loc4_++;
               continue;
            }
            §§goto(addr77);
         }
         if(_loc15_ || this)
         {
            while(true)
            {
               if(_loc3_.length > 0)
               {
                  §§push((_loc5_ = this.§5A§(_loc3_)).width == 0);
                  if(_loc15_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc14_)
                        {
                           §§pop();
                           if(!_loc15_)
                           {
                              break;
                           }
                           addr128:
                           if(_loc5_.height == 0)
                           {
                              if(!(_loc14_ && this))
                              {
                                 break;
                              }
                           }
                           _loc6_ = new BitmapData(_loc5_.width,_loc5_.height,true,0);
                           _loc7_ = this.§4!J§(_loc3_,_loc6_);
                           _loc8_ = this.getTextureFromBitmapData(_loc6_);
                           if(_loc15_ || this)
                           {
                              §§push(0);
                              if(_loc15_ || this)
                              {
                                 _loc9_ = §§pop();
                                 if(_loc14_)
                                 {
                                    continue;
                                 }
                                 while(true)
                                 {
                                    §§push(_loc9_);
                                 }
                                 addr278:
                              }
                              for(; §§pop() < _loc7_.length; §§goto(addr278))
                              {
                                 _loc2_ = (_loc10_ = _loc7_[_loc9_]).spriteSheet;
                                 if(!_loc14_)
                                 {
                                    §§push(_loc2_.§,"6§);
                                    if(_loc15_ || this)
                                    {
                                       §§push(int(§§pop()));
                                       if(_loc15_ || this)
                                       {
                                          _loc11_ = §§pop();
                                          if(!(_loc14_ && _loc2_))
                                          {
                                             §§push(0);
                                             if(_loc14_)
                                             {
                                             }
                                             loop4:
                                             while(§§pop() < _loc11_)
                                             {
                                                _loc13_ = _loc2_.§"!i§(_loc12_);
                                                if(!(_loc14_ && _loc3_))
                                                {
                                                   this.§-!b§(_loc13_,_loc8_,_loc6_,_loc2_.scale);
                                                   if(_loc15_ || param1)
                                                   {
                                                      _loc12_++;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop4;
                                                }
                                             }
                                             if(_loc15_)
                                             {
                                                addr267:
                                                _loc9_++;
                                             }
                                             addr263:
                                          }
                                          continue;
                                       }
                                       _loc12_ = §§pop();
                                       if(!_loc14_)
                                       {
                                          addr233:
                                          §§goto(addr262);
                                       }
                                       §§goto(addr267);
                                    }
                                    §§goto(addr263);
                                 }
                                 §§goto(addr233);
                              }
                           }
                           continue;
                        }
                     }
                  }
                  §§goto(addr128);
               }
            }
            throw new Error("Found too large sprite sheet image!");
         }
      }
      
      private function §-!b§(param1:§1!v§, param2:Texture, param3:BitmapData, param4:Number) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc6_:Rectangle = null;
         var _loc7_:§`!X§ = null;
         var _loc5_:§'!"§;
         if(!(_loc5_ = this.§"""§[param1.mName]))
         {
            _loc6_ = param1.§+#§.clone();
            _loc7_ = new §`!X§(param2,_loc6_,false);
            _loc5_ = new §'!"§(_loc7_,param3,_loc6_,param1.§;o§,param1.§+!H§,param4);
            if(_loc9_)
            {
               if(param1.mName.search("TEXTURE_") == 0)
               {
                  if(_loc9_ || param3)
                  {
                     this.§"""§["INGAME_" + param1.mName] = _loc5_;
                     if(!_loc9_)
                     {
                     }
                     §§goto(addr108);
                  }
               }
               else
               {
                  this.§"""§[param1.mName] = _loc5_;
                  §§goto(addr108);
               }
               §§goto(addr108);
            }
         }
         addr108:
      }
      
      public function §7"$§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(_loc6_ || _loc2_)
         {
            §§push(null);
            if(_loc6_ || _loc2_)
            {
               §§pop().§§slot[1] = §§pop();
               if(!_loc5_)
               {
                  addr43:
                  var texture:Texture = null;
                  if(!(_loc5_ && _loc1_))
                  {
                     if(!§^!e§.§<S§)
                     {
                        addr55:
                        var _loc2_:int = 0;
                        var _loc3_:* = this.§5!X§;
                        while(§§hasnext(_loc3_,_loc2_))
                        {
                           §§push(§§newactivation());
                           if(_loc6_)
                           {
                              §§pop().§§slot[1] = §§nextname(_loc2_,_loc3_);
                              if(_loc6_ || this)
                              {
                                 try
                                 {
                                    §§push(§§newactivation());
                                    if(_loc6_)
                                    {
                                       addr91:
                                       §§pop().§§slot[2] = this.§5!X§[bd];
                                       addr112:
                                       if(_loc6_ || this)
                                       {
                                          addr105:
                                          §§push(§§newactivation());
                                       }
                                       continue;
                                    }
                                    §§pop().§§slot[2].requestBaseTextureUpdate(bd as BitmapData);
                                 }
                                 catch(e:Error)
                                 {
                                    continue;
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr105);
                           }
                           §§goto(addr91);
                        }
                     }
                     return;
                  }
               }
               §§goto(addr55);
            }
         }
         §§goto(addr43);
      }
      
      public function getTexture(param1:String) : §'!"§
      {
         return this.§"""§[param1];
      }
      
      public function getTextureFromBitmapData(param1:BitmapData, param2:Boolean = true) : Texture
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Texture = this.§5!X§[param1];
         if(_loc5_ || _loc3_)
         {
            if(_loc3_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  return _loc3_;
               }
            }
         }
         _loc3_ = §^!e§.§<'§(param1,param2);
         if(!_loc4_)
         {
            this.§5!X§[param1] = _loc3_;
         }
         do
         {
            this.§0t§(_loc3_,param1,true);
         }
         while(!(_loc5_ || param2));
         
         return _loc3_;
      }
      
      protected function §0t§(param1:Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc4_:* = 1;
         if(_loc7_)
         {
            if(!param3)
            {
               loop0:
               while(true)
               {
                  §§push(-1);
                  addr262:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr263:
                     while(true)
                     {
                     }
                  }
                  while(true)
                  {
                     if(!(_loc7_ || this))
                     {
                        continue loop0;
                     }
                     §§push(param1.width);
                     loop6:
                     while(true)
                     {
                        §§push(int(§§pop()));
                        addr211:
                        while(true)
                        {
                           _loc5_ = §§pop();
                           addr212:
                           addr256:
                           loop8:
                           while(true)
                           {
                              if(_loc7_ || param3)
                              {
                                 continue loop6;
                              }
                              addr223:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§5O§);
                                 §§push(_loc4_ * param2.width);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() * param2.height);
                                    if(!(_loc8_ && param1))
                                    {
                                       §§push(§§pop() * 4);
                                    }
                                 }
                                 §§pop().§5O§ = §§pop() + §§pop();
                                 break loop8;
                              }
                           }
                           while(true)
                           {
                              if(_loc8_)
                              {
                                 §§goto(addr263);
                              }
                              else
                              {
                                 addr258:
                              }
                              §§goto(addr198);
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               if(param2)
               {
                  §§goto(addr223);
               }
               addr198:
               while(param1)
               {
                  continue loop5;
                  §§goto(addr258);
               }
               addr71:
               return;
               §§goto(addr263);
            }
         }
         §§goto(addr223);
      }
      
      public function §!!`§() : Texture
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§-!l§);
            if(!(_loc2_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     this.§-!l§ = this.getTextureFromBitmapData(new BitmapData(40,40,false,16711935));
                     addr60:
                     §§push(this.§-!l§);
                  }
               }
               §§goto(addr60);
            }
            return §§pop();
         }
         §§goto(addr60);
      }
      
      public function unregisterBitmapDataTexture(param1:Texture) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = null;
         var _loc3_:BitmapData = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§5!X§;
         while(true)
         {
            loop0:
            for(_loc2_ in _loc5_)
            {
               if(_loc7_)
               {
                  if(this.§5!X§[_loc2_] != param1)
                  {
                     continue;
                  }
               }
               _loc3_ = _loc2_ as BitmapData;
               if(!_loc7_)
               {
                  if(false)
                  {
                     break;
                  }
                  continue;
               }
               this.§0t§(param1,_loc3_,false);
               while(true)
               {
                  if(_loc3_)
                  {
                     while(_loc7_)
                     {
                        _loc3_.dispose();
                        while(true)
                        {
                        }
                        if(!(_loc7_ || _loc3_))
                        {
                           continue;
                        }
                        return;
                        addr87:
                     }
                     continue;
                  }
                  while(true)
                  {
                     delete this.§5!X§[_loc2_];
                     addr94:
                     while(true)
                     {
                        break loop0;
                     }
                     addr78:
                     if(_loc6_)
                     {
                        continue;
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr87);
               }
            }
            return;
         }
         while(true)
         {
            param1.dispose();
            if(!(_loc7_ || this))
            {
               continue;
            }
            §§goto(addr78);
         }
      }
   }
}
