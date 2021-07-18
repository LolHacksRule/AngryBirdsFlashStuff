package §'4§
{
   import §"!&§.§8X§;
   import §"!&§.§=C§;
   import §0N§.§2!@§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §7!8§.§&!D§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §@w§.§%![§;
   import §`!#§.Texture;
   import §`!j§.§#b§;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!n§ extends EventDispatcher
   {
      
      public static const §5"6§:String = "slingshot_shot_bird";
      
      public static const §1!3§:Number = 0.4;
      
      public static const §95§:int = 0;
      
      public static const § !?§:int = 1;
      
      public static const §'`§:int = 2;
      
      public static const § !l§:int = 3;
      
      public static const §7!y§:int = 5;
      
      public static const §function§:int = 6;
      
      public static const §8!a§:int = 3151368;
      
      protected static var §-4§:Texture;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §5"6§ = "slingshot_shot_bird";
            loop0:
            while(true)
            {
               §1!3§ = 0.4;
               loop1:
               while(true)
               {
                  §95§ = 0;
                  loop2:
                  while(true)
                  {
                     § !?§ = 1;
                     loop3:
                     while(true)
                     {
                        §'`§ = 2;
                        while(!_loc1_)
                        {
                           loop7:
                           while(_loc2_ || §3!n§)
                           {
                              if(_loc2_)
                              {
                                 §function§ = 6;
                                 do
                                 {
                                    §8!a§ = 3151368;
                                 }
                                 while(!_loc2_);
                                 
                                 if(_loc2_ || _loc2_)
                                 {
                                    addr42:
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       continue loop0;
                                    }
                                    addr85:
                                    while(!_loc1_)
                                    {
                                       §7!y§ = 5;
                                       continue loop7;
                                       §§goto(addr42);
                                    }
                                    continue loop1;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop3;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            § !l§ = 3;
            §§goto(addr85);
         }
         §§goto(addr61);
      }
      
      protected var §%!k§:§#r§;
      
      protected var §?>§:§^g§;
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      protected var §"X§:Number;
      
      protected var §2u§:Number = 8.5;
      
      protected var §`-§:Number;
      
      protected var §5]§:Number;
      
      protected var §43§:Number;
      
      protected var §;!3§:Number;
      
      protected var §-!H§:Number;
      
      protected var §?!;§:Number;
      
      protected var §#s§:Number = 1.0;
      
      protected var §^$§:Boolean;
      
      protected var §'! §:Boolean;
      
      protected var §="E§:Boolean = false;
      
      public var mBirds:Vector.<§-T§>;
      
      public var mNextBirdIndex:int;
      
      protected var §;w§:int;
      
      protected var §&Q§:Number;
      
      public var §]G§:Sprite;
      
      protected var §["@§:Sprite;
      
      public var §4"8§:int = 0;
      
      protected var §-!s§:Number = 0;
      
      public var mSlingShotState:int;
      
      public var §@!K§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §`[§:Boolean = false;
      
      public var §5d§:Number;
      
      protected var §]!$§:Sprite;
      
      protected var §5!G§:Sprite;
      
      protected var §6"3§:Sprite;
      
      protected var §"T§:DisplayObject;
      
      protected var § "D§:Sprite;
      
      protected var §=!6§:DisplayObject;
      
      protected var §["A§:Sprite;
      
      protected var §2!&§:DisplayObject;
      
      protected var §]![§:Sprite;
      
      protected var §"!S§:Sprite;
      
      protected var §?n§:DisplayObject;
      
      private var §=;§:Number = 0;
      
      private var §>!a§:int = 0;
      
      public function §3!n§(param1:§^g§, param2:§#b§, param3:Sprite, param4:Number = 1.0, param5:Boolean = true, param6:Boolean = true)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:int = 0;
         var _loc8_:§%![§ = null;
         if(_loc10_)
         {
            this.mBirds = new Vector.<§-T§>();
            while(true)
            {
               super();
               while(true)
               {
                  this.§?>§ = param1;
                  loop2:
                  for(; !(_loc9_ && param2); if(_loc9_ && param2)
                  {
                     continue;
                  },if(param2)
                  {
                     §§goto(addr50);
                  },§2!@§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing"),§§goto(addr261))
                  {
                     while(true)
                     {
                        this.§]!$§ = param3;
                        while(true)
                        {
                           this.§#s§ = param4;
                           loop5:
                           while(true)
                           {
                              this.§^$§ = param5;
                              loop6:
                              while(true)
                              {
                                 this.§'! § = param6;
                                 while(true)
                                 {
                                    if(_loc10_ || param1)
                                    {
                                       continue loop2;
                                    }
                                    continue loop6;
                                    addr58:
                                    while(!(_loc9_ && this))
                                    {
                                       continue loop5;
                                    }
                                 }
                                 addr261:
                                 if(!_loc9_)
                                 {
                                    this.§=i§(§ !l§);
                                    addr248:
                                    if(!(_loc9_ && this))
                                    {
                                       addr235:
                                       this.§5d§ = 0;
                                       addr239:
                                       if(_loc10_)
                                       {
                                          if(_loc10_)
                                          {
                                             this.§`k§();
                                             addr232:
                                             if(!_loc9_)
                                             {
                                                this.update(0,true);
                                                addr219:
                                                if(_loc10_ || param1)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      this.§]L§();
                                                      addr211:
                                                      if(_loc10_)
                                                      {
                                                         this.§ !i§(0);
                                                         if(!(_loc10_ || this))
                                                         {
                                                            §§goto(addr211);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr219);
                                                      addr228:
                                                   }
                                                   §§goto(addr239);
                                                }
                                                §§goto(addr232);
                                             }
                                             §§goto(addr261);
                                          }
                                          if(this.mBirds.length <= 0)
                                          {
                                             if(_loc10_ || param3)
                                             {
                                                addr296:
                                                §§push(§2!@§);
                                                §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information " + this.§""4§);
                                                if(_loc10_ || param3)
                                                {
                                                   §§push(§§pop() + " ");
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      §§push(§§pop() + this.§%W§);
                                                   }
                                                }
                                                §§pop().log(§§pop());
                                             }
                                             this.§=i§(§ !l§);
                                             addr275:
                                             if(!(_loc9_ && this))
                                             {
                                                addr256:
                                                §§goto(addr235);
                                             }
                                             addr331:
                                             §§goto(addr331);
                                          }
                                          this.§=i§(§95§);
                                          addr270:
                                          §§goto(addr256);
                                          addr335:
                                       }
                                       §§goto(addr248);
                                    }
                                    §§goto(addr275);
                                 }
                                 §§goto(addr270);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr120);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]!$§;
      }
      
      public function get aimingLineSprite() : Sprite
      {
         return this.§["@§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§=;§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.mNextBirdIndex < this.mBirds.length;
      }
      
      public function get shootingAngle() : Number
      {
         return this.§-!s§;
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get angle() : Number
      {
         return this.§"X§;
      }
      
      public function get §7=§() : Boolean
      {
         return this.§'! §;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.mBirds.length > 0)
            {
               this.§9!^§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.mBirds = null;
               loop2:
               while(true)
               {
                  §§push(this.§]!$§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(!(_loc2_ && this))
                        {
                           §§push(this.§]!$§);
                           while(true)
                           {
                              §§pop().dispose();
                              addr87:
                              while(true)
                              {
                                 this.§]!$§ = null;
                                 addr61:
                                 while(true)
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop2;
                                    }
                                    if(_loc2_ && this)
                                    {
                                       continue loop0;
                                    }
                                    addr70:
                                 }
                              }
                           }
                           if(_loc1_ || this)
                           {
                              return;
                           }
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        this.§]G§ = null;
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_ || _loc2_)
                           {
                              §§goto(addr39);
                           }
                           §§goto(addr87);
                        }
                        §§goto(addr61);
                        §§goto(addr70);
                     }
                     continue;
                  }
                  §§goto(addr86);
               }
            }
         }
      }
      
      public function §0v§(param1:String, param2:Number, param3:Number, param4:int = -1) : §-T§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:§-T§ = null;
         if(_loc7_)
         {
            if(this.mBirds.length > 0)
            {
               (_loc6_ = this.mBirds[0]).§[k§(false);
               addr26:
               if(_loc7_)
               {
                  _loc6_.§6!q§ = false;
               }
            }
            var _loc5_:§-T§;
            (_loc5_ = this.§>"+§(param1,param2,param3,0,param4)).§[k§(true);
            return _loc5_;
         }
         §§goto(addr26);
      }
      
      protected function §>"+§(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §-T§
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:§8X§ = this.§?>§.levelItemManager.getItem(param1);
         var _loc7_:Sprite;
         (_loc7_ = new Sprite()).scaleX = _loc6_.scale;
         if(_loc10_)
         {
            _loc7_.scaleY = _loc6_.scale;
         }
         var _loc8_:§-T§ = this.initializeSlingshotObject(_loc6_,param2,param3,param4,_loc7_);
         if(_loc10_ || this)
         {
            if(param5 < 0)
            {
               if(_loc10_)
               {
                  this.mBirds.push(_loc8_);
                  addr115:
                  loop1:
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        this.§]G§.addChild(_loc8_.sprite);
                        if(_loc9_ && param3)
                        {
                           while(true)
                           {
                              if(!_loc9_)
                              {
                                 continue loop2;
                              }
                              continue loop1;
                           }
                           addr93:
                        }
                        return _loc8_;
                     }
                  }
                  addr115:
               }
               §§goto(addr115);
            }
            else
            {
               this.mBirds.splice(param5,0,_loc8_);
            }
            §§goto(addr93);
         }
         §§goto(addr115);
      }
      
      protected function initializeSlingshotObject(param1:§8X§, param2:Number, param3:Number, param4:Number, param5:Sprite) : §-T§
      {
         return new §-T§(this,param5,param1.itemName,param1,param2,param3,param4);
      }
      
      public function §=i§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§95§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§ !?§);
                        addr299:
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              break loop3;
                           }
                           §§push(this.mSlingShotState);
                           continue loop1;
                        }
                        addr236:
                        if(!(_loc2_ || param1))
                        {
                           continue;
                        }
                        §§push(§ !l§);
                        loop8:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 break;
                              }
                              §§push(this.mSlingShotState);
                              if(_loc2_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              while(§§pop() != §§pop())
                              {
                                 §§push(this.mSlingShotState);
                              }
                              addr277:
                              this.§&Q§ = 10000;
                              addr280:
                              if(!(_loc3_ && _loc2_))
                              {
                                 this.§`[§ = false;
                                 this.§[!P§();
                                 addr257:
                                 loop12:
                                 while(true)
                                 {
                                    this.mDragging = false;
                                    if(!_loc3_)
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          while(true)
                                          {
                                             if(_loc2_ || param1)
                                             {
                                                if(_loc2_)
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      continue loop12;
                                                   }
                                                   §§goto(addr280);
                                                }
                                                else
                                                {
                                                   §§goto(addr228);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   if(this.mDragging)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            this.mDragging = false;
                                                            §§goto(addr207);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr277);
                                                         }
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   else
                                                   {
                                                      this.§[!P§();
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§goto(addr51);
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr58);
                                                      addr49:
                                                   }
                                                   §§goto(addr128);
                                                }
                                                addr192:
                                             }
                                             §§goto(addr257);
                                          }
                                          addr309:
                                          continue;
                                          addr309:
                                          addr108:
                                       }
                                       if(_loc2_ || this)
                                       {
                                          break;
                                       }
                                       loop13:
                                       while(true)
                                       {
                                          if(!(_loc3_ && _loc2_))
                                          {
                                             if(_loc2_)
                                             {
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   this.§`[§ = false;
                                                   while(true)
                                                   {
                                                      this.§[!P§();
                                                      addr128:
                                                      while(!(_loc3_ && _loc3_))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               this.§&Q§ = 0;
                                                            }
                                                            else
                                                            {
                                                               addr304:
                                                            }
                                                            continue loop0;
                                                            break loop13;
                                                         }
                                                         break;
                                                      }
                                                      break loop8;
                                                      §§goto(addr257);
                                                      addr51:
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         addr58:
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr262);
                                             §§goto(addr257);
                                          }
                                          addr253:
                                          while(true)
                                          {
                                             this.§&Q§ = 2000;
                                             addr228:
                                             while(true)
                                             {
                                                continue loop12;
                                             }
                                          }
                                       }
                                       addr207:
                                       continue;
                                       addr207:
                                       §§goto(addr128);
                                    }
                                    §§goto(addr49);
                                 }
                                 addr257:
                                 addr262:
                                 return;
                                 addr23:
                              }
                              §§goto(addr309);
                              addr276:
                           }
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr236);
                           }
                           continue loop3;
                        }
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 this.§[!P§();
                                 §§goto(addr253);
                              }
                              addr251:
                           }
                           break loop2;
                        }
                        this.§&Q§ = 1000;
                        §§goto(addr309);
                     }
                     if(!_loc3_)
                     {
                        this.§[!P§();
                     }
                     §§goto(addr304);
                  }
                  this.§[!P§();
                  §§goto(addr327);
               }
            }
         }
         §§goto(addr251);
      }
      
      public function get §-d§() : §^g§
      {
         return this.§?>§;
      }
      
      public function §;!"§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.mSlingShotState == § !l§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§pop();
                     addr60:
                     return this.§&Q§ <= 0;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      private function §5";§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§%!k§ = this.§?>§.animationManager.getAnimation("SLINGSHOT");
            while(true)
            {
               this.§"T§ = this.§%!k§.getFrame(0);
               while(true)
               {
                  §§push(this.§"T§);
                  loop2:
                  while(true)
                  {
                     §§push(-3);
                     addr249:
                     while(true)
                     {
                        §§pop().pivotX = §§pop();
                        continue loop2;
                     }
                  }
                  if(!(_loc2_ && _loc1_))
                  {
                     return;
                  }
               }
            }
         }
         §§goto(addr170);
      }
      
      protected function §;!+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§]!$§);
            loop0:
            while(true)
            {
               §§pop().addChild(this.§5!G§);
               addr97:
               while(true)
               {
                  §§push(this.§]!$§);
                  continue loop0;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function §,o§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(!_loc2_)
         {
            this.§`-§ = this.§""4§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§5]§ = this.§%W§;
                  do
                  {
                     this.§?!;§ = §4#§.§]!x§;
                  }
                  while(_loc2_ && _loc2_);
                  
                  if(!_loc2_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     _loc1_ = null;
                     return;
                     addr52:
                  }
                  break;
               }
            }
         }
         §§goto(addr52);
      }
      
      protected function §-#§(param1:uint) : DisplayObject
      {
         return new §&!D§(2,2,param1);
      }
      
      protected function §0?§(param1:uint, param2:Boolean) : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:BitmapData = null;
         if(!(_loc4_ && param2))
         {
            §§push(!§-4§);
            if(_loc5_ || param2)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§pop();
                     if(_loc5_)
                     {
                        §§push(param2);
                        if(!_loc5_)
                        {
                        }
                        addr57:
                        if(§§pop())
                        {
                           addr58:
                           _loc3_ = new BitmapData(18,26,true,4278190080 | param1);
                           if(_loc5_)
                           {
                              if(§-4§)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr79:
                                    this.§?>§.textureManager.unregisterBitmapDataTexture(§-4§);
                                    if(_loc4_ && param2)
                                    {
                                    }
                                    §§goto(addr108);
                                 }
                              }
                              §-4§ = this.§?>§.textureManager.getTextureFromBitmapData(_loc3_);
                              addr108:
                              return new §`y§(§-4§);
                           }
                        }
                        §§goto(addr79);
                     }
                     §§goto(addr58);
                  }
                  §§push(Boolean(§§pop()));
               }
            }
            §§goto(addr57);
         }
         §§goto(addr58);
      }
      
      protected function §<J§(param1:uint = 3151368, param2:uint = 3151368, param3:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§]![§ = new Sprite();
            if(!_loc5_)
            {
               this.§"!S§ = new Sprite();
            }
         }
         var _loc4_:DisplayObject;
         (_loc4_ = this.§0?§(param2,param3)).rotation = Math.PI;
         if(!(_loc5_ && param1))
         {
            §§push(_loc4_);
            §§push(_loc4_.width);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() / 2);
            }
            §§pop().x = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc4_);
               §§push(_loc4_.height);
               if(_loc6_ || this)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().y = §§pop();
               while(true)
               {
                  this.§"!S§.addChild(_loc4_);
                  while(true)
                  {
                     this.§]![§.addChild(this.§"!S§);
                     addr170:
                     while(!(_loc5_ && this))
                     {
                        continue loop0;
                     }
                  }
                  addr99:
                  if(!(_loc6_ || this))
                  {
                     continue;
                  }
                  addr106:
                  §§push(this.§["A§);
                  if(_loc6_ || param2)
                  {
                     addr61:
                     if(_loc6_ || this)
                     {
                        addr68:
                        §§pop().addChild(this.§2!&§);
                        if(_loc6_ || param1)
                        {
                           if(_loc5_ && this)
                           {
                              loop15:
                              while(!_loc5_)
                              {
                                 §§push(this.§["A§);
                                 loop16:
                                 while(true)
                                 {
                                    §§push(5);
                                    if(_loc5_ && param2)
                                    {
                                       break;
                                    }
                                    §§pop().y = §§pop();
                                    loop17:
                                    for(; !(_loc5_ && this); while(true)
                                    {
                                       if(_loc5_ && param1)
                                       {
                                          continue loop17;
                                       }
                                       §§goto(addr99);
                                       §§goto(addr68);
                                    },while(true)
                                    {
                                       break loop16;
                                       §§goto(addr61);
                                    })
                                    {
                                       if(!_loc5_)
                                       {
                                          this.§2!&§ = this.§-#§(param1);
                                          continue;
                                       }
                                       addr203:
                                       while(true)
                                       {
                                          this.§=!6§ = this.§-#§(param1);
                                          break loop17;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc6_)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(this.§ "D§);
                                             if(_loc6_)
                                             {
                                                addr160:
                                                if(!(_loc5_ && param1))
                                                {
                                                   §§pop().addChild(this.§=!6§);
                                                   §§goto(addr170);
                                                }
                                                loop5:
                                                while(true)
                                                {
                                                   §§push(22);
                                                   addr208:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop();
                                                      addr209:
                                                      addr222:
                                                      while(_loc6_ || this)
                                                      {
                                                         §§push(this.§ "D§);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop5;
                                                         §§goto(addr209);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§push(0);
                                                if(!_loc6_)
                                                {
                                                   break;
                                                }
                                                §§pop().y = §§pop();
                                                §§goto(addr203);
                                                §§goto(addr195);
                                             }
                                             addr195:
                                             §§goto(addr208);
                                          }
                                          break;
                                       }
                                       §§goto(addr209);
                                       §§goto(addr119);
                                    }
                                    addr119:
                                    while(true)
                                    {
                                       this.§ "D§ = new Sprite();
                                       §§goto(addr222);
                                    }
                                    §§goto(addr106);
                                 }
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop15;
                                 }
                              }
                              while(_loc6_)
                              {
                                 §§goto(addr142);
                                 §§push(this.§["A§);
                              }
                              §§goto(addr170);
                              addr152:
                           }
                           return;
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr229);
      }
      
      public function § !i§(param1:Number) : void
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         §§push(this.§>"%§);
         if(!(_loc12_ && _loc2_))
         {
            §§push(this.§%W§);
            if(_loc11_)
            {
               addr42:
               §§push(§§pop() - §§pop());
               if(!_loc12_)
               {
                  §§push(§^g§.§5!-§);
               }
               var _loc2_:* = Number(§§pop());
               §§push(this.§!"3§);
               if(_loc11_ || this)
               {
                  §§push(this.§""4§);
                  if(_loc11_ || _loc3_)
                  {
                     §§push(§§pop() - §§pop());
                     if(!_loc12_)
                     {
                        addr67:
                        §§push(§§pop() / §^g§.§5!-§);
                        if(!_loc12_)
                        {
                           addr70:
                           §§push(Number(§§pop()));
                        }
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Number = Math.cos(this.§"X§);
                     var _loc5_:Number = Math.sin(this.§"X§);
                     §§push(-Math.sin(this.§"X§));
                     if(!(_loc12_ && _loc2_))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc6_:* = §§pop();
                     var _loc7_:Number = Math.cos(this.§"X§);
                     §§push(_loc3_);
                     if(_loc11_ || this)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc8_:* = §§pop();
                     §§push(_loc2_);
                     if(!_loc12_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(!_loc12_)
                     {
                        §§push(_loc8_);
                        if(_loc11_)
                        {
                           §§push(_loc4_);
                           if(!_loc12_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc11_)
                              {
                                 §§push(_loc9_);
                                 if(_loc11_)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc12_ && this))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc11_ || this)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc11_ || _loc3_)
                                          {
                                             addr157:
                                             §§push(Number(§§pop()));
                                             if(_loc11_)
                                             {
                                                _loc3_ = §§pop();
                                                if(!_loc12_)
                                                {
                                                   addr163:
                                                   §§push(_loc8_);
                                                   if(_loc11_ || param1)
                                                   {
                                                      §§push(_loc6_);
                                                      if(!_loc12_)
                                                      {
                                                         addr174:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc11_)
                                                         {
                                                            addr177:
                                                            §§push(_loc9_);
                                                            if(!(_loc12_ && param1))
                                                            {
                                                               addr185:
                                                               addr186:
                                                               §§push(§§pop() * _loc7_);
                                                               if(!_loc11_)
                                                               {
                                                               }
                                                               addr235:
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc12_)
                                                               {
                                                                  addr238:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               if(!_loc12_)
                                                               {
                                                                  §§push(this.§]![§);
                                                                  loop0:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§pop().x = §§pop();
                                                                        loop2:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§]![§);
                                                                           loop3:
                                                                           for(; _loc11_; while(true)
                                                                           {
                                                                              §§push(this.§]![§);
                                                                              if(_loc12_ && this)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr651);
                                                                              §§goto(addr474);
                                                                           })
                                                                           {
                                                                              §§push(_loc2_);
                                                                              while(!(_loc12_ && this))
                                                                              {
                                                                                 §§pop().y = §§pop();
                                                                                 §§push(this.§"X§);
                                                                                 continue loop3;
                                                                                 if(_loc11_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc11_ || this)
                                                                                    {
                                                                                       §§push(this.§-!s§);
                                                                                       if(_loc11_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop() / (180 / Math.PI));
                                                                                       }
                                                                                       §§push(§§pop() - §§pop());
                                                                                    }
                                                                                 }
                                                                                 if(_loc12_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§pop().rotation = §§pop();
                                                                                 loop6:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§5!G§);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§""4§);
                                                                                       loop8:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§^g§.§5!-§);
                                                                                          loop9:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / §§pop());
                                                                                             addr637:
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop().x = §§pop();
                                                                                                addr638:
                                                                                                while(!_loc12_)
                                                                                                {
                                                                                                   §§push(this.§5!G§);
                                                                                                   loop12:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§%W§);
                                                                                                      addr615:
                                                                                                      while(!(_loc12_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§^g§.§5!-§);
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            continue loop9;
                                                                                                         }
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().y = §§pop();
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       if(!(_loc11_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§push(this.§"X§);
                                                                                       if(!_loc12_)
                                                                                       {
                                                                                          if(!(_loc12_ && this))
                                                                                          {
                                                                                             if(_loc11_ || _loc2_)
                                                                                             {
                                                                                                §§pop().rotation = §§pop();
                                                                                                loop16:
                                                                                                for(; !(_loc12_ && _loc3_); loop21:
                                                                                                while(!(_loc12_ && _loc3_))
                                                                                                {
                                                                                                   §§push(this.§6"3§);
                                                                                                   loop22:
                                                                                                   for(; _loc11_; loop25:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§6"3§);
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(this.§"X§);
                                                                                                      if(_loc11_)
                                                                                                      {
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§pop().rotation = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§["A§.rotation = Math.atan2(_loc2_ - this.§["A§.y,_loc3_ - this.§["A§.x);
                                                                                                               loop27:
                                                                                                               for(; _loc11_ || _loc2_; loop29:
                                                                                                               while(!(_loc12_ && param1))
                                                                                                               {
                                                                                                                  if(!(_loc11_ || param1))
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  §§push(this.§2!&§);
                                                                                                                  while(!_loc12_)
                                                                                                                  {
                                                                                                                     §§push(_loc10_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(2);
                                                                                                                        addr430:
                                                                                                                        addr403:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           addr431:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().height = §§pop();
                                                                                                                              addr432:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    continue loop25;
                                                                                                                                 }
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        if(!(_loc11_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        §§push(2);
                                                                                                                        if(!_loc12_)
                                                                                                                        {
                                                                                                                           addr414:
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(!(_loc12_ && this))
                                                                                                                           {
                                                                                                                              §§pop().y = §§pop();
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 this.§ "D§.rotation = Math.atan2(_loc2_ - this.§ "D§.y,_loc3_ - this.§ "D§.x);
                                                                                                                                 loop36:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§=!6§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§ "D§.x,2) + Math.pow(_loc2_ - this.§ "D§.y,2));
                                                                                                                                       continue loop36;
                                                                                                                                       addr294:
                                                                                                                                       loop39:
                                                                                                                                       for(; !(_loc12_ && this); §§push(this.§=!6§),if(_loc12_)
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       },§§push(this.§=!6§.height),if(_loc11_)
                                                                                                                                       {
                                                                                                                                          if(!_loc12_)
                                                                                                                                          {
                                                                                                                                             §§push(-§§pop());
                                                                                                                                             if(_loc11_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                addr274:
                                                                                                                                                §§push(2);
                                                                                                                                                if(_loc11_)
                                                                                                                                                {
                                                                                                                                                   addr278:
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                   if(_loc11_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().y = §§pop();
                                                                                                                                                      loop44:
                                                                                                                                                      while(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_ || this)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§@!K§ = false;
                                                                                                                                                               if(!_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop44;
                                                                                                                                                            }
                                                                                                                                                            return;
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         continue loop36;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr305);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr302);
                                                                                                                                                }
                                                                                                                                                §§goto(addr303);
                                                                                                                                             }
                                                                                                                                             §§goto(addr278);
                                                                                                                                          }
                                                                                                                                          §§goto(addr304);
                                                                                                                                       },§§goto(addr274))
                                                                                                                                       {
                                                                                                                                          §§push(_loc10_);
                                                                                                                                          loop40:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(2);
                                                                                                                                             addr303:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                addr304:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop().height = §§pop();
                                                                                                                                                   addr305:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         continue loop39;
                                                                                                                                                      }
                                                                                                                                                      continue loop35;
                                                                                                                                                   }
                                                                                                                                                   continue loop40;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr431);
                                                                                                                           }
                                                                                                                           §§goto(addr432);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr430);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(this.§2!&§);
                                                                                                                     if(_loc12_ && this)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§push(this.§2!&§.height);
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                        §§push(-§§pop());
                                                                                                                        if(!(_loc12_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§goto(addr403);
                                                                                                                        }
                                                                                                                        §§goto(addr414);
                                                                                                                     }
                                                                                                                     §§goto(addr403);
                                                                                                                  }
                                                                                                                  §§goto(addr447);
                                                                                                               })
                                                                                                               {
                                                                                                                  if(!(_loc11_ || this))
                                                                                                                  {
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  §§push(this.§2!&§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().width = Math.sqrt(Math.pow(_loc3_ - this.§["A§.x,2) + Math.pow(_loc2_ - this.§["A§.y,2));
                                                                                                                     continue loop27;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                               if(!(_loc11_ || param1))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§goto(addr294);
                                                                                                               §§push(this.§=!6§);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr533);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr538);
                                                                                                      if(_loc12_ && _loc3_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc12_)
                                                                                                      {
                                                                                                         §§goto(addr443);
                                                                                                      }
                                                                                                      §§goto(addr628);
                                                                                                   })
                                                                                                   {
                                                                                                      §§push(this.§%W§);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§^g§.§5!-§);
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            while(_loc11_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc11_ || param1)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                               §§goto(addr559);
                                                                                                            }
                                                                                                            §§goto(addr562);
                                                                                                            addr538:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr561);
                                                                                                   }
                                                                                                   §§goto(addr557);
                                                                                                })
                                                                                                {
                                                                                                   §§push(this.§6"3§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§""4§);
                                                                                                      addr559:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§^g§.§5!-§);
                                                                                                         addr561:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            addr562:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               continue loop16;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr638);
                                                                                             }
                                                                                             §§goto(addr637);
                                                                                          }
                                                                                          §§goto(addr615);
                                                                                       }
                                                                                       §§goto(addr627);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr290);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc12_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc12_ && this))
                                                               {
                                                                  addr200:
                                                                  _loc2_ = §§pop();
                                                                  §§push(3.5);
                                                                  if(!(_loc12_ && _loc3_))
                                                                  {
                                                                     addr209:
                                                                     §§push(8);
                                                                     §§push(this.§?!;§);
                                                                     if(!_loc12_)
                                                                     {
                                                                        §§push(this.§,!9§);
                                                                        if(_loc11_ || param1)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc11_ || this)
                                                                           {
                                                                              addr233:
                                                                              §§push(§§pop() / this.§?!;§);
                                                                           }
                                                                           §§goto(addr235);
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                     }
                                                                     §§goto(addr233);
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               §§goto(addr235);
                                                            }
                                                         }
                                                         §§goto(addr200);
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr177);
                                                }
                                                §§goto(addr200);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr177);
                                       }
                                       §§goto(addr174);
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr174);
                        }
                        §§goto(addr177);
                     }
                     §§goto(addr163);
                  }
                  §§goto(addr67);
               }
               §§goto(addr70);
            }
            §§push(§§pop() / §§pop());
            if(_loc12_ && _loc3_)
            {
            }
         }
         §§goto(addr42);
      }
      
      public function §'b§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§-T§ = null;
         do
         {
            if(this.mBirds.length <= 0)
            {
               if(_loc4_ || _loc3_)
               {
                  this.§7""§();
                  if(_loc4_)
                  {
                     if(this.mBirds.length > 0)
                     {
                        break;
                     }
                     addr70:
                     var _loc1_:§-T§ = this.§>"+§("BIRD_SARDINE",this.§""4§,this.§%W§,0);
                     if(_loc4_ || _loc2_)
                     {
                        _loc1_.§[k§(true);
                        while(true)
                        {
                           _loc1_.§6!q§ = false;
                           while(!_loc3_)
                           {
                              this.§=i§(§'`§);
                              if(_loc4_)
                              {
                                 return;
                                 addr98:
                              }
                           }
                        }
                     }
                     §§goto(addr98);
                  }
                  break;
               }
               break;
            }
            this.§9!^§(0,true);
         }
         while(_loc4_);
         
         _loc2_ = this.mBirds[0];
         if(!_loc3_)
         {
            _loc2_.§[k§(false);
         }
         §§goto(addr70);
      }
      
      protected function §7""§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<!O§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=i§(§7!y§);
         }
      }
      
      public function §[!P§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this);
            §§push(this.§`-§);
            §§push(this.§5]§);
            if(_loc2_ || this)
            {
               §§push(this.§?!;§);
               if(!(_loc1_ && this))
               {
                  §§push(§§pop() / 8);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setNewCoordinatesForRubber(§§pop(),§§pop());
         }
      }
      
      protected function get §-!V§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§-!H§);
         if(!_loc1_)
         {
            return §§pop() * this.§#s§;
         }
      }
      
      protected function get §,!9§() : Number
      {
         return Math.min(this.§-!H§,this.§?!;§);
      }
      
      protected function get §!"3§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-!H§);
            if(_loc2_ || _loc1_)
            {
               §§push(this.§?!;§);
               if(!_loc1_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!(_loc1_ && _loc2_))
                     {
                        §§goto(addr50);
                     }
                     else
                     {
                        addr97:
                        §§push(this.§43§);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr97);
               }
               §§goto(addr68);
            }
            §§goto(addr59);
         }
         addr50:
         §§push(this.§`-§);
         if(!(_loc1_ && this))
         {
            addr59:
            §§push(this.§?!;§);
            if(!(_loc1_ && this))
            {
               addr68:
               §§push(§§pop() * Math.cos(this.§-!s§ / 180 * Math.PI));
            }
            §§push(§§pop() + §§pop());
            if(_loc1_ && _loc1_)
            {
               addr99:
               return §§pop();
            }
         }
         return §§pop();
      }
      
      protected function get §>"%§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§-!H§);
            if(_loc2_ || this)
            {
               §§push(this.§?!;§);
               if(_loc2_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc2_)
                     {
                        §§goto(addr45);
                     }
                     §§goto(addr89);
                  }
                  addr89:
                  return §§pop();
                  §§push(this.§;!3§);
               }
               §§goto(addr63);
            }
            §§goto(addr89);
         }
         addr45:
         §§push(this.§5]§);
         if(_loc2_ || this)
         {
            §§push(this.§?!;§);
            if(!(_loc1_ && this))
            {
               addr63:
               §§push(§§pop() * Math.sin(this.§-!s§ / 180 * Math.PI));
            }
            §§push(§§pop() - §§pop());
            if(!_loc2_)
            {
               §§goto(addr89);
            }
         }
         return §§pop();
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         if(!_loc13_)
         {
            §§push(this.§43§);
            if(!(_loc13_ && this))
            {
               §§push(param1);
               loop0:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§;!3§);
                                 if(_loc12_)
                                 {
                                    §§push(param2);
                                    if(_loc13_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop() == §§pop());
                                    if(_loc12_)
                                    {
                                       if(_loc13_)
                                       {
                                          continue loop2;
                                       }
                                       loop5:
                                       while(!§§pop())
                                       {
                                          do
                                          {
                                             this.§-!H§ = Math.sqrt((param2 - this.§5]§) * (param2 - this.§5]§) + (param1 - this.§`-§) * (param1 - this.§`-§));
                                             if(!(_loc12_ || param3))
                                             {
                                                continue;
                                             }
                                             if(_loc13_ && param2)
                                             {
                                                break loop5;
                                             }
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   §§push(this.§-!H§);
                                                   if(_loc12_ || this)
                                                   {
                                                      addr124:
                                                      §§push(Number(§§pop()));
                                                      break;
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             var _loc4_:* = §§pop();
                                             if(!(_loc13_ && this))
                                             {
                                                §§push(this.§-!V§);
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(this.§?!;§);
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(param3);
                                                            loop10:
                                                            while(!§§pop())
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(this);
                                                                  §§push(this.§?!;§);
                                                                  if(!(_loc13_ && param3))
                                                                  {
                                                                     §§push(§§pop() / this.§#s§);
                                                                  }
                                                                  §§pop().§-!H§ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     loop38:
                                                                     while(_loc12_ || param2)
                                                                     {
                                                                        §§push(this.§-!H§);
                                                                        loop39:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           loop40:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              loop41:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc12_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 §§push(§§pop());
                                                                                 loop42:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop43:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop();
                                                                                          loop44:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§-!s§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(-90);
                                                                                                addr1154:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   addr1155:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      addr1156:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         addr1157:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr1158:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                loop74:
                                                                                                for(; _loc12_ || param3; if(_loc13_ && param3)
                                                                                                {
                                                                                                   continue;
                                                                                                },§§goto(addr643))
                                                                                                {
                                                                                                   param2 = §§pop();
                                                                                                   loop75:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         if(!(_loc12_ || this))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         this.§-!H§ = _loc10_;
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§^$§);
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc12_)
                                                                                                                  {
                                                                                                                     if(!(_loc13_ && param3))
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop144:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§-!H§);
                                                                                                                              addr363:
                                                                                                                              loop145:
                                                                                                                              for(; !(_loc13_ && param3); §§push(this.§-!H§),if(!(_loc12_ || this))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              },if(!_loc13_)
                                                                                                                              {
                                                                                                                                 if(_loc12_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§?!;§);
                                                                                                                                    if(!(_loc13_ && this))
                                                                                                                                    {
                                                                                                                                       §§goto(addr236);
                                                                                                                                    }
                                                                                                                                    §§goto(addr256);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1145);
                                                                                                                              },§§goto(addr459))
                                                                                                                              {
                                                                                                                                 if(!_loc13_)
                                                                                                                                 {
                                                                                                                                    §§push(this.§?!;§);
                                                                                                                                    loop146:
                                                                                                                                    while(_loc12_ || this)
                                                                                                                                    {
                                                                                                                                       §§push(0.45);
                                                                                                                                       loop147:
                                                                                                                                       while(!(_loc13_ && param1))
                                                                                                                                       {
                                                                                                                                          if(!_loc13_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§="E§);
                                                                                                                                                      loop149:
                                                                                                                                                      while(_loc12_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         loop150:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            if(_loc12_)
                                                                                                                                                            {
                                                                                                                                                               addr344:
                                                                                                                                                               if(!(_loc12_ || param2))
                                                                                                                                                               {
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc13_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr293:
                                                                                                                                                                           if(!(_loc13_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              addr300:
                                                                                                                                                                              if(!(_loc13_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc12_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    this.playStretchSound();
                                                                                                                                                                                    addr316:
                                                                                                                                                                                    loop155:
                                                                                                                                                                                    for(; !(_loc13_ && param1); while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc13_ && param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop155;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc13_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr198:
                                                                                                                                                                                             if(_loc13_ && param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop75;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr205);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr651);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr400);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr928);
                                                                                                                                                                                    },§§goto(addr453))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc12_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc13_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§="E§ = false;
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop38;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop64:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§5]§);
                                                                                                                                                                                          addr1049:
                                                                                                                                                                                          loop65:
                                                                                                                                                                                          for(; !(_loc13_ && param2); loop125:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc13_ && param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc13_ && param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             param1 = §§pop();
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc12_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr776:
                                                                                                                                                                                                   if(_loc13_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(this.§5]§);
                                                                                                                                                                                                   continue loop125;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1210);
                                                                                                                                                                                                §§goto(addr300);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                this.§;!3§ = param2;
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.§-!s§ = Math.atan2(-(this.§;!3§ - this.§5]§),this.§43§ - this.§`-§);
                                                                                                                                                                                                   §§goto(addr1295);
                                                                                                                                                                                                   addr205:
                                                                                                                                                                                                   if(_loc13_ && param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr155);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr776);
                                                                                                                                                                                             }
                                                                                                                                                                                          },§§goto(addr1353))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc10_);
                                                                                                                                                                                             loop66:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                loop67:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§5]§);
                                                                                                                                                                                                   loop68:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      addr1061:
                                                                                                                                                                                                      while(!(_loc13_ && param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                                                                            addr1070:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                               addr1071:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  addr1072:
                                                                                                                                                                                                                  while(_loc12_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     continue loop74;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop27:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                     addr1229:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc12_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(5);
                                                                                                                                                                                                                           loop29:
                                                                                                                                                                                                                           for(; _loc12_; while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(4);
                                                                                                                                                                                                                              if(!(_loc12_ || param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc9_ = §§pop();
                                                                                                                                                                                                                                 addr1203:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§?!;§);
                                                                                                                                                                                                                                    break loop65;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           })
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc8_ = §§pop();
                                                                                                                                                                                                                                 continue loop29;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1227:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1260:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§;!3§ = param2;
                                                                                                                                                                                                                              loop21:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.§-!s§ = -160;
                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                 addr422:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc13_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop144;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop21;
                                                                                                                                                                                                                                    §§goto(addr293);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1260:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop115:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                         loop140:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            addr1145:
                                                                                                                                                                                                            loop62:
                                                                                                                                                                                                            while(_loc12_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  param1 = §§pop();
                                                                                                                                                                                                                  continue loop64;
                                                                                                                                                                                                                  addr643:
                                                                                                                                                                                                                  if(!(_loc12_ || param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  param2 = §§pop();
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc12_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr655:
                                                                                                                                                                                                                           if(_loc13_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           this.§-!H§ = _loc11_;
                                                                                                                                                                                                                           loop135:
                                                                                                                                                                                                                           while(_loc12_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§43§ = param1;
                                                                                                                                                                                                                              loop136:
                                                                                                                                                                                                                              while(!(_loc13_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc12_ || param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop55:
                                                                                                                                                                                                                                    while(!_loc13_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§-!s§);
                                                                                                                                                                                                                                       if(_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop62;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(-90);
                                                                                                                                                                                                                                       while(_loc12_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             loop58:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                                                                addr1114:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   loop60:
                                                                                                                                                                                                                                                   while(_loc12_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                      loop61:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc13_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc13_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§`-§);
                                                                                                                                                                                                                                                                     addr1136:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc10_);
                                                                                                                                                                                                                                                                        addr1137:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                                                                           addr1138:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§`-§);
                                                                                                                                                                                                                                                                              addr1140:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                 addr1141:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    addr1142:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop115;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr1134:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this.§-!H§);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc10_);
                                                                                                                                                                                                                                                                     addr998:
                                                                                                                                                                                                                                                                     addr468:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                        addr999:
                                                                                                                                                                                                                                                                        while(_loc12_ || this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                                                                           continue loop42;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop41;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!(_loc12_ || this))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc11_);
                                                                                                                                                                                                                                                                        loop128:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc13_ && param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop66;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc12_ || this)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                                                                                                                                 if(_loc12_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc12_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr514:
                                                                                                                                                                                                                                                                                       §§push(this.§5]§);
                                                                                                                                                                                                                                                                                       if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc13_ && param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop68;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                          loop129:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc12_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc12_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc13_ && param3))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                  break loop147;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            loop106:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc12_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc13_ && param3)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     continue loop60;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§push(Math.abs(this.§-!s§ - -90 - _loc8_) - _loc7_);
                                                                                                                                                                                                                                                                                                                  loop107:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     loop108:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                        addr887:
                                                                                                                                                                                                                                                                                                                        loop109:
                                                                                                                                                                                                                                                                                                                        while(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                           loop139:
                                                                                                                                                                                                                                                                                                                           while(_loc12_ || param2)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc12_ || param2)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc12_ || param2))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop58;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 addr916:
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                 if(!(_loc13_ && param3))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       §§goto(addr916);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr924:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       _loc11_ = §§pop();
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr930:
                                                                                                                                                                                                                                                                                                                                             if(!(_loc12_ || this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§push(this.§`-§);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(_loc11_);
                                                                                                                                                                                                                                                                                                                                                if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr686:
                                                                                                                                                                                                                                                                                                                                                   if(_loc12_ || param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                                                                                                                                                                      if(_loc12_ || this)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(this.§`-§);
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc12_ || param3)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  addr713:
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc12_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                                                                           addr718:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc13_ && this))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc13_ && param2)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc13_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!(_loc13_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             while(_loc12_)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                continue loop65;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          continue loop139;
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(!(_loc13_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                   addr950:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                      addr951:
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                                            break loop129;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop140;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                addr949:
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1072);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          break loop146;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr743:
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1141);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              while(_loc12_ || param1)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                    continue loop66;
                                                                                                                                                                                                                                                                                                                                                                                    addr567:
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc12_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                                       break loop146;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop8;
                                                                                                                                                                                                                                                                                                                                                                              addr821:
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop108;
                                                                                                                                                                                                                                                                                                                                                                           addr582:
                                                                                                                                                                                                                                                                                                                                                                           if(_loc13_ && param3)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc13_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                          if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc12_ || this)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr1342:
                                                                                                                                                                                                                                                                                                                                                                                                   if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                      break loop145;
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(this.§5]§);
                                                                                                                                                                                                                                                                                                                                                                                                   break loop128;
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr1202);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                _loc10_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                continue loop38;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             addr1183:
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          break loop145;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       addr1377:
                                                                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop() - §§pop()));
                                                                                                                                                                                                                                                                                                                                                                                       break loop62;
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1142);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1069);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1071);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr951);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop107;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                        if(_loc13_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           continue loop139;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr845:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 break loop136;
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              continue loop144;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1070);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  addr713:
                                                                                                                                                                                                                                                                                                                                                                  addr838:
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1140);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1141);
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr514);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr705:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop106;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr860:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr713);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr860);
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr686);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr859:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr718);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr751);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1134);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          this.§="E§ = true;
                                                                                                                                                                                                                                                                                                                                          loop159:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr155:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                this.§@!K§ = true;
                                                                                                                                                                                                                                                                                                                                                if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc12_ || param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop159;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      if(_loc12_ || param3)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr177:
                                                                                                                                                                                                                                                                                                                                                         §§push(true);
                                                                                                                                                                                                                                                                                                                                                         if(!_loc12_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            loop153:
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc12_ || param2)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  continue loop150;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               addr352:
                                                                                                                                                                                                                                                                                                                                                               while(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                                                                                                                                                                  continue loop153;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop43;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop149;
                                                                                                                                                                                                                                                                                                                                                            addr266:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         if(_loc12_ || param3)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop61;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr845);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1229);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   while(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(!_loc13_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop145;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1021:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop144;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   continue loop136;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop155;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.mDragging);
                                                                                                                                                                                                                                                                                                                                          addr1245:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(_loc13_ && param3)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§push(this);
                                                                                                                                                                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                                                                                                                                                                   if(_loc12_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - 0.7);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§pop().§43§ = §§pop();
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1260);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop10;
                                                                                                                                                                                                                                                                                                                                                addr1246:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             continue loop23;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr930);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr1278:
                                                                                                                                                                                                                                                                                                                                       addr928:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1136);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                                                                                                                 break loop109;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                              if(_loc12_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(_loc13_ && param1)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                    break loop150;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              break loop149;
                                                                                                                                                                                                                                                                                                                              §§goto(addr895);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr895:
                                                                                                                                                                                                                                                                                                                           §§goto(addr999);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc12_ || param2))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop67;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr964);
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1137);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr258:
                                                                                                                                                                                                                                                                                                            if(!(_loc12_ || param3))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr266);
                                                                                                                                                                                                                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1156);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr1061);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr887);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr713);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr955);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr531:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr705);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1157);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr531);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr998);
                                                                                                                                                                                                                                                                           §§goto(addr999);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1353:
                                                                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                        if(!(_loc13_ && param2))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                                                                                                                        this.§-!H§ = Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
                                                                                                                                                                                                                                                                        break loop75;
                                                                                                                                                                                                                                                                        addr1354:
                                                                                                                                                                                                                                                                        addr478:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1377);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1132:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr1162:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            continue loop55;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         addr1161:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1162);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr1132);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1158);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                          addr1182:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1183);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop44;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 this.§;!3§ = param2;
                                                                                                                                                                                                                                 §§goto(addr422);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break loop41;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc12_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc13_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr859);
                                                                                                                                                                                                                                             §§push(this.§?!;§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1374:
                                                                                                                                                                                                                                             §§goto(addr1377);
                                                                                                                                                                                                                                             §§push(this.§`-§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop39;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr924);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1182);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc12_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop135;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr407);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                              §§push(this.§-!s§);
                                                                                                                                                                                                                              if(!(_loc13_ && param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * (180 / Math.PI));
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().§-!s§ = §§pop();
                                                                                                                                                                                                                              §§goto(addr1278);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1016:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr941);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr982:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc12_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc12_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§-!s§);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc13_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc12_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop7;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(-90);
                                                                                                                                                                                                                                    if(_loc12_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc13_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc13_ && this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             break;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                          if(!(_loc13_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc13_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc13_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr821);
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1155);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1112);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr950);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1104);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr949);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1209);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1154);
                                                                                                                                                                                                                              addr787:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1203);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1354);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc13_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1227);
                                                                                                                                                                                                                        §§push(12);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr1246);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1260);
                                                                                                                                                                                                                     §§goto(addr655);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                            addr1379:
                                                                                                                                                                                                            §§goto(addr1342);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr1181);
                                                                                                                                                                                             §§goto(addr1049);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§43§ = param1;
                                                                                                                                                                                       continue loop75;
                                                                                                                                                                                       §§goto(addr316);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr316:
                                                                                                                                                                                    addr1045:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1379);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr769);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr422);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr316);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr155);
                                                                                                                                                                  }
                                                                                                                                                                  addr284:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr352);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         while(!_loc13_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               break loop149;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr844);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1161);
                                                                                                                                                      }
                                                                                                                                                      while(_loc12_)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         §§goto(addr982);
                                                                                                                                                      }
                                                                                                                                                      continue loop24;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr400);
                                                                                                                                                   addr236:
                                                                                                                                                   if(_loc13_ && param2)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0.8);
                                                                                                                                                      if(!_loc12_)
                                                                                                                                                      {
                                                                                                                                                         continue loop147;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc13_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr256:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            continue loop146;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr258);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1138);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr478);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1114);
                                                                                                                                          }
                                                                                                                                          §§goto(addr531);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc12_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr567);
                                                                                                                                          }
                                                                                                                                          §§goto(addr735);
                                                                                                                                          §§goto(addr382);
                                                                                                                                       }
                                                                                                                                       addr382:
                                                                                                                                       §§goto(addr829);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc12_ || param1)
                                                                                                                                       {
                                                                                                                                          §§goto(addr582);
                                                                                                                                       }
                                                                                                                                       §§goto(addr743);
                                                                                                                                       §§goto(addr374);
                                                                                                                                    }
                                                                                                                                    addr374:
                                                                                                                                    §§goto(addr1377);
                                                                                                                                 }
                                                                                                                                 §§goto(addr787);
                                                                                                                              }
                                                                                                                              while(!_loc13_)
                                                                                                                              {
                                                                                                                                 continue loop74;
                                                                                                                                 §§goto(addr363);
                                                                                                                              }
                                                                                                                              §§goto(addr751);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr1224);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr1245);
                                                                                                               }
                                                                                                               §§goto(addr1324);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1045);
                                                                                                   }
                                                                                                   addr1324:
                                                                                                   return §§pop();
                                                                                                   §§push(false);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr1160);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop11;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr1372:
                                                            §§goto(addr1374);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§43§ = param1;
                                                         §§goto(addr1305);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr1372);
                                          }
                                          while(_loc12_ || param3);
                                          
                                          continue loop3;
                                       }
                                       §§push(true);
                                    }
                                    if(!_loc13_)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr124);
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr86);
                  }
                  return §§pop();
               }
            }
            §§goto(addr125);
         }
         §§goto(addr71);
      }
      
      protected function playStretchSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<!O§.playSound("SlingshotStreched");
         }
      }
      
      protected function applyGravity(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§""4§);
            if(!(_loc2_ && _loc3_))
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(§§pop() * Math.cos(this.§"X§ + Math.PI / 2));
                  if(_loc3_)
                  {
                     addr55:
                     §§push(§§pop() + §§pop());
                     §§push(this.§%W§);
                     if(!(_loc2_ && _loc3_))
                     {
                        addr64:
                        §§push(param1);
                        if(_loc3_)
                        {
                           §§push(§§pop() * Math.sin(this.§"X§ + Math.PI / 2));
                           if(_loc3_)
                           {
                              addr89:
                              §§push(§§pop() + §§pop());
                              §§push(this.§"X§);
                           }
                           §§pop().setPosition(§§pop(),§§pop(),§§pop());
                           §§goto(addr93);
                        }
                        §§goto(addr89);
                     }
                  }
                  §§goto(addr89);
               }
               §§goto(addr64);
            }
            §§goto(addr55);
         }
         addr93:
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() - this.§""4§);
            if(!(_loc8_ && param1))
            {
               addr29:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!_loc8_)
            {
               this.§""4§ = param1;
            }
            §§push(param2);
            if(_loc7_ || param1)
            {
               §§push(§§pop() - this.§%W§);
               if(_loc7_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc6_:* = §§pop();
            if(_loc7_ || this)
            {
               this.§%W§ = param2;
               while(true)
               {
                  this.§"X§ = param3;
                  addr188:
                  while(!_loc8_)
                  {
                     §§push(this);
                     §§push(this.§5]§);
                     if(!(_loc8_ && param3))
                     {
                        §§push(§§pop() + _loc6_);
                     }
                     §§pop().§5]§ = §§pop();
                  }
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§;!3§);
               if(!(_loc8_ && param1))
               {
                  §§push(§§pop() + _loc6_);
               }
               §§pop().§;!3§ = §§pop();
               while(!_loc8_)
               {
                  §§push(this);
                  §§push(this.§`-§);
                  if(!(_loc8_ && this))
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§`-§ = §§pop();
                  while(!_loc8_)
                  {
                     §§push(this);
                     §§push(this.§43§);
                     if(_loc7_ || param1)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§43§ = §§pop();
                     loop5:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           if(param4)
                           {
                              if(_loc7_)
                              {
                                 if(_loc8_)
                                 {
                                    break;
                                 }
                                 this.§ !i§(0);
                              }
                              loop6:
                              while(true)
                              {
                                 addr68:
                                 while(true)
                                 {
                                    this.§@!K§ = true;
                                    if(_loc7_ || param1)
                                    {
                                       break;
                                    }
                                    continue loop6;
                                 }
                                 continue loop5;
                              }
                           }
                           §§goto(addr68);
                        }
                        else
                        {
                           §§goto(addr188);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr29);
      }
      
      protected function §5!r§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§-!V§);
         if(!_loc1_)
         {
            return §§pop() / this.§?!;§;
         }
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§-T§ = this.mBirds[this.mNextBirdIndex];
         §§push(this.§5!r§());
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc2_)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc2_.§`!$§);
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc5_)
                     {
                        §§goto(addr61);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr61);
               }
            }
         }
         addr61:
         _loc1_ = §§pop();
         §§push(_loc1_);
         if(!(_loc4_ && _loc3_))
         {
            addr80:
            return §§pop() * _loc3_;
         }
      }
      
      public function getPosition() : Point
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§-T§ = null;
         if(_loc2_)
         {
            if(this.mBirds.length > this.mNextBirdIndex)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr44:
                  _loc1_ = this.mBirds[this.mNextBirdIndex];
               }
               return new Point(_loc1_.x,_loc1_.y);
            }
            return null;
         }
         §§goto(addr44);
      }
      
      public function §'n§() : Point
      {
         return new Point(this.§`-§,this.§5]§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§-T§ = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_loc6_ || this)
         {
            if(this.§@!K§)
            {
               loop0:
               while(true)
               {
                  this.§ !i§(param1);
                  addr95:
                  addr81:
                  while(true)
                  {
                  }
                  loop3:
                  while(true)
                  {
                     if(!(_loc6_ || _loc3_))
                     {
                        continue loop0;
                     }
                     while(true)
                     {
                        do
                        {
                           if(this.§&Q§ < 0)
                           {
                              if(!(_loc7_ && param2))
                              {
                                 this.§&Q§ = 0;
                              }
                              continue loop3;
                           }
                           addr31:
                           while(true)
                           {
                              if(this.mSlingShotState != § !l§)
                              {
                                 this.§^"=§(param1,param2);
                              }
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(_loc6_)
                              {
                                 §§goto(addr435);
                              }
                              continue loop3;
                           }
                        }
                        while(false);
                        
                        _loc3_ = null;
                        if(_loc6_)
                        {
                           if(this.mBirds.length > 0)
                           {
                              if(_loc6_ || param1)
                              {
                                 _loc3_ = this.mBirds[this.mNextBirdIndex];
                              }
                              while(true)
                              {
                                 _loc3_.§8I§();
                                 addr399:
                                 if(_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    addr415:
                                    this.§=i§(§ !?§);
                                 }
                              }
                              addr373:
                              addr435:
                              return;
                              addr428:
                           }
                           if(_loc3_)
                           {
                              if(_loc6_ || param2)
                              {
                                 _loc3_.§ !S§(param1);
                                 if(!(_loc7_ && param2))
                                 {
                                    addr429:
                                    if(_loc3_)
                                    {
                                       §§push(this.mSlingShotState);
                                       while(true)
                                       {
                                          §§push(§95§);
                                          loop9:
                                          while(§§pop() != §§pop())
                                          {
                                             §§push(this.mSlingShotState);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(§ !?§);
                                                addr379:
                                                addr382:
                                                while(true)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         break;
                                                      }
                                                      continue loop10;
                                                   }
                                                   continue loop9;
                                                }
                                                if(_loc7_ && param2)
                                                {
                                                   break loop9;
                                                }
                                                if(_loc3_.§#!D§)
                                                {
                                                   addr392:
                                                   this.§=i§(§'`§);
                                                   addr395:
                                                }
                                                §§goto(addr435);
                                             }
                                          }
                                          addr413:
                                          if(this.§&Q§ <= 0)
                                          {
                                             §§goto(addr415);
                                          }
                                          §§goto(addr373);
                                          if(_loc7_ && param1)
                                          {
                                             continue;
                                          }
                                          §§push(§'`§);
                                          if(_loc7_)
                                          {
                                             §§goto(addr379);
                                          }
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr338:
                                                §§push(this.§!"3§ - _loc3_.radius * Math.cos(this.§-!s§ / (180 / Math.PI)));
                                                if(_loc6_ || param2)
                                                {
                                                   addr357:
                                                   _loc4_ = §§pop();
                                                   addr358:
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(this.§>"%§);
                                                         if(_loc6_ || param2)
                                                         {
                                                            if(!(_loc7_ && this))
                                                            {
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(_loc3_.radius);
                                                                     if(!(_loc7_ && _loc3_))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           addr284:
                                                                           §§push(§§pop() * Math.sin(this.§-!s§ / (180 / Math.PI)));
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc7_ && param2))
                                                                              {
                                                                                 addr300:
                                                                                 _loc5_ = §§pop();
                                                                                 addr301:
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    addr206:
                                                                                    if(this.mDragging)
                                                                                    {
                                                                                       addr207:
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          if(!(_loc7_ && _loc3_))
                                                                                          {
                                                                                             _loc3_.setPosition(_loc4_,_loc5_,180 - this.§-!s§);
                                                                                             addr234:
                                                                                             if(_loc6_ || _loc3_)
                                                                                             {
                                                                                                addr191:
                                                                                                §§push(this.§`[§);
                                                                                                if(_loc6_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(!(_loc7_ && param2))
                                                                                                         {
                                                                                                            if(_loc6_ || this)
                                                                                                            {
                                                                                                               if(!_loc7_)
                                                                                                               {
                                                                                                                  this.shootCurrentBird(this.§5!r§(),this.§-!s§);
                                                                                                                  addr175:
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     if(_loc6_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(false)
                                                                                                                        {
                                                                                                                           §§goto(addr191);
                                                                                                                        }
                                                                                                                        §§goto(addr435);
                                                                                                                     }
                                                                                                                     §§goto(addr382);
                                                                                                                  }
                                                                                                                  if(_loc6_)
                                                                                                                  {
                                                                                                                     §§goto(addr191);
                                                                                                                  }
                                                                                                                  §§goto(addr395);
                                                                                                               }
                                                                                                               §§goto(addr207);
                                                                                                            }
                                                                                                            §§goto(addr234);
                                                                                                         }
                                                                                                         §§goto(addr175);
                                                                                                      }
                                                                                                      §§goto(addr435);
                                                                                                   }
                                                                                                   §§goto(addr391);
                                                                                                }
                                                                                                §§goto(addr206);
                                                                                             }
                                                                                             addr434:
                                                                                             §§goto(addr435);
                                                                                             addr434:
                                                                                          }
                                                                                          §§goto(addr392);
                                                                                       }
                                                                                       §§goto(addr301);
                                                                                    }
                                                                                    _loc3_.setPosition(_loc4_,_loc5_,this.angle);
                                                                                    §§goto(addr175);
                                                                                 }
                                                                                 §§goto(addr358);
                                                                              }
                                                                              §§goto(addr300);
                                                                           }
                                                                        }
                                                                        §§goto(addr338);
                                                                     }
                                                                     §§goto(addr284);
                                                                  }
                                                               }
                                                               §§goto(addr338);
                                                            }
                                                            §§goto(addr357);
                                                         }
                                                         §§goto(addr300);
                                                      }
                                                      addr431:
                                                      this.§=i§(§ !l§);
                                                      §§goto(addr434);
                                                   }
                                                   §§goto(addr399);
                                                }
                                                §§goto(addr413);
                                             }
                                             §§goto(addr357);
                                          }
                                          §§goto(addr435);
                                       }
                                    }
                                    §§goto(addr431);
                                 }
                                 §§goto(addr434);
                              }
                              §§goto(addr389);
                           }
                           §§goto(addr429);
                        }
                        §§goto(addr428);
                     }
                  }
                  §§goto(addr95);
               }
            }
            while(true)
            {
               §§push(this);
               §§push(this.§&Q§);
               if(!_loc7_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§&Q§ = §§pop();
               §§goto(addr81);
               §§goto(addr95);
            }
         }
         §§goto(addr88);
      }
      
      public function §'!n§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§-T§ = null;
         if(_loc7_)
         {
            if(this.mBirds.length > 0)
            {
               if(!(_loc6_ && this))
               {
                  _loc5_ = this.mBirds[this.mNextBirdIndex];
                  §§goto(addr51);
               }
               §§goto(addr60);
            }
            addr51:
            if(!_loc5_)
            {
               if(_loc7_ || param1)
               {
                  addr60:
                  return;
               }
            }
            else
            {
               addr91:
               _loc5_.setPosition(param1,param2,180 - this.§-!s§);
            }
            do
            {
               this.shootCurrentBird(param3,param4);
            }
            while(_loc6_);
            
            return;
         }
         §§goto(addr91);
      }
      
      public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§-T§ = null;
         if(!(_loc5_ && this))
         {
            if(this.mBirds.length > this.mNextBirdIndex)
            {
               if(!(_loc5_ && param2))
               {
                  _loc3_ = this.mBirds[this.mNextBirdIndex];
                  addr46:
                  if(!_loc3_)
                  {
                     if(!_loc5_)
                     {
                        return;
                     }
                  }
                  else
                  {
                     addr170:
                     this.mDragging = false;
                  }
                  while(true)
                  {
                     this.§`[§ = false;
                     loop1:
                     while(_loc4_)
                     {
                        this.§=;§ = new Date().time;
                        loop2:
                        while(true)
                        {
                           this.§?>§.§3!<§(_loc3_,param1,param2);
                           loop3:
                           while(!_loc5_)
                           {
                              this.§9!^§(this.mNextBirdIndex,_loc3_.§@!Y§ > 0);
                              loop4:
                              while(true)
                              {
                                 this.playBirdShotSound();
                                 addr125:
                                 loop5:
                                 while(true)
                                 {
                                    if(this.mNextBirdIndex >= this.mBirds.length)
                                    {
                                       continue;
                                    }
                                    this.§=i§(§95§);
                                    while(true)
                                    {
                                       if(_loc5_ && param2)
                                       {
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop3;
                                             }
                                             addr121:
                                          }
                                          continue loop4;
                                          addr119:
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          dispatchEvent(new Event(§5"6§));
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          if(_loc4_)
                                          {
                                             return;
                                          }
                                          continue loop5;
                                          §§goto(addr121);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr170);
            }
            §§goto(addr46);
         }
         §§goto(addr125);
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(!_loc3_)
         {
            §<!O§.playSound("BirdShot" + _loc1_);
         }
      }
      
      public function §^"=§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.mNextBirdIndex);
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc5_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            if(_loc4_ >= this.mBirds.length)
            {
               if(_loc6_)
               {
                  continue;
               }
               if(!_loc6_)
               {
                  break;
               }
            }
            else
            {
               this.mBirds[_loc4_].update(param1,this.mSlingShotState == §7!y§,param2);
            }
            _loc4_++;
         }
      }
      
      public function getCurrentBirdType() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§-T§ = null;
         if(_loc2_)
         {
            if(this.mNextBirdIndex < this.mBirds.length)
            {
               _loc1_ = this.mBirds[this.mNextBirdIndex];
               addr37:
               if(!_loc3_)
               {
                  return _loc1_.name;
               }
            }
            return null;
         }
         §§goto(addr37);
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:§-T§ = null;
         var _loc2_:int = 0;
         if(!_loc6_)
         {
            this.mDragging = false;
            loop0:
            while(true)
            {
               addr44:
               while(true)
               {
                  this.§[!P§();
                  continue loop0;
               }
            }
         }
         §§goto(addr42);
      }
      
      protected function showScoreForRemainingBird(param1:§-T§, param2:int) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§?>§);
            §§push(param2);
            §§push(§!!t§.§9j§);
            §§push(true);
            §§push(param1.x);
            §§push(param1.y);
            if(_loc3_)
            {
               §§push(3);
               if(!_loc4_)
               {
                  addr54:
                  §§push(§§pop() - §§pop());
                  §§push(§2!V§.§-"§(param1.name));
               }
               §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
               §§goto(addr59);
            }
            §§goto(addr54);
         }
         addr59:
      }
      
      public function §@![§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§-T§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.mBirds)
         {
            if(_loc5_ || _loc1_)
            {
               §§push(_loc1_);
               if(_loc5_)
               {
                  §§push(int(§§pop() + this.§?>§.levelItemManager.getItem(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §`!§() : int
      {
         return this.§>!a§;
      }
      
      protected function §]L§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = 0;
         var _loc1_:* = 1000;
         §§push(Math.cos(this.§"X§ + Math.PI / 2) * this.§2u§);
         if(_loc5_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(Math.sin(this.§"X§ + Math.PI / 2) * this.§2u§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(this.§?>§.objects);
            §§push(this.§`-§);
            if(_loc5_ || _loc2_)
            {
               §§push(_loc2_);
               if(_loc5_ || _loc2_)
               {
                  addr169:
                  §§push(§§pop() + §§pop());
                  §§push(this.§5]§);
                  if(!_loc6_)
                  {
                     addr173:
                     §§push(§§pop() + _loc3_);
                  }
                  §§push(§§pop().§+!F§(§§pop(),§§pop()));
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(-1);
                              while(true)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    this.applyGravity(0.1);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc1_);
                                       if(_loc5_ || _loc3_)
                                       {
                                          if(!(_loc5_ || _loc2_))
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop());
                                          if(!_loc6_)
                                          {
                                             if(_loc6_ && this)
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop() - 1);
                                             if(_loc5_ || _loc2_)
                                             {
                                                _loc1_ = §§pop();
                                                addr107:
                                                if(!(_loc6_ && this))
                                                {
                                                   continue loop1;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          if(_loc6_ && this)
                                          {
                                             break;
                                          }
                                          if(§§pop() > §§pop())
                                          {
                                             continue loop0;
                                          }
                                          if(!_loc5_)
                                          {
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             while(true)
                                             {
                                             }
                                             addr191:
                                          }
                                          while(true)
                                          {
                                             this.§5d§ = -1;
                                             continue loop6;
                                          }
                                       }
                                       §§goto(addr107);
                                    }
                                    continue;
                                 }
                                 §§goto(addr191);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr173);
            }
            §§goto(addr169);
         }
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(this.§]!$§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_ || _loc3_)
               {
                  §§push(-§§pop());
               }
               addr80:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.mSlingShotState == §'`§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr99:
                     do
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        if(!_loc2_)
                        {
                           break;
                        }
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                        §§push(Boolean(§§pop()));
                     }
                     while(_loc2_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc2_)
                  {
                     while(true)
                     {
                        §§push(true);
                        continue loop0;
                     }
                     addr65:
                  }
                  else
                  {
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     §§goto(addr99);
                  }
               }
               §§push(false);
               if(_loc2_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr65);
      }
      
      public function get canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mSlingShotState == §'`§);
            if(!(_loc1_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§pop();
                     addr60:
                     return this.§5!r§() >= §1!3§;
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.mDragging = false;
            if(!_loc2_)
            {
               addr39:
               this.§=i§(§'`§);
            }
            var _loc1_:§-T§ = this.mBirds[this.mNextBirdIndex];
            if(!_loc2_)
            {
               _loc1_.§ @§(§=C§.§1<§);
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mDragging = true;
         }
         var _loc1_:§-T§ = this.mBirds[this.mNextBirdIndex];
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§ @§(§=C§.§=!r§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§`[§ = true;
         }
      }
      
      protected function §9!^§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§-T§ = null;
         if(_loc4_)
         {
            if(param1 < 0)
            {
               if(!_loc5_)
               {
                  §§goto(addr26);
               }
            }
            if(this.mBirds[param1])
            {
               if(!(_loc5_ && this))
               {
                  _loc3_ = this.mBirds[param1];
                  if(_loc4_)
                  {
                     this.§]G§.removeChild(_loc3_.sprite);
                     loop0:
                     while(true)
                     {
                        if(!param2)
                        {
                           loop3:
                           while(true)
                           {
                              _loc3_.dispose();
                              loop4:
                              while(!_loc5_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    while(true)
                                    {
                                       this.mBirds[param1] = null;
                                       if(_loc4_ || param1)
                                       {
                                          if(true)
                                          {
                                             break;
                                          }
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                    addr121:
                                    this.mBirds.splice(param1,1);
                                    addr126:
                                    return;
                                    addr87:
                                 }
                              }
                              continue loop0;
                           }
                           addr75:
                        }
                        while(true)
                        {
                           this.showDestructionParticles(this.mBirds[param1]);
                           continue loop0;
                           §§goto(addr80);
                        }
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr126);
            }
            §§goto(addr121);
         }
         addr26:
      }
      
      protected function showDestructionParticles(param1:§-T§) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = 5;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(!_loc10_)
               {
                  if(_loc9_)
                  {
                     §§push(this.§?>§);
                     if(_loc9_ || param1)
                     {
                        §§push(§§pop().particles);
                        if(_loc9_ || _loc2_)
                        {
                           §§push(§2!V§.§7G§);
                           if(!_loc10_)
                           {
                              §§push(§0"@§.§3!W§);
                              if(_loc9_)
                              {
                                 §§push(§2!V§.§#!N§);
                                 if(_loc9_)
                                 {
                                    §§push(param1.x);
                                    if(_loc9_ || _loc2_)
                                    {
                                       if(_loc9_ || this)
                                       {
                                          §§push(param1.y);
                                          if(_loc9_)
                                          {
                                             if(!(_loc10_ && _loc2_))
                                             {
                                                §§push(1000);
                                                if(_loc9_ || _loc3_)
                                                {
                                                   §§push("");
                                                   if(!(_loc10_ && _loc3_))
                                                   {
                                                      §§push(0);
                                                      if(_loc9_ || this)
                                                      {
                                                         §§pop().§%!y§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                         addr134:
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            if(_loc9_ || _loc2_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc5_++;
                                                            }
                                                            addr229:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc10_ && param1))
                                                            {
                                                               continue loop0;
                                                            }
                                                            loop2:
                                                            while(true)
                                                            {
                                                               §§push(param1.sprite);
                                                               if(_loc9_)
                                                               {
                                                                  §§push(-§§pop().height);
                                                                  if(_loc9_ || param1)
                                                                  {
                                                                     if(_loc9_ || _loc3_)
                                                                     {
                                                                        §§push(§^g§.§5!-§);
                                                                        if(!(_loc10_ && _loc2_))
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc10_)
                                                                                 {
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(!(_loc10_ && param1))
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   _loc8_ = §§pop();
                                                                                                   if(_loc9_ || _loc3_)
                                                                                                   {
                                                                                                      addr302:
                                                                                                      §§push(Math.random() * -_loc8_);
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         addr314:
                                                                                                         §§push(2);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr318:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc9_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr328:
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        addr338:
                                                                                                                        _loc8_ = Number(§§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(this.§?>§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().particles);
                                                                                                                                 addr163:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§2!V§.§^"9§);
                                                                                                                                    addr165:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§0"@§.§3!W§);
                                                                                                                                       addr167:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§2!V§.§#!N§);
                                                                                                                                          addr169:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.x);
                                                                                                                                             addr171:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.y);
                                                                                                                                                      addr177:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + _loc8_);
                                                                                                                                                         addr179:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(1500);
                                                                                                                                                            addr180:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push("");
                                                                                                                                                               addr181:
                                                                                                                                                               loop20:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§2!V§.§+9§(param1.name));
                                                                                                                                                                  addr185:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * Math.cos(_loc6_));
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(!(_loc10_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * Math.sin(_loc6_));
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§push(5);
                                                                                                                                                                     §§push(_loc2_);
                                                                                                                                                                     if(_loc9_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * 20);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§%!y§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                                                                                                                                     §§goto(addr229);
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop0;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr175:
                                                                                                                                                }
                                                                                                                                                §§goto(addr177);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr162:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              loop32:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.sprite);
                                                                                                                                 addr345:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop().width);
                                                                                                                                    addr347:
                                                                                                                                    loop11:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§^g§.§5!-§);
                                                                                                                                       addr349:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr350:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   if(_loc9_ || _loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            _loc7_ = §§pop();
                                                                                                                                                            if(!(_loc10_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Math.random() * -_loc7_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(2);
                                                                                                                                                                        addr391:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           addr392:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr403:
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    while(!_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                    addr403:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr403);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                 }
                                                                                                                                                                                 addr416:
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc4_ = §§pop();
                                                                                                                                                                                    }
                                                                                                                                                                                    addr431:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr390:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(180 / Math.PI);
                                                                                                                                                                     addr436:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                        addr437:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           addr438:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc6_ = §§pop();
                                                                                                                                                                              continue loop32;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr383:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr403);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr431);
                                                                                                                                                      }
                                                                                                                                                      addr368:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr383);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                   addr410:
                                                                                                                                                }
                                                                                                                                                §§goto(addr416);
                                                                                                                                             }
                                                                                                                                             §§goto(addr437);
                                                                                                                                          }
                                                                                                                                          continue loop11;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr339:
                                                                                                                     }
                                                                                                                     §§goto(addr438);
                                                                                                                  }
                                                                                                                  §§goto(addr350);
                                                                                                               }
                                                                                                               §§goto(addr338);
                                                                                                            }
                                                                                                            §§goto(addr436);
                                                                                                         }
                                                                                                         §§goto(addr391);
                                                                                                      }
                                                                                                      §§goto(addr318);
                                                                                                   }
                                                                                                   §§goto(addr328);
                                                                                                }
                                                                                                §§goto(addr349);
                                                                                             }
                                                                                             §§goto(addr368);
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       §§goto(addr318);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr338);
                                                                              }
                                                                              §§goto(addr302);
                                                                           }
                                                                           §§goto(addr392);
                                                                        }
                                                                        §§goto(addr314);
                                                                     }
                                                                     §§goto(addr403);
                                                                  }
                                                                  §§goto(addr328);
                                                               }
                                                               §§goto(addr345);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr185);
                                                   }
                                                   §§goto(addr181);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr177);
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr171);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr169);
                              }
                              §§goto(addr167);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr339);
               }
               §§goto(addr134);
            }
            else
            {
               §§push(_loc4_);
            }
            §§goto(addr410);
         }
      }
      
      public function §!!m§(param1:§-T§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§9!^§(this.mBirds.indexOf(param1));
         }
      }
      
      public function §`k§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§-T§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§-T§ = null;
         var _loc1_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() >= this.mBirds.length - 1)
               {
                  if(_loc7_)
                  {
                     addr238:
                     if(this.§]G§.numChildren > 0)
                     {
                        §§push(this.§]G§);
                        if(!_loc6_)
                        {
                           §§pop().removeChildAt(0);
                           if(!(_loc6_ && _loc1_))
                           {
                              §§goto(addr238);
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr238);
                     }
                     addr223:
                     if(_loc7_ || _loc3_)
                     {
                        addr250:
                        §§push(0);
                        if(_loc7_)
                        {
                           break;
                        }
                        addr291:
                        if(§§pop() < this.mBirds.length)
                        {
                           _loc2_ = this.mBirds[_loc1_];
                           if(_loc7_ || _loc1_)
                           {
                              this.§]G§.addChildAt(_loc2_.sprite,0);
                              if(_loc7_)
                              {
                                 _loc1_++;
                              }
                           }
                           while(true)
                           {
                              §§goto(addr291);
                           }
                           addr290:
                        }
                     }
                     addr295:
                     return;
                     addr223:
                  }
                  addr256:
                  §§goto(addr290);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§""4§ - this.mBirds[_loc1_].x) * (this.§""4§ - this.mBirds[_loc1_].x) + (this.§%W§ - this.mBirds[_loc1_].y) * (this.§%W§ - this.mBirds[_loc1_].y))));
                  if(_loc7_ || this)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(Number(Math.sqrt((this.§""4§ - this.mBirds[_loc1_ + 1].x) * (this.§""4§ - this.mBirds[_loc1_ + 1].x) + (this.§%W§ - this.mBirds[_loc1_ + 1].y) * (this.§%W§ - this.mBirds[_loc1_ + 1].y))));
                        if(_loc7_)
                        {
                           addr132:
                           §§push(§§pop());
                           if(_loc7_)
                           {
                              _loc4_ = §§pop();
                              addr136:
                              §§push(_loc3_);
                           }
                           if(§§pop() >= §§pop())
                           {
                              continue;
                           }
                           if(_loc7_ || _loc1_)
                           {
                              _loc5_ = this.mBirds[_loc1_];
                              if(!(_loc6_ && this))
                              {
                                 this.mBirds.splice(_loc1_,1);
                              }
                              loop1:
                              while(true)
                              {
                                 while(true)
                                 {
                                    this.mBirds.splice(_loc1_ + 1,0,_loc5_);
                                    do
                                    {
                                       _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                    }
                                    while(!(_loc7_ || this));
                                    
                                    if(!_loc6_)
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
                           else
                           {
                              §§goto(addr223);
                           }
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr250);
                  }
                  §§goto(addr132);
               }
            }
            break;
         }
         _loc1_ = §§pop();
         if(!_loc6_)
         {
            §§goto(addr256);
         }
         §§goto(addr295);
      }
      
      public function § !0§(param1:Number, param2:Number) : §-T§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= this.mBirds.length)
            {
               if(!_loc5_)
               {
                  if(_loc4_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        return null;
                     }
                  }
                  else
                  {
                     loop3:
                     while(true)
                     {
                        _loc3_++;
                        addr52:
                        while(!_loc4_)
                        {
                           while(!this.mBirds[_loc3_].isInCoordinates(param1,param2))
                           {
                              continue loop3;
                           }
                        }
                        continue loop0;
                     }
                     addr50:
                  }
                  return this.mBirds[_loc3_];
               }
               §§goto(addr52);
            }
            else if(this.mBirds[_loc3_])
            {
               §§goto(addr62);
            }
            §§goto(addr50);
         }
      }
      
      public function §6D§(param1:Number, param2:Number) : §3!n§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§""4§);
               loop1:
               while(true)
               {
                  §§push(this.§?!;§);
                  loop2:
                  while(true)
                  {
                     §§push(4);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() >= §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          loop17:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop18:
                                             while(!(_loc4_ && param2))
                                             {
                                                if(§§pop())
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop20:
                                                      while(true)
                                                      {
                                                         §§push(param2);
                                                         loop21:
                                                         while(!_loc4_)
                                                         {
                                                            §§push(this.§%W§);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(this.§?!;§);
                                                               loop22:
                                                               while(true)
                                                               {
                                                                  §§push(4);
                                                                  if(_loc4_ && param1)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     §§push(§§pop() / §§pop());
                                                                     while(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        §§push(this.§2u§);
                                                                        if(!(_loc3_ || param2))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           addr70:
                                                                           §§push(§§pop() <= §§pop() + §§pop());
                                                                           if(!(_loc4_ && param1))
                                                                           {
                                                                              addr78:
                                                                              if(!(_loc4_ && _loc3_))
                                                                              {
                                                                                 continue loop17;
                                                                              }
                                                                              addr165:
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    continue loop19;
                                                                                 }
                                                                                 if(_loc3_ || this)
                                                                                 {
                                                                                    if(!(_loc4_ && _loc3_))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc4_ && param2)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc3_ || param2)
                                                                                                   {
                                                                                                      if(!(_loc4_ && param1))
                                                                                                      {
                                                                                                         return this;
                                                                                                      }
                                                                                                      addr192:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            break loop25;
                                                                                                         }
                                                                                                         §§push(this.§%W§);
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            continue loop21;
                                                                                                         }
                                                                                                         §§push(this.§%W§);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr38);
                                                                                                         }
                                                                                                         §§goto(addr70);
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   addr112:
                                                                                                }
                                                                                                return null;
                                                                                             }
                                                                                             continue loop20;
                                                                                             addr92:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr70);
                                                                                          }
                                                                                          §§goto(addr192);
                                                                                       }
                                                                                       continue loop18;
                                                                                       addr181:
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 addr254:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop();
                                                                                    break loop25;
                                                                                 }
                                                                                 §§goto(addr78);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 break loop21;
                                                                              }
                                                                           }
                                                                           §§goto(addr191);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              break loop22;
                                                                           }
                                                                           addr208:
                                                                        }
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  continue loop2;
                                                               }
                                                            }
                                                            while(!(_loc4_ && param2))
                                                            {
                                                               §§goto(addr165);
                                                               §§push(§§pop() >= §§pop());
                                                               if(_loc4_ && this)
                                                               {
                                                                  continue;
                                                               }
                                                               addr45:
                                                               if(!(_loc3_ || param1))
                                                               {
                                                                  while(!_loc4_)
                                                                  {
                                                                     §§push(§§pop() <= §§pop());
                                                                     continue loop16;
                                                                     §§goto(addr45);
                                                                  }
                                                                  continue loop1;
                                                                  addr218:
                                                               }
                                                               if(!_loc4_)
                                                               {
                                                                  §§goto(addr54);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                  }
                                                                  addr206:
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                §§goto(addr181);
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                    §§goto(addr254);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr112);
      }
      
      public function writeSlingshotInformation(param1:§#b§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§-T§ = null;
         var _loc4_:§%![§ = null;
         if(_loc6_)
         {
            param1.slingshotX = this.§""4§;
            if(_loc6_ || _loc3_)
            {
               param1.slingshotY = this.§%W§;
            }
         }
         var _loc2_:* = Number(0);
         loop0:
         while(_loc2_ < this.mBirds.length)
         {
            _loc3_ = this.mBirds[_loc2_];
            (_loc4_ = new §%![§()).x = _loc3_.x;
            if(!(_loc5_ && _loc2_))
            {
               _loc4_.y = _loc3_.y;
               while(true)
               {
                  _loc4_.type = _loc3_.name;
                  loop2:
                  while(true)
                  {
                     addr105:
                     while(true)
                     {
                        param1.§?J§(_loc4_);
                        continue loop2;
                     }
                  }
                  if(_loc5_ && this)
                  {
                     continue;
                  }
                  §§push(_loc2_);
                  if(!(_loc5_ && param1))
                  {
                     §§push(§§pop() + 1);
                     if(_loc6_ || _loc3_)
                     {
                        addr94:
                        §§push(Number(§§pop()));
                     }
                     _loc2_ = §§pop();
                     if(!(_loc5_ && _loc2_))
                     {
                        while(false)
                        {
                           §§goto(addr105);
                        }
                        continue loop0;
                        addr103:
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr94);
               }
            }
            §§goto(addr103);
         }
      }
      
      public function §3i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.mBirds.length > 0)
         {
            this.§!!m§(this.mBirds[0]);
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      public function §#&§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               if(§§pop() >= this.mBirds.length)
               {
                  loop2:
                  while(!_loc5_)
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        §§push(this.§""4§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop() > param1.x);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       loop7:
                                       while(true)
                                       {
                                          if(_loc5_ && param1)
                                          {
                                             addr223:
                                             break loop1;
                                          }
                                          §§push(this.§""4§);
                                          while(true)
                                          {
                                             §§push(§§pop() < param2.x);
                                             addr40:
                                             if(!(_loc5_ && param1))
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr49:
                                                   §§push(§§pop() < param2.y);
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      addr59:
                                                      if(_loc6_ || param1)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  _loc3_.push(this);
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               addr144:
                                                               addr127:
                                                               while(!_loc5_)
                                                               {
                                                                  §§push(this.§%W§);
                                                                  if(!(_loc6_ || this))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr40);
                                                               }
                                                               while(_loc6_)
                                                               {
                                                                  §§push(this.§%W§);
                                                                  continue loop3;
                                                               }
                                                               continue loop2;
                                                            }
                                                            return _loc3_;
                                                            addr68:
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop6;
                                                            }
                                                            §§pop();
                                                            §§goto(addr144);
                                                         }
                                                         continue loop7;
                                                         addr141:
                                                      }
                                                      while(_loc6_)
                                                      {
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                               addr124:
                                                               addr137:
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr68);
                                                            }
                                                            while(_loc6_)
                                                            {
                                                               §§pop();
                                                               §§goto(addr127);
                                                               §§goto(addr49);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               break loop16;
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(!_loc5_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§goto(addr141);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr119);
                                                            }
                                                         }
                                                         addr119:
                                                         continue loop5;
                                                         §§goto(addr59);
                                                      }
                                                      continue loop4;
                                                      addr117:
                                                   }
                                                   §§goto(addr124);
                                                }
                                                break loop7;
                                             }
                                          }
                                       }
                                       addr180:
                                       §§push(§§pop() + 1);
                                       if(_loc6_ || param2)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       addr189:
                                       _loc4_ = §§pop();
                                       break loop2;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr137);
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        addr217:
                        _loc3_.push(this.mBirds[_loc4_]);
                     }
                     §§goto(addr223);
                  }
                  continue loop0;
               }
               if(this.mBirds[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  §§goto(addr217);
               }
               break;
               §§goto(addr217);
            }
            §§goto(addr180);
         }
      }
      
      public function §00§(param1:String, param2:Number, param3:Number, param4:Number) : §-T§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§-T§ = this.§>"+§(param1,param2,param3,param4);
         if(_loc7_)
         {
            this.§`k§();
         }
         return _loc5_;
      }
      
      public function §=`§() : Number
      {
         return this.mBirds.length;
      }
   }
}
